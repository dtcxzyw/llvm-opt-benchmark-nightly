Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSTypedArray?download=true
inline.NumInlined: 1686
inline.NumDeleted: 641
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0
@_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE2vtE = weak_odr hidden constant { i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 -47381121442796770, i32 44, i32 40, ptr null, ptr null, ptr null, ptr @_ZN6hermes2vm16JSTypedArrayBase23_getOwnIndexedRangeImplEPNS0_8JSObjectERNS0_7RuntimeE, ptr @_ZN6hermes2vm16JSTypedArrayBase19_haveOwnIndexedImplEPNS0_8JSObjectERNS0_7RuntimeEj, ptr @_ZN6hermes2vm16JSTypedArrayBase31_getOwnIndexedPropertyFlagsImplEPNS0_8JSObjectERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS4_INS0_11HermesValueEEE, ptr @_ZN6hermes2vm16JSTypedArrayBase21_deleteOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm16JSTypedArrayBase23_checkAllOwnIndexedImplEPNS0_8JSObjectERNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE }, comdat, align 8, !guid !17
@_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE2vtE = weak_odr hidden constant { i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 -47381121442796770, i32 45, i32 40, ptr null, ptr null, ptr null, ptr @_ZN6hermes2vm16JSTypedArrayBase23_getOwnIndexedRangeImplEPNS0_8JSObjectERNS0_7RuntimeE, ptr @_ZN6hermes2vm16JSTypedArrayBase19_haveOwnIndexedImplEPNS0_8JSObjectERNS0_7RuntimeEj, ptr @_ZN6hermes2vm16JSTypedArrayBase31_getOwnIndexedPropertyFlagsImplEPNS0_8JSObjectERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS4_INS0_11HermesValueEEE, ptr @_ZN6hermes2vm16JSTypedArrayBase21_deleteOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm16JSTypedArrayBase23_checkAllOwnIndexedImplEPNS0_8JSObjectERNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE }, comdat, align 8, !guid !18
@.str.12 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1, !guid !19
@.str.13 = private unnamed_addr constant [53 x i8] c"A TypedArray function was called on a non TypedArray\00", align 1, !guid !20
@.str.14 = private unnamed_addr constant [58 x i8] c"A TypedArray function was called on a detached TypedArray\00", align 1, !guid !21
@_ZZNK6hermes2vm16JSTypedArrayBase12getByteWidthEvE6widths = internal unnamed_addr constant [11 x i8] c"\01\02\04\01\01\02\04\04\08\08\08", align 1, !guid !22
@_ZZN6hermes2vm16JSTypedArrayBase8allocateERNS0_7RuntimeEjE11allocateFns = internal unnamed_addr constant [11 x ptr] [ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE8allocateERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE8allocateERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE8allocateERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE8allocateERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE8allocateERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE8allocateERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE8allocateERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE8allocateERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE8allocateERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE8allocateERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE8allocateERNS0_7RuntimeEj], align 16, !guid !23
@.str.15 = private unnamed_addr constant [43 x i8] c"Cannot allocate from a detached TypedArray\00", align 1, !guid !24
@_ZZN6hermes2vm16JSTypedArrayBase15allocateSpeciesERNS0_7RuntimeENS0_6HandleIS1_EEjE11allocateFns = internal unnamed_addr constant [11 x ptr] [ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj, ptr @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj], align 16, !guid !25
@.str.16 = private unnamed_addr constant [49 x i8] c"Cannot allocate a data block for the ArrayBuffer\00", align 1, !guid !26
@.str.17 = private unnamed_addr constant [30 x i8] c"Illegal access to ArrayBuffer\00", align 1, !guid !27
@.str.18 = private unnamed_addr constant [45 x i8] c"BigInt is too small for the operation result\00", align 1, !guid !28
@.str.19 = private unnamed_addr constant [29 x i8] c"Maximum BigInt size exceeded\00", align 1, !guid !29
@.str.20 = private unnamed_addr constant [17 x i8] c"Division by zero\00", align 1, !guid !30
@.str.21 = private unnamed_addr constant [26 x i8] c"Exponent must be positive\00", align 1, !guid !31
@.str.22 = private unnamed_addr constant [15 x i8] c"can't convert \00", align 1, !guid !32
@.str.23 = private unnamed_addr constant [11 x i8] c" to bigint\00", align 1, !guid !33
@_ZN6hermes2vm6VTable11vtableArrayE = external local_unnamed_addr global %"struct.std::array.216", align 8
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external local_unnamed_addr global %"class.hermes::vm::PinnedHermesValue", align 8

@_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE
@_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE
@_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE
@_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE
@_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE
@_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE
@_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE
@_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE
@_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE
@_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE
@_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE
@_ZN6hermes2vm16JSTypedArrayBaseC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6hermes2vm16JSTypedArrayBaseC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i64 0, -4294967295) i64 @_ZN6hermes2vm16JSTypedArrayBase23_getOwnIndexedRangeImplEPNS0_8JSObjectERNS0_7RuntimeE(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) #0 align 2 !guid !349 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %.sroa.2.0.insert.ext = zext i32 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  ret i64 %.sroa.2.0.insert.shift
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm16JSTypedArrayBase19_haveOwnIndexedImplEPNS0_8JSObjectERNS0_7RuntimeEj(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i32 noundef %2) #0 align 2 !guid !350 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %i.c = icmp ult i32 %2, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 65551) i32 @_ZN6hermes2vm16JSTypedArrayBase31_getOwnIndexedPropertyFlagsImplEPNS0_8JSObjectERNS0_7RuntimeEj(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i32 noundef %2) #0 align 2 !guid !351 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %.not = icmp ult i32 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.e, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = and i32 %i.d, 2
  %.not4 = icmp eq i32 %i.e, 0
  br i1 %.not4, label %bb.e, label %bb.c, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.d, 4
  %.not5 = icmp eq i32 %i.f, 0
  br i1 %.not5, label %bb.e, label %bb.d, !prof !46

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.sroa.3.0 = phi i32 [ 0, %bb.a ], [ 65542, %bb.c ], [ 65538, %bb.d ], [ 65550, %bb.b ]
  ret i32 %.sroa.3.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #1 comdat align 2 !guid !352 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = zext i32 %i.b to i64
  %i.e = add i64 %i.d, %i.c
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  %i.h = load i8, ptr %i.g, align 1, !tbaa !53, !range !54, !noundef !55
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = icmp ult i32 %2, %i.k
  br i1 %i.l, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.n = load i8, ptr %i.m, align 4, !tbaa !295, !range !54, !noundef !55
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !296
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.s = load i64, ptr %i.r, align 8, !tbaa !297
  %i.t = xor i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !298
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = zext i32 %2 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !299
  %i.ac = sitofp i8 %i.ab to double
  %i.ad = bitcast double %i.ac to i64
  br label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE2atERNS0_7RuntimeEj.exit
  %.sroa.0.0 = phi i64 [ 0, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ], [ %i.ad, %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE2atERNS0_7RuntimeEj.exit ], [ -1688849860263936, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i32 @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS4_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr %3) #1 comdat align 2 !guid !353 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !300    ; 2 uses
  %i.b = icmp ult i64 %i.a, -1970324836974592
  br i1 %i.b, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE35EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE35EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !46

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE35EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %3) #11 ; 2 uses
  %i.d = extractvalue { i32, i64 } %i.c, 0
  %i.e = extractvalue { i32, i64 } %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE35EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !56

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE35EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE35EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.47.1.i22 = phi i64 [ %i.e, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE35EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ %i.a, %bb.a ]
  %i.f = bitcast i64 %.sroa.47.1.i22 to double    ; 3 uses
  %i.g = fptoui double %i.f to i64                ; 2 uses
  %i.h = shl i64 %i.g, 1
  %i.i = ashr exact i64 %i.h, 1
  %i.j = sitofp i64 %i.i to double
  %i.k = fcmp une double %i.f, %i.j
  %i.l = trunc i64 %i.g to i32
  br i1 %i.k, label %bb.b, label %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE10toDestTypeERKNS0_11HermesValueE.exit

bb.b:                                             ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE35EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.m = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.f) #11
  br label %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE10toDestTypeERKNS0_11HermesValueE.exit

_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE10toDestTypeERKNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE35EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %bb.b
  %.1.i.i = phi i32 [ %i.l, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE35EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ], [ %i.m, %bb.b ]
  %i.n = trunc i32 %.1.i.i to i8
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !297
  %i.o = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE10toDestTypeERKNS0_11HermesValueE.exit
  %i.s = ptrtoint ptr %1 to i64
  %i.t = zext i32 %i.r to i64
  %i.u = add i64 %i.t, %i.s
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 37
  %i.x = load i8, ptr %i.w, align 1, !tbaa !53, !range !54, !noundef !55
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE10toDestTypeERKNS0_11HermesValueE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.z, align 8, !tbaa !303
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 46, ptr %i.aa, align 8, !tbaa !304
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ab, align 8, !tbaa !305
  store ptr @.str, ptr %4, align 8, !tbaa !299
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ac, align 8, !tbaa !306
  %i.ad = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ae = and i32 %i.ad, 255
  %5 = or disjoint i32 %i.ae, 256
  br label %bb.f

bb.c:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !45
  %i.ah = icmp ult i32 %2, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.f, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !295, !range !54, !noundef !55
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE2atERNS0_7RuntimeEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !296
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !297
  %i.ap = xor i64 %i.ao, %i.am
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !298
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = zext i32 %2 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  store i8 %i.n, ptr %i.aw, align 1, !tbaa !299
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE2atERNS0_7RuntimeEj.exit, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE35EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread
  %.sroa.014.0 = phi i32 [ %5, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 256, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE35EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 257, %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE2atERNS0_7RuntimeEj.exit ], [ 257, %bb.c ]
  ret i32 %.sroa.014.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm16JSTypedArrayBase21_deleteOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i32 noundef %2) #2 align 2 !guid !354 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !297
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45
  %i.e = icmp uge i32 %2, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm16JSTypedArrayBase23_checkAllOwnIndexedImplEPNS0_8JSObjectERNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i32 %2) #0 align 2 !guid !355 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %i.c = icmp eq i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE11getCellKindEv() local_unnamed_addr #1 comdat align 2 !guid !356 {
bb.a:
  ret i32 35
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !guid !357 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 587202560
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #1 comdat align 2 !guid !358 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIaLNS0_8CellKindE35EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIaLNS0_8CellKindE35EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIaLNS0_8CellKindE35EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %i.i) #11
  store i32 587202600, ptr %i.h, align 4, !tbaa !299
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !6
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE5beginERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !359 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE3endERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !360 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE2atERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !guid !361 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #1 comdat align 2 !guid !362 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #11
  br label %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !307
  br label %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

end_hunk_0
begin_hunk_1_@_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef signext i8 @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE10toDestTypeERKNS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !guid !368 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !300 ; 3 uses
  %i.b = fptoui double %i.a to i64                ; 2 uses
  %i.c = shl i64 %i.b, 1
  %i.d = ashr exact i64 %i.c, 1
  %i.e = sitofp i64 %i.d to double
  %i.f = fcmp une double %i.a, %i.e
  %i.g = trunc i64 %i.b to i32
  br i1 %i.f, label %bb.b, label %_ZN6hermes15truncateToInt32Ed.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.a) #11
  br label %_ZN6hermes15truncateToInt32Ed.exit

_ZN6hermes15truncateToInt32Ed.exit:               ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.g, %bb.a ], [ %i.h, %bb.b ]
  %i.i = trunc i32 %.1.i to i8
  ret i8 %i.i
}

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) unnamed_addr #1 comdat($_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EEC5ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE) align 2 !guid !369 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !297 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %3, align 8, !tbaa !297 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 0, i32 %i.g
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !tbaa !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.i.i.i.i.i7.i.i.i = icmp eq i64 %i.b, 0
  %i.i = sub i64 %.sroa.0.0.copyload.i.i.i2.i, %i.e
  %i.j = trunc i64 %i.i to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i, i32 0, i32 %i.j
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i, ptr %i.h, align 4, !tbaa !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 24, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm16JSTypedArrayBaseC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(32) initializes((4, 32)) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3) unnamed_addr #7 align 2 !guid !370 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !297 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2 = load i64, ptr %3, align 8, !tbaa !297 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i2, 281474976710655
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = sub i64 %.sroa.0.0.copyload.i.i.i, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 0, i32 %i.g
  store i32 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.d, align 4, !tbaa !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.i.i.i.i.i7.i.i = icmp eq i64 %i.b, 0
  %i.i = sub i64 %.sroa.0.0.copyload.i.i.i2, %i.e
  %i.j = trunc i64 %i.i to i32
  %.sroa.0.0.i.i.i.i.i8.i.i = select i1 %.not.i.i.i.i.i7.i.i, i32 0, i32 %i.j
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i, ptr %i.h, align 4, !tbaa !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 24, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #1 comdat align 2 !guid !371 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = zext i32 %i.b to i64
  %i.e = add i64 %i.d, %i.c
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  %i.h = load i8, ptr %i.g, align 1, !tbaa !53, !range !54, !noundef !55
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = icmp ult i32 %2, %i.k
  br i1 %i.l, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.n = load i8, ptr %i.m, align 4, !tbaa !295, !range !54, !noundef !55
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !296
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.s = load i64, ptr %i.r, align 8, !tbaa !297
  %i.t = xor i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !298
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = zext i32 %2 to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !322
  %i.ac = sitofp i16 %i.ab to double
  %i.ad = bitcast double %i.ac to i64
  br label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE2atERNS0_7RuntimeEj.exit
  %.sroa.0.0 = phi i64 [ 0, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ], [ %i.ad, %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE2atERNS0_7RuntimeEj.exit ], [ -1688849860263936, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i32 @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS4_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr %3) #1 comdat align 2 !guid !372 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !300    ; 2 uses
  %i.b = icmp ult i64 %i.a, -1970324836974592
  br i1 %i.b, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE36EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE36EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !46

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE36EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %3) #11 ; 2 uses
  %i.d = extractvalue { i32, i64 } %i.c, 0
  %i.e = extractvalue { i32, i64 } %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE36EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !56

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE36EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE36EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.47.1.i22 = phi i64 [ %i.e, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE36EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ %i.a, %bb.a ]
  %i.f = bitcast i64 %.sroa.47.1.i22 to double    ; 3 uses
  %i.g = fptoui double %i.f to i64                ; 2 uses
  %i.h = shl i64 %i.g, 1
  %i.i = ashr exact i64 %i.h, 1
  %i.j = sitofp i64 %i.i to double
  %i.k = fcmp une double %i.f, %i.j
  %i.l = trunc i64 %i.g to i32
  br i1 %i.k, label %bb.b, label %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE10toDestTypeERKNS0_11HermesValueE.exit

bb.b:                                             ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE36EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.m = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.f) #11
  br label %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE10toDestTypeERKNS0_11HermesValueE.exit

_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE10toDestTypeERKNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE36EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %bb.b
  %.1.i.i = phi i32 [ %i.l, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE36EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ], [ %i.m, %bb.b ]
  %i.n = trunc i32 %.1.i.i to i16
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !297
  %i.o = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE10toDestTypeERKNS0_11HermesValueE.exit
  %i.s = ptrtoint ptr %1 to i64
  %i.t = zext i32 %i.r to i64
  %i.u = add i64 %i.t, %i.s
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 37
  %i.x = load i8, ptr %i.w, align 1, !tbaa !53, !range !54, !noundef !55
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE10toDestTypeERKNS0_11HermesValueE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.z, align 8, !tbaa !303
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 46, ptr %i.aa, align 8, !tbaa !304
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ab, align 8, !tbaa !305
  store ptr @.str, ptr %4, align 8, !tbaa !299
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ac, align 8, !tbaa !306
  %i.ad = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ae = and i32 %i.ad, 255
  %5 = or disjoint i32 %i.ae, 256
  br label %bb.f

bb.c:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !45
  %i.ah = icmp ult i32 %2, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.f, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !295, !range !54, !noundef !55
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE2atERNS0_7RuntimeEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !296
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !297
  %i.ap = xor i64 %i.ao, %i.am
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !298
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = zext i32 %2 to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.av
  store i16 %i.n, ptr %i.aw, align 2, !tbaa !322
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE2atERNS0_7RuntimeEj.exit, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE36EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread
  %.sroa.014.0 = phi i32 [ %5, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 256, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE36EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 257, %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE2atERNS0_7RuntimeEj.exit ], [ 257, %bb.c ]
  ret i32 %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE11getCellKindEv() local_unnamed_addr #1 comdat align 2 !guid !373 {
bb.a:
  ret i32 36
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !guid !374 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 603979776
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #1 comdat align 2 !guid !375 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIsLNS0_8CellKindE36EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIsLNS0_8CellKindE36EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIsLNS0_8CellKindE36EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %i.i) #11
  store i32 603979816, ptr %i.h, align 4, !tbaa !299
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !6
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE5beginERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !376 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE3endERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !377 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.u
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 2 dereferenceable(2) ptr @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE2atERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !guid !378 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #1 comdat align 2 !guid !379 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #11
  br label %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !307
  br label %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.j) #11
  store i32 603979816, ptr %i.i, align 4, !tbaa !299
  %.01320.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i.i, align 4, !tbaa !6
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = or i64 %i.k, -281474976710656            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !310  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !318  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !319
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !318
  store i64 %i.l, ptr %i.p, align 8, !tbaa !297
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12JSTypedArrayIsLNS0_8CellKindE36EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj:bb.a
  store i32 1, ptr %i.ba, align 8, !tbaa !303
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 57, ptr %i.bb, align 8, !tbaa !304
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !305
  store ptr @.str.14, ptr %4, align 8, !tbaa !299
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bd, align 8, !tbaa !306
  %i.be = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i
  %.0.i = phi i32 [ %i.ap, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ %i.be, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i ]
  %i.bf = icmp eq i32 %.0.i, 0
  br i1 %i.bf, label %bb.g, label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread: ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread, %bb.a
  %.sroa.020.2 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.a ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %.0.i.i.i.i.i.i1225, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit ]
  ret ptr %.sroa.020.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE14getConstructorERKNS0_7RuntimeE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(9816) %0) local_unnamed_addr #4 align 2 !guid !382 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef signext i16 @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE10toDestTypeERKNS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !guid !383 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !300 ; 3 uses
  %i.b = fptoui double %i.a to i64                ; 2 uses
  %i.c = shl i64 %i.b, 1
  %i.d = ashr exact i64 %i.c, 1
  %i.e = sitofp i64 %i.d to double
  %i.f = fcmp une double %i.a, %i.e
  %i.g = trunc i64 %i.b to i32
  br i1 %i.f, label %bb.b, label %_ZN6hermes15truncateToInt32Ed.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.a) #11
  br label %_ZN6hermes15truncateToInt32Ed.exit

_ZN6hermes15truncateToInt32Ed.exit:               ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.g, %bb.a ], [ %i.h, %bb.b ]
  %i.i = trunc i32 %.1.i to i16
  ret i16 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) unnamed_addr #1 comdat($_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EEC5ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE) align 2 !guid !384 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !297 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %3, align 8, !tbaa !297 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 0, i32 %i.g
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !tbaa !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.i.i.i.i.i7.i.i.i = icmp eq i64 %i.b, 0
  %i.i = sub i64 %.sroa.0.0.copyload.i.i.i2.i, %i.e
  %i.j = trunc i64 %i.i to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i, i32 0, i32 %i.j
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i, ptr %i.h, align 4, !tbaa !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 24, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #1 comdat align 2 !guid !385 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = zext i32 %i.b to i64
  %i.e = add i64 %i.d, %i.c
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  %i.h = load i8, ptr %i.g, align 1, !tbaa !53, !range !54, !noundef !55
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = icmp ult i32 %2, %i.k
  br i1 %i.l, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.n = load i8, ptr %i.m, align 4, !tbaa !295, !range !54, !noundef !55
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !296
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.s = load i64, ptr %i.r, align 8, !tbaa !297
  %i.t = xor i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !298
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = zext i32 %2 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = bitcast double %i.ac to i64
  br label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE2atERNS0_7RuntimeEj.exit
  %.sroa.0.0 = phi i64 [ 0, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ], [ %i.ad, %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE2atERNS0_7RuntimeEj.exit ], [ -1688849860263936, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i32 @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS4_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr %3) #1 comdat align 2 !guid !386 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !300    ; 2 uses
  %i.b = icmp ult i64 %i.a, -1970324836974592
  br i1 %i.b, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE37EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE37EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !46

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE37EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %3) #11 ; 2 uses
  %i.d = extractvalue { i32, i64 } %i.c, 0
  %i.e = extractvalue { i32, i64 } %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE37EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !56

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE37EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE37EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.47.1.i22 = phi i64 [ %i.e, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE37EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ %i.a, %bb.a ]
  %i.f = bitcast i64 %.sroa.47.1.i22 to double    ; 3 uses
  %i.g = fptoui double %i.f to i64                ; 2 uses
  %i.h = shl i64 %i.g, 1
  %i.i = ashr exact i64 %i.h, 1
  %i.j = sitofp i64 %i.i to double
  %i.k = fcmp une double %i.f, %i.j
  %i.l = trunc i64 %i.g to i32
  br i1 %i.k, label %bb.b, label %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE10toDestTypeERKNS0_11HermesValueE.exit

bb.b:                                             ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE37EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.m = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.f) #11
  br label %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE10toDestTypeERKNS0_11HermesValueE.exit

_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE10toDestTypeERKNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE37EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %bb.b
  %.1.i.i = phi i32 [ %i.l, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE37EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ], [ %i.m, %bb.b ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !297
  %i.n = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE10toDestTypeERKNS0_11HermesValueE.exit
  %i.r = ptrtoint ptr %1 to i64
  %i.s = zext i32 %i.q to i64
  %i.t = add i64 %i.s, %i.r
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 37
  %i.w = load i8, ptr %i.v, align 1, !tbaa !53, !range !54, !noundef !55
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE10toDestTypeERKNS0_11HermesValueE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.y, align 8, !tbaa !303
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 46, ptr %i.z, align 8, !tbaa !304
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.aa, align 8, !tbaa !305
  store ptr @.str, ptr %4, align 8, !tbaa !299
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ab, align 8, !tbaa !306
  %i.ac = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ad = and i32 %i.ac, 255
  %5 = or disjoint i32 %i.ad, 256
  br label %bb.f

bb.c:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !45
  %i.ag = icmp ult i32 %2, %i.af
  br i1 %i.ag, label %bb.d, label %bb.f, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !295, !range !54, !noundef !55
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE2atERNS0_7RuntimeEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !296
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.an = load i64, ptr %i.am, align 8, !tbaa !297
  %i.ao = xor i64 %i.an, %i.al
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !298
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.as
  %i.au = zext i32 %2 to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  store i32 %.1.i.i, ptr %i.av, align 4, !tbaa !6
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE2atERNS0_7RuntimeEj.exit, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE37EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread
  %.sroa.014.0 = phi i32 [ %5, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 256, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE37EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 257, %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE2atERNS0_7RuntimeEj.exit ], [ 257, %bb.c ]
  ret i32 %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE11getCellKindEv() local_unnamed_addr #1 comdat align 2 !guid !387 {
bb.a:
  ret i32 37
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !guid !388 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 620756992
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #1 comdat align 2 !guid !389 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIiLNS0_8CellKindE37EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIiLNS0_8CellKindE37EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIiLNS0_8CellKindE37EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %i.i) #11
  store i32 620757032, ptr %i.h, align 4, !tbaa !299
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !6
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE5beginERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !390 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE3endERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !391 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.u
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE2atERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !guid !392 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #1 comdat align 2 !guid !393 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #11
  br label %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !307
  br label %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.j) #11
  store i32 620757032, ptr %i.i, align 4, !tbaa !299
  %.01320.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i.i, align 4, !tbaa !6
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = or i64 %i.k, -281474976710656            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !310  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !318  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !319
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !318
  store i64 %i.l, ptr %i.p, align 8, !tbaa !297
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12JSTypedArrayIiLNS0_8CellKindE37EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj:bb.a
  store i32 1, ptr %i.ba, align 8, !tbaa !303
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 57, ptr %i.bb, align 8, !tbaa !304
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !305
  store ptr @.str.14, ptr %4, align 8, !tbaa !299
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bd, align 8, !tbaa !306
  %i.be = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i
  %.0.i = phi i32 [ %i.ap, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ %i.be, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i ]
  %i.bf = icmp eq i32 %.0.i, 0
  br i1 %i.bf, label %bb.g, label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread: ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread, %bb.a
  %.sroa.020.2 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.a ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %.0.i.i.i.i.i.i1225, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit ]
  ret ptr %.sroa.020.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE14getConstructorERKNS0_7RuntimeE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(9816) %0) local_unnamed_addr #4 align 2 !guid !396 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE10toDestTypeERKNS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !guid !397 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !300 ; 3 uses
  %i.b = fptoui double %i.a to i64                ; 2 uses
  %i.c = shl i64 %i.b, 1
  %i.d = ashr exact i64 %i.c, 1
  %i.e = sitofp i64 %i.d to double
  %i.f = fcmp une double %i.a, %i.e
  %i.g = trunc i64 %i.b to i32
  br i1 %i.f, label %bb.b, label %_ZN6hermes15truncateToInt32Ed.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.a) #11
  br label %_ZN6hermes15truncateToInt32Ed.exit

_ZN6hermes15truncateToInt32Ed.exit:               ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.g, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) unnamed_addr #1 comdat($_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EEC5ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE) align 2 !guid !398 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !297 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %3, align 8, !tbaa !297 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 0, i32 %i.g
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !tbaa !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.i.i.i.i.i7.i.i.i = icmp eq i64 %i.b, 0
  %i.i = sub i64 %.sroa.0.0.copyload.i.i.i2.i, %i.e
  %i.j = trunc i64 %i.i to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i, i32 0, i32 %i.j
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i, ptr %i.h, align 4, !tbaa !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 24, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #1 comdat align 2 !guid !399 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = zext i32 %i.b to i64
  %i.e = add i64 %i.d, %i.c
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  %i.h = load i8, ptr %i.g, align 1, !tbaa !53, !range !54, !noundef !55
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = icmp ult i32 %2, %i.k
  br i1 %i.l, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.n = load i8, ptr %i.m, align 4, !tbaa !295, !range !54, !noundef !55
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !296
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.s = load i64, ptr %i.r, align 8, !tbaa !297
  %i.t = xor i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !298
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = zext i32 %2 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !299
  %i.ac = uitofp i8 %i.ab to double
  %i.ad = bitcast double %i.ac to i64
  br label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE2atERNS0_7RuntimeEj.exit
  %.sroa.0.0 = phi i64 [ 0, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ], [ %i.ad, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE2atERNS0_7RuntimeEj.exit ], [ -1688849860263936, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i32 @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS4_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr %3) #1 comdat align 2 !guid !400 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !300    ; 2 uses
  %i.b = icmp ult i64 %i.a, -1970324836974592
  br i1 %i.b, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE38EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE38EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !46

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE38EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %3) #11 ; 2 uses
  %i.d = extractvalue { i32, i64 } %i.c, 0
  %i.e = extractvalue { i32, i64 } %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE38EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !56

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE38EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE38EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.47.1.i22 = phi i64 [ %i.e, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE38EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ %i.a, %bb.a ]
  %i.f = bitcast i64 %.sroa.47.1.i22 to double    ; 3 uses
  %i.g = fptoui double %i.f to i64                ; 2 uses
  %i.h = shl i64 %i.g, 1
  %i.i = ashr exact i64 %i.h, 1
  %i.j = sitofp i64 %i.i to double
  %i.k = fcmp une double %i.f, %i.j
  %i.l = trunc i64 %i.g to i32
  br i1 %i.k, label %bb.b, label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE10toDestTypeERKNS0_11HermesValueE.exit

bb.b:                                             ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE38EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.m = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.f) #11
  br label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE10toDestTypeERKNS0_11HermesValueE.exit

_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE10toDestTypeERKNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE38EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %bb.b
  %.1.i.i = phi i32 [ %i.l, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE38EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ], [ %i.m, %bb.b ]
  %i.n = trunc i32 %.1.i.i to i8
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !297
  %i.o = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE10toDestTypeERKNS0_11HermesValueE.exit
  %i.s = ptrtoint ptr %1 to i64
  %i.t = zext i32 %i.r to i64
  %i.u = add i64 %i.t, %i.s
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 37
  %i.x = load i8, ptr %i.w, align 1, !tbaa !53, !range !54, !noundef !55
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE10toDestTypeERKNS0_11HermesValueE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.z, align 8, !tbaa !303
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 46, ptr %i.aa, align 8, !tbaa !304
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ab, align 8, !tbaa !305
  store ptr @.str, ptr %4, align 8, !tbaa !299
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ac, align 8, !tbaa !306
  %i.ad = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ae = and i32 %i.ad, 255
  %5 = or disjoint i32 %i.ae, 256
  br label %bb.f

bb.c:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !45
  %i.ah = icmp ult i32 %2, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.f, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !295, !range !54, !noundef !55
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE2atERNS0_7RuntimeEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !296
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !297
  %i.ap = xor i64 %i.ao, %i.am
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !298
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = zext i32 %2 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  store i8 %i.n, ptr %i.aw, align 1, !tbaa !299
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE2atERNS0_7RuntimeEj.exit, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE38EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread
  %.sroa.014.0 = phi i32 [ %5, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 256, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE38EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 257, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE2atERNS0_7RuntimeEj.exit ], [ 257, %bb.c ]
  ret i32 %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE11getCellKindEv() local_unnamed_addr #1 comdat align 2 !guid !401 {
bb.a:
  ret i32 38
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !guid !402 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 637534208
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #1 comdat align 2 !guid !403 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIhLNS0_8CellKindE38EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIhLNS0_8CellKindE38EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIhLNS0_8CellKindE38EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %i.i) #11
  store i32 637534248, ptr %i.h, align 4, !tbaa !299
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !6
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !404 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE3endERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !405 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE2atERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !guid !406 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #1 comdat align 2 !guid !407 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #11
  br label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !307
  br label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.j) #11
  store i32 637534248, ptr %i.i, align 4, !tbaa !299
  %.01320.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i.i, align 4, !tbaa !6
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = or i64 %i.k, -281474976710656            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !310  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !318  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !319
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !318
  store i64 %i.l, ptr %i.p, align 8, !tbaa !297
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12JSTypedArrayIhLNS0_8CellKindE38EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj:bb.a
_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i: ; preds = %bb.f
  %i.at = ptrtoint ptr %1 to i64
  %i.au = zext i32 %i.as to i64
  %i.av = add i64 %i.au, %i.at
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 37
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !53, !range !54, !noundef !55
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i: ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.ba, align 8, !tbaa !303
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 57, ptr %i.bb, align 8, !tbaa !304
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !305
  store ptr @.str.14, ptr %4, align 8, !tbaa !299
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bd, align 8, !tbaa !306
  %i.be = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i
  %.0.i = phi i32 [ %i.ap, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ %i.be, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i ]
  %i.bf = icmp eq i32 %.0.i, 0
  br i1 %i.bf, label %bb.g, label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread: ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread, %bb.a
  %.sroa.020.2 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.a ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %.0.i.i.i.i.i.i1225, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit ]
  ret ptr %.sroa.020.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE14getConstructorERKNS0_7RuntimeE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(9816) %0) local_unnamed_addr #4 align 2 !guid !410 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i8 @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE10toDestTypeERKNS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !guid !411 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !300 ; 3 uses
  %i.b = fptoui double %i.a to i64                ; 2 uses
  %i.c = shl i64 %i.b, 1
  %i.d = ashr exact i64 %i.c, 1
  %i.e = sitofp i64 %i.d to double
  %i.f = fcmp une double %i.a, %i.e
  %i.g = trunc i64 %i.b to i32
  br i1 %i.f, label %bb.b, label %_ZN6hermes15truncateToInt32Ed.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.a) #11
  br label %_ZN6hermes15truncateToInt32Ed.exit

_ZN6hermes15truncateToInt32Ed.exit:               ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.g, %bb.a ], [ %i.h, %bb.b ]
  %i.i = trunc i32 %.1.i to i8
  ret i8 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) unnamed_addr #1 comdat($_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EEC5ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE) align 2 !guid !412 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !297 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %3, align 8, !tbaa !297 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 0, i32 %i.g
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !tbaa !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.i.i.i.i.i7.i.i.i = icmp eq i64 %i.b, 0
  %i.i = sub i64 %.sroa.0.0.copyload.i.i.i2.i, %i.e
  %i.j = trunc i64 %i.i to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i, i32 0, i32 %i.j
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i, ptr %i.h, align 4, !tbaa !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 24, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #1 comdat align 2 !guid !413 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = zext i32 %i.b to i64
  %i.e = add i64 %i.d, %i.c
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  %i.h = load i8, ptr %i.g, align 1, !tbaa !53, !range !54, !noundef !55
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = icmp ult i32 %2, %i.k
  br i1 %i.l, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.n = load i8, ptr %i.m, align 4, !tbaa !295, !range !54, !noundef !55
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !296
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.s = load i64, ptr %i.r, align 8, !tbaa !297
  %i.t = xor i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !298
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = zext i32 %2 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !299
  %i.ac = uitofp i8 %i.ab to double
  %i.ad = bitcast double %i.ac to i64
  br label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE2atERNS0_7RuntimeEj.exit
  %.sroa.0.0 = phi i64 [ 0, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ], [ %i.ad, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE2atERNS0_7RuntimeEj.exit ], [ -1688849860263936, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i32 @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS4_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr %3) #1 comdat align 2 !guid !414 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !300    ; 2 uses
  %i.b = icmp ult i64 %i.a, -1970324836974592
  br i1 %i.b, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE39EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE39EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !46

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE39EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %3) #11 ; 2 uses
  %i.d = extractvalue { i32, i64 } %i.c, 0
  %i.e = extractvalue { i32, i64 } %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE39EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !56

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE39EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE39EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.47.1.i22 = phi i64 [ %i.e, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE39EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ %i.a, %bb.a ]
  %i.f = bitcast i64 %.sroa.47.1.i22 to double
  %i.g = tail call noundef zeroext i8 @_ZN6hermes2vm12toUInt8ClampEd(double noundef %i.f) #11
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !297
  %i.h = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE39EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.l = ptrtoint ptr %1 to i64
  %i.m = zext i32 %i.k to i64
  %i.n = add i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 37
  %i.q = load i8, ptr %i.p, align 1, !tbaa !53, !range !54, !noundef !55
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE39EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.s, align 8, !tbaa !303
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 46, ptr %i.t, align 8, !tbaa !304
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.u, align 8, !tbaa !305
  store ptr @.str, ptr %4, align 8, !tbaa !299
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.v, align 8, !tbaa !306
  %i.w = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.x = and i32 %i.w, 255
  %5 = or disjoint i32 %i.x, 256
  br label %bb.e

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load i32, ptr %i.y, align 4, !tbaa !45
  %i.aa = icmp ult i32 %2, %i.z
  br i1 %i.aa, label %bb.c, label %bb.e, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !295, !range !54, !noundef !55
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !296
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !297
  %i.ai = xor i64 %i.ah, %i.af
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !298
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ao = zext i32 %2 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store i8 %i.g, ptr %i.ap, align 1, !tbaa !299
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE2atERNS0_7RuntimeEj.exit, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE39EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread
  %.sroa.014.0 = phi i32 [ %5, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 256, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE39EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 257, %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE2atERNS0_7RuntimeEj.exit ], [ 257, %bb.b ]
  ret i32 %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE11getCellKindEv() local_unnamed_addr #1 comdat align 2 !guid !415 {
bb.a:
  ret i32 39
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !guid !416 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 654311424
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #1 comdat align 2 !guid !417 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIhLNS0_8CellKindE39EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIhLNS0_8CellKindE39EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIhLNS0_8CellKindE39EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %i.i) #11
  store i32 654311464, ptr %i.h, align 4, !tbaa !299
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !6
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE5beginERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !418 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE3endERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !419 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE2atERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !guid !420 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #1 comdat align 2 !guid !421 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #11
  br label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !307
  br label %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.j) #11
  store i32 654311464, ptr %i.i, align 4, !tbaa !299
  %.01320.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i.i, align 4, !tbaa !6
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = or i64 %i.k, -281474976710656            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !310  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !318  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !319
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !318
  store i64 %i.l, ptr %i.p, align 8, !tbaa !297
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12JSTypedArrayIhLNS0_8CellKindE39EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj:bb.a

bb.f:                                             ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.aq = inttoptr i64 %i.ai to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !47 ; 2 uses
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i: ; preds = %bb.f
  %i.at = ptrtoint ptr %1 to i64
  %i.au = zext i32 %i.as to i64
  %i.av = add i64 %i.au, %i.at
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 37
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !53, !range !54, !noundef !55
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i: ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.ba, align 8, !tbaa !303
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 57, ptr %i.bb, align 8, !tbaa !304
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !305
  store ptr @.str.14, ptr %4, align 8, !tbaa !299
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bd, align 8, !tbaa !306
  %i.be = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i
  %.0.i = phi i32 [ %i.ap, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ %i.be, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i ]
  %i.bf = icmp eq i32 %.0.i, 0
  br i1 %i.bf, label %bb.g, label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread: ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread, %bb.a
  %.sroa.020.2 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.a ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %.0.i.i.i.i.i.i1225, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit ]
  ret ptr %.sroa.020.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE14getConstructorERKNS0_7RuntimeE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(9816) %0) local_unnamed_addr #4 align 2 !guid !424 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) unnamed_addr #1 comdat($_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EEC5ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE) align 2 !guid !425 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !297 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %3, align 8, !tbaa !297 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 0, i32 %i.g
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !tbaa !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.i.i.i.i.i7.i.i.i = icmp eq i64 %i.b, 0
  %i.i = sub i64 %.sroa.0.0.copyload.i.i.i2.i, %i.e
  %i.j = trunc i64 %i.i to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i, i32 0, i32 %i.j
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i, ptr %i.h, align 4, !tbaa !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 24, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #1 comdat align 2 !guid !426 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = zext i32 %i.b to i64
  %i.e = add i64 %i.d, %i.c
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  %i.h = load i8, ptr %i.g, align 1, !tbaa !53, !range !54, !noundef !55
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = icmp ult i32 %2, %i.k
  br i1 %i.l, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.n = load i8, ptr %i.m, align 4, !tbaa !295, !range !54, !noundef !55
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !296
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.s = load i64, ptr %i.r, align 8, !tbaa !297
  %i.t = xor i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !298
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = zext i32 %2 to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !322
  %i.ac = uitofp i16 %i.ab to double
  %i.ad = bitcast double %i.ac to i64
  br label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE2atERNS0_7RuntimeEj.exit
  %.sroa.0.0 = phi i64 [ 0, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ], [ %i.ad, %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE2atERNS0_7RuntimeEj.exit ], [ -1688849860263936, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i32 @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS4_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr %3) #1 comdat align 2 !guid !427 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !300    ; 2 uses
  %i.b = icmp ult i64 %i.a, -1970324836974592
  br i1 %i.b, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE40EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE40EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !46

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE40EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %3) #11 ; 2 uses
  %i.d = extractvalue { i32, i64 } %i.c, 0
  %i.e = extractvalue { i32, i64 } %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE40EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !56

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE40EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE40EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.47.1.i22 = phi i64 [ %i.e, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE40EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ %i.a, %bb.a ]
  %i.f = bitcast i64 %.sroa.47.1.i22 to double    ; 3 uses
  %i.g = fptoui double %i.f to i64                ; 2 uses
  %i.h = shl i64 %i.g, 1
  %i.i = ashr exact i64 %i.h, 1
  %i.j = sitofp i64 %i.i to double
  %i.k = fcmp une double %i.f, %i.j
  %i.l = trunc i64 %i.g to i32
  br i1 %i.k, label %bb.b, label %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE10toDestTypeERKNS0_11HermesValueE.exit

bb.b:                                             ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE40EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.m = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.f) #11
  br label %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE10toDestTypeERKNS0_11HermesValueE.exit

_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE10toDestTypeERKNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE40EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %bb.b
  %.1.i.i = phi i32 [ %i.l, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE40EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ], [ %i.m, %bb.b ]
  %i.n = trunc i32 %.1.i.i to i16
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !297
  %i.o = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE10toDestTypeERKNS0_11HermesValueE.exit
  %i.s = ptrtoint ptr %1 to i64
  %i.t = zext i32 %i.r to i64
  %i.u = add i64 %i.t, %i.s
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 37
  %i.x = load i8, ptr %i.w, align 1, !tbaa !53, !range !54, !noundef !55
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE10toDestTypeERKNS0_11HermesValueE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.z, align 8, !tbaa !303
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 46, ptr %i.aa, align 8, !tbaa !304
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ab, align 8, !tbaa !305
  store ptr @.str, ptr %4, align 8, !tbaa !299
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ac, align 8, !tbaa !306
  %i.ad = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ae = and i32 %i.ad, 255
  %5 = or disjoint i32 %i.ae, 256
  br label %bb.f

bb.c:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !45
  %i.ah = icmp ult i32 %2, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.f, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !295, !range !54, !noundef !55
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE2atERNS0_7RuntimeEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !296
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !297
  %i.ap = xor i64 %i.ao, %i.am
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !298
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = zext i32 %2 to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.av
  store i16 %i.n, ptr %i.aw, align 2, !tbaa !322
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE2atERNS0_7RuntimeEj.exit, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE40EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread
  %.sroa.014.0 = phi i32 [ %5, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 256, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE40EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 257, %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE2atERNS0_7RuntimeEj.exit ], [ 257, %bb.c ]
  ret i32 %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE11getCellKindEv() local_unnamed_addr #1 comdat align 2 !guid !428 {
bb.a:
  ret i32 40
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !guid !429 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 671088640
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #1 comdat align 2 !guid !430 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayItLNS0_8CellKindE40EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayItLNS0_8CellKindE40EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayItLNS0_8CellKindE40EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %i.i) #11
  store i32 671088680, ptr %i.h, align 4, !tbaa !299
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !6
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE5beginERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !431 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE3endERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !432 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.u
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 2 dereferenceable(2) ptr @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE2atERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !guid !433 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #1 comdat align 2 !guid !434 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #11
  br label %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !307
  br label %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.j) #11
  store i32 671088680, ptr %i.i, align 4, !tbaa !299
  %.01320.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i.i, align 4, !tbaa !6
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = or i64 %i.k, -281474976710656            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !310  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !318  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !319
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !318
  store i64 %i.l, ptr %i.p, align 8, !tbaa !297
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12JSTypedArrayItLNS0_8CellKindE40EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
end_hunk_5
begin_hunk_6_@_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj:bb.a
  store i32 1, ptr %i.ba, align 8, !tbaa !303
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 57, ptr %i.bb, align 8, !tbaa !304
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !305
  store ptr @.str.14, ptr %4, align 8, !tbaa !299
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bd, align 8, !tbaa !306
  %i.be = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i
  %.0.i = phi i32 [ %i.ap, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ %i.be, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i ]
  %i.bf = icmp eq i32 %.0.i, 0
  br i1 %i.bf, label %bb.g, label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread: ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread, %bb.a
  %.sroa.020.2 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.a ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %.0.i.i.i.i.i.i1225, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit ]
  ret ptr %.sroa.020.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE14getConstructorERKNS0_7RuntimeE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(9816) %0) local_unnamed_addr #4 align 2 !guid !437 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i16 @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE10toDestTypeERKNS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !guid !438 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !300 ; 3 uses
  %i.b = fptoui double %i.a to i64                ; 2 uses
  %i.c = shl i64 %i.b, 1
  %i.d = ashr exact i64 %i.c, 1
  %i.e = sitofp i64 %i.d to double
  %i.f = fcmp une double %i.a, %i.e
  %i.g = trunc i64 %i.b to i32
  br i1 %i.f, label %bb.b, label %_ZN6hermes15truncateToInt32Ed.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.a) #11
  br label %_ZN6hermes15truncateToInt32Ed.exit

_ZN6hermes15truncateToInt32Ed.exit:               ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.g, %bb.a ], [ %i.h, %bb.b ]
  %i.i = trunc i32 %.1.i to i16
  ret i16 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) unnamed_addr #1 comdat($_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EEC5ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE) align 2 !guid !439 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !297 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %3, align 8, !tbaa !297 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 0, i32 %i.g
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !tbaa !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.i.i.i.i.i7.i.i.i = icmp eq i64 %i.b, 0
  %i.i = sub i64 %.sroa.0.0.copyload.i.i.i2.i, %i.e
  %i.j = trunc i64 %i.i to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i, i32 0, i32 %i.j
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i, ptr %i.h, align 4, !tbaa !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 24, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #1 comdat align 2 !guid !440 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = zext i32 %i.b to i64
  %i.e = add i64 %i.d, %i.c
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  %i.h = load i8, ptr %i.g, align 1, !tbaa !53, !range !54, !noundef !55
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = icmp ult i32 %2, %i.k
  br i1 %i.l, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.n = load i8, ptr %i.m, align 4, !tbaa !295, !range !54, !noundef !55
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !296
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.s = load i64, ptr %i.r, align 8, !tbaa !297
  %i.t = xor i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !298
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = zext i32 %2 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6
  %i.ac = uitofp i32 %i.ab to double
  %i.ad = bitcast double %i.ac to i64
  br label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE2atERNS0_7RuntimeEj.exit
  %.sroa.0.0 = phi i64 [ 0, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ], [ %i.ad, %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE2atERNS0_7RuntimeEj.exit ], [ -1688849860263936, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i32 @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS4_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr %3) #1 comdat align 2 !guid !441 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !300    ; 2 uses
  %i.b = icmp ult i64 %i.a, -1970324836974592
  br i1 %i.b, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE41EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE41EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !46

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE41EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %3) #11 ; 2 uses
  %i.d = extractvalue { i32, i64 } %i.c, 0
  %i.e = extractvalue { i32, i64 } %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE41EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !56

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE41EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE41EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.47.1.i22 = phi i64 [ %i.e, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE41EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ %i.a, %bb.a ]
  %i.f = bitcast i64 %.sroa.47.1.i22 to double    ; 3 uses
  %i.g = fptoui double %i.f to i64                ; 2 uses
  %i.h = shl i64 %i.g, 1
  %i.i = ashr exact i64 %i.h, 1
  %i.j = sitofp i64 %i.i to double
  %i.k = fcmp une double %i.f, %i.j
  %i.l = trunc i64 %i.g to i32
  br i1 %i.k, label %bb.b, label %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE10toDestTypeERKNS0_11HermesValueE.exit

bb.b:                                             ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE41EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.m = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.f) #11
  br label %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE10toDestTypeERKNS0_11HermesValueE.exit

_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE10toDestTypeERKNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE41EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %bb.b
  %.1.i.i = phi i32 [ %i.l, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE41EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ], [ %i.m, %bb.b ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !297
  %i.n = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE10toDestTypeERKNS0_11HermesValueE.exit
  %i.r = ptrtoint ptr %1 to i64
  %i.s = zext i32 %i.q to i64
  %i.t = add i64 %i.s, %i.r
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 37
  %i.w = load i8, ptr %i.v, align 1, !tbaa !53, !range !54, !noundef !55
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE10toDestTypeERKNS0_11HermesValueE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.y, align 8, !tbaa !303
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 46, ptr %i.z, align 8, !tbaa !304
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.aa, align 8, !tbaa !305
  store ptr @.str, ptr %4, align 8, !tbaa !299
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ab, align 8, !tbaa !306
  %i.ac = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ad = and i32 %i.ac, 255
  %5 = or disjoint i32 %i.ad, 256
  br label %bb.f

bb.c:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !45
  %i.ag = icmp ult i32 %2, %i.af
  br i1 %i.ag, label %bb.d, label %bb.f, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !295, !range !54, !noundef !55
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE2atERNS0_7RuntimeEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !296
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.an = load i64, ptr %i.am, align 8, !tbaa !297
  %i.ao = xor i64 %i.an, %i.al
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !298
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.as
  %i.au = zext i32 %2 to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  store i32 %.1.i.i, ptr %i.av, align 4, !tbaa !6
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE2atERNS0_7RuntimeEj.exit, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE41EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread
  %.sroa.014.0 = phi i32 [ %5, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 256, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE41EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 257, %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE2atERNS0_7RuntimeEj.exit ], [ 257, %bb.c ]
  ret i32 %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE11getCellKindEv() local_unnamed_addr #1 comdat align 2 !guid !442 {
bb.a:
  ret i32 41
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !guid !443 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 687865856
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #1 comdat align 2 !guid !444 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIjLNS0_8CellKindE41EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIjLNS0_8CellKindE41EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIjLNS0_8CellKindE41EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %i.i) #11
  store i32 687865896, ptr %i.h, align 4, !tbaa !299
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !6
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE5beginERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !445 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE3endERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !446 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.u
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE2atERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !guid !447 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #1 comdat align 2 !guid !448 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #11
  br label %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !307
  br label %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.j) #11
  store i32 687865896, ptr %i.i, align 4, !tbaa !299
  %.01320.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i.i, align 4, !tbaa !6
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = or i64 %i.k, -281474976710656            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !310  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !318  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !319
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !318
  store i64 %i.l, ptr %i.p, align 8, !tbaa !297
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12JSTypedArrayIjLNS0_8CellKindE41EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
end_hunk_6
begin_hunk_7_@_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj:bb.a
  %i.at = ptrtoint ptr %1 to i64
  %i.au = zext i32 %i.as to i64
  %i.av = add i64 %i.au, %i.at
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 37
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !53, !range !54, !noundef !55
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i: ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.ba, align 8, !tbaa !303
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 57, ptr %i.bb, align 8, !tbaa !304
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !305
  store ptr @.str.14, ptr %4, align 8, !tbaa !299
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bd, align 8, !tbaa !306
  %i.be = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i
  %.0.i = phi i32 [ %i.ap, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ %i.be, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i ]
  %i.bf = icmp eq i32 %.0.i, 0
  br i1 %i.bf, label %bb.g, label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread: ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread, %bb.a
  %.sroa.020.2 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.a ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %.0.i.i.i.i.i.i1225, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit ]
  ret ptr %.sroa.020.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE14getConstructorERKNS0_7RuntimeE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(9816) %0) local_unnamed_addr #4 align 2 !guid !451 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE10toDestTypeERKNS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !guid !452 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !300 ; 3 uses
  %i.b = fptoui double %i.a to i64                ; 2 uses
  %i.c = shl i64 %i.b, 1
  %i.d = ashr exact i64 %i.c, 1
  %i.e = sitofp i64 %i.d to double
  %i.f = fcmp une double %i.a, %i.e
  %i.g = trunc i64 %i.b to i32
  br i1 %i.f, label %bb.b, label %_ZN6hermes15truncateToInt32Ed.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.a) #11
  br label %_ZN6hermes15truncateToInt32Ed.exit

_ZN6hermes15truncateToInt32Ed.exit:               ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.g, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) unnamed_addr #1 comdat($_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EEC5ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE) align 2 !guid !453 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !297 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %3, align 8, !tbaa !297 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 0, i32 %i.g
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !tbaa !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.i.i.i.i.i7.i.i.i = icmp eq i64 %i.b, 0
  %i.i = sub i64 %.sroa.0.0.copyload.i.i.i2.i, %i.e
  %i.j = trunc i64 %i.i to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i, i32 0, i32 %i.j
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i, ptr %i.h, align 4, !tbaa !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 24, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #1 comdat align 2 !guid !454 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = zext i32 %i.b to i64
  %i.e = add i64 %i.d, %i.c
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  %i.h = load i8, ptr %i.g, align 1, !tbaa !53, !range !54, !noundef !55
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = icmp ult i32 %2, %i.k
  br i1 %i.l, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.n = load i8, ptr %i.m, align 4, !tbaa !295, !range !54, !noundef !55
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !296
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.s = load i64, ptr %i.r, align 8, !tbaa !297
  %i.t = xor i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !298
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = zext i32 %2 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !324 ; 2 uses
  %i.ac = fpext float %i.ab to double
  %i.ad = fcmp uno float %i.ab, 0.000000e+00
  %i.ae = bitcast double %i.ac to i64
  %spec.select.i.i = select i1 %i.ad, i64 9221120237041090560, i64 %i.ae, !prof !309
  br label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, %_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE2atERNS0_7RuntimeEj.exit
  %.sroa.0.0 = phi i64 [ 0, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ], [ %spec.select.i.i, %_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE2atERNS0_7RuntimeEj.exit ], [ -1688849860263936, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i32 @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS4_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr %3) #1 comdat align 2 !guid !455 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !300    ; 2 uses
  %i.b = icmp ult i64 %i.a, -1970324836974592
  br i1 %i.b, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE42EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE42EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !46

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE42EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %3) #11 ; 2 uses
  %i.d = extractvalue { i32, i64 } %i.c, 0
  %i.e = extractvalue { i32, i64 } %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE42EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !56

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE42EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE42EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.47.1.i22 = phi i64 [ %i.e, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE42EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ %i.a, %bb.a ]
  %i.f = bitcast i64 %.sroa.47.1.i22 to double
  %i.g = fptrunc double %i.f to float
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !297
  %i.h = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE42EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.l = ptrtoint ptr %1 to i64
  %i.m = zext i32 %i.k to i64
  %i.n = add i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 37
  %i.q = load i8, ptr %i.p, align 1, !tbaa !53, !range !54, !noundef !55
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE42EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.s, align 8, !tbaa !303
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 46, ptr %i.t, align 8, !tbaa !304
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.u, align 8, !tbaa !305
  store ptr @.str, ptr %4, align 8, !tbaa !299
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.v, align 8, !tbaa !306
  %i.w = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.x = and i32 %i.w, 255
  %5 = or disjoint i32 %i.x, 256
  br label %bb.e

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load i32, ptr %i.y, align 4, !tbaa !45
  %i.aa = icmp ult i32 %2, %i.z
  br i1 %i.aa, label %bb.c, label %bb.e, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !295, !range !54, !noundef !55
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !296
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !297
  %i.ai = xor i64 %i.ah, %i.af
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !298
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ao = zext i32 %2 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  store float %i.g, ptr %i.ap, align 4, !tbaa !324
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE2atERNS0_7RuntimeEj.exit, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE42EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread
  %.sroa.014.0 = phi i32 [ %5, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 256, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE42EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 257, %_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE2atERNS0_7RuntimeEj.exit ], [ 257, %bb.b ]
  ret i32 %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE11getCellKindEv() local_unnamed_addr #1 comdat align 2 !guid !456 {
bb.a:
  ret i32 42
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !guid !457 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 704643072
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #1 comdat align 2 !guid !458 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIfLNS0_8CellKindE42EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIfLNS0_8CellKindE42EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIfLNS0_8CellKindE42EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %i.i) #11
  store i32 704643112, ptr %i.h, align 4, !tbaa !299
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !6
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE5beginERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !459 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE3endERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !460 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.u
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE2atERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !guid !461 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #1 comdat align 2 !guid !462 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #11
  br label %_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !307
  br label %_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.j) #11
  store i32 704643112, ptr %i.i, align 4, !tbaa !299
  %.01320.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i.i, align 4, !tbaa !6
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = or i64 %i.k, -281474976710656            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !310  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !318  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !319
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !318
  store i64 %i.l, ptr %i.p, align 8, !tbaa !297
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12JSTypedArrayIfLNS0_8CellKindE42EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
end_hunk_7
begin_hunk_8_@_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj:bb.a

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.al, align 8, !tbaa !303
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 52, ptr %i.am, align 8, !tbaa !304
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.an, align 8, !tbaa !305
  store ptr @.str.13, ptr %3, align 8, !tbaa !299
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.ao, align 8, !tbaa !306
  %i.ap = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit

bb.f:                                             ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.aq = inttoptr i64 %i.ai to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !47 ; 2 uses
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i: ; preds = %bb.f
  %i.at = ptrtoint ptr %1 to i64
  %i.au = zext i32 %i.as to i64
  %i.av = add i64 %i.au, %i.at
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 37
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !53, !range !54, !noundef !55
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i: ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.ba, align 8, !tbaa !303
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 57, ptr %i.bb, align 8, !tbaa !304
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !305
  store ptr @.str.14, ptr %4, align 8, !tbaa !299
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bd, align 8, !tbaa !306
  %i.be = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i
  %.0.i = phi i32 [ %i.ap, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ %i.be, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i ]
  %i.bf = icmp eq i32 %.0.i, 0
  br i1 %i.bf, label %bb.g, label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread: ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread, %bb.a
  %.sroa.020.2 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.a ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %.0.i.i.i.i.i.i1225, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit ]
  ret ptr %.sroa.020.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE14getConstructorERKNS0_7RuntimeE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(9816) %0) local_unnamed_addr #4 align 2 !guid !465 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) unnamed_addr #1 comdat($_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EEC5ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE) align 2 !guid !466 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !297 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %3, align 8, !tbaa !297 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 0, i32 %i.g
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !tbaa !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.i.i.i.i.i7.i.i.i = icmp eq i64 %i.b, 0
  %i.i = sub i64 %.sroa.0.0.copyload.i.i.i2.i, %i.e
  %i.j = trunc i64 %i.i to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i, i32 0, i32 %i.j
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i, ptr %i.h, align 4, !tbaa !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 24, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #1 comdat align 2 !guid !467 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = zext i32 %i.b to i64
  %i.e = add i64 %i.d, %i.c
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  %i.h = load i8, ptr %i.g, align 1, !tbaa !53, !range !54, !noundef !55
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = icmp ult i32 %2, %i.k
  br i1 %i.l, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.n = load i8, ptr %i.m, align 4, !tbaa !295, !range !54, !noundef !55
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !296
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.s = load i64, ptr %i.r, align 8, !tbaa !297
  %i.t = xor i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !298
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = zext i32 %2 to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !325 ; 2 uses
  %i.ac = fcmp uno double %i.ab, 0.000000e+00
  %i.ad = bitcast double %i.ab to i64
  %spec.select.i.i = select i1 %i.ac, i64 9221120237041090560, i64 %i.ad, !prof !309
  br label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, %_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE2atERNS0_7RuntimeEj.exit
  %.sroa.0.0 = phi i64 [ 0, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ], [ %spec.select.i.i, %_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE2atERNS0_7RuntimeEj.exit ], [ -1688849860263936, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i32 @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS4_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr %3) #1 comdat align 2 !guid !468 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !300    ; 2 uses
  %i.b = icmp ult i64 %i.a, -1970324836974592
  br i1 %i.b, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE43EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE43EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !46

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE43EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %3) #11 ; 2 uses
  %i.d = extractvalue { i32, i64 } %i.c, 0
  %i.e = extractvalue { i32, i64 } %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE43EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !56

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE43EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE43EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.47.1.i22 = phi i64 [ %i.e, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE43EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ %i.a, %bb.a ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !297
  %i.f = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE43EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.j = ptrtoint ptr %1 to i64
  %i.k = zext i32 %i.i to i64
  %i.l = add i64 %i.k, %i.j
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 37
  %i.o = load i8, ptr %i.n, align 1, !tbaa !53, !range !54, !noundef !55
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE43EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.q, align 8, !tbaa !303
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 46, ptr %i.r, align 8, !tbaa !304
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.s, align 8, !tbaa !305
  store ptr @.str, ptr %4, align 8, !tbaa !299
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.t, align 8, !tbaa !306
  %i.u = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.v = and i32 %i.u, 255
  %5 = or disjoint i32 %i.v, 256
  br label %bb.e

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !45
  %i.y = icmp ult i32 %2, %i.x
  br i1 %i.y, label %bb.c, label %bb.e, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !295, !range !54, !noundef !55
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !296
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !297
  %i.ag = xor i64 %i.af, %i.ad
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !298
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  %i.am = zext i32 %2 to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  store i64 %.sroa.47.1.i22, ptr %i.an, align 8, !tbaa !325
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE2atERNS0_7RuntimeEj.exit, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE43EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread
  %.sroa.014.0 = phi i32 [ %5, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 256, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE43EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 257, %_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE2atERNS0_7RuntimeEj.exit ], [ 257, %bb.b ]
  ret i32 %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE11getCellKindEv() local_unnamed_addr #1 comdat align 2 !guid !469 {
bb.a:
  ret i32 43
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !guid !470 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 721420288
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #1 comdat align 2 !guid !471 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIdLNS0_8CellKindE43EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIdLNS0_8CellKindE43EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIdLNS0_8CellKindE43EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %i.i) #11
  store i32 721420328, ptr %i.h, align 4, !tbaa !299
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !6
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE5beginERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !472 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE3endERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !473 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE2atERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !guid !474 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #1 comdat align 2 !guid !475 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #11
  br label %_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !307
  br label %_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.j) #11
  store i32 721420328, ptr %i.i, align 4, !tbaa !299
  %.01320.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i.i, align 4, !tbaa !6
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = or i64 %i.k, -281474976710656            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !310  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !318  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !319
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !318
  store i64 %i.l, ptr %i.p, align 8, !tbaa !297
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12JSTypedArrayIdLNS0_8CellKindE43EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
end_hunk_8
begin_hunk_9_@_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE:bb.a
  %i.j = trunc i64 %i.i to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i, i32 0, i32 %i.j
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i, ptr %i.h, align 4, !tbaa !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 24, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #1 comdat align 2 !guid !480 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = zext i32 %i.c to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 37
  %i.i = load i8, ptr %i.h, align 1, !tbaa !53, !range !54, !noundef !55
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.a, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.k = tail call i64 @_ZN6hermes2vm17_getOwnRetEncoderIlE14encodeMayAllocERNS0_7RuntimeEl(ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 noundef 0)
  br label %_ZN6hermes2vm17_getOwnRetEncoderIlE14encodeMayAllocERNS0_7RuntimeEl.exit

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45
  %i.n = icmp ult i32 %2, %i.m
  br i1 %i.n, label %bb.c, label %_ZN6hermes2vm17_getOwnRetEncoderIlE14encodeMayAllocERNS0_7RuntimeEl.exit, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.p = load i8, ptr %i.o, align 4, !tbaa !295, !range !54, !noundef !55
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !296
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.u = load i64, ptr %i.t, align 8, !tbaa !297
  %i.v = xor i64 %i.u, %i.s
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !298
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = zext i32 %2 to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !297
  %i.ae = tail call noundef i32 @_ZN6hermes2vm15BigIntPrimitive19calcCellSizeInBytesEj(i32 noundef 1) #11
  %i.af = add i32 %i.ae, 7                        ; 2 uses
  %i.ag = and i32 %i.af, -8                       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !307 ; 2 uses
  %i.aj = zext i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.ak, %i.am
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.f, !prof !309

bb.e:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE2atERNS0_7RuntimeEj.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ao = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.an, i32 noundef %i.ag) #11
  br label %_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE.exit.i

bb.f:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE2atERNS0_7RuntimeEj.exit
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !307
  br label %_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE.exit.i

_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE.exit.i: ; preds = %bb.f, %bb.e
  %i.ap = phi ptr [ %i.ao, %bb.e ], [ %i.ai, %bb.f ] ; 5 uses
  tail call void @_ZN6hermes2vm15BigIntPrimitiveC1Ej(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i32 noundef 1) #11
  %i.aq = and i32 %i.af, 16777208
  %i.ar = or disjoint i32 %i.aq, 1291845632
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !299
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.av = call noundef i32 @_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE(ptr nonnull %i.at, ptr nonnull %i.au, ptr nonnull %i.a, i64 8) #11
  %i.aw = call noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.av)
  %i.ax = or i64 %i.as, -562949953421312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ay = icmp eq i32 %i.aw, 0
  br i1 %i.ay, label %bb.g, label %_ZN6hermes2vm17_getOwnRetEncoderIlE14encodeMayAllocERNS0_7RuntimeEl.exit, !prof !309

bb.g:                                             ; preds = %_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 720
  store i64 -1970324836974592, ptr %i.az, align 8, !tbaa !300
  br label %_ZN6hermes2vm17_getOwnRetEncoderIlE14encodeMayAllocERNS0_7RuntimeEl.exit

_ZN6hermes2vm17_getOwnRetEncoderIlE14encodeMayAllocERNS0_7RuntimeEl.exit: ; preds = %bb.b, %bb.g, %_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE.exit.i, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread
  %.sroa.0.0 = phi i64 [ %i.k, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ %i.ax, %_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE.exit.i ], [ -1688849860263936, %bb.g ], [ -1688849860263936, %bb.b ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i32 @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS4_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr %3) #1 comdat align 2 !guid !481 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = tail call { i32, i64 } @_ZN6hermes2vm12toBigInt_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %3) #11 ; 2 uses
  %i.b = extractvalue { i32, i64 } %i.a, 0
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %bb.b, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, i64 } %i.a, 1        ; 2 uses
  %.mask.i.i = and i64 %i.d, -281474976710656
  %i.e = icmp eq i64 %.mask.i.i, -562949953421312
  br i1 %i.e, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread22, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !46

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.f, align 8, !tbaa !303
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 14, ptr %i.g, align 8, !tbaa !304
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !305
  store ptr @.str.22, ptr %4, align 8, !tbaa !299
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.i, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !303
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 10, ptr %i.k, align 8, !tbaa !304
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !305
  store ptr @.str.23, ptr %5, align 8, !tbaa !299
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !306
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr %3, ptr noundef nonnull align 8 dereferenceable(48) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread22, !prof !326

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread22: ; preds = %bb.b, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %i.p = and i64 %i.d, 281474976710655
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !329
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE10toDestTypeERKNS0_11HermesValueE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread22
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !297
  br label %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE10toDestTypeERKNS0_11HermesValueE.exit

_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE10toDestTypeERKNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread22, %bb.c
  %i.w = phi i64 [ %i.v, %bb.c ], [ 0, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread22 ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !297
  %i.x = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !47  ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE10toDestTypeERKNS0_11HermesValueE.exit
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = zext i32 %i.aa to i64
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 37
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !53, !range !54, !noundef !55
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE10toDestTypeERKNS0_11HermesValueE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.ai, align 8, !tbaa !303
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 46, ptr %i.aj, align 8, !tbaa !304
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.ak, align 8, !tbaa !305
  store ptr @.str, ptr %6, align 8, !tbaa !299
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.al, align 8, !tbaa !306
  %i.am = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.an = and i32 %i.am, 255
  %7 = or disjoint i32 %i.an, 256
  br label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread

bb.d:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !45
  %i.aq = icmp ult i32 %2, %i.ap
  br i1 %i.aq, label %bb.e, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !295, !range !54, !noundef !55
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE2atERNS0_7RuntimeEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !296
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !297
  %i.ay = xor i64 %i.ax, %i.av
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !298
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc
  %i.be = zext i32 %2 to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  store i64 %i.w, ptr %i.bf, align 8, !tbaa !297
  br label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %bb.d, %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE2atERNS0_7RuntimeEj.exit, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread
  %.sroa.014.0 = phi i32 [ %7, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 256, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE44EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 257, %bb.d ], [ 257, %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE2atERNS0_7RuntimeEj.exit ], [ 256, %bb.a ]
  ret i32 %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE11getCellKindEv() local_unnamed_addr #1 comdat align 2 !guid !482 {
bb.a:
  ret i32 44
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !guid !483 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 738197504
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #1 comdat align 2 !guid !484 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIlLNS0_8CellKindE44EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIlLNS0_8CellKindE44EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayIlLNS0_8CellKindE44EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %i.i) #11
  store i32 738197544, ptr %i.h, align 4, !tbaa !299
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !6
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE5beginERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !485 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE3endERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !486 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE2atERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !guid !487 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #1 comdat align 2 !guid !488 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #11
  br label %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !307
  br label %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.j) #11
  store i32 738197544, ptr %i.i, align 4, !tbaa !299
  %.01320.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i.i, align 4, !tbaa !6
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = or i64 %i.k, -281474976710656            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !310  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !318  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !319
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !318
  store i64 %i.l, ptr %i.p, align 8, !tbaa !297
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12JSTypedArrayIlLNS0_8CellKindE44EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
end_hunk_9
begin_hunk_10_@_ZN6hermes2vm17_getOwnRetEncoderIlE14encodeMayAllocERNS0_7RuntimeEl:bb.a
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE10toDestTypeERKNS0_11HermesValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 !guid !493 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !300
  %i.b = and i64 %i.a, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !329
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !297
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EEC2ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) unnamed_addr #1 comdat($_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EEC5ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE) align 2 !guid !494 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !297 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %3, align 8, !tbaa !297 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 0, i32 %i.g
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !tbaa !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.i.i.i.i.i7.i.i.i = icmp eq i64 %i.b, 0
  %i.i = sub i64 %.sroa.0.0.copyload.i.i.i2.i, %i.e
  %i.j = trunc i64 %i.i to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i, i32 0, i32 %i.j
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i, ptr %i.h, align 4, !tbaa !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 24, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE18_getOwnIndexedImplENS0_12PseudoHandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #1 comdat align 2 !guid !495 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.sink.split, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = zext i32 %i.b to i64
  %i.e = add i64 %i.d, %i.c
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  %i.h = load i8, ptr %i.g, align 1, !tbaa !53, !range !54, !noundef !55
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %.sink.split, !prof !56

bb.b:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = icmp ult i32 %2, %i.k
  br i1 %i.l, label %bb.c, label %bb.e, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.n = load i8, ptr %i.m, align 4, !tbaa !295, !range !54, !noundef !55
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE2atERNS0_7RuntimeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !296
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.s = load i64, ptr %i.r, align 8, !tbaa !297
  %i.t = xor i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !298
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = zext i32 %2 to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !297
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, %bb.a, %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE2atERNS0_7RuntimeEj.exit
  %.sink = phi i64 [ %i.ab, %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE2atERNS0_7RuntimeEj.exit ], [ 0, %bb.a ], [ 0, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ]
  %i.ac = tail call i64 @_ZN6hermes2vm17_getOwnRetEncoderImE14encodeMayAllocERNS0_7RuntimeEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 noundef %.sink)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b
  %.sroa.0.0 = phi i64 [ -1688849860263936, %bb.b ], [ %i.ac, %.sink.split ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i32 @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS4_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, ptr %3) #1 comdat align 2 !guid !496 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = tail call { i32, i64 } @_ZN6hermes2vm12toBigInt_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %3) #11 ; 2 uses
  %i.b = extractvalue { i32, i64 } %i.a, 0
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %bb.b, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, i64 } %i.a, 1        ; 2 uses
  %.mask.i.i = and i64 %i.d, -281474976710656
  %i.e = icmp eq i64 %.mask.i.i, -562949953421312
  br i1 %i.e, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread22, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !46

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.f, align 8, !tbaa !303
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 14, ptr %i.g, align 8, !tbaa !304
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !305
  store ptr @.str.22, ptr %4, align 8, !tbaa !299
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.i, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.j, align 8, !tbaa !303
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 10, ptr %i.k, align 8, !tbaa !304
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !305
  store ptr @.str.23, ptr %5, align 8, !tbaa !299
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !306
  %i.n = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr %3, ptr noundef nonnull align 8 dereferenceable(48) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread22, !prof !326

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread22: ; preds = %bb.b, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %i.p = and i64 %i.d, 281474976710655
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !329
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE10toDestTypeERKNS0_11HermesValueE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread22
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !297
  br label %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE10toDestTypeERKNS0_11HermesValueE.exit

_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE10toDestTypeERKNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread22, %bb.c
  %i.w = phi i64 [ %i.v, %bb.c ], [ 0, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread22 ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !297
  %i.x = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !47  ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, !prof !48

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE10toDestTypeERKNS0_11HermesValueE.exit
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = zext i32 %i.aa to i64
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 37
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !53, !range !54, !noundef !55
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, !prof !56

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE10toDestTypeERKNS0_11HermesValueE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.ai, align 8, !tbaa !303
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 46, ptr %i.aj, align 8, !tbaa !304
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.ak, align 8, !tbaa !305
  store ptr @.str, ptr %6, align 8, !tbaa !299
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.al, align 8, !tbaa !306
  %i.am = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.an = and i32 %i.am, 255
  %7 = or disjoint i32 %i.an, 256
  br label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread

bb.d:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !45
  %i.aq = icmp ult i32 %2, %i.ap
  br i1 %i.aq, label %bb.e, label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !295, !range !54, !noundef !55
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE2atERNS0_7RuntimeEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE2atERNS0_7RuntimeEj.exit: ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !296
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !297
  %i.ay = xor i64 %i.ax, %i.av
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !298
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc
  %i.be = zext i32 %2 to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  store i64 %i.w, ptr %i.bf, align 8, !tbaa !297
  br label %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread

_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %bb.d, %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE2atERNS0_7RuntimeEj.exit, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread
  %.sroa.014.0 = phi i32 [ %7, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 256, %_ZN6hermes2vm19_setOwnValueEncoderILNS0_8CellKindE45EE6encodeERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 257, %bb.d ], [ 257, %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE2atERNS0_7RuntimeEj.exit ], [ 256, %bb.a ]
  ret i32 %.sroa.014.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE11getCellKindEv() local_unnamed_addr #1 comdat align 2 !guid !497 {
bb.a:
  ret i32 45
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !guid !498 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 754974720
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #1 comdat align 2 !guid !499 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 40) #11
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayImLNS0_8CellKindE45EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayImLNS0_8CellKindE45EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit

_ZN6hermes2vm7Runtime10makeAFixedINS0_12JSTypedArrayImLNS0_8CellKindE45EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEENS9_INS0_11HiddenClassEEEEEEPT_DpOT2_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr nonnull %i.i) #11
  store i32 754974760, ptr %i.h, align 4, !tbaa !299
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !6
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE5beginERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !500 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE3endERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 !guid !501 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE2atERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !guid !502 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !295, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !297
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !298
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #1 comdat align 2 !guid !503 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !308
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !309

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #11
  br label %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !307
  br label %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.j) #11
  store i32 754974760, ptr %i.i, align 4, !tbaa !299
  %.01320.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i.i, align 4, !tbaa !6
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = or i64 %i.k, -281474976710656            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !310  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !318  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !319
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !318
  store i64 %i.l, ptr %i.p, align 8, !tbaa !297
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12JSTypedArrayImLNS0_8CellKindE45EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
end_hunk_10

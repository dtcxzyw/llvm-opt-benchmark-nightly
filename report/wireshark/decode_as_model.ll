Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/decode_as_model?download=true
inline.NumInlined: 1032
inline.NumDeleted: 432
begin_hunk_0_@_ZN13DecodeAsModel18setDissectorHandleERK11QModelIndexP16dissector_handle:bb.a
  %i.a = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.b = load i32, ptr %1, align 8
  %i.c = sext i32 %i.b to i64
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5QListIP12DecodeAsItemE6detachEv.exit.i, label %_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %_ZN5QListIP12DecodeAsItemE6detachEv.exit.i, label %_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.i.i.i.i

_ZN5QListIP12DecodeAsItemE6detachEv.exit.i:       ; preds = %_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.i.i.i, %bb.a
  tail call void @_ZN17QArrayDataPointerIP12DecodeAsItemE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.i.i.i.i: ; preds = %_ZN5QListIP12DecodeAsItemE6detachEv.exit.i, %_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.i.i.i
  %i.g = phi ptr [ %.pre.i, %_ZN5QListIP12DecodeAsItemE6detachEv.exit.i ], [ %i.d, %_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.i.i.i ]
  %i.h = load atomic i32, ptr %i.g monotonic, align 4
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.thread.i.i.i.i, label %_ZN5QListIP12DecodeAsItemEixEx.exit

_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.i.i.i.i, %_ZN5QListIP12DecodeAsItemE6detachEv.exit.i
  tail call void @_ZN17QArrayDataPointerIP12DecodeAsItemE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIP12DecodeAsItemEixEx.exit

_ZN5QListIP12DecodeAsItemEixEx.exit:              ; preds = %_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerIP12DecodeAsItemE11needsDetachEv.exit.thread.i.i.i.i
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.c
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5QListIP12DecodeAsItemEixEx.exit
  tail call void @_ZN12DecodeAsItem18setDissectorHandleEP16dissector_handle(ptr noundef nonnull align 8 dereferenceable_or_null(144) %i.m, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5QListIP12DecodeAsItemEixEx.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @dtbl_entry_get_handle(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @dissector_get_guid_handle(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN13DecodeAsModel20gatherChangedEntriesEPKc6ftenumPvS3_S3_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"struct.std::pair", align 8        ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.e = tail call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef align 8 dereferenceable_or_null(56) @_ZN13DecodeAsModel16staticMetaObjectE, ptr noundef %4) ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @dtbl_entry_get_handle(ptr noundef %3)
  switch i32 %1, label %bb.f [
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
    i32 7, label %bb.c
    i32 0, label %bb.d
    i32 26, label %bb.e
    i32 27, label %bb.e
    i32 28, label %bb.e
    i32 43, label %bb.e
    i32 45, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.h = getelementptr i8, ptr %i.e, i64 48       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = ptrtoint ptr %2 to i64
  %i.j = trunc i64 %i.i to i32
  store i32 %i.j, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.k = tail call ptr @dissector_handle_get_pref_suffix(ptr noundef %i.g)
  store ptr %i.k, ptr %i.c, align 8
  %i.l = getelementptr i8, ptr %i.e, i64 64
  %i.m = load i64, ptr %i.l, align 8
  call void @_ZN9QtPrivate16QGenericArrayOpsIN13DecodeAsModel9UIntEntryEE7emplaceIJRPKcjS6_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.h, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.n = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.c
  %i.o = load atomic i32, ptr %i.n monotonic, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.thread.i.i.i.i, label %_ZN5QListIN13DecodeAsModel9UIntEntryEE11emplaceBackIJRPKcjS5_EEERS1_DpOT_.exit

_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.i.i.i.i, %bb.c
  call void @_ZN17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %i.h, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIN13DecodeAsModel9UIntEntryEE11emplaceBackIJRPKcjS5_EEERS1_DpOT_.exit

_ZN5QListIN13DecodeAsModel9UIntEntryEE11emplaceBackIJRPKcjS5_EEERS1_DpOT_.exit: ; preds = %_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.e, i64 48       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4
  %i.r = getelementptr i8, ptr %i.e, i64 64
  %i.s = load i64, ptr %i.r, align 8
  call void @_ZN9QtPrivate16QGenericArrayOpsIN13DecodeAsModel9UIntEntryEE7emplaceIJRPKciRA1_S5_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.q, i64 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef align 1 dereferenceable(1) @.str)
  %i.t = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i9, label %_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.thread.i.i.i.i11, label %_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.i.i.i.i10

_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.i.i.i.i10: ; preds = %bb.d
  %i.u = load atomic i32, ptr %i.t monotonic, align 4
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.thread.i.i.i.i11, label %_ZN5QListIN13DecodeAsModel9UIntEntryEE11emplaceBackIJRPKciRA1_S4_EEERS1_DpOT_.exit

_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.thread.i.i.i.i11: ; preds = %_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.i.i.i.i10, %bb.d
  call void @_ZN17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %i.q, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIN13DecodeAsModel9UIntEntryEE11emplaceBackIJRPKciRA1_S4_EEERS1_DpOT_.exit

_ZN5QListIN13DecodeAsModel9UIntEntryEE11emplaceBackIJRPKciRA1_S4_EEERS1_DpOT_.exit: ; preds = %_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.i.i.i.i10, %_ZNK17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE11needsDetachEv.exit.thread.i.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.w = getelementptr i8, ptr %i.e, i64 72       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %0, ptr %5, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.e, i64 88
  %i.z = load i64, ptr %i.y, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsISt4pairIPKcS3_EE7emplaceIJS4_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.w, i64 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.aa = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerISt4pairIPKcS2_EE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerISt4pairIPKcS2_EE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerISt4pairIPKcS2_EE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %_ZNK17QArrayDataPointerISt4pairIPKcS2_EE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZN5QListISt4pairIPKcS2_EElsEOS3_.exit

_ZNK17QArrayDataPointerISt4pairIPKcS2_EE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerISt4pairIPKcS2_EE11needsDetachEv.exit.i.i.i.i.i.i, %bb.e
  call void @_ZN17QArrayDataPointerISt4pairIPKcS2_EE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS4_(ptr noundef align 8 dereferenceable_or_null(24) %i.w, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListISt4pairIPKcS2_EElsEOS3_.exit

_ZN5QListISt4pairIPKcS2_EElsEOS3_.exit:           ; preds = %_ZNK17QArrayDataPointerISt4pairIPKcS2_EE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerISt4pairIPKcS2_EE11needsDetachEv.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.f

bb.f:                                             ; preds = %_ZN5QListIN13DecodeAsModel9UIntEntryEE11emplaceBackIJRPKcjS5_EEERS1_DpOT_.exit, %_ZN5QListIN13DecodeAsModel9UIntEntryEE11emplaceBackIJRPKciRA1_S4_EEERS1_DpOT_.exit, %_ZN5QListISt4pairIPKcS2_EElsEOS3_.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @dissector_handle_get_pref_suffix(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN13DecodeAsModel12applyChangesEv(ptr noundef align 8 dereferenceable_or_null(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.QtPrivate::QForeachContainer.18", align 8 ; 12 uses
  %2 = alloca %class.QByteArray, align 8          ; 7 uses
  %3 = alloca %class.QString, align 16            ; 10 uses
  %4 = alloca %class.QByteArray, align 8          ; 9 uses
  %5 = alloca %class.QString, align 16            ; 10 uses
  %6 = alloca %class.QByteArray, align 8          ; 9 uses
  %7 = alloca %class.QString, align 16            ; 10 uses
  %8 = alloca %class.QByteArray, align 8          ; 10 uses
  tail call void @dissector_all_tables_foreach_changed(ptr noundef @_ZN13DecodeAsModel20gatherChangedEntriesEPKc6ftenumPvS3_S3_, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.b = getelementptr i8, ptr %0, i64 48         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.c = load ptr, ptr %i.b, align 8, !noalias !52 ; 3 uses
  store ptr %i.c, ptr %1, align 8, !alias.scope !52
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !noalias !52 ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !alias.scope !52
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !noalias !52 ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !52
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIN13DecodeAsModel9UIntEntryEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = atomicrmw add ptr %i.c, i32 1 acq_rel, align 4, !noalias !52 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIN13DecodeAsModel9UIntEntryEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIN13DecodeAsModel9UIntEntryEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.idx = mul i64 %i.i, 56                        ; 2 uses
  %i.m = getelementptr i8, ptr %i.f, i64 %.idx    ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !alias.scope !52
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 1, ptr %i.n, align 8, !alias.scope !52
  %.not274302 = icmp eq i64 %.idx, 0
  br i1 %.not274302, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.r, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIN13DecodeAsModel9UIntEntryEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  %.lcssa = phi ptr [ %i.f, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIN13DecodeAsModel9UIntEntryEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ], [ %i.m, %bb.r ]
  store ptr %.lcssa, ptr %i.k, align 8
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIN13DecodeAsModel9UIntEntryEEED2Ev.exit, label %_ZN17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE5derefEv.exit.i.i.i: ; preds = %._crit_edge
  %i.p = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.p, 1
  br i1 %.not.i.i.i, label %bb.c, label %_ZN9QtPrivate17QForeachContainerI5QListIN13DecodeAsModel9UIntEntryEEED2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE5derefEv.exit.i.i.i
  %i.q = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.r = load i64, ptr %i.g, align 8
  %.idx.i.i.i.i = mul i64 %i.r, 56                ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i
  %.not4.i.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsIN13DecodeAsModel9UIntEntryEE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %_ZSt8_DestroyIN13DecodeAsModel9UIntEntryEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyIN13DecodeAsModel9UIntEntryEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.q, %bb.c ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN10QByteArrayD2Ev.exit.i.i.i.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.v = atomicrmw add ptr %i.u, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.v, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN10QByteArrayD2Ev.exit.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.w = load ptr, ptr %i.t, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.w, i64 noundef 1, i64 noundef 8) #22
  br label %_ZN10QByteArrayD2Ev.exit.i.i.i.i.i.i.i.i.i

_ZN10QByteArrayD2Ev.exit.i.i.i.i.i.i.i.i.i:       ; preds = %bb.d, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.x = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN13DecodeAsModel9UIntEntryEEvPT_.exit.i.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10QByteArrayD2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.y = atomicrmw add ptr %i.x, i32 -1 acq_rel, align 4
  %.not.i.i3.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.y, 1
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZSt8_DestroyIN13DecodeAsModel9UIntEntryEEvPT_.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.z, i64 noundef 1, i64 noundef 8) #22
  br label %_ZSt8_DestroyIN13DecodeAsModel9UIntEntryEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN13DecodeAsModel9UIntEntryEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i2.i.i.i.i.i.i.i.i.i, %_ZN10QByteArrayD2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.aa = getelementptr i8, ptr %.05.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsIN13DecodeAsModel9UIntEntryEE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZN9QtPrivate16QGenericArrayOpsIN13DecodeAsModel9UIntEntryEE10destroyAllEv.exit.i.i.i: ; preds = %_ZSt8_DestroyIN13DecodeAsModel9UIntEntryEEvPT_.exit.i.i.i.i.i.i.i, %bb.c
  %i.ab = load ptr, ptr %1, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ab, i64 noundef 56, i64 noundef 8) #22
  br label %_ZN9QtPrivate17QForeachContainerI5QListIN13DecodeAsModel9UIntEntryEEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListIN13DecodeAsModel9UIntEntryEEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerIN13DecodeAsModel9UIntEntryEE5derefEv.exit.i.i.i, %_ZN9QtPrivate16QGenericArrayOpsIN13DecodeAsModel9UIntEntryEE10destroyAllEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  tail call void @_ZN5QListIN13DecodeAsModel9UIntEntryEE5clearEv(ptr noundef align 8 dereferenceable_or_null(24) %i.b)
  %i.ac = getelementptr i8, ptr %0, i64 72        ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !53 ; 6 uses
  %i.ae = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !53 ; 2 uses
  %i.ag = getelementptr i8, ptr %0, i64 88        ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !53
  %.not.i.i.i.i.i124 = icmp eq ptr %i.ad, null    ; 3 uses
  br i1 %.not.i.i.i.i.i124, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListISt4pairIPKcS4_EEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOSA_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIN13DecodeAsModel9UIntEntryEEED2Ev.exit
  %i.ai = atomicrmw add ptr %i.ad, i32 1 acq_rel, align 4, !noalias !53 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListISt4pairIPKcS4_EEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOSA_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListISt4pairIPKcS4_EEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOSA_.exit: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIN13DecodeAsModel9UIntEntryEEED2Ev.exit, %bb.f
  %.idx318 = shl i64 %i.ah, 4                     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.af, i64 %.idx318
  %.not275303 = icmp eq i64 %.idx318, 0
  br i1 %.not275303, label %._crit_edge306, label %.lr.ph305

.lr.ph:                                           ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIN13DecodeAsModel9UIntEntryEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, %bb.r
  %i.ak = phi ptr [ %i.be, %bb.r ], [ %i.f, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIN13DecodeAsModel9UIntEntryEEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ] ; 5 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8      ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  %spec.select.i.i = select i1 %.not.i.i, ptr @_ZN10QByteArray6_emptyE, ptr %i.am
  %i.an = invoke ptr @find_dissector_table(ptr noundef nonnull %spec.select.i.i)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = invoke ptr @dissector_get_uint_handle(ptr noundef %i.an, i32 noundef %i.ap)
          to label %bb.h unwind label %bb.p       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not120 = icmp eq ptr %i.aq, null
  br i1 %.not120, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = invoke i32 @dissector_handle_get_protocol_index(ptr noundef nonnull %i.aq)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.as = invoke ptr @proto_get_protocol_filter_name(i32 noundef %i.ar)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.at = invoke ptr @prefs_find_module(ptr noundef %i.as)
          to label %bb.l unwind label %bb.p       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr i8, ptr %i.ak, i64 40
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.av, null
  %spec.select.i.i126 = select i1 %.not.i.i125, ptr @_ZN10QByteArray6_emptyE, ptr %i.av
  %i.aw = invoke ptr @prefs_find_preference(ptr noundef %i.at, ptr noundef nonnull %spec.select.i.i126)
          to label %bb.m unwind label %bb.p       ; 3 uses

bb.m:                                             ; preds = %bb.l
  %.not121 = icmp eq ptr %i.aw, null
  br i1 %.not121, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = invoke i32 @prefs_get_effect_flags(ptr noundef nonnull %i.aw)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr i8, ptr %i.at, i64 76     ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = or i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4
  invoke void @reset_pref(ptr noundef nonnull %i.aw)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %.lr.ph
  %i.bb = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %i.k, align 8
  call void @_ZN9QtPrivate17QForeachContainerI5QListIN13DecodeAsModel9UIntEntryEEED2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable_or_null(44) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZN9QtPrivate17QForeachContainerI5QListISt4pairIPKcS4_EEED2Ev.exit137

bb.q:                                             ; preds = %bb.m, %bb.o, %bb.h
  %i.bc = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i127 = icmp eq ptr %i.bc, null
  %spec.select.i.i128 = select i1 %.not.i.i127, ptr @_ZN10QByteArray6_emptyE, ptr %i.bc
  %i.bd = load i32, ptr %i.ao, align 8
  invoke void @dissector_reset_uint(ptr noundef nonnull %spec.select.i.i128, i32 noundef %i.bd)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr i8, ptr %i.ak, i64 56     ; 2 uses
  %.not274 = icmp eq ptr %i.be, %i.m
  br i1 %.not274, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge306:                                   ; preds = %bb.y, %_ZN9QtPrivate21qMakeForeachContainerIR5QListISt4pairIPKcS4_EEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOSA_.exit
  br i1 %.not.i.i.i.i.i124, label %_ZN9QtPrivate17QForeachContainerI5QListISt4pairIPKcS4_EEED2Ev.exit, label %_ZN17QArrayDataPointerISt4pairIPKcS2_EE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerISt4pairIPKcS2_EE5derefEv.exit.i.i.i: ; preds = %._crit_edge306
  %i.bf = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %.not.i.i.i130 = icmp eq i32 %i.bf, 1
  br i1 %.not.i.i.i130, label %bb.s, label %_ZN9QtPrivate17QForeachContainerI5QListISt4pairIPKcS4_EEED2Ev.exit

bb.s:                                             ; preds = %_ZN17QArrayDataPointerISt4pairIPKcS2_EE5derefEv.exit.i.i.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ad, i64 noundef 16, i64 noundef 8) #22
  br label %_ZN9QtPrivate17QForeachContainerI5QListISt4pairIPKcS4_EEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListISt4pairIPKcS4_EEED2Ev.exit: ; preds = %._crit_edge306, %_ZN17QArrayDataPointerISt4pairIPKcS2_EE5derefEv.exit.i.i.i, %bb.s
  %i.bg = load i64, ptr %i.ag, align 8
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5QListISt4pairIPKcS2_EE5clearEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListISt4pairIPKcS4_EEED2Ev.exit
  %i.bh = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not.i.i131 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i131, label %_ZN17QArrayDataPointerISt4pairIPKcS2_EE17allocatedCapacityEv.exit.i, label %_ZNK17QArrayDataPointerISt4pairIPKcS2_EE11needsDetachEv.exit.i

_ZNK17QArrayDataPointerISt4pairIPKcS2_EE11needsDetachEv.exit.i: ; preds = %bb.t
  %i.bi = load atomic i32, ptr %i.bh monotonic, align 4
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZNK17QArrayDataPointerISt4pairIPKcS2_EE11needsDetachEv.exit.i
  %i.bk = getelementptr i8, ptr %i.bh, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  br label %_ZN17QArrayDataPointerISt4pairIPKcS2_EE17allocatedCapacityEv.exit.i

_ZN17QArrayDataPointerISt4pairIPKcS2_EE17allocatedCapacityEv.exit.i: ; preds = %bb.u, %bb.t
  %i.bm = phi i64 [ %i.bl, %bb.u ], [ 0, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bn = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 8, i64 noundef %i.bm, i32 noundef 1) #22 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bn, i64 8) ]
  %i.bo = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bp = load ptr, ptr %i.ac, align 8            ; 3 uses
  store ptr %i.bo, ptr %i.ac, align 8
  store ptr %i.bn, ptr %i.ae, align 8
  store i64 0, ptr %i.ag, align 8
  %.not.i.i.i132 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i132, label %_ZN5QListISt4pairIPKcS2_EE5clearEv.exit, label %_ZN17QArrayDataPointerISt4pairIPKcS2_EE5derefEv.exit.i.i

_ZN17QArrayDataPointerISt4pairIPKcS2_EE5derefEv.exit.i.i: ; preds = %_ZN17QArrayDataPointerISt4pairIPKcS2_EE17allocatedCapacityEv.exit.i
  %i.bq = atomicrmw add ptr %i.bp, i32 -1 acq_rel, align 4
  %.not.i2.i = icmp eq i32 %i.bq, 1
  br i1 %.not.i2.i, label %bb.v, label %_ZN5QListISt4pairIPKcS2_EE5clearEv.exit

bb.v:                                             ; preds = %_ZN17QArrayDataPointerISt4pairIPKcS2_EE5derefEv.exit.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bp, i64 noundef 16, i64 noundef 8) #22
  br label %_ZN5QListISt4pairIPKcS2_EE5clearEv.exit

bb.w:                                             ; preds = %_ZNK17QArrayDataPointerISt4pairIPKcS2_EE11needsDetachEv.exit.i
  store i64 0, ptr %i.ag, align 8
  br label %_ZN5QListISt4pairIPKcS2_EE5clearEv.exit

_ZN5QListISt4pairIPKcS2_EE5clearEv.exit:          ; preds = %_ZN9QtPrivate17QForeachContainerI5QListISt4pairIPKcS4_EEED2Ev.exit, %_ZN17QArrayDataPointerISt4pairIPKcS2_EE17allocatedCapacityEv.exit.i, %_ZN17QArrayDataPointerISt4pairIPKcS2_EE5derefEv.exit.i.i, %bb.v, %bb.w
  %i.br = getelementptr i8, ptr %0, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !54 ; 6 uses
  %i.bt = getelementptr i8, ptr %0, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !54 ; 2 uses
  %i.bv = getelementptr i8, ptr %0, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !54
  %.not.i.i.i.i.i133 = icmp eq ptr %i.bs, null    ; 3 uses
  br i1 %.not.i.i.i.i.i133, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP12DecodeAsItemEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5QListISt4pairIPKcS2_EE5clearEv.exit
  %i.bx = atomicrmw add ptr %i.bs, i32 1 acq_rel, align 4, !noalias !54 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP12DecodeAsItemEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIP12DecodeAsItemEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit: ; preds = %_ZN5QListISt4pairIPKcS2_EE5clearEv.exit, %bb.x
  %.idx319 = shl i64 %i.bw, 3                     ; 2 uses
  %i.by = getelementptr i8, ptr %i.bu, i64 %.idx319
  %.not276314 = icmp eq i64 %.idx319, 0
  br i1 %.not276314, label %._crit_edge317, label %.lr.ph316

.lr.ph316:                                        ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP12DecodeAsItemEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.ac

.lr.ph305:                                        ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListISt4pairIPKcS4_EEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOSA_.exit, %bb.y
  %.sroa.10264.0304 = phi ptr [ %i.cg, %bb.y ], [ %i.af, %_ZN9QtPrivate21qMakeForeachContainerIR5QListISt4pairIPKcS4_EEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOSA_.exit ] ; 3 uses
  %.sroa.041.0.copyload = load ptr, ptr %.sroa.10264.0304, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10264.0304, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @dissector_reset_string(ptr noundef %.sroa.041.0.copyload, ptr noundef %.sroa.5.0.copyload)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph305
  %i.cg = getelementptr i8, ptr %.sroa.10264.0304, i64 16 ; 2 uses
  %.not275 = icmp eq ptr %i.cg, %i.aj
  br i1 %.not275, label %._crit_edge306, label %.lr.ph305, !llvm.loop !37

bb.z:                                             ; preds = %.lr.ph305
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not.i.i.i.i.i124, label %_ZN9QtPrivate17QForeachContainerI5QListISt4pairIPKcS4_EEED2Ev.exit137, label %_ZN17QArrayDataPointerISt4pairIPKcS2_EE5derefEv.exit.i.i.i135

_ZN17QArrayDataPointerISt4pairIPKcS2_EE5derefEv.exit.i.i.i135: ; preds = %bb.z
  %i.ci = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %.not.i.i.i136 = icmp eq i32 %i.ci, 1
  br i1 %.not.i.i.i136, label %bb.aa, label %_ZN9QtPrivate17QForeachContainerI5QListISt4pairIPKcS4_EEED2Ev.exit137

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerISt4pairIPKcS2_EE5derefEv.exit.i.i.i135
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ad, i64 noundef 16, i64 noundef 8) #22
  br label %_ZN9QtPrivate17QForeachContainerI5QListISt4pairIPKcS4_EEED2Ev.exit137

._crit_edge317:                                   ; preds = %_ZN10QByteArrayD2Ev.exit231, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP12DecodeAsItemEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  br i1 %.not.i.i.i.i.i133, label %_ZN9QtPrivate17QForeachContainerI5QListIP12DecodeAsItemEED2Ev.exit, label %_ZN17QArrayDataPointerIP12DecodeAsItemE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIP12DecodeAsItemE5derefEv.exit.i.i.i: ; preds = %._crit_edge317
  %i.cj = atomicrmw add ptr %i.bs, i32 -1 acq_rel, align 4
  %.not.i.i.i139 = icmp eq i32 %i.cj, 1
  br i1 %.not.i.i.i139, label %bb.ab, label %_ZN9QtPrivate17QForeachContainerI5QListIP12DecodeAsItemEED2Ev.exit

bb.ab:                                            ; preds = %_ZN17QArrayDataPointerIP12DecodeAsItemE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bs, i64 noundef 8, i64 noundef 8) #22
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP12DecodeAsItemEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListIP12DecodeAsItemEED2Ev.exit: ; preds = %._crit_edge317, %_ZN17QArrayDataPointerIP12DecodeAsItemE5derefEv.exit.i.i.i, %bb.ab
  call void @prefs_apply_all()
  ret void

bb.ac:                                            ; preds = %.lr.ph316, %_ZN10QByteArrayD2Ev.exit231
  %.sroa.10.0315 = phi ptr [ %i.bu, %.lr.ph316 ], [ %i.kh, %_ZN10QByteArrayD2Ev.exit231 ] ; 2 uses
  %i.ck = load ptr, ptr %.sroa.10.0315, align 8   ; 17 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 112    ; 6 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !55 ; 4 uses
  %i.cn = getelementptr i8, ptr %i.ck, i64 120
  %i.co = getelementptr i8, ptr %i.ck, i64 128    ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !noalias !55 ; 2 uses
  %.not.i.i.i.i140 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i140, label %_ZNK12DecodeAsItem16currentDissectorEv.exit.thread, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZNK12DecodeAsItem16currentDissectorEv.exit.thread: ; preds = %bb.ac
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_ZN10QByteArrayD2Ev.exit231, label %.preheader

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.ac
  %i.cr = atomicrmw add ptr %i.cm, i32 1 acq_rel, align 4, !noalias !55 ; 0 uses
  %i.cs = icmp eq i64 %i.cp, 0                    ; 2 uses
  %i.ct = atomicrmw add ptr %i.cm, i32 -1 acq_rel, align 4
  %.not.i.i142 = icmp eq i32 %i.ct, 1
  br i1 %.not.i.i142, label %.split, label %_ZN7QStringD2Ev.exit

.split:                                           ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.cm, i64 noundef 2, i64 noundef 8) #22
  br i1 %i.cs, label %_ZN10QByteArrayD2Ev.exit231, label %.preheader

_ZN7QStringD2Ev.exit:                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  br i1 %i.cs, label %_ZN10QByteArrayD2Ev.exit231, label %.preheader

.preheader:                                       ; preds = %_ZN7QStringD2Ev.exit, %_ZNK12DecodeAsItem16currentDissectorEv.exit.thread, %.split
  %.090310 = load ptr, ptr @decode_as_list, align 8 ; 2 uses
  %.not311 = icmp eq ptr %.090310, null
  br i1 %.not311, label %_ZN10QByteArrayD2Ev.exit231, label %.lr.ph313

.lr.ph313:                                        ; preds = %.preheader
  %i.cu = getelementptr i8, ptr %i.ck, i64 8      ; 3 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph313, %_ZN10QByteArrayD2Ev.exit223
  %.090312 = phi ptr [ %.090310, %.lr.ph313 ], [ %.090, %_ZN10QByteArrayD2Ev.exit223 ] ; 2 uses
  %i.cv = load ptr, ptr %.090312, align 8         ; 4 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = load ptr, ptr %i.cu, align 8
  %i.cz = invoke i32 @g_strcmp0(ptr noundef %i.cx, ptr noundef %i.cy)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %.not105 = icmp eq i32 %i.cz, 0
  br i1 %.not105, label %bb.af, label %_ZN10QByteArrayD2Ev.exit223

bb.af:                                            ; preds = %bb.ae
  %i.da = load ptr, ptr %i.cu, align 8
  %i.db = invoke i32 @get_dissector_table_selector_type(ptr noundef %i.da)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  switch i32 %i.db, label %_ZN10QByteArrayD2Ev.exit223 [
    i32 4, label %bb.ai
    i32 5, label %bb.ai
    i32 6, label %bb.ai
    i32 7, label %bb.ai
    i32 26, label %bb.ak
    i32 27, label %bb.ak
    i32 28, label %bb.ak
end_hunk_0

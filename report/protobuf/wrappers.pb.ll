inline.NumInlined: 406
inline.NumDeleted: 133
begin_hunk_0_@_ZN6google8protobuf9BoolValueC2EPNS0_5ArenaERKS1_:.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %.noexc5, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

.noexc5:                                          ; preds = %.noexc
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %.noexc5, %.noexc
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf9BoolValueD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf9BoolValue10SharedDtorERNS0_11MessageLiteE.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf9BoolValue10SharedDtorERNS0_11MessageLiteE.exit unwind label %bb.c

_ZN6google8protobuf9BoolValue10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #15
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf9BoolValueD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf9BoolValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9BoolValue9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3    ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !13, !range !45, !noundef !46
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.g, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = or i32 %i.i, %i.b
  store i32 %i.j, ptr %i.h, align 8, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !7    ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = add nsw i64 %i.l, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.d, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf9BoolValue12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf21BoolValue_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf21BoolValue_class_data_E, i64 8), align 8, !tbaa !16
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf21BoolValue_class_data_E
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser8FastV8S1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #7

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf9BoolValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) initializes((16, 20), (24, 25)) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.b, align 8, !tbaa !13
  store i32 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf9BoolValue18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !13, !range !45, !noundef !46
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !24
  %.not.i = icmp ult ptr %1, %i.g
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %1)
  %.pre = load i8, ptr %i.d, align 8, !tbaa !13, !range !45
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.c, %bb.d
  %i.i = phi i8 [ %.pre, %bb.d ], [ 1, %bb.c ]
  %.0.i12 = phi ptr [ %i.h, %bb.d ], [ %1, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i12, i64 1
  store i8 8, ptr %.0.i12, align 1, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i12, i64 2
  store i8 %i.i, ptr %i.j, align 1, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %bb.a
  %.0 = phi ptr [ %i.k, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %1, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !7    ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.f, !prof !29

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.e
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef %.0, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %bb.e
  %.1 = phi ptr [ %i.r, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.0, %bb.e ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf9BoolValue12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !45
  %i.f = shl nuw nsw i8 %i.e, 1
  %spec.select = zext nneg i8 %i.f to i64
  %.0 = select i1 %.not, i64 0, i64 %spec.select
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.0, ptr noundef nonnull %i.g)
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9BoolValue8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN6google8protobuf9BoolValue9MergeFromERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf9BoolValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3    ; 2 uses
  %.not.i.i = trunc i32 %i.c to i1
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %3 = load i8, ptr %2, align 8, !range !45
  %4 = trunc nuw i8 %3 to i1
  %or.cond.i = select i1 %.not.i.i, i1 %4, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.d, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %i.g = or i32 %i.f, %i.c
  store i32 %i.g, ptr %i.e, align 8, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !7    ; 2 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf9BoolValue9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = add nsw i64 %i.i, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %_ZN6google8protobuf9BoolValue9MergeFromERKS1_.exit

_ZN6google8protobuf9BoolValue9MergeFromERKS1_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf9BoolValue12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !30
  %i.d = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !30
  store i64 %i.c, ptr %i.b, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i8, ptr %i.i, align 8, !tbaa !44, !range !45, !noundef !46
  %i.l = load i8, ptr %i.j, align 8, !tbaa !44, !range !45, !noundef !46
  store i8 %i.l, ptr %i.i, align 8, !tbaa !44
  store i8 %i.k, ptr %i.j, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf9BoolValue11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf9BoolValue12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf11StringValueC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf11StringValueE, i64 16), ptr %0, align 8, !tbaa !10
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr.i, align 8, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.d, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf11StringValueC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf11StringValueE, i64 16), ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.noexc7, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

.noexc7:                                          ; preds = %.noexc
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %.noexc7, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !13
  store i32 %i.k, ptr %i.i, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, 3
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit
  %i.r = tail call ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %1)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit
  %.sroa.0.0.i.i = phi ptr [ %i.n, %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit ], [ %i.r, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.i.i, ptr %i.s, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf11StringValueD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i unwind label %bb.c

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN6google8protobuf11StringValue10SharedDtorERNS0_11MessageLiteE.exit unwind label %bb.c

_ZN6google8protobuf11StringValue10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i
  ret void

bb.c:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i, %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #15
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf11StringValueD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf11StringValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf11StringValue9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3    ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !49
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !7    ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef %.0.i.i)
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 3
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %._crit_edge.i.i, label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.f
end_hunk_0

inline.NumInlined: 406
inline.NumDeleted: 133
begin_hunk_0_@_ZN6google8protobuf10Int64ValueC2EPNS0_5ArenaERKS1_:.noexc
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf10Int64ValueD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf10Int64Value10SharedDtorERNS0_11MessageLiteE.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf10Int64Value10SharedDtorERNS0_11MessageLiteE.exit unwind label %bb.c

_ZN6google8protobuf10Int64Value10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #15
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf10Int64ValueD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf10Int64ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10Int64Value9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3    ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.f, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3
  %i.i = or i32 %i.h, %i.b
  store i32 %i.i, ptr %i.g, align 8, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !7    ; 2 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = add nsw i64 %i.k, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.d, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf10Int64Value12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf22Int64Value_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf22Int64Value_class_data_E, i64 8), align 8, !tbaa !16
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf22Int64Value_class_data_E
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser9FastV64S1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #7

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf10Int64Value5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) initializes((16, 20), (24, 32)) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.b, align 8, !tbaa !13
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
define noundef ptr @_ZNK6google8protobuf10Int64Value18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt64ToArrayWithFieldILi1EEEPhPNS0_2io19EpsCopyOutputStreamElS4_(ptr noundef %2, i64 noundef %i.e, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7    ; 2 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.e, !prof !29

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.d
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef %.0, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %bb.d
  %.1 = phi ptr [ %i.m, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.0, %bb.d ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt64ToArrayWithFieldILi1EEEPhPNS0_2io19EpsCopyOutputStreamElS4_(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %.not.i = icmp ult ptr %2, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  store i8 8, ptr %.0.i, align 1, !tbaa !13
  %i.d = icmp ugt i64 %1, 127
  br i1 %i.d, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit, !prof !37

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i = phi i64 [ %i.g, %.lr.ph.i ], [ %1, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.e = trunc i64 %.07.i1.i to i8
  %i.f = or i8 %i.e, -128
  store i8 %i.f, ptr %.0.i2.i, align 1, !tbaa !13
  %i.g = lshr i64 %.07.i1.i, 7                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 1 ; 2 uses
  %i.i = icmp ugt i64 %.07.i1.i, 16383
  br i1 %i.i, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit, !prof !38, !llvm.loop !39

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit: ; preds = %.lr.ph.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i64 [ %1, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.g, %.lr.ph.i ]
  %.0.i.lcssa.i = phi ptr [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %i.j = trunc nuw nsw i64 %.07.i.lcssa.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1
  store i8 %i.j, ptr %.0.i.lcssa.i, align 1, !tbaa !13
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf10Int64Value12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = or i64 %i.e, 1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = xor i64 %i.g, 63
  %i.i = mul nuw nsw i64 %i.h, 9
  %i.j = add nuw nsw i64 %i.i, 137
  %i.k = lshr i64 %i.j, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.0, ptr noundef nonnull %i.l)
  ret i64 %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10Int64Value8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN6google8protobuf10Int64Value9MergeFromERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf10Int64Value5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3    ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not10.i.i = icmp eq i32 %i.d, 0
  br i1 %.not10.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.g, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = or i32 %i.i, %i.c
  store i32 %i.j, ptr %i.h, align 8, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !7    ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf10Int64Value9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = add nsw i64 %i.l, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  br label %_ZN6google8protobuf10Int64Value9MergeFromERKS1_.exit

_ZN6google8protobuf10Int64Value9MergeFromERKS1_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf10Int64Value12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
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
  %i.k = load i64, ptr %i.i, align 8, !tbaa !30
  %i.l = load i64, ptr %i.j, align 8, !tbaa !30
  store i64 %i.l, ptr %i.i, align 8, !tbaa !30
  store i64 %i.k, ptr %i.j, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf10Int64Value11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf10Int64Value12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf11UInt64ValueC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf11UInt64ValueE, i64 16), ptr %0, align 8, !tbaa !10
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr.i, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf11UInt64ValueC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf11UInt64ValueE, i64 16), ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !36
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
define void @_ZN6google8protobuf11UInt64ValueD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf11UInt64Value10SharedDtorERNS0_11MessageLiteE.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf11UInt64Value10SharedDtorERNS0_11MessageLiteE.exit unwind label %bb.c

_ZN6google8protobuf11UInt64Value10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #15
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf11UInt64ValueD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf11UInt64ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf11UInt64Value9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3    ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.f, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3
  %i.i = or i32 %i.h, %i.b
  store i32 %i.i, ptr %i.g, align 8, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !7    ; 2 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = add nsw i64 %i.k, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.d, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf11UInt64Value12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf23UInt64Value_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf23UInt64Value_class_data_E, i64 8), align 8, !tbaa !16
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf23UInt64Value_class_data_E
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf11UInt64Value5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) initializes((16, 20), (24, 32)) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.b, align 8, !tbaa !13
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
define noundef ptr @_ZNK6google8protobuf11UInt64Value18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !24
  %.not.i = icmp ult ptr %1, %i.f
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %1)
  %.pr = load i64, ptr %i.d, align 8, !tbaa !13
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.c, %bb.d
  %i.h = phi i64 [ %i.e, %bb.c ], [ %.pr, %bb.d ] ; 3 uses
  %.0.i12 = phi ptr [ %1, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i12, i64 1 ; 2 uses
  store i8 8, ptr %.0.i12, align 1, !tbaa !13
  %i.j = icmp ugt i64 %i.h, 127
  br i1 %i.j, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit, !prof !37

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.h, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.k = trunc i64 %.07.i1.i to i8
  %i.l = or i8 %i.k, -128
  store i8 %i.l, ptr %.0.i2.i, align 1, !tbaa !13
  %i.m = lshr i64 %.07.i1.i, 7                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 1 ; 2 uses
  %i.o = icmp ugt i64 %.07.i1.i, 16383
  br i1 %i.o, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit, !prof !38, !llvm.loop !39

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit: ; preds = %.lr.ph.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i64 [ %i.h, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.m, %.lr.ph.i ]
  %.0.i.lcssa.i = phi ptr [ %i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.p = trunc nuw nsw i64 %.07.i.lcssa.i to i8
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1
  store i8 %i.p, ptr %.0.i.lcssa.i, align 1, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit, %bb.a
  %.0 = phi ptr [ %i.q, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit ], [ %1, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !7    ; 2 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.f, !prof !29

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.e
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef %.0, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %bb.e
  %.1 = phi ptr [ %i.x, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.0, %bb.e ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf11UInt64Value12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = or i64 %i.e, 1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = xor i64 %i.g, 63
  %i.i = mul nuw nsw i64 %i.h, 9
  %i.j = add nuw nsw i64 %i.i, 137
  %i.k = lshr i64 %i.j, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.0, ptr noundef nonnull %i.l)
  ret i64 %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf11UInt64Value8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN6google8protobuf11UInt64Value9MergeFromERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf11UInt64Value5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3    ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not10.i.i = icmp eq i32 %i.d, 0
  br i1 %.not10.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.g, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = or i32 %i.i, %i.c
  store i32 %i.j, ptr %i.h, align 8, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !7    ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf11UInt64Value9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = add nsw i64 %i.l, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  br label %_ZN6google8protobuf11UInt64Value9MergeFromERKS1_.exit

_ZN6google8protobuf11UInt64Value9MergeFromERKS1_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf11UInt64Value12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
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
  %i.k = load i64, ptr %i.i, align 8, !tbaa !30
  %i.l = load i64, ptr %i.j, align 8, !tbaa !30
  store i64 %i.l, ptr %i.i, align 8, !tbaa !30
  store i64 %i.k, ptr %i.j, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf11UInt64Value11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf11UInt64Value12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf10Int32ValueC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 28)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf10Int32ValueE, i64 16), ptr %0, align 8, !tbaa !10
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr.i, align 8, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.d, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10Int32ValueC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 28)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf10Int32ValueE, i64 16), ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !41
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
define void @_ZN6google8protobuf10Int32ValueD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf10Int32Value10SharedDtorERNS0_11MessageLiteE.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf10Int32Value10SharedDtorERNS0_11MessageLiteE.exit unwind label %bb.c

_ZN6google8protobuf10Int32Value10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #15
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf10Int32ValueD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf10Int32ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10Int32Value9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3    ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.e, ptr %i.f, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3
  %i.i = or i32 %i.h, %i.b
  store i32 %i.i, ptr %i.g, align 8, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !7    ; 2 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = add nsw i64 %i.k, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.d, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf10Int32Value12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf22Int32Value_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf22Int32Value_class_data_E, i64 8), align 8, !tbaa !16
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf22Int32Value_class_data_E
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser9FastV32S1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #7

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf10Int32Value5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) initializes((16, 20), (24, 28)) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !13
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
define noundef ptr @_ZNK6google8protobuf10Int32Value18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt32ToArrayWithFieldILi1EEEPhPNS0_2io19EpsCopyOutputStreamEiS4_(ptr noundef %2, i32 noundef %i.e, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7    ; 2 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.e, !prof !29

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.d
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef %.0, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %bb.d
  %.1 = phi ptr [ %i.m, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.0, %bb.d ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt32ToArrayWithFieldILi1EEEPhPNS0_2io19EpsCopyOutputStreamEiS4_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %.not.i = icmp ult ptr %2, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  store i8 8, ptr %.0.i, align 1, !tbaa !13
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = icmp ugt i32 %1, 127
  br i1 %i.e, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !37

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.f = trunc i64 %.07.i1.i.i to i8
  %i.g = or i8 %i.f, -128
  store i8 %i.g, ptr %.0.i2.i.i, align 1, !tbaa !13
  %i.h = lshr i64 %.07.i1.i.i, 7                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.j = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !38, !llvm.loop !39

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i.i = phi i64 [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.h, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.k = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.k, ptr %.0.i.lcssa.i.i, align 1, !tbaa !13
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf10Int32Value12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = or i32 %i.e, 1
  %i.g = sext i32 %i.f to i64
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = xor i64 %i.h, 63
  %i.j = mul nuw nsw i64 %i.i, 9
  %i.k = add nuw nsw i64 %i.j, 137
  %i.l = lshr i64 %i.k, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.0, ptr noundef nonnull %i.m)
  ret i64 %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10Int32Value8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN6google8protobuf10Int32Value9MergeFromERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf10Int32Value5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3    ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not10.i.i = icmp eq i32 %i.d, 0
  br i1 %.not10.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.f, ptr %i.g, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = or i32 %i.i, %i.c
  store i32 %i.j, ptr %i.h, align 8, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !7    ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf10Int32Value9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = add nsw i64 %i.l, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  br label %_ZN6google8protobuf10Int32Value9MergeFromERKS1_.exit

_ZN6google8protobuf10Int32Value9MergeFromERKS1_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf10Int32Value12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
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
  %i.k = load i32, ptr %i.i, align 8, !tbaa !3
  %i.l = load i32, ptr %i.j, align 8, !tbaa !3
  store i32 %i.l, ptr %i.i, align 8, !tbaa !3
  store i32 %i.k, ptr %i.j, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf10Int32Value11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf10Int32Value12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf11UInt32ValueC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 28)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf11UInt32ValueE, i64 16), ptr %0, align 8, !tbaa !10
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr.i, align 8, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.d, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf11UInt32ValueC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 28)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf11UInt32ValueE, i64 16), ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !41
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
define void @_ZN6google8protobuf11UInt32ValueD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf11UInt32Value10SharedDtorERNS0_11MessageLiteE.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf11UInt32Value10SharedDtorERNS0_11MessageLiteE.exit unwind label %bb.c

_ZN6google8protobuf11UInt32Value10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #15
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf11UInt32ValueD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf11UInt32ValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf11UInt32Value9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3    ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.e, ptr %i.f, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3
  %i.i = or i32 %i.h, %i.b
  store i32 %i.i, ptr %i.g, align 8, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !7    ; 2 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = add nsw i64 %i.k, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.d, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf11UInt32Value12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf23UInt32Value_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf23UInt32Value_class_data_E, i64 8), align 8, !tbaa !16
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf23UInt32Value_class_data_E
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf11UInt32Value5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) initializes((16, 20), (24, 28)) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !13
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
define noundef ptr @_ZNK6google8protobuf11UInt32Value18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !24
  %.not.i = icmp ult ptr %1, %i.f
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %1)
  %.pr = load i32, ptr %i.d, align 8, !tbaa !13
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.c, %bb.d
  %i.h = phi i32 [ %i.e, %bb.c ], [ %.pr, %bb.d ] ; 3 uses
  %.0.i12 = phi ptr [ %1, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i12, i64 1 ; 2 uses
  store i8 8, ptr %.0.i12, align 1, !tbaa !13
  %i.j = icmp ugt i32 %i.h, 127
  br i1 %i.j, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !37

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.h, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.k = trunc i32 %.07.i1.i to i8
  %i.l = or i8 %i.k, -128
  store i8 %i.l, ptr %.0.i2.i, align 1, !tbaa !13
  %i.m = lshr i32 %.07.i1.i, 7                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 1 ; 2 uses
  %i.o = icmp ugt i32 %.07.i1.i, 16383
  br i1 %i.o, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !38, !llvm.loop !42

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit: ; preds = %.lr.ph.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i32 [ %i.h, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.m, %.lr.ph.i ]
  %.0.i.lcssa.i = phi ptr [ %i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.p = trunc nuw nsw i32 %.07.i.lcssa.i to i8
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1
  store i8 %i.p, ptr %.0.i.lcssa.i, align 1, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, %bb.a
  %.0 = phi ptr [ %i.q, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ], [ %1, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !7    ; 2 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.f, !prof !29

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.e
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef %.0, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %bb.e
  %.1 = phi ptr [ %i.x, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.0, %bb.e ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf11UInt32Value12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = or i32 %i.e, 1
  %i.g = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.f, i1 true)
  %i.h = xor i32 %i.g, 31
  %i.i = mul nuw nsw i32 %i.h, 9
  %i.j = add nuw nsw i32 %i.i, 137
  %i.k = lshr i32 %i.j, 6
  %i.l = zext nneg i32 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.0, ptr noundef nonnull %i.m)
  ret i64 %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf11UInt32Value8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN6google8protobuf11UInt32Value9MergeFromERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf11UInt32Value5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3    ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not10.i.i = icmp eq i32 %i.d, 0
  br i1 %.not10.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.f, ptr %i.g, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = or i32 %i.i, %i.c
  store i32 %i.j, ptr %i.h, align 8, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !7    ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf11UInt32Value9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = add nsw i64 %i.l, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  br label %_ZN6google8protobuf11UInt32Value9MergeFromERKS1_.exit

_ZN6google8protobuf11UInt32Value9MergeFromERKS1_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf11UInt32Value12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
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
  %i.k = load i32, ptr %i.i, align 8, !tbaa !3
  %i.l = load i32, ptr %i.j, align 8, !tbaa !3
  store i32 %i.l, ptr %i.i, align 8, !tbaa !3
  store i32 %i.k, ptr %i.j, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf11UInt32Value11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf11UInt32Value12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf9BoolValueC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 25)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf9BoolValueE, i64 16), ptr %0, align 8, !tbaa !10
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.i, i8 0, i64 9, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9BoolValueC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 28)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf9BoolValueE, i64 16), ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !43
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

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf11StringValue9MergeImplERNS0_11MessageLiteERKS2_:bb.a
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %.0.i.i18)
          to label %_ZN6google8protobuf11StringValue19_internal_set_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.i

_ZN6google8protobuf11StringValue19_internal_set_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.ag = load ptr, ptr %2, align 8, !tbaa !56    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.x
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf11StringValue19_internal_set_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ai = load i64, ptr %i.x, align 8, !tbaa !13
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf11StringValue19_internal_set_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.j

bb.i:                                             ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %2, align 8, !tbaa !56    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.x
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.i
  %i.an = load i64, ptr %i.x, align 8, !tbaa !13
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.ak

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !3
  %i.ar = or i32 %i.aq, %i.b
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !7  ; 2 uses
  %i.au = trunc i64 %i.at to i1
  br i1 %i.au, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = add nsw i64 %i.at, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.j, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf11StringValue12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf23StringValue_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf23StringValue_class_data_E, i64 8), align 8, !tbaa !16
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf23StringValue_class_data_E
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser7FastUS1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #7

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf11StringValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !49
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !56
  store i8 0, ptr %i.j, align 1, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !7
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf11StringValue18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.m = trunc i64 %i.j to i32
  %i.n = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.l, i32 noundef %i.m, i32 noundef 1, i64 33, ptr nonnull @.str.9) ; 0 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.p = load i64, ptr %i.i, align 8, !tbaa !49   ; 6 uses
  %i.q = icmp sgt i64 %i.p, 127
  br i1 %i.q, label %.critedge.i, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %2, align 8, !tbaa !24
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %1 to i64
  %reass.sub = sub i64 %i.s, %i.t
  %i.u = add i64 %reass.sub, 14
  %i.v = icmp slt i64 %i.u, %i.p
  br i1 %i.v, label %.critedge.i, label %bb.e, !prof !29

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %i.w = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 1, i64 %i.p, ptr %i.o, ptr noundef %1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 10, ptr %1, align 1, !tbaa !13
  %i.y = trunc i64 %i.p to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 %i.y, ptr %i.x, align 1, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.o, i64 %i.p, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.p
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit: ; preds = %bb.e, %.critedge.i, %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.b ], [ %1, %bb.a ], [ %i.w, %.critedge.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !7  ; 2 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.f, !prof !29

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %i.ae = add nsw i64 %i.ac, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef %.0, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %.1 = phi ptr [ %i.ah, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.0, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit ]
  ret ptr %.1
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef, i32 noundef, i32 noundef, i64, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf11StringValue12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !49   ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = trunc i64 %i.j to i32
  %i.m = or i32 %i.l, 1
  %i.n = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.m, i1 true)
  %i.o = xor i32 %i.n, 31
  %i.p = mul nuw nsw i32 %i.o, 9
  %i.q = add nuw nsw i32 %i.p, 73
  %i.r = lshr i32 %i.q, 6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add i64 %i.j, 1
  %i.u = add i64 %i.t, %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ], [ 0, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.0, ptr noundef nonnull %i.v)
  ret i64 %i.w
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf11StringValue8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf11StringValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  tail call void @_ZN6google8protobuf11StringValue9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf11StringValue12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !30
  store i64 %i.b, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.k = load i64, ptr %i.i, align 8, !tbaa !57
  store i64 %i.k, ptr %i.j, align 8, !tbaa !57
  store ptr %.sroa.0.0.copyload.i, ptr %i.i, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf11StringValue11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf11StringValue12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf10BytesValueC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf10BytesValueE, i64 16), ptr %0, align 8, !tbaa !10
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr.i, align 8, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.d, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10BytesValueC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf10BytesValueE, i64 16), ptr %0, align 8, !tbaa !10
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
define void @_ZN6google8protobuf10BytesValueD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
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
          to label %_ZN6google8protobuf10BytesValue10SharedDtorERNS0_11MessageLiteE.exit unwind label %bb.c

_ZN6google8protobuf10BytesValue10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i
  ret void

bb.c:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i, %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #15
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf10BytesValueD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf10BytesValueD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10BytesValue9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
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
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf10BytesValue9MergeImplERNS0_11MessageLiteERKS2_:bb.a
bb.h:                                             ; preds = %._crit_edge.i.i
  %i.af = inttoptr i64 %i.aa to ptr
  br label %.noexc

.noexc:                                           ; preds = %bb.h, %bb.g
  %.0.i.i18 = phi ptr [ %i.ae, %bb.g ], [ %i.af, %bb.h ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %.0.i.i18)
          to label %_ZN6google8protobuf10BytesValue19_internal_set_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.i

_ZN6google8protobuf10BytesValue19_internal_set_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.ag = load ptr, ptr %2, align 8, !tbaa !56    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.x
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf10BytesValue19_internal_set_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ai = load i64, ptr %i.x, align 8, !tbaa !13
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf10BytesValue19_internal_set_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.j

bb.i:                                             ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %2, align 8, !tbaa !56    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.x
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.i
  %i.an = load i64, ptr %i.x, align 8, !tbaa !13
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.ak

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !3
  %i.ar = or i32 %i.aq, %i.b
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !7  ; 2 uses
  %i.au = trunc i64 %i.at to i1
  br i1 %i.au, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = add nsw i64 %i.at, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.j, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf10BytesValue12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf22BytesValue_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf22BytesValue_class_data_E, i64 8), align 8, !tbaa !16
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf22BytesValue_class_data_E
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser7FastBS1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #7

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf10BytesValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !49
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !56
  store i8 0, ptr %i.j, align 1, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !7
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10BytesValue18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !49   ; 7 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.m = icmp sgt i64 %i.j, 127
  br i1 %i.m, label %.critedge.i.i, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %2, align 8, !tbaa !24
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %1 to i64
  %reass.sub = sub i64 %i.o, %i.p
  %i.q = add i64 %reass.sub, 14
  %i.r = icmp slt i64 %i.q, %i.j
  br i1 %i.r, label %.critedge.i.i, label %bb.e, !prof !29

.critedge.i.i:                                    ; preds = %bb.d, %bb.c
  %i.s = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 1, i64 %i.j, ptr %i.l, ptr noundef %1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 10, ptr %1, align 1, !tbaa !13
  %i.u = trunc i64 %i.j to i8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 %i.u, ptr %i.t, align 1, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %i.l, i64 %i.j, i1 false)
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.j
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit: ; preds = %bb.e, %.critedge.i.i, %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.b ], [ %1, %bb.a ], [ %i.s, %.critedge.i.i ], [ %i.w, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !7    ; 2 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.f, !prof !29

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %i.aa = add nsw i64 %i.y, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef %.0, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %.1 = phi ptr [ %i.ad, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.0, %_ZN6google8protobuf2io19EpsCopyOutputStream22WriteBytesMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf10BytesValue12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !49   ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = trunc i64 %i.j to i32
  %i.m = or i32 %i.l, 1
  %i.n = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.m, i1 true)
  %i.o = xor i32 %i.n, 31
  %i.p = mul nuw nsw i32 %i.o, 9
  %i.q = add nuw nsw i32 %i.p, 73
  %i.r = lshr i32 %i.q, 6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add i64 %i.j, 1
  %i.u = add i64 %i.t, %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ], [ 0, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.0, ptr noundef nonnull %i.v)
  ret i64 %i.w
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10BytesValue8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf10BytesValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  tail call void @_ZN6google8protobuf10BytesValue9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf10BytesValue12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !30
  store i64 %i.b, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.k = load i64, ptr %i.i, align 8, !tbaa !57
  store i64 %i.k, ptr %i.j, align 8, !tbaa !57
  store ptr %.sroa.0.0.copyload.i, ptr %i.i, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf10BytesValue11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf10BytesValue12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef) local_unnamed_addr #7

declare void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #10

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

declare ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

declare void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i64, ptr, ptr noundef) local_unnamed_addr #7

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #7

declare void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: uwtable
define internal void @_GLOBAL__I_000102() #13 section ".text.startup" {
bb.a:
  tail call void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef nonnull @descriptor_table_google_2fprotobuf_2fwrappers_2eproto)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !9, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{i64 0, i64 4, !13, i64 4, i64 4, !3, i64 8, i64 8, !14}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !5, i64 0}
!16 = !{!17, !20, i64 8}
!17 = !{!"_ZTSN6google8protobuf8internal9ClassDataE", !18, i64 0, !20, i64 8, !19, i64 16, !19, i64 24, !21, i64 32, !4, i64 48, !23, i64 52, !23, i64 53}
!18 = !{!"p1 _ZTSN6google8protobuf11MessageLiteE", !19, i64 0}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!"p1 _ZTSN6google8protobuf8internal16TcParseTableBaseE", !19, i64 0}
!21 = !{!"_ZTSN6google8protobuf8internal14MessageCreatorE", !4, i64 0, !22, i64 4, !5, i64 5, !5, i64 8}
!22 = !{!"_ZTSN6google8protobuf8internal14MessageCreator3TagE", !5, i64 0}
!23 = !{!"bool", !5, i64 0}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !26, i64 0, !26, i64 8, !5, i64 16, !27, i64 48, !23, i64 56, !23, i64 57, !23, i64 58, !23, i64 59}
!26 = !{!"p1 omnipotent char", !19, i64 0}
!27 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !19, i64 0}
!28 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{!9, !9, i64 0}
!31 = !{!32, !4, i64 0}
!32 = !{!"_ZTSN6google8protobuf8internal10CachedSizeE", !4, i64 0}
!33 = !{i64 0, i64 4, !13, i64 4, i64 4, !3, i64 8, i64 4, !34}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !5, i64 0}
!36 = !{i64 0, i64 4, !13, i64 4, i64 4, !3, i64 8, i64 8, !30}
!37 = !{!"branch_weights", i32 1, i32 1999}
!38 = !{!"branch_weights", i32 0, i32 1}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{i64 0, i64 4, !13, i64 4, i64 4, !3, i64 8, i64 4, !3}
!42 = distinct !{!42, !40}
!43 = !{i64 0, i64 4, !13, i64 4, i64 4, !3, i64 8, i64 1, !44}
!44 = !{!23, !23, i64 0}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!48, !19, i64 0}
!48 = !{!"_ZTSN6google8protobuf8internal15TaggedStringPtrE", !19, i64 0}
!49 = !{!50, !9, i64 8}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !9, i64 8, !5, i64 16}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !54, i64 0}
!54 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !19, i64 0}
!55 = !{!51, !26, i64 0}
!56 = !{!50, !26, i64 0}
!57 = !{!19, !19, i64 0}
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/wrappers.pb?download=true
inline.NumInlined: 406
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf10Int32Value12InternalSwapEPS1_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !32
  %i.d = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.d, ptr %i.a, align 8, !tbaa !32
  store i64 %i.c, ptr %i.b, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !15
  %i.h = load i32, ptr %i.f, align 8, !tbaa !15
  store i32 %i.h, ptr %i.e, align 8, !tbaa !15
  store i32 %i.g, ptr %i.f, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.i, align 8, !tbaa !15
  %i.l = load i32, ptr %i.j, align 8, !tbaa !15
  store i32 %i.l, ptr %i.i, align 8, !tbaa !15
  store i32 %i.k, ptr %i.j, align 8, !tbaa !15
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
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf11UInt32ValueE, i64 16), ptr %0, align 8, !tbaa !13
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr.i, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.d, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf11UInt32ValueC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 28)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf11UInt32ValueE, i64 16), ptr %0, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !41
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %.noexc5, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

.noexc5:                                          ; preds = %.noexc
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %.noexc5, %.noexc
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf11UInt32ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
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
  tail call void @_ZN6google8protobuf11UInt32ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(32) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf11UInt32Value9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.e, ptr %i.f, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !15
  %i.i = or i32 %i.h, %i.b
  store i32 %i.i, ptr %i.g, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = add nsw i64 %i.k, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.d, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf11UInt32Value12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf23UInt32Value_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf23UInt32Value_class_data_E, i64 8), align 8, !tbaa !25
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf23UInt32Value_class_data_E
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf11UInt32Value5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) initializes((16, 20), (24, 28)) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !14
  store i32 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = and i32 %i.b, 1
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !29
  %.not.i = icmp ult ptr %1, %i.f
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %1)
  %.pr = load i32, ptr %i.d, align 8, !tbaa !14
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.c, %bb.d
  %i.h = phi i32 [ %i.e, %bb.c ], [ %.pr, %bb.d ] ; 10 uses
  %.0.i12 = phi ptr [ %1, %bb.c ], [ %i.g, %bb.d ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i12, i64 1 ; 2 uses
  store i8 8, ptr %.0.i12, align 1, !tbaa !14
  %i.j = icmp ugt i32 %i.h, 127
  br i1 %i.j, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !38

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %3 = trunc i32 %i.h to i8
  %4 = or i8 %3, -128
  store i8 %4, ptr %i.i, align 1, !tbaa !14
  %5 = lshr i32 %i.h, 7                           ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0.i12, i64 2 ; 2 uses
  %7 = icmp ugt i32 %i.h, 16383
  br i1 %7, label %.lr.ph.i.1, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !39

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %8 = trunc i32 %5 to i8
  %9 = or i8 %8, -128
  store i8 %9, ptr %6, align 1, !tbaa !14
  %10 = lshr i32 %i.h, 14                         ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.0.i12, i64 3 ; 2 uses
  %12 = icmp ugt i32 %i.h, 2097151
  br i1 %12, label %.lr.ph.i.a, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !39

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.1
  %i.k = trunc i32 %10 to i8
  %i.l = or i8 %i.k, -128
  store i8 %i.l, ptr %11, align 1, !tbaa !14
  %i.m = lshr i32 %i.h, 21                        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i12, i64 4 ; 2 uses
  %i.o = icmp ugt i32 %i.h, 268435455
  br i1 %i.o, label %.lr.ph.i.3, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !39

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.a
  %13 = trunc i32 %i.m to i8
  %14 = or i8 %13, -128
  store i8 %14, ptr %i.n, align 1, !tbaa !14
  %15 = lshr i32 %i.h, 28
  %16 = getelementptr inbounds nuw i8, ptr %.0.i12, i64 5
  br label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.a, %.lr.ph.i.3, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i32 [ %i.h, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %5, %.lr.ph.i ], [ %10, %.lr.ph.i.1 ], [ %i.m, %.lr.ph.i.a ], [ %15, %.lr.ph.i.3 ]
  %.0.i.lcssa.i = phi ptr [ %i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %6, %.lr.ph.i ], [ %11, %.lr.ph.i.1 ], [ %i.n, %.lr.ph.i.a ], [ %16, %.lr.ph.i.3 ] ; 2 uses
  %i.p = trunc nuw nsw i32 %.07.i.lcssa.i to i8
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1
  store i8 %i.p, ptr %.0.i.lcssa.i, align 1, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, %bb.a
  %.0 = phi ptr [ %i.q, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ], [ %1, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11   ; 2 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.f, !prof !31

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.e
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef %.0, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %bb.e
  %.1 = phi ptr [ %i.x, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.0, %bb.e ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf11UInt32Value12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = and i32 %i.b, 1
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = or i32 %i.e, 1
  %i.g = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.f, i1 true)
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not10.i.i = icmp eq i32 %i.d, 0
  br i1 %.not10.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.f, ptr %i.g, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15
  %i.j = or i32 %i.i, %i.c
  store i32 %i.j, ptr %i.h, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11   ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf11UInt32Value9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = add nsw i64 %i.l, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_ZN6google8protobuf11UInt32Value9MergeFromERKS1_.exit

_ZN6google8protobuf11UInt32Value9MergeFromERKS1_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf11UInt32Value12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !32
  %i.d = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.d, ptr %i.a, align 8, !tbaa !32
  store i64 %i.c, ptr %i.b, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !15
  %i.h = load i32, ptr %i.f, align 8, !tbaa !15
  store i32 %i.h, ptr %i.e, align 8, !tbaa !15
  store i32 %i.g, ptr %i.f, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.i, align 8, !tbaa !15
  %i.l = load i32, ptr %i.j, align 8, !tbaa !15
  store i32 %i.l, ptr %i.i, align 8, !tbaa !15
  store i32 %i.k, ptr %i.j, align 8, !tbaa !15
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
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf9BoolValueE, i64 16), ptr %0, align 8, !tbaa !13
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.ptr.i, i8 0, i64 9, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9BoolValueC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 28)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf9BoolValueE, i64 16), ptr %0, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !58
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %.noexc5, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

.noexc5:                                          ; preds = %.noexc
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %.noexc5, %.noexc
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf9BoolValueD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
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
  tail call void @_ZN6google8protobuf9BoolValueD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(32) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9BoolValue9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !14, !range !43, !noundef !44
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.g, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15
  %i.j = or i32 %i.i, %i.b
  store i32 %i.j, ptr %i.h, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11   ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = add nsw i64 %i.l, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.d, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf9BoolValue12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf21BoolValue_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf21BoolValue_class_data_E, i64 8), align 8, !tbaa !25
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf21BoolValue_class_data_E
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser8FastV8S1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #7

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf9BoolValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) initializes((16, 20), (24, 25)) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.b, align 8, !tbaa !14
  store i32 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !14, !range !43, !noundef !44
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !29
  %.not.i = icmp ult ptr %1, %i.g
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %1)
  %.pre = load i8, ptr %i.d, align 8, !tbaa !14, !range !43
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.c, %bb.d
  %i.i = phi i8 [ %.pre, %bb.d ], [ 1, %bb.c ]
  %.0.i12 = phi ptr [ %i.h, %bb.d ], [ %1, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i12, i64 1
  store i8 8, ptr %.0.i12, align 1, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i12, i64 2
  store i8 %i.i, ptr %i.j, align 1, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %bb.a
  %.0 = phi ptr [ %i.k, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %1, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.f, !prof !31

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.e
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %.0, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %bb.e
  %.1 = phi ptr [ %i.r, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.0, %bb.e ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf9BoolValue12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !43
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10BytesValue12ByteSizeLongEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
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
  %i.n = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.m, i1 true)
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.d, ptr %i.a, align 8, !tbaa !32
  store i64 %i.b, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !15
  %i.h = load i32, ptr %i.f, align 8, !tbaa !15
  store i32 %i.h, ptr %i.e, align 8, !tbaa !15
  store i32 %i.g, ptr %i.f, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.k = load i64, ptr %i.i, align 8, !tbaa !55
  store i64 %i.k, ptr %i.j, align 8, !tbaa !55
  store ptr %.sroa.0.0.copyload.i, ptr %i.i, align 8, !tbaa !55
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
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #10

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

declare ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

declare void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i64, ptr, ptr noundef) local_unnamed_addr #7

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #7

declare void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

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

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !40}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!"double", !5, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 _ZTSN6google8protobuf11MessageLiteE", !18, i64 0}
!20 = !{!"p1 _ZTSN6google8protobuf8internal16TcParseTableBaseE", !18, i64 0}
!21 = !{!"_ZTSN6google8protobuf8internal14MessageCreator3TagE", !5, i64 0}
!22 = !{!"_ZTSN6google8protobuf8internal14MessageCreatorE", !6, i64 0, !21, i64 4, !5, i64 5, !18, i64 8}
!23 = !{!"bool", !5, i64 0}
!24 = !{!"_ZTSN6google8protobuf8internal9ClassDataE", !19, i64 0, !20, i64 8, !18, i64 16, !18, i64 24, !22, i64 32, !6, i64 48, !23, i64 52, !23, i64 53}
!25 = !{!24, !20, i64 8}
!26 = !{!"p1 omnipotent char", !18, i64 0}
!27 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !18, i64 0}
!28 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !26, i64 0, !26, i64 8, !5, i64 16, !27, i64 48, !23, i64 56, !23, i64 57, !23, i64 58, !23, i64 59}
!29 = !{!28, !26, i64 0}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = !{!9, !9, i64 0}
!33 = !{!"_ZTSN6google8protobuf8internal10CachedSizeE", !6, i64 0}
!34 = !{!33, !6, i64 0}
!35 = !{!"float", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{i64 0, i64 4, !14, i64 4, i64 4, !15, i64 8, i64 8, !32}
!38 = !{!"branch_weights", i32 1, i32 1999}
!39 = !{!"branch_weights", i32 0, i32 1}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{i64 0, i64 4, !14, i64 4, i64 4, !15, i64 8, i64 4, !15}
!42 = !{!23, !23, i64 0}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!"_ZTSN6google8protobuf8internal15TaggedStringPtrE", !18, i64 0}
!46 = !{!45, !18, i64 0}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !47, i64 0, !9, i64 8, !5, i64 16}
!49 = !{!48, !9, i64 8}
!50 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !18, i64 0}
!51 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !50, i64 0}
!52 = !{!51, !50, i64 0}
!53 = !{!47, !26, i64 0}
!54 = !{!48, !26, i64 0}
!55 = !{!18, !18, i64 0}
!56 = !{i64 0, i64 4, !14, i64 4, i64 4, !15, i64 8, i64 8, !17}
!57 = !{i64 0, i64 4, !14, i64 4, i64 4, !15, i64 8, i64 4, !36}
!58 = !{i64 0, i64 4, !14, i64 4, i64 4, !15, i64 8, i64 1, !42}
end_hunk_1

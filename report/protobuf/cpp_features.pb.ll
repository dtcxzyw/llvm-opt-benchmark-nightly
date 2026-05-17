inline.NumInlined: 51
inline.NumDeleted: 34
begin_hunk_0_@_ZNK2pb11CppFeatures18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE:bb.a
  %i.v = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.v, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !33, !llvm.loop !34

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit24
  %.07.i.lcssa.i.i = phi i64 [ %i.p, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit24 ], [ %i.t, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.o, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit24 ], [ %i.u, %.lr.ph.i.i ] ; 2 uses
  %i.w = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.w, ptr %.0.i.lcssa.i.i, align 1, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, %bb.d
  %.1 = phi ptr [ %i.x, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit ], [ %.0, %bb.d ] ; 4 uses
  %i.y = and i32 %i.b, 4
  %.not29 = icmp eq i32 %i.y, 0
  br i1 %.not29, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %2, align 8, !tbaa !27
  %.not.i25 = icmp ult ptr %.1, %i.z
  br i1 %.not.i25, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit27, label %bb.i, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %.1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit27

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit27: ; preds = %bb.h, %bb.i
  %.0.i26 = phi ptr [ %i.aa, %bb.i ], [ %.1, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16, !range !19, !noundef !20
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i26, i64 1
  store i8 24, ptr %.0.i26, align 1, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i26, i64 2
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit27, %bb.g
  %.2 = phi ptr [ %i.ae, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit27 ], [ %.1, %bb.g ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !10 ; 2 uses
  %i.ah = trunc i64 %i.ag to i1
  br i1 %i.ah, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.k, !prof !36

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.j
  %i.ai = add nsw i64 %i.ag, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef %.2, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %bb.j
  %.3 = phi ptr [ %i.al, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.2, %bb.j ]
  ret ptr %.3
}

declare noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK2pb11CppFeatures12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 2 uses
  %i.n = and i32 %i.m, 6
  %i.o = tail call noundef range(i32 0, 3) i32 @llvm.ctpop.i32(i32 %i.n)
  %i.p = shl nuw nsw i32 %i.o, 1
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = and i32 %i.m, 1
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !16
  %i.u = or i32 %i.t, 1
  %i.v = sext i32 %i.u to i64
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = xor i64 %i.w, 63
  %i.y = mul nuw nsw i64 %i.x, 9
  %i.z = add nuw nsw i64 %i.y, 73
  %i.aa = lshr i64 %i.z, 6
  %i.ab = or disjoint i64 %i.q, 1
  %i.ac = add nuw nsw i64 %i.ab, %i.aa
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.0 = phi i64 [ %i.ac, %bb.a ], [ %i.q, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.0, ptr noundef nonnull %i.ad)
  ret i64 %i.ae
}

declare noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN2pb11CppFeatures8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN2pb11CppFeatures9MergeFromERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2pb11CppFeatures5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3    ; 5 uses
  %i.d = and i32 %i.c, 7
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1
  %.not16.i.i = icmp eq i32 %i.e, 0
  br i1 %.not16.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.g, ptr %i.h, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = and i32 %i.c, 2
  %.not17.i.i = icmp eq i32 %i.i, 0
  br i1 %.not17.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load i8, ptr %i.j, align 4, !tbaa !16, !range !19, !noundef !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.k, ptr %i.l, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = and i32 %i.c, 4
  %.not18.i.i = icmp eq i32 %i.m, 0
  br i1 %.not18.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16, !range !19, !noundef !20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.o, ptr %i.p, align 1, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !3
  %i.s = or i32 %i.r, %i.c
  store i32 %i.s, ptr %i.q, align 8, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !10   ; 2 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN2pb11CppFeatures9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = add nsw i64 %i.u, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  br label %_ZN2pb11CppFeatures9MergeFromERKS0_.exit

_ZN2pb11CppFeatures9MergeFromERKS0_.exit:         ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN2pb11CppFeatures12InternalSwapEPS0_(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !37
  %i.d = load i64, ptr %i.b, align 8, !tbaa !37
  store i64 %i.d, ptr %i.a, align 8, !tbaa !37
  store i64 %i.c, ptr %i.b, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %2 = load <6 x i8>, ptr %i.j, align 8, !tbaa !16, !alias.scope !41, !noalias !38
  %3 = load <6 x i8>, ptr %i.i, align 8, !tbaa !16, !alias.scope !38, !noalias !41
  store <6 x i8> %2, ptr %i.i, align 8, !tbaa !16, !alias.scope !38, !noalias !41
  store <6 x i8> %3, ptr %i.j, align 8, !tbaa !16, !alias.scope !41, !noalias !38
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK2pb11CppFeatures11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK2pb11CppFeatures12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #11

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

declare void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !12, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !6, i64 0}
!15 = !{i64 0, i64 4, !16, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 1, !17, i64 13, i64 1, !17}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"bool", !5, i64 0}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = !{!22, !24, i64 8}
!22 = !{!"_ZTSN6google8protobuf8internal9ClassDataE", !23, i64 0, !24, i64 8, !9, i64 16, !9, i64 24, !25, i64 32, !4, i64 48, !18, i64 52, !18, i64 53}
!23 = !{!"p1 _ZTSN6google8protobuf11MessageLiteE", !9, i64 0}
!24 = !{!"p1 _ZTSN6google8protobuf8internal16TcParseTableBaseE", !9, i64 0}
!25 = !{!"_ZTSN6google8protobuf8internal14MessageCreatorE", !4, i64 0, !26, i64 4, !5, i64 5, !5, i64 8}
!26 = !{!"_ZTSN6google8protobuf8internal14MessageCreator3TagE", !5, i64 0}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !29, i64 0, !29, i64 8, !5, i64 16, !30, i64 48, !18, i64 56, !18, i64 57, !18, i64 58, !18, i64 59}
!29 = !{!"p1 omnipotent char", !9, i64 0}
!30 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !9, i64 0}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = !{!"branch_weights", i32 1, i32 1999}
!33 = !{!"branch_weights", i32 0, i32 1}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!12, !12, i64 0}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN6google8protobuf8internal7memswapILm6EEEvPcS3_: argument 0"}
!40 = distinct !{!40, !"_ZN6google8protobuf8internal7memswapILm6EEEvPcS3_"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"_ZN6google8protobuf8internal7memswapILm6EEEvPcS3_: argument 1"}
end_hunk_0

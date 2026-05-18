inline.NumInlined: 76
inline.NumDeleted: 42
begin_hunk_0_@_ZNK2pb12JavaFeatures18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE:bb.a

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %bb.p
  %.5 = phi ptr [ %i.bh, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.4, %bb.p ]
  ret ptr %.5
}

declare noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK2pb12JavaFeatures12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 4 uses
  %i.n = and i32 %i.m, 14
  %i.o = tail call noundef range(i32 0, 4) i32 @llvm.ctpop.i32(i32 %i.n)
  %i.p = shl nuw nsw i32 %i.o, 1
  %i.q = zext nneg i32 %i.p to i64                ; 3 uses
  %i.r = and i32 %i.m, 17
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.e, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.s = and i32 %i.m, 1
  %.not14 = icmp eq i32 %i.s, 0
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !25
  %i.v = or i32 %i.u, 1
  %i.w = sext i32 %i.v to i64
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = xor i64 %i.x, 63
  %i.z = mul nuw nsw i64 %i.y, 9
  %i.aa = add nuw nsw i64 %i.z, 73
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = or disjoint i64 %i.q, 1
  %i.ad = add nuw nsw i64 %i.ac, %i.ab
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.ad, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  %i.ae = and i32 %i.m, 16
  %.not15 = icmp eq i32 %i.ae, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !25
  %i.ah = or i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.ak = xor i64 %i.aj, 63
  %i.al = mul nuw nsw i64 %i.ak, 9
  %i.am = add nuw nsw i64 %i.al, 73
  %i.an = lshr i64 %i.am, 6
  %i.ao = add nuw nsw i64 %.0, 1
  %i.ap = add nuw nsw i64 %i.ao, %i.an
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.1 = phi i64 [ %i.ap, %bb.d ], [ %.0, %bb.c ], [ %i.q, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ar = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.1, ptr noundef nonnull %i.aq)
  ret i64 %i.ar
}

declare noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN2pb12JavaFeatures8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN2pb12JavaFeatures9MergeFromERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2pb12JavaFeatures5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3    ; 7 uses
  %i.d = and i32 %i.c, 31
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1
  %.not22.i.i = icmp eq i32 %i.e, 0
  br i1 %.not22.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.g, ptr %i.h, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = and i32 %i.c, 2
  %.not23.i.i = icmp eq i32 %i.i, 0
  br i1 %.not23.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load i8, ptr %i.j, align 4, !tbaa !25, !range !27, !noundef !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.k, ptr %i.l, align 4, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = and i32 %i.c, 4
  %.not24.i.i = icmp eq i32 %i.m, 0
  br i1 %.not24.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25, !range !27, !noundef !28
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.o, ptr %i.p, align 1, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = and i32 %i.c, 8
  %.not25.i.i = icmp eq i32 %i.q, 0
  br i1 %.not25.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.s = load i8, ptr %i.r, align 2, !tbaa !25, !range !27, !noundef !28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.s, ptr %i.t, align 2, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = and i32 %i.c, 16
  %.not26.i.i = icmp eq i32 %i.u, 0
  br i1 %.not26.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.w, ptr %i.x, align 8, !tbaa !25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !3
  %i.aa = or i32 %i.z, %i.c
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !10 ; 2 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN2pb12JavaFeatures9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = add nsw i64 %i.ac, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
  br label %_ZN2pb12JavaFeatures9MergeFromERKS0_.exit

_ZN2pb12JavaFeatures9MergeFromERKS0_.exit:        ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %bb.m, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN2pb12JavaFeatures12InternalSwapEPS0_(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !39
  %i.d = load i64, ptr %i.b, align 8, !tbaa !39
  store i64 %i.d, ptr %i.a, align 8, !tbaa !39
  store i64 %i.c, ptr %i.b, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %2 = load <8 x i8>, ptr %i.j, align 8, !tbaa !25, !alias.scope !43, !noalias !40
  %3 = load <8 x i8>, ptr %i.i, align 8, !tbaa !25, !alias.scope !40, !noalias !43
  store <8 x i8> %2, ptr %i.i, align 8, !tbaa !25, !alias.scope !40, !noalias !43
  store <8 x i8> %3, ptr %i.j, align 8, !tbaa !25, !alias.scope !43, !noalias !40
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %5 = load <4 x i8>, ptr %4, align 8, !tbaa !25, !alias.scope !43, !noalias !40
  %6 = load <4 x i8>, ptr %.079.i.ptr.8.i, align 8, !tbaa !25, !alias.scope !40, !noalias !43
  store <4 x i8> %5, ptr %.079.i.ptr.8.i, align 8, !tbaa !25, !alias.scope !40, !noalias !43
  store <4 x i8> %6, ptr %4, align 8, !tbaa !25, !alias.scope !43, !noalias !40
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK2pb12JavaFeatures11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK2pb12JavaFeatures12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal12ExtensionSet24RegisterMessageExtensionEPKNS0_11MessageLiteEihbbS5_PFPKcS7_PNS1_12ParseContextEENS1_14LazyAnnotationE(ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8internal14ZeroFieldsBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2pb35JavaFeatures_NestInFileClassFeatureD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN6google8protobuf8internal14ZeroFieldsBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal14ZeroFieldsBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6google8protobuf8internal14ZeroFieldsBase5ClearERNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK6google8protobuf8internal14ZeroFieldsBase12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6google8protobuf8internal14ZeroFieldsBase12ByteSizeLongERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf8internal14ZeroFieldsBase18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf8internal14ZeroFieldsBase18_InternalSerializeERKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #13

declare void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

declare void @_ZN6google8protobuf8internal14ZeroFieldsBase5ClearERNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef i64 @_ZN6google8protobuf8internal14ZeroFieldsBase12ByteSizeLongERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal14ZeroFieldsBase18_InternalSerializeERKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @_GLOBAL__I_000102() #16 section ".text.startup" {
bb.a:
  tail call void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef nonnull @descriptor_table_google_2fprotobuf_2fcompiler_2fjava_2fjava_5ffeatures_2eproto)
  tail call void @_ZN6google8protobuf8internal12ExtensionSet24RegisterMessageExtensionEPKNS0_11MessageLiteEihbbS5_PFPKcS7_PNS1_12ParseContextEENS1_14LazyAnnotationE(ptr noundef nonnull @_ZN6google8protobuf29_FeatureSet_default_instance_E, i32 noundef 1001, i8 noundef zeroext 11, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @_ZN2pb31_JavaFeatures_default_instance_E, ptr noundef null, i8 noundef signext 0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

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
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }

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
!13 = !{!14, !4, i64 0}
!14 = !{!"_ZTSN6google8protobuf8internal10CachedSizeE", !4, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !6, i64 0}
!17 = !{!18, !20, i64 8}
!18 = !{!"_ZTSN6google8protobuf8internal9ClassDataE", !19, i64 0, !20, i64 8, !9, i64 16, !9, i64 24, !21, i64 32, !4, i64 48, !23, i64 52, !23, i64 53}
!19 = !{!"p1 _ZTSN6google8protobuf11MessageLiteE", !9, i64 0}
!20 = !{!"p1 _ZTSN6google8protobuf8internal16TcParseTableBaseE", !9, i64 0}
!21 = !{!"_ZTSN6google8protobuf8internal14MessageCreatorE", !4, i64 0, !22, i64 4, !5, i64 5, !5, i64 8}
!22 = !{!"_ZTSN6google8protobuf8internal14MessageCreator3TagE", !5, i64 0}
!23 = !{!"bool", !5, i64 0}
!24 = !{i64 0, i64 4, !25, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 1, !26, i64 13, i64 1, !26, i64 14, i64 1, !26, i64 16, i64 4, !3}
!25 = !{!5, !5, i64 0}
!26 = !{!23, !23, i64 0}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{!30, !31, i64 0}
!30 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !31, i64 0, !31, i64 8, !5, i64 16, !32, i64 48, !23, i64 56, !23, i64 57, !23, i64 58, !23, i64 59}
!31 = !{!"p1 omnipotent char", !9, i64 0}
!32 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !9, i64 0}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = !{!"branch_weights", i32 1, i32 1999}
!35 = !{!"branch_weights", i32 0, i32 1}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!12, !12, i64 0}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_: argument 0"}
!42 = distinct !{!42, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_: argument 1"}
end_hunk_0

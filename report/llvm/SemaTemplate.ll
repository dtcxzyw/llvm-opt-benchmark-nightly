Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplate?download=true
inline.NumInlined: 36021
inline.NumDeleted: 15703
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK5clang22ParsedTemplateArgument24getTemplatePackExpansionENS_14SourceLocationE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN5clang29NestedNameSpecifierLocBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e) #28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !1368
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load i64, ptr %i.i, align 8
  store i64 %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %2, ptr %i.k, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema26translateTemplateArgumentsERKN4llvm15MutableArrayRefINS_22ParsedTemplateArgumentEEERNS_24TemplateArgumentListInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(280) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.clang::TemplateArgumentLoc", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1371 ; 2 uses
  %i.c = and i64 %i.b, 4294967295
  %.not7 = icmp eq i64 %i.c, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = and i64 %i.b, 4294967295
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.g = load ptr, ptr %1, align 8, !tbaa !1372
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %indvars.iv
  call fastcc void @_ZL25translateTemplateArgumentRN5clang4SemaERKNS_22ParsedTemplateArgumentE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.h)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !765  ; 2 uses
  %i.j = load i32, ptr %i.e, align 4, !tbaa !868
  %.not.i.i = icmp ult i32 %i.i, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !901

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang19TemplateArgumentLocELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.i to i64
  %i.l = load ptr, ptr %2, align 8, !tbaa !84
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.n = load i32, ptr %i.d, align 8, !tbaa !765
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.d, align 8, !tbaa !765
  br label %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit

_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL25translateTemplateArgumentRN5clang4SemaERKNS_22ParsedTemplateArgumentE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %1, ptr noundef nonnull align 8 dereferenceable(76) %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.clang::TemplateName", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %"class.clang::TemplateArgument", align 8 ; 4 uses
  %5 = alloca %"class.clang::TemplateArgument", align 8 ; 6 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !1377
  switch i32 %i.b, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1378
  %i.e = call i64 @_ZN5clang4Sema17GetTypeFromParserENS_9OpaquePtrINS_8QualTypeEEEPPNS_14TypeSourceInfoE(ptr %i.d, ptr noundef nonnull %i.a) #28 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1380
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 68
  %.sroa.0.0.copyload.i = load i32, ptr %i.i, align 4, !tbaa !58
  %i.j = call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.h, i64 %i.e, i32 %.sroa.0.0.copyload.i) #28
  store ptr %i.j, ptr %i.a, align 8, !tbaa !1380
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5clang16TemplateArgument12initFromTypeENS_8QualTypeEbb(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %i.e, i1 noundef zeroext false, i1 noundef zeroext false) #28
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1381
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = or i64 %i.m, 2
  store i64 %i.n, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1378
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  store i64 8, ptr %0, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %.sroa.540.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = or i64 %i.q, 1
  store i64 %i.s, ptr %i.r, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1378
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN5clang12TemplateNameC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.u) #28
  %i.v = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.x, align 8, !tbaa !58
  %.not42 = icmp eq i32 %.sroa.0.0.copyload.i28, 0
  %spec.select = select i1 %.not42, i32 6, i32 7
  store i32 %spec.select, ptr %5, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.y, align 4
  %storemerge = inttoptr i64 %i.v to ptr
  store ptr %storemerge, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !864, !nonnull !865, !align !866 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.0.0.copyload.i29 = load i32, ptr %i.ab, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(23904) %i.aa) #28 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 68
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.ag, align 4, !tbaa !58
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.x, align 8, !tbaa !58
  call void @_ZN5clang19TemplateArgumentLocC1ERNS_10ASTContextERKNS_16TemplateArgumentENS_14SourceLocationENS_22NestedNameSpecifierLocES6_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(23904) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 %.sroa.0.0.copyload.i29, i64 %i.ae, ptr %i.af, i32 %.sroa.0.0.copyload.i30, i32 %.sroa.0.0.copyload.i31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema25ActOnTemplateTypeArgumentENS_12ActionResultINS_9OpaquePtrINS_8QualTypeEEELb0EEE(ptr dead_on_unwind noalias writable sret(%"class.clang::ParsedTemplateArgument") align 8 initializes((0, 4), (8, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %1, ptr %2, i8 %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.std::tuple.1985", align 8   ; 4 uses
  %5 = alloca %"class.clang::TemplateName", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.clang::CXXScopeSpec", align 8 ; 9 uses
  %7 = alloca %"class.clang::ParsedTemplateArgument", align 8 ; 11 uses
  %8 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = call i64 @_ZN5clang4Sema17GetTypeFromParserENS_9OpaquePtrINS_8QualTypeEEEPPNS_14TypeSourceInfoE(ptr %2, ptr noundef nonnull %i.a) #28
  %i.c = icmp ult i64 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !1377
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.d, i8 0, i64 68, i1 false)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !879, !nonnull !865, !align !866
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 32768
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !1380 ; 2 uses
  %.sroa.0.0.copyload.i13 = load i64, ptr %i.i, align 8, !tbaa !843 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = inttoptr i64 %.sroa.0.0.copyload.i13 to ptr ; 4 uses
  %i.l = and i64 %.sroa.0.0.copyload.i13, 15
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %_ZNK5clang7TypeLoc5getAsINS_20PackExpansionTypeLocEEET_v.exit.thread

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.d
  %i.m = load ptr, ptr %i.k, align 16, !tbaa !888
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i8, ptr %i.n, align 16
  %i.p = icmp eq i8 %i.o, 36
  br i1 %i.p, label %bb.e, label %_ZNK5clang7TypeLoc5getAsINS_20PackExpansionTypeLocEEET_v.exit.thread

bb.e:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.j, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.q, align 16, !tbaa !843 ; 2 uses
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = add i64 %i.r, 4                          ; 2 uses
  %i.t = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #28
  %i.u = icmp ne i64 %i.s, 0
  %i.v = zext i1 %i.u to i64                      ; 2 uses
  %i.w = sub i64 %i.s, %i.v
  %i.x = zext i32 %i.t to i64                     ; 2 uses
  %i.y = udiv i64 %i.w, %i.x
  %i.z = add i64 %i.y, %i.v
  %i.aa = mul i64 %i.z, %i.x
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  br label %_ZNK5clang7TypeLoc5getAsINS_20PackExpansionTypeLocEEET_v.exit.thread

_ZNK5clang7TypeLoc5getAsINS_20PackExpansionTypeLocEEET_v.exit.thread: ; preds = %bb.d, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.e
  %.sroa.044.0 = phi ptr [ %i.ac, %bb.e ], [ %i.k, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i ], [ %i.k, %bb.d ] ; 3 uses
  %.sroa.042.0 = phi i32 [ %.sroa.0.0.copyload.i16, %bb.e ], [ 0, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i ], [ 0, %bb.d ] ; 2 uses
  %.sroa.746.0 = phi ptr [ %i.ab, %bb.e ], [ %i.j, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.ad = ptrtoint ptr %.sroa.044.0 to i64
  %i.ae = and i64 %i.ad, 15
  %.not.i.i17 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i17, label %_ZN5clang15ConcreteTypeLocINS_14DeducedTypeLocENS_36DeducedTemplateSpecializationTypeLocENS_33DeducedTemplateSpecializationTypeENS_36DeducedTemplateSpecializationLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %.critedge

_ZN5clang15ConcreteTypeLocINS_14DeducedTypeLocENS_36DeducedTemplateSpecializationTypeLocENS_33DeducedTemplateSpecializationTypeENS_36DeducedTemplateSpecializationLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %_ZNK5clang7TypeLoc5getAsINS_20PackExpansionTypeLocEEET_v.exit.thread
  %i.af = load ptr, ptr %.sroa.044.0, align 16, !tbaa !888
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 16
  %i.ai = icmp eq i8 %i.ah, 17
  br i1 %i.ai, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_14DeducedTypeLocENS_36DeducedTemplateSpecializationTypeLocENS_33DeducedTemplateSpecializationTypeENS_36DeducedTemplateSpecializationLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 40
  %.sroa.0.0.copyload.i24 = load i64, ptr %i.aj, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.746.0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1384 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZNK5clang36DeducedTemplateSpecializationTypeLoc15getQualifierLocEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %.sroa.0.0.copyload.i24, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNK5clang12TemplateName30getQualifierAndTemplateKeywordEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1985") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0.0.copyload.i4.i = load i64, ptr %i.am, align 8, !tbaa !867
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNK5clang36DeducedTemplateSpecializationTypeLoc15getQualifierLocEv.exit

_ZNK5clang36DeducedTemplateSpecializationTypeLoc15getQualifierLocEv.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i25 = phi i64 [ %.sroa.0.0.copyload.i4.i, %bb.g ], [ 0, %bb.f ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.0.0.i25, ptr %i.al) #28
  %i.an = inttoptr i64 %.sroa.0.0.copyload.i24 to ptr
  %.sroa.0.0.copyload.i.i28 = load i32, ptr %.sroa.746.0, align 8, !tbaa !58
  store i32 2, ptr %0, align 8, !tbaa !1377
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1378
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = load i64, ptr %6, align 8, !tbaa !58
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN5clang29NestedNameSpecifierLocBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.as) #28
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !1368
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sroa.0.0.copyload.i.i28, ptr %i.aw, align 4, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.ax, align 8, !tbaa !877
  %.not57 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not57, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang36DeducedTemplateSpecializationTypeLoc15getQualifierLocEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %7, ptr noundef nonnull align 8 dereferenceable(76) %0, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.az = load i64, ptr %i.ap, align 8, !tbaa !58, !noalias !2303
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !58, !alias.scope !2303
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @_ZN5clang29NestedNameSpecifierLocBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.ar) #28
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !1368
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.bd = load i64, ptr %i.av, align 8, !noalias !2303
  store i64 %i.bd, ptr %i.bc, align 8, !alias.scope !2303
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 %.sroa.042.0, ptr %i.be, align 8, !tbaa !58, !alias.scope !2303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(76) %7, i64 16, i1 false)
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !58
  store i64 %i.bf, ptr %i.ap, align 8, !tbaa !58
  %i.bg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang29NestedNameSpecifierLocBuilderaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.ba) #28 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !1368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 8 dereferenceable(12) %i.bc, i64 12, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !981
  %.not.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i, label %_ZN5clang22ParsedTemplateArgumentD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !982
  call void @free(ptr noundef %i.bk) #28
  br label %_ZN5clang22ParsedTemplateArgumentD2Ev.exit

_ZN5clang22ParsedTemplateArgumentD2Ev.exit:       ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.j

bb.j:                                             ; preds = %_ZNK5clang36DeducedTemplateSpecializationTypeLoc15getQualifierLocEv.exit, %_ZN5clang22ParsedTemplateArgumentD2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !981
  %.not.i.i29 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i29, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !982
  call void @free(ptr noundef %i.bo) #28
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.l

.critedge:                                        ; preds = %_ZNK5clang7TypeLoc5getAsINS_20PackExpansionTypeLocEEET_v.exit.thread, %_ZN5clang15ConcreteTypeLocINS_14DeducedTypeLocENS_36DeducedTemplateSpecializationTypeLocENS_33DeducedTemplateSpecializationTypeENS_36DeducedTemplateSpecializationLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !1380 ; 2 uses
  %.sroa.0.0.copyload.i31 = load i64, ptr %i.bp, align 8, !tbaa !843
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = inttoptr i64 %.sroa.0.0.copyload.i31 to ptr
  store ptr %i.br, ptr %8, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bq, ptr %i.bs, align 8
  %i.bt = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  store i32 0, ptr %0, align 8, !tbaa !1377
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.bu, align 8, !tbaa !1378
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bv, i8 0, i64 52, i1 false)
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !58
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.bx, align 8, !tbaa !877
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.l

bb.l:                                             ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit, %.critedge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare i64 @_ZN5clang4Sema17GetTypeFromParserENS_9OpaquePtrINS_8QualTypeEEEPPNS_14TypeSourceInfoE(ptr, ptr noundef) local_unnamed_addr #4

declare i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang4Sema18ActOnTypeParameterEPNS_5ScopeEbNS_14SourceLocationES3_PNS_14IdentifierInfoES3_jjS3_NS_9OpaquePtrINS_8QualTypeEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i1 noundef zeroext %2, i32 %3, i32 %4, ptr noundef %5, i32 %6, i32 noundef %7, i32 noundef %8, i32 %9, i64 %10, i1 noundef zeroext %11) local_unnamed_addr #2 align 2 {
bb.a:
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %13 = alloca %"class.clang::TemplateArgumentLoc", align 8 ; 5 uses
  %14 = alloca %"class.clang::TemplateArgument", align 8 ; 4 uses
  %i.b = inttoptr i64 %10 to ptr
  %i.c = icmp ne i32 %3, 0                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !864, !nonnull !865, !align !866 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2536
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1385
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1392 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.j, align 8 ; 3 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 1
  %i.l = icmp eq i64 %i.k, 0
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i = select i1 %i.l, i64 %i.m, i64 0 ; 3 uses
  %i.n = icmp ugt i64 %spec.select.i.i.i.i.i.i, 3
  br i1 %i.n, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.o = and i64 %spec.select.i.i.i.i.i.i, 2
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  %i.p = and i64 %spec.select.i.i.i.i.i.i, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 4 uses
  br i1 %.not.i.i.i.i, label %_ZNK5clang10ASTContext22getTranslationUnitDeclEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 18624
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1393 ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.not.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 2632 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1394 ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = add i64 %i.v, 24                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 2640
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1395
  %i.z = icmp ult i64 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.f, !prof !901

bb.e:                                             ; preds = %bb.d
  %i.aa = inttoptr i64 %i.w to ptr
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !1394
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i = ptrtoint ptr %i.ab to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.v, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.u, %bb.e ] ; 3 uses
  store ptr %i.s, ptr %.0.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1397
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !1398
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i, i64 16
end_hunk_0
begin_hunk_1_@_ZN5clang4Sema21CheckTemplateArgumentEPNS_9NamedDeclERNS_19TemplateArgumentLocES2_NS_14SourceLocationES5_jRNS0_25CheckTemplateArgumentInfoENS0_25CheckTemplateArgumentKindE:bb.a
  %i.il = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.im = load i8, ptr %i.il, align 8, !tbaa !1634, !range !878, !noundef !865
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !1505
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.iq = load ptr, ptr %7, align 8, !tbaa !84    ; 2 uses
  %i.ir = load i32, ptr %i.ii, align 8, !tbaa !765
  %i.is = zext i32 %i.ir to i64                   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  store ptr %i.it, ptr %34, align 8, !tbaa !84
  %i.iu = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 4 uses
  store i32 0, ptr %i.iu, align 8, !tbaa !765
  %i.iv = getelementptr inbounds nuw i8, ptr %34, i64 12 ; 2 uses
  store i32 4, ptr %i.iv, align 4, !tbaa !868
  %i.iw = getelementptr inbounds nuw i8, ptr %34, i64 112
  store i32 0, ptr %i.iw, align 8, !tbaa !1615
  %i.ix = getelementptr inbounds nuw i8, ptr %34, i64 116
  store i8 0, ptr %i.ix, align 4, !tbaa !1616
  %i.iy = getelementptr inbounds nuw i8, ptr %34, i64 117
  store i8 0, ptr %i.iy, align 1, !tbaa !1617
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %.not.i.i174 = icmp eq ptr %3, null
  br i1 %.not.i.i174, label %.thread.i178, label %bb.aw

.thread.i178:                                     ; preds = %bb.av
  store i64 4, ptr %11, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.iq, ptr %i.iz, align 8, !tbaa !1619
  %.sroa.2.0..sroa_idx.i7.i179 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.is, ptr %.sroa.2.0..sroa_idx.i7.i179, align 8, !tbaa !867
  br label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ja = load ptr, ptr %3, align 8, !tbaa !894
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = call noundef ptr %i.jc(ptr noundef nonnull align 8 dereferenceable(33) %3) #28, !inline_history !19
  %i.je = ptrtoint ptr %i.jd to i64
  %.pre.i175 = load i32, ptr %i.iu, align 8, !tbaa !765 ; 2 uses
  %.pre4.i176 = load i32, ptr %i.iv, align 4, !tbaa !868
  %i.jf = icmp ult i32 %.pre.i175, %.pre4.i176
  %i.jg = or i64 %i.je, 4
  store i64 %i.jg, ptr %11, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.iq, ptr %i.jh, align 8, !tbaa !1619
  %.sroa.2.0..sroa_idx.i.i177 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.is, ptr %.sroa.2.0..sroa_idx.i.i177, align 8, !tbaa !867
  br i1 %i.jf, label %._crit_edge249, label %bb.ax, !prof !1697

._crit_edge249:                                   ; preds = %bb.aw
  %i.ji = zext i32 %.pre.i175 to i64
  %.pre250 = load ptr, ptr %34, align 8, !tbaa !84
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang30MultiLevelTemplateArgumentList17ArgumentListLevelELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(118) %34, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZN5clang30MultiLevelTemplateArgumentListC2EPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit180

bb.ay:                                            ; preds = %._crit_edge249, %.thread.i178
  %i.jj = phi ptr [ %i.it, %.thread.i178 ], [ %.pre250, %._crit_edge249 ]
  %i.jk = phi i64 [ 0, %.thread.i178 ], [ %i.ji, %._crit_edge249 ]
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %i.jj, i64 %i.jk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.jl, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.jm = load i32, ptr %i.iu, align 8, !tbaa !765
  %i.jn = add i32 %i.jm, 1
  store i32 %i.jn, ptr %i.iu, align 8, !tbaa !765
  br label %_ZN5clang30MultiLevelTemplateArgumentListC2EPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit180

_ZN5clang30MultiLevelTemplateArgumentListC2EPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit180: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.jo = call noundef ptr @_ZN5clang4Sema19SubstTemplateParamsEPNS_21TemplateParameterListEPNS_11DeclContextERKNS_30MultiLevelTemplateArgumentListEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %.0132, ptr noundef %i.ip, ptr noundef nonnull align 8 dereferenceable(118) %34, i1 noundef zeroext false) #28 ; 2 uses
  %i.jp = load ptr, ptr %34, align 8, !tbaa !84   ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.it
  br i1 %i.jq, label %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit181, label %bb.az

bb.az:                                            ; preds = %_ZN5clang30MultiLevelTemplateArgumentListC2EPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit180
  call void @free(ptr noundef %i.jp) #28
  br label %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit181

_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit181: ; preds = %_ZN5clang30MultiLevelTemplateArgumentListC2EPNS_4DeclEN4llvm8ArrayRefINS_16TemplateArgumentEEEb.exit180, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %.not146 = icmp ne ptr %i.jo, null
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit181, %bb.au
  %.1133 = phi ptr [ %i.jo, %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit181 ], [ %.0132, %bb.au ]
  %cond1 = phi i1 [ %.not146, %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit181 ], [ false, %bb.au ]
  call void @_ZN5clang4Sema21InstantiatingTemplate5ClearEv(ptr noundef nonnull align 8 dereferenceable(9) %32) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.jr = load i8, ptr %i.ic, align 8, !tbaa !1629, !range !878, !noundef !865
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %_ZN5clang23LocalInstantiationScope4ExitEv.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jt = load i32, ptr %i.hx, align 8, !tbaa !765 ; 2 uses
  %.not5.i.i = icmp eq i32 %i.jt, 0
  br i1 %.not5.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bb
  %i.ju = zext i32 %i.jt to i64
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.be, %bb.bb
  %i.jv = load ptr, ptr %i.hz, align 8, !tbaa !1628
  %i.jw = load ptr, ptr %31, align 8, !tbaa !1684, !nonnull !865, !align !866
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 12576
  store ptr %i.jv, ptr %i.jx, align 8, !tbaa !1620
  store i8 1, ptr %i.ic, align 8, !tbaa !1629
  br label %_ZN5clang23LocalInstantiationScope4ExitEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.be, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.be ] ; 2 uses
  %i.jy = load ptr, ptr %i.hv, align 8, !tbaa !84
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv.i.i
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !1686 ; 4 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i
  %i.kc = load ptr, ptr %i.ka, align 8, !tbaa !84 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj4EED2Ev.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef %i.kc) #28
  br label %_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj4EED2Ev.exit.i.i: ; preds = %bb.bd, %bb.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef 48) #30
  br label %bb.be

bb.be:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj4EED2Ev.exit.i.i, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i182 = icmp eq i64 %indvars.iv.next.i.i, %i.ju
  br i1 %.not.i.i182, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !12

_ZN5clang23LocalInstantiationScope4ExitEv.exit.i: ; preds = %._crit_edge.i.i, %bb.ba
  %i.kf = load ptr, ptr %i.hv, align 8, !tbaa !84 ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.hw
  br i1 %i.kg, label %_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN5clang23LocalInstantiationScope4ExitEv.exit.i
  call void @free(ptr noundef %i.kf) #28
  br label %_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i: ; preds = %bb.bf, %_ZN5clang23LocalInstantiationScope4ExitEv.exit.i
  %i.kh = load i32, ptr %i.ht, align 8
  %i.ki = and i32 %i.kh, 1
  %.not.i.i.i = icmp eq i32 %i.ki, 0
  br i1 %.not.i.i.i, label %bb.bg, label %_ZN5clang23LocalInstantiationScopeD2Ev.exit

bb.bg:                                            ; preds = %_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i
  %i.kj = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !843 ; 2 uses
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %_ZN5clang23LocalInstantiationScopeD2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.km = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !843
  %i.ko = zext i32 %i.kk to i64                   ; 2 uses
  %i.kp = shl nuw nsw i64 %i.ko, 4
  %i.kq = add nuw nsw i64 %i.ko, 31
  %i.kr = lshr i64 %i.kq, 3
  %i.ks = and i64 %i.kr, 1073741820
  %i.kt = add nuw nsw i64 %i.ks, %i.kp
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.kn, i64 noundef %i.kt, i64 noundef 8) #28
  br label %_ZN5clang23LocalInstantiationScopeD2Ev.exit

_ZN5clang23LocalInstantiationScopeD2Ev.exit:      ; preds = %_ZN4llvm11SmallVectorIPNS0_IPN5clang9ValueDeclELj4EEELj1EED2Ev.exit.i, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br i1 %cond1, label %bb.bi, label %bb.bu

bb.bi:                                            ; preds = %_ZN5clang23LocalInstantiationScopeD2Ev.exit
  %i.ku = load i64, ptr %2, align 8               ; 2 uses
  %i.kv = and i64 %i.ku, 2147483647
  %i.kw = icmp eq i64 %i.kv, 1
  br i1 %i.kw, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !864, !nonnull !865, !align !866 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.kz, align 8
  %i.la = and i64 %.0.copyload.i.i.i.i.i.i.i, -4
  %i.lb = inttoptr i64 %i.la to ptr               ; 3 uses
  %.sroa.0.0.copyload.i185 = load i64, ptr %i.lb, align 8, !tbaa !843 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = inttoptr i64 %.sroa.0.0.copyload.i185 to ptr ; 3 uses
  %i.le = and i64 %.sroa.0.0.copyload.i185, 15
  %.not.i.i.i186 = icmp eq i64 %i.le, 0
  br i1 %.not.i.i.i186, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_10TagTypeLocENS_7TagTypeENS_14TagTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i.i, label %_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit.thread

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_10TagTypeLocENS_7TagTypeENS_14TagTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i.i: ; preds = %bb.bj
  %i.lf = load ptr, ptr %i.ld, align 16, !tbaa !888, !noalias !2515
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load i8, ptr %i.lg, align 16, !noalias !2515
  %i.li = add i8 %i.lh, -47
  %switch.i.i.i.i.i = icmp ult i8 %i.li, 3
  br i1 %switch.i.i.i.i.i, label %bb.bk, label %_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit.thread

bb.bk:                                            ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_10TagTypeLocENS_7TagTypeENS_14TagTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !2515
  %i.lj = call i64 @_ZNK5clang7TagType15getTemplateNameERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(32) %i.ld, ptr noundef nonnull align 8 dereferenceable(23904) %i.ky) #28, !noalias !2515
  store i64 %i.lj, ptr %9, align 8, !noalias !2515
  %i.lk = call noundef zeroext i1 @_ZNK5clang12TemplateName6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #28, !noalias !2515
  br i1 %i.lk, label %_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit.thread269, label %_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit

_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit.thread269: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !2515
  br label %_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit.thread

_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit: ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !2515
  %.sroa.02.0.copyload.i = load i64, ptr %9, align 8, !noalias !2515
  store i32 6, ptr %10, align 8, !noalias !2515
  %i.ll = inttoptr i64 %.sroa.02.0.copyload.i to ptr
  %i.lm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !843, !noalias !2515
  %i.ln = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.ln, align 4, !tbaa !58, !noalias !2515
  %i.lo = call i64 @_ZNK5clang7TagType12getQualifierEv(ptr noundef nonnull align 16 dereferenceable(32) %i.ld) #28, !noalias !2515
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !1813, !noalias !2515
  %.sroa.0.0.copyload.i.i187 = load i32, ptr %i.lc, align 8, !tbaa !58, !noalias !2515
  call void @_ZN5clang19TemplateArgumentLocC1ERNS_10ASTContextERKNS_16TemplateArgumentENS_14SourceLocationENS_22NestedNameSpecifierLocES6_S6_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(23904) %i.ky, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 0, i64 %i.lo, ptr %i.lq, i32 %.sroa.0.0.copyload.i.i187, i32 0) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !2515
  %.pre251.pre = load i64, ptr %35, align 8
  %i.lr = and i64 %.pre251.pre, 2147483647
  %i.ls = icmp eq i64 %i.lr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !2515
  br i1 %i.ls, label %_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %35, i64 32, i1 false)
  br label %_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit.thread

_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit.thread: ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_10TagTypeLocENS_7TagTypeENS_14TagTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i.i, %bb.bj, %_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit.thread269, %bb.bl, %_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %.pre252 = load i64, ptr %2, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit.thread, %bb.bi
  %i.lt = phi i64 [ %.pre252, %_ZL37convertTypeTemplateArgumentToTemplateRN5clang10ASTContextENS_7TypeLocE.exit.thread ], [ %i.ku, %bb.bi ] ; 2 uses
  %i.lu = trunc i64 %i.lt to i32
  %i.lv = and i32 %i.lu, 2147483647
  switch i32 %i.lv, label %bb.bu [
    i32 1, label %bb.bp
    i32 6, label %bb.bn
    i32 7, label %bb.bn
    i32 8, label %bb.bp
  ]

bb.bn:                                            ; preds = %bb.bm, %bb.bm
  %i.lw = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.lx = load i8, ptr %i.lw, align 8, !tbaa !1599, !range !878, !noundef !865
  %i.ly = trunc nuw i8 %i.lx to i1
  %i.lz = getelementptr inbounds nuw i8, ptr %7, i64 226
  %i.ma = call noundef zeroext i1 @_ZN5clang4Sema29CheckTemplateTemplateArgumentEPNS_24TemplateTemplateParmDeclEPNS_21TemplateParameterListERNS_19TemplateArgumentLocEbPb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef %.1133, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %i.ly, ptr noundef nonnull %i.lz)
  br i1 %i.ma, label %bb.bu, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.mb = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !864, !nonnull !865, !align !866
  call void @_ZNK5clang10ASTContext28getCanonicalTemplateArgumentERKNS_16TemplateArgumentE(ptr dead_on_unwind nonnull writable sret(%"class.clang::TemplateArgument") align 8 %36, ptr noundef nonnull align 8 dereferenceable(23904) %i.md, ptr noundef nonnull align 8 dereferenceable(24) %2) #28
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.mb, ptr noundef nonnull align 8 dereferenceable(24) %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bm, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i32 0, ptr %i.c, align 4, !tbaa !58
  %i.me = load i8, ptr %i.hn, align 8
  %i.mf = and i8 %i.me, 7
  switch i8 %i.mf, label %bb.br [
    i8 3, label %.sink.split
    i8 6, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bp, %bb.bq
  %.sink = phi i32 [ 2, %bb.bq ], [ 1, %bb.bp ]
  store i32 %.sink, ptr %i.c, align 4, !tbaa !58
  br label %bb.br

bb.br:                                            ; preds = %.sink.split, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mh = and i64 %i.lt, 2147483646
  %switch.i188 = icmp eq i64 %i.mh, 6
  br i1 %switch.i188, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i.i191 = load i64, ptr %i.mi, align 8
  %i.mj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i191, -4
  %i.mk = inttoptr i64 %i.mj to ptr
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 12
  %.sroa.0.0.copyload.i.i.i192 = load i32, ptr %i.ml, align 4, !tbaa !58
  br label %_ZNK5clang19TemplateArgumentLoc11getLocationEv.exit193

bb.bt:                                            ; preds = %bb.br
  %i.mm = call i64 @_ZNK5clang19TemplateArgumentLoc14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #29
  %.sroa.0.0.extract.trunc.i189 = trunc i64 %i.mm to i32
  br label %_ZNK5clang19TemplateArgumentLoc11getLocationEv.exit193

_ZNK5clang19TemplateArgumentLoc11getLocationEv.exit193: ; preds = %bb.bs, %bb.bt
  %.sroa.0.0.i190 = phi i32 [ %.sroa.0.0.extract.trunc.i189, %bb.bt ], [ %.sroa.0.0.copyload.i.i.i192, %bb.bs ]
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %37, ptr noundef nonnull align 8 dereferenceable(8) %i.mg, i32 %.sroa.0.0.i190, i32 noundef 5219) #28
  %i.mn = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIiEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %37, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !879, !nonnull !865, !align !866
  %i.mq = load i64, ptr %i.mp, align 8
  %i.mr = trunc i64 %i.mq to i32
  %i.ms = lshr i32 %i.mr, 13
  %i.mt = and i32 %i.ms, 1
  store i32 %i.mt, ptr %i.d, align 4, !tbaa !58
  %i.mu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.mn, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.bu

bb.bu:                                            ; preds = %bb.at, %.thread239, %bb.b, %bb.bm, %bb.bo, %bb.bn, %_ZN5clang23LocalInstantiationScopeD2Ev.exit, %_ZNK5clang19TemplateArgumentLoc11getLocationEv.exit193
  %.15 = phi i1 [ %i.j, %bb.b ], [ %.9, %bb.at ], [ true, %bb.bn ], [ true, %_ZN5clang23LocalInstantiationScopeD2Ev.exit ], [ true, %_ZNK5clang19TemplateArgumentLoc11getLocationEv.exit193 ], [ false, %bb.bo ], [ false, %bb.bm ], [ true, %.thread239 ]
  ret i1 %.15
}

declare void @_ZN5clang4Sema21InstantiatingTemplateC1ERS0_NS_14SourceLocationEPNS_9NamedDeclEPNS_23NonTypeTemplateParmDeclEN4llvm8ArrayRefINS_16TemplateArgumentEEENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, ptr noundef, ptr noundef byval(%"class.llvm::ArrayRef.1634") align 8, i64) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef ptr @"_ZZN5clang4Sema21CheckTemplateArgumentEPNS_9NamedDeclERNS_19TemplateArgumentLocES2_NS_14SourceLocationES5_jRNS0_25CheckTemplateArgumentInfoENS0_25CheckTemplateArgumentKindEENK3$_0clEPNS_4ExprE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.clang::TemplateArgument", align 8 ; 6 uses
  %3 = alloca %"class.clang::TemplateArgument", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1810
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2516, !nonnull !865, !align !866
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1804
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2517, !nonnull !865, !align !866
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8, !tbaa !843
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2518, !nonnull !865, !align !866 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 225
  %i.j = load i8, ptr %i.i, align 1, !tbaa !1600, !range !878, !noundef !865
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.m = load i8, ptr %i.l, align 8, !tbaa !1599, !range !878, !noundef !865
  %i.n = trunc nuw i8 %i.m to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i1 [ true, %bb.a ], [ %i.n, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2519, !nonnull !865, !align !1570
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1803
  %i.s = call i64 @_ZN5clang4Sema21CheckTemplateArgumentEPNS_9NamedDeclENS_8QualTypeEPNS_4ExprERNS_16TemplateArgumentES7_bNS0_25CheckTemplateArgumentKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.a, ptr noundef %i.d, i64 %.sroa.0.0.copyload, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %i.o, i32 noundef %i.r) ; 2 uses
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !2518, !nonnull !865, !align !866 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !765  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !901

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE9push_backERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !765
  %i.ad = add i32 %i.ac, 1
end_hunk_1
begin_hunk_2_@_ZN5clang4Sema17CheckTypenameTypeENS_21ElaboratedTypeKeywordENS_14SourceLocationENS_22NestedNameSpecifierLocERKNS_14IdentifierInfoES2_PPNS_14TypeSourceInfoEb:bb.a
bb.h:                                             ; preds = %bb.f
  store i32 %6, ptr %i.y, align 8, !tbaa !58
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %2, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !58
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %4, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !874
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d, %bb.g, %bb.e, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !1700
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !1701
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.ac, i64 %i.a, i32 noundef %i.ag) #28 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %9, align 8, !tbaa !1699  ; 4 uses
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !1701
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.al, i64 %i.af, i1 false)
  store ptr %i.ah, ptr %7, align 8, !tbaa !1380
  %.not.i59 = icmp eq ptr %i.aj, %i.c
  %i.am = icmp eq ptr %i.aj, null
  %or.cond.i = or i1 %.not.i59, %i.am
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #30
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN5clang14TypeLocBuilderD2Ev.exit
  %.sroa.090.0 = phi i64 [ %i.a, %_ZN5clang14TypeLocBuilderD2Ev.exit ], [ 0, %bb.a ]
  ret i64 %.sroa.090.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema17CheckTypenameTypeENS_21ElaboratedTypeKeywordENS_14SourceLocationENS_22NestedNameSpecifierLocERKNS_14IdentifierInfoES2_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef %1, i32 %2, i64 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 %6, i1 noundef zeroext %7) local_unnamed_addr #2 align 2 {
bb.a:
  %8 = alloca %"class.clang::TemplateName", align 8 ; 4 uses
  %9 = alloca %"class.clang::TemplateArgumentLoc", align 8 ; 5 uses
  %10 = alloca %"class.clang::CXXScopeSpec", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 15 uses
  %11 = alloca %"class.clang::DeclarationName", align 8 ; 7 uses
  %12 = alloca %"class.clang::LookupResult", align 8 ; 28 uses
  %13 = alloca %"class.clang::SourceRange", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"struct.std::pair.1458", align 8  ; 6 uses
  %16 = alloca %"class.std::tuple.1689", align 8  ; 5 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %18 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %19 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %20 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %21 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %22 = alloca %"class.clang::NestedNameSpecifierLoc", align 8 ; 5 uses
  %23 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %24 = alloca %"class.clang::FixItHint", align 8 ; 6 uses
  %25 = alloca %"class.clang::NestedNameSpecifier", align 8 ; 5 uses
  %26 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %27 = alloca %"class.clang::TemplateName", align 8 ; 2 uses
  %28 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %29 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %30 = alloca %"class.clang::TemplateName", align 8 ; 2 uses
  %31 = alloca %"class.clang::TemplateName", align 8 ; 2 uses
  %32 = alloca %"class.clang::SourceRange", align 4 ; 6 uses
  %33 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %34 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %35 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %10, i64 %3, ptr %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !1355
  %.not140 = icmp eq i64 %3, 0
  br i1 %.not140, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef ptr @_ZN5clang4Sema18computeDeclContextERKNS_12CXXScopeSpecEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %10, i1 noundef zeroext false) #28 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !1355
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.h = call i64 @_ZNK5clang10ASTContext20getDependentNameTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(23904) %i.g, i32 noundef %1, i64 %3, ptr noundef nonnull %5) #28
  br label %bb.aw

bb.d:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZN5clang4Sema26RequireCompleteDeclContextERNS_12CXXScopeSpecEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull %i.e) #28
  br i1 %i.i, label %bb.aw, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.j = ptrtoint ptr %5 to i64                   ; 3 uses
  store i64 %i.j, ptr %11, align 8, !tbaa !898
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store i32 0, ptr %12, align 8, !tbaa !857
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !859
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !765
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 8, ptr %i.o, align 4, !tbaa !868
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store ptr %0, ptr %i.q, align 8, !tbaa !869
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 120
  store i64 %i.j, ptr %i.r, align 8, !tbaa !867
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 128
  store i32 %6, ptr %i.s, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 %i.j) #28
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.u, i8 0, i64 18, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 163
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 164
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.v, align 2, !tbaa !860
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 166
  store i8 0, ptr %i.y, align 2, !tbaa !870
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 167
  store i8 0, ptr %i.z, align 1, !tbaa !871
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %12) #28
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1355 ; 2 uses
  %.not74 = icmp eq ptr %i.aa, null
  br i1 %.not74, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = call noundef zeroext i1 @_ZN5clang4Sema19LookupQualifiedNameERNS_12LookupResultEPNS_11DeclContextERNS_12CXXScopeSpecE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %12, ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %10) #28 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1798
  %i.ae = call noundef zeroext i1 @_ZN5clang4Sema10LookupNameERNS_12LookupResultEPNS_5ScopeEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %12, ptr noundef %i.ad, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = load i32, ptr %12, align 8, !tbaa !857
  switch i32 %i.af, label %._ZNK5clang12LookupResult12getFoundDeclEv.exit104_crit_edge [
    i32 0, label %bb.i
    i32 4, label %bb.r
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.ai
    i32 5, label %bb.ao
  ]

._ZNK5clang12LookupResult12getFoundDeclEv.exit104_crit_edge: ; preds = %bb.h
  %.pre147 = load ptr, ptr %i.a, align 8, !tbaa !1355
  br label %_ZNK5clang12LookupResult12getFoundDeclEv.exit104

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !1355
  %.not81 = icmp eq ptr %i.ag, null
  br i1 %.not81, label %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val = load ptr, ptr %i.ah, align 8, !tbaa !1681 ; 2 uses
  %i.ai = load i64, ptr %.val, align 8, !tbaa !1683
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = icmp eq i64 %i.aj, 4
  br i1 %i.ak, label %_ZNK5clang14IdentifierInfo5isStrILm5EEEbRAT__Kc.exit.i, label %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit.thread

_ZNK5clang14IdentifierInfo5isStrILm5EEEbRAT__Kc.exit.i: ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.am = load i32, ptr %i.al, align 1
  %i.an = icmp ne i32 %i.am, 1701869940
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = icmp ugt i64 %3, 7
  %i.ar = and i64 %3, 6
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = and i1 %i.aq, %i.as
  %or.cond26.i = select i1 %i.ap, i1 %i.at, i1 false
  br i1 %or.cond26.i, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i, label %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit.thread

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i: ; preds = %_ZNK5clang14IdentifierInfo5isStrILm5EEEbRAT__Kc.exit.i
  %i.au = and i64 %3, -8
  %i.av = inttoptr i64 %i.au to ptr               ; 5 uses
  %.0.copyload.i.i.i = load ptr, ptr %4, align 1
  %i.aw = and i64 %3, 8
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_29TemplateSpecializationTypeLocENS_26TemplateSpecializationTypeENS_29TemplateSpecializationLocInfoEE6isKindERKNS_7TypeLocE.exit.i.i, label %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit.thread

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_29TemplateSpecializationTypeLocENS_26TemplateSpecializationTypeENS_29TemplateSpecializationLocInfoEE6isKindERKNS_7TypeLocE.exit.i.i: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i
  %i.ax = load ptr, ptr %i.av, align 16, !tbaa !888
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ay, align 16
  %i.ba = icmp eq i8 %i.az, 50
  br i1 %i.ba, label %bb.k, label %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit.thread

bb.k:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_29TemplateSpecializationTypeLocENS_26TemplateSpecializationTypeENS_29TemplateSpecializationLocInfoEE6isKindERKNS_7TypeLocE.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !843
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.sroa.0.0.copyload.i20.i = load i64, ptr %i.be, align 16
  store i64 %.sroa.0.0.copyload.i20.i, ptr %8, align 8
  %i.bf = call noundef ptr @_ZNK5clang12TemplateName17getAsTemplateDeclEb(ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext false) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.not15.i = icmp eq ptr %i.bf, null
  br i1 %.not15.i, label %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = call noundef zeroext i1 @_ZNK5clang4Type16isIncompleteTypeEPPNS_9NamedDeclE(ptr noundef nonnull align 16 dereferenceable(24) %i.av, ptr noundef null) #28
  br i1 %i.bg, label %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %.sroa.0.0.copyload.i21.i = load i64, ptr %i.bh, align 8, !tbaa !867 ; 2 uses
  %i.bi = and i64 %.sroa.0.0.copyload.i21.i, 7
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = and i64 %.sroa.0.0.copyload.i21.i, -8   ; 2 uses
  %.not1624.i = icmp eq i64 %i.bk, 0
  %.not16.i = or i1 %i.bj, %.not1624.i
  br i1 %.not16.i, label %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1681 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !1683
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = icmp eq i64 %i.bp, 9
  br i1 %i.bq, label %_ZNK5clang14IdentifierInfo5isStrILm10EEEbRAT__Kc.exit.i, label %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit.thread

_ZNK5clang14IdentifierInfo5isStrILm10EEEbRAT__Kc.exit.i: ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 1
  %i.bt = xor i64 %i.bs, 7592899012951371365
  %i.bu = getelementptr i8, ptr %i.br, i64 8
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i64
  %i.bx = xor i64 %i.bw, 102
  %i.by = or i64 %i.bt, %i.bx
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.p, label %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit.thread

bb.p:                                             ; preds = %_ZNK5clang14IdentifierInfo5isStrILm10EEEbRAT__Kc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2702)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i.i, i64 32
  %.sroa.0.0.copyload.i23.i = load i64, ptr %i.cd, align 8, !noalias !2702 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(24) %i.cc, i64 24, i1 false), !tbaa.struct !1381
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %.sroa.0.0.copyload.i23.i, ptr %i.ce, align 8, !alias.scope !2702
  %i.cf = call i64 @_ZNK5clang19TemplateArgumentLoc14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #29 ; 2 uses
  store i64 %i.cf, ptr %13, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %.sroa.01.0.copyload.i = load i64, ptr %i.cc, align 16
  %i.cg = and i64 %.sroa.01.0.copyload.i, 2147483647
  %.not17.i = icmp eq i64 %i.cg, 8
  %i.ch = trunc i64 %i.cf to i32
  br i1 %.not17.i, label %bb.q, label %select.unfold

bb.q:                                             ; preds = %bb.p
  %i.ci = and i64 %.sroa.0.0.copyload.i23.i, -4
  %i.cj = inttoptr i64 %i.ci to ptr               ; 2 uses
  %i.ck = call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #29
  %i.cl = load i16, ptr %i.ck, align 8
  %i.cm = and i16 %i.cl, 511
  %i.cn = icmp eq i16 %i.cm, 119
  br i1 %i.cn, label %select.unfold, label %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit

_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.co, ptr %14, align 8, !tbaa !959
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.cp, align 8, !tbaa !911
  store i8 0, ptr %i.co, align 8, !tbaa !843
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN5clang4Sema26findFailedBooleanConditionB5cxx11EPNS_4ExprE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1458") align 8 %15, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  store ptr %14, ptr %16, align 8, !tbaa !1589, !alias.scope !2703
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.b, ptr %i.cq, align 8, !tbaa !1521, !alias.scope !2703
  %i.cr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt5tupleIJRPN5clang4ExprERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIS2_S9_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSB_E4typeEOSt4pairISE_SF_E(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(40) %15) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !912 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt4pairIPN5clang4ExprENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !843
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt4pairIPN5clang4ExprENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIPN5clang4ExprENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !1450
  %i.da = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #29
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.cy, i32 %i.da, i32 noundef 5462) #28
  %i.db = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %17, ptr noundef nonnull align 8 dereferenceable(32) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !1450
  %i.dd = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc) #29
  store i64 %i.dd, ptr %18, align 8
  %i.de = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.db, ptr noundef nonnull align 4 dereferenceable(8) %18) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.df = load ptr, ptr %14, align 8, !tbaa !912  ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.co
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairIPN5clang4ExprENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.dh = load i64, ptr %i.co, align 8, !tbaa !843
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairIPN5clang4ExprENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.critedge88

select.unfold:                                    ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.dj, i32 %i.ch, i32 noundef 5461) #28
  %i.dk = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_11DeclContextEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dl = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.dk, ptr noundef nonnull align 4 dereferenceable(8) %13) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %.critedge88

_ZL10isEnableIfN5clang22NestedNameSpecifierLocERKNS_14IdentifierInfoERNS_11SourceRangeERPNS_4ExprE.exit.thread: ; preds = %bb.o, %_ZNK5clang14IdentifierInfo5isStrILm10EEEbRAT__Kc.exit.i, %bb.n, %bb.m, %bb.l, %bb.k, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_29TemplateSpecializationTypeLocENS_26TemplateSpecializationTypeENS_29TemplateSpecializationLocInfoEE6isKindERKNS_7TypeLocE.exit.i.i, %bb.j, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i, %_ZNK5clang14IdentifierInfo5isStrILm5EEEbRAT__Kc.exit.i, %bb.i
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !1355 ; 2 uses
  %.not82 = icmp eq ptr %i.dm, null
  %i.dn = select i1 %.not82, i32 5506, i32 5460
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZNK5clang12LookupResult12getFoundDeclEv.exit104

bb.r:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %.not142 = icmp eq i32 %2, 0
  %.sroa.0.0.copyload.i.i = load i32, ptr %10, align 8
  %spec.select137 = select i1 %.not142, i32 %.sroa.0.0.copyload.i.i, i32 %2
  store i32 %spec.select137, ptr %20, align 4, !tbaa !58
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i32 %6, ptr %i.do, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.dp, i32 %6, i32 noundef 5465) #28
  %i.dq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_15DeclarationNameEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %21, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %i.dr = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_11DeclContextEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ds = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.dr, ptr noundef nonnull align 4 dereferenceable(8) %20) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  %i.dt = load ptr, ptr %i.l, align 8, !tbaa !84  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dt, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.dt, align 8
  %i.du = and i64 %.0.copyload.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.dv = inttoptr i64 %i.du to ptr               ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 28
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = and i32 %i.dx, 127
  %i.dz = icmp ne i32 %i.dy, 29
  %.not80143 = icmp eq i64 %i.du, 0
  %.not80 = or i1 %.not80143, %i.dz
  br i1 %.not80, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %.sroa.0.0.copyload.i90 = load i64, ptr %i.ea, align 8, !tbaa !867
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !874
  store i64 %.sroa.0.0.copyload.i90, ptr %22, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.eb, align 8
  %i.ec = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #28 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i92, %bb.s, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i102, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i113
  %.sroa.6.0.i.i = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i92 ], [ %.0.copyload.i14.i.i, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i102 ], [ %.0.copyload.i.i.i93, %bb.s ], [ %.0.copyload.i16.i.i, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i113 ]
  call void @_ZN5clang12CXXScopeSpec6ExtendERNS_10ASTContextEPNS_17NamespaceBaseDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.cp, ptr noundef %.0.i, i32 %.sroa.0.0.i.i68.ph, i32 %.sroa.6.0.i.i) #28
  br label %bb.bf

bb.v:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit
  %i.ef = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 232
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.ei = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #28
  call void @_ZN5clang12CXXScopeSpec10MakeGlobalERNS_10ASTContextENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.eh, i32 %i.ei) #28
  br label %bb.bf

_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit: ; preds = %bb.h
  %i.ej = load ptr, ptr %i.y, align 8, !tbaa !1926, !noalias !2732 ; 3 uses
  %i.ek = load ptr, ptr %i.z, align 8, !tbaa !1927, !noalias !2732 ; 2 uses
  %i.el = load i32, ptr %i.aa, align 4, !tbaa !1518, !noalias !2732 ; 4 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %.loopexit.i.i.i118, label %bb.w

bb.w:                                             ; preds = %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.en = add i32 %i.el, -1                       ; 2 uses
  %i.eo = mul i64 %i.ao, -4658895280553007687     ; 2 uses
  %i.ep = lshr i64 %i.eo, 31
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = trunc i64 %i.eq to i32
  %i.es = and i32 %i.en, %i.er                    ; 3 uses
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = lshr i64 %i.et, 5
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !58, !noalias !2733
  %i.ex = and i32 %i.es, 31
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = trunc i32 %i.ey to i1
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i124, label %.loopexit.i.i.i118, !prof !1928

.lr.ph.i.i.i.i.i124:                              ; preds = %bb.w, %bb.x
  %i.fa = phi i64 [ %i.fg, %bb.x ], [ %i.et, %bb.w ]
  %.017.i.i.i.i.i125 = phi i32 [ %i.ff, %bb.x ], [ %i.es, %bb.w ]
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1356, !noalias !2733
  %i.fd = icmp eq ptr %i.fc, %i.ap
  br i1 %i.fd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126, label %bb.x, !prof !901

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i124
  %i.fe = add nuw i32 %.017.i.i.i.i.i125, 1
  %i.ff = and i32 %i.fe, %i.en                    ; 3 uses
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = lshr i64 %i.fg, 5
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !58, !noalias !2733
  %i.fk = and i32 %i.ff, 31
  %i.fl = lshr i32 %i.fj, %i.fk
  %i.fm = trunc i32 %i.fl to i1
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i124, label %.loopexit.i.i.i118, !prof !1929

.loopexit.i.i.i118:                               ; preds = %bb.x, %bb.w, %_ZNK5clang19NestedNameSpecifier15getAsRecordDeclEv.exit
  %i.fn = zext i32 %i.el to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.fn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126: ; preds = %.lr.ph.i.i.i.i.i124
  %.pre.i127 = zext i32 %i.el to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126, %.loopexit.i.i.i118
  %.pre-phi.i120 = phi i64 [ %.pre.i127, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126 ], [ %i.fn, %.loopexit.i.i.i118 ]
  %.lcssa.sink.i.i.i121 = phi ptr [ %i.fb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i126 ], [ %i.fo, %.loopexit.i.i.i118 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %.pre-phi.i120
  %.not.i122 = icmp eq ptr %.lcssa.sink.i.i.i121, %i.fp
  br i1 %.not.i122, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit128, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119
  %i.fq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i121, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1931
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit128

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit128: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119, %bb.y
  %.0.i123 = phi ptr [ %i.fr, %bb.y ], [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i119 ]
  %i.fs = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 232
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.fv = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #28
  %i.fw = load i64, ptr %12, align 8, !tbaa !1579 ; 5 uses
  %i.fx = icmp ugt i64 %i.fw, 7
  br i1 %i.fx, label %bb.z, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129

bb.z:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit128
  %i.fy = trunc i64 %i.fw to i32
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = and i32 %i.fz, 3
  switch i32 %i.ga, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i152
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148
    i32 2, label %.lr.ph.i.i.i134.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129: ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit128
  %i.gb = icmp samesign ult i64 %i.fw, 2
  br i1 %i.gb, label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !1935
  %.0.copyload.i.i.i130 = load i32, ptr %i.gc, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148: ; preds = %bb.z
  %i.gd = and i64 %i.fw, -8
  %i.ge = inttoptr i64 %i.gd to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i149 = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.3.0.copyload.i.i.i150 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i149, align 8, !tbaa !867 ; 2 uses
  %.not8.i.i.i151 = icmp eq i64 %.sroa.3.0.copyload.i.i.i150, 0
  br i1 %.not8.i.i.i151, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140, label %.lr.ph.i.i.i134.preheader

.lr.ph.i.i.i134.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148, %bb.z
  %storemerge9.i.i.i136.ph = phi i64 [ 2, %bb.z ], [ %.sroa.3.0.copyload.i.i.i150, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148 ]
  br label %.lr.ph.i.i.i134

.lr.ph.i.i.i134:                                  ; preds = %.lr.ph.i.i.i134.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142
  %.010.i.i.i135 = phi i32 [ %i.gi, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142 ], [ 0, %.lr.ph.i.i.i134.preheader ]
  %storemerge9.i.i.i136 = phi i64 [ %.sroa.3.0.i.i.i.i143, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142 ], [ %storemerge9.i.i.i136.ph, %.lr.ph.i.i.i134.preheader ] ; 4 uses
  %i.gf = icmp ugt i64 %storemerge9.i.i.i136, 7   ; 2 uses
  %i.gg = and i64 %storemerge9.i.i.i136, 6
  %i.gh = icmp eq i64 %i.gg, 0
  %spec.select.i.i.i.i137 = select i1 %i.gh, i32 12, i32 8
  %.0.i.i.i.i138 = select i1 %i.gf, i32 %spec.select.i.i.i.i137, i32 4
  %i.gi = add i32 %.0.i.i.i.i138, %.010.i.i.i135  ; 2 uses
  br i1 %i.gf, label %bb.ab, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139

bb.ab:                                            ; preds = %.lr.ph.i.i.i134
  %i.gj = trunc i64 %storemerge9.i.i.i136 to i32
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = and i32 %i.gk, 3
  switch i32 %i.gl, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139
    i32 3, label %bb.ac
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.gm = and i64 %storemerge9.i.i.i136, -8
  %i.gn = inttoptr i64 %i.gm to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i145 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.3.0.copyload.i.i.i.i146 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i145, align 8, !tbaa !867
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142: ; preds = %bb.ac, %bb.ab
  %.sroa.3.0.i.i.i.i143 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i146, %bb.ac ], [ 2, %bb.ab ] ; 2 uses
  %.not.i.i.i144 = icmp eq i64 %.sroa.3.0.i.i.i.i143, 0
  br i1 %.not.i.i.i144, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139, label %.lr.ph.i.i.i134, !llvm.loop !31

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i142, %bb.ab, %bb.ab, %.lr.ph.i.i.i134
  %i.go = add i32 %i.gi, 4
  %i.gp = zext i32 %i.go to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148, %bb.z
  %i.gq = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i148 ], [ 4, %bb.z ], [ %i.gp, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i139 ]
  %i.gr = load ptr, ptr %i.q, align 8, !tbaa !1935
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  %.0.copyload.i14.i.i141 = load i32, ptr %i.gs, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i152: ; preds = %bb.z
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !1935
  %.0.copyload.i15.i.i153 = load ptr, ptr %i.gt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.gu = and i64 %i.fw, -8
  %i.gv = inttoptr i64 %i.gu to ptr
  store ptr %i.gv, ptr %7, align 8, !tbaa !1933
  store ptr %.0.copyload.i15.i.i153, ptr %i.ab, align 8, !tbaa !1934
  %i.gw = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #28 ; 0 uses
  %i.gx = load ptr, ptr %i.q, align 8, !tbaa !1935
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.0.copyload.i16.i.i154 = load i32, ptr %i.gy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit

_ZNK5clang22NestedNameSpecifierLoc9getEndLocEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129, %bb.aa, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i152
  %.sroa.6.0.i.i131 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i129 ], [ %.0.copyload.i14.i.i141, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i140 ], [ %.0.copyload.i.i.i130, %bb.aa ], [ %.0.copyload.i16.i.i154, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i152 ]
  call void @_ZN5clang12CXXScopeSpec18MakeMicrosoftSuperERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.fu, ptr noundef %.0.i123, i32 %i.fv, i32 %.sroa.6.0.i.i131) #28
  br label %bb.bf

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread263: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.gz = and i64 %.sroa.0.0.copyload.i, -8       ; 4 uses
  %i.ha = inttoptr i64 %i.gz to ptr               ; 10 uses
  %.0.copyload.i.i = load ptr, ptr %.sroa.2.0.copyload.i, align 1 ; 8 uses
  store ptr %i.ha, ptr %13, align 8
  store ptr %.0.copyload.i.i, ptr %i.r, align 8
  %i.hb = and i64 %.sroa.0.0.copyload.i, 8
  %.not.i.i157 = icmp eq i64 %i.hb, 0             ; 2 uses
  br i1 %.not.i.i157, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.am

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread263
  %i.hc = load ptr, ptr %i.ha, align 16, !tbaa !888
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load i8, ptr %i.hd, align 16
  %i.hf = icmp eq i8 %i.he, 20
  br i1 %i.hf, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.hg, align 16, !tbaa !867 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !1800 ; 2 uses
  %.not286 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not286, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hj = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i.i, ptr %i.hi, i64 %3, ptr noundef %4) ; 2 uses
  %i.hk = extractvalue { i64, ptr } %i.hj, 0      ; 2 uses
  %i.hl = extractvalue { i64, ptr } %i.hj, 1
  %.not287 = icmp eq i64 %i.hk, 0
  br i1 %.not287, label %.critedge53, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.8.0 = phi ptr [ %i.hi, %bb.ad ], [ %i.hl, %bb.ae ]
  %.sroa.0245.0 = phi i64 [ 0, %bb.ad ], [ %i.hk, %bb.ae ]
  %.1 = phi ptr [ %4, %bb.ad ], [ null, %bb.ae ]
  %.sroa.043.1 = phi i64 [ %3, %bb.ad ], [ 0, %bb.ae ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %11, i64 %.sroa.0245.0, ptr %.sroa.8.0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !1937
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.copyload.i.i, i64 16
  %.sroa.0.0.copyload.i162 = load i32, ptr %i.ho, align 8, !tbaa !58
  %i.hp = load i64, ptr %12, align 8, !tbaa !1579 ; 5 uses
  %i.hq = icmp ugt i64 %i.hp, 7
  br i1 %i.hq, label %bb.ag, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163

bb.ag:                                            ; preds = %bb.af
  %i.hr = trunc i64 %i.hp to i32
  %i.hs = lshr i32 %i.hr, 1
  %i.ht = and i32 %i.hs, 3
  switch i32 %i.ht, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i186
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182
    i32 2, label %.lr.ph.i.i.i168.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163: ; preds = %bb.af
  %i.hu = icmp samesign ult i64 %i.hp, 2
  br i1 %i.hu, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163
  %i.hv = load ptr, ptr %i.q, align 8, !tbaa !1935
  %.0.copyload.i.i.i164 = load i32, ptr %i.hv, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182: ; preds = %bb.ag
  %i.hw = and i64 %i.hp, -8
  %i.hx = inttoptr i64 %i.hw to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i183 = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.sroa.3.0.copyload.i.i.i184 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i183, align 8, !tbaa !867 ; 2 uses
  %.not8.i.i.i185 = icmp eq i64 %.sroa.3.0.copyload.i.i.i184, 0
  br i1 %.not8.i.i.i185, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174, label %.lr.ph.i.i.i168.preheader

.lr.ph.i.i.i168.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182, %bb.ag
  %storemerge9.i.i.i170.ph = phi i64 [ 2, %bb.ag ], [ %.sroa.3.0.copyload.i.i.i184, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182 ]
  br label %.lr.ph.i.i.i168

.lr.ph.i.i.i168:                                  ; preds = %.lr.ph.i.i.i168.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176
  %.010.i.i.i169 = phi i32 [ %i.ib, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176 ], [ 0, %.lr.ph.i.i.i168.preheader ]
  %storemerge9.i.i.i170 = phi i64 [ %.sroa.3.0.i.i.i.i177, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176 ], [ %storemerge9.i.i.i170.ph, %.lr.ph.i.i.i168.preheader ] ; 4 uses
  %i.hy = icmp ugt i64 %storemerge9.i.i.i170, 7   ; 2 uses
  %i.hz = and i64 %storemerge9.i.i.i170, 6
  %i.ia = icmp eq i64 %i.hz, 0
  %spec.select.i.i.i.i171 = select i1 %i.ia, i32 12, i32 8
  %.0.i.i.i.i172 = select i1 %i.hy, i32 %spec.select.i.i.i.i171, i32 4
  %i.ib = add i32 %.0.i.i.i.i172, %.010.i.i.i169  ; 2 uses
  br i1 %i.hy, label %bb.ai, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173

bb.ai:                                            ; preds = %.lr.ph.i.i.i168
  %i.ic = trunc i64 %storemerge9.i.i.i170 to i32
  %i.id = lshr i32 %i.ic, 1
  %i.ie = and i32 %i.id, 3
  switch i32 %i.ie, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173
    i32 3, label %bb.aj
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.if = and i64 %storemerge9.i.i.i170, -8
  %i.ig = inttoptr i64 %i.if to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i179 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.sroa.3.0.copyload.i.i.i.i180 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i179, align 8, !tbaa !867
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176: ; preds = %bb.aj, %bb.ai
  %.sroa.3.0.i.i.i.i177 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i180, %bb.aj ], [ 2, %bb.ai ] ; 2 uses
  %.not.i.i.i178 = icmp eq i64 %.sroa.3.0.i.i.i.i177, 0
  br i1 %.not.i.i.i178, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173, label %.lr.ph.i.i.i168, !llvm.loop !31

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i176, %bb.ai, %bb.ai, %.lr.ph.i.i.i168
  %i.ih = add i32 %i.ib, 4
  %i.ii = zext i32 %i.ih to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174: ; preds = %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182, %bb.ag
  %i.ij = phi i64 [ 4, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i182 ], [ 4, %bb.ag ], [ %i.ii, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i173 ]
  %i.ik = load ptr, ptr %i.q, align 8, !tbaa !1935
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ij
  %.0.copyload.i14.i.i175 = load i32, ptr %i.il, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i186: ; preds = %bb.ag
  %i.im = load ptr, ptr %i.q, align 8, !tbaa !1935
  %.0.copyload.i15.i.i187 = load ptr, ptr %i.im, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.in = and i64 %i.hp, -8
  %i.io = inttoptr i64 %i.in to ptr
  store ptr %i.io, ptr %6, align 8, !tbaa !1933
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.copyload.i15.i.i187, ptr %i.ip, align 8, !tbaa !1934
  %i.iq = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28 ; 0 uses
  %i.ir = load ptr, ptr %i.q, align 8, !tbaa !1935
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %.0.copyload.i16.i.i188 = load i32, ptr %i.is, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189

_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163, %bb.ah, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i186
  %.sroa.6.0.i.i165 = phi i32 [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i163 ], [ %.0.copyload.i14.i.i175, %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i174 ], [ %.0.copyload.i.i.i164, %bb.ah ], [ %.0.copyload.i16.i.i188, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i186 ]
  %i.it = inttoptr i64 %.sroa.043.1 to ptr
  store ptr %i.it, ptr %14, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.hn, ptr %i.iu, align 8, !tbaa !2735
  %i.iv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %.sroa.0.0.copyload.i162, ptr %i.iv, align 8, !tbaa !58
  %i.iw = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 %.sroa.6.0.i.i165, ptr %i.iw, align 4, !tbaa !58
  %i.ix = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.iy = call noundef zeroext i1 @_ZN5clang4Sema27BuildCXXNestedNameSpecifierEPNS_5ScopeERNS0_18NestedNameSpecInfoEbRNS_12CXXScopeSpecEPNS_9NamedDeclEbPbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ix, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %.1, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext false) #28
  br i1 %i.iy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189
  %i.iz = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 232
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.jc = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.jb) #28 ; 2 uses
  %i.jd = extractvalue { i64, ptr } %i.jc, 0
  %i.je = extractvalue { i64, ptr } %i.jc, 1
  br label %bb.al

bb.al:                                            ; preds = %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189, %bb.ak
  %.sroa.13.1 = phi ptr [ %i.je, %bb.ak ], [ null, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189 ]
  %.sroa.0261.1 = phi i64 [ %i.jd, %bb.ak ], [ 0, %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit189 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %.critedge53

bb.am:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread263, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20DependentNameTypeLocENS_17DependentNameTypeENS_20DependentNameLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store i64 %i.gz, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  store ptr %i.s, ptr %16, align 8, !tbaa !1699
  store i64 32, ptr %i.t, align 8, !tbaa !1700
  store i64 32, ptr %i.u, align 8, !tbaa !1701
  store i32 0, ptr %i.v, align 8, !tbaa !1702
  store i8 0, ptr %i.w, align 4, !tbaa !1703
  %i.jf = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.jf, label %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.thread, label %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit

_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit: ; preds = %bb.am
  %i.jg = and i64 %.sroa.0.0.copyload.i, -16
  %i.jh = inttoptr i64 %i.jg to ptr
  %i.ji = load ptr, ptr %i.jh, align 16, !tbaa !888
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 17
  %i.jk = load i16, ptr %i.jj, align 1
  %i.jl = and i16 %i.jk, 2
  %.not.i190 = icmp eq i16 %i.jl, 0
  br i1 %.not.i190, label %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.thread, label %bb.an

bb.an:                                            ; preds = %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit
  br i1 %.not.i.i157, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.an
  %i.jm = load ptr, ptr %i.ha, align 16, !tbaa !888
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load i8, ptr %i.jn, align 16
  switch i8 %i.jo, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.ao
    i8 20, label %bb.ap
  ]

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jp = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i64 %3, ptr noundef %4, i1 noundef zeroext true), !inline_history !2725
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.jq = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr nonnull %i.ha, ptr %.0.copyload.i.i, i1 noundef zeroext false, i64 %3, ptr noundef %4), !inline_history !2725
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.an
  %i.jr = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %16, ptr %i.ha, ptr %.0.copyload.i.i), !inline_history !2725
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.ao, %bb.ap, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.jr, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.jp, %bb.ao ], [ %i.jq, %bb.ap ] ; 4 uses
  store i64 %.sroa.014.0.i, ptr %15, align 8, !tbaa !843
  %i.js = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.js, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %i.jt = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 232
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !864, !nonnull !865, !align !866 ; 2 uses
  %i.jw = load i64, ptr %i.t, align 8, !tbaa !1700
  %i.jx = load i64, ptr %i.u, align 8, !tbaa !1701 ; 2 uses
  %i.jy = sub i64 %i.jw, %i.jx                    ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 2632 ; 3 uses
  %i.ka = add i64 %i.jy, 7
  %i.kb = and i64 %i.ka, -8                       ; 2 uses
  %i.kc = load ptr, ptr %i.jz, align 8, !tbaa !1394 ; 2 uses
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = add i64 %i.kb, %i.kd                    ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 2640
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !1395
  %i.kh = icmp ult i64 %i.ke, %i.kg
  br i1 %i.kh, label %bb.ar, label %bb.as, !prof !901

bb.ar:                                            ; preds = %bb.aq
  %i.ki = inttoptr i64 %i.ke to ptr
  store ptr %i.ki, ptr %i.jz, align 8, !tbaa !1394
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

bb.as:                                            ; preds = %bb.aq
  %i.kj = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.jz, i64 noundef %i.jy, i64 noundef %i.kb, i8 3)
  %.pre.i191 = load i64, ptr %i.u, align 8, !tbaa !1701
  br label %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit

_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit: ; preds = %bb.ar, %bb.as
  %i.kk = phi i64 [ %i.jx, %bb.ar ], [ %.pre.i191, %bb.as ]
  %.0.i.i.i.i192 = phi ptr [ %i.kc, %bb.ar ], [ %i.kj, %bb.as ] ; 3 uses
  %i.kl = load ptr, ptr %16, align 8, !tbaa !1699
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i192, ptr align 1 %i.km, i64 %i.jy, i1 false)
  %i.kn = inttoptr i64 %.sroa.014.0.i to ptr      ; 2 uses
  store ptr %i.kn, ptr %13, align 8, !tbaa !874
  store ptr %.0.i.i.i.i192, ptr %i.r, align 8, !tbaa !874
  br label %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.thread

_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.thread: ; preds = %bb.am, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit, %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit
  %.sroa.2.0.copyload372 = phi ptr [ %.0.copyload.i.i, %bb.am ], [ %.0.i.i.i.i192, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %.0.copyload.i.i, %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit ] ; 2 uses
  %.sroa.07.0.copyload370 = phi ptr [ %i.ha, %bb.am ], [ %i.kn, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.ha, %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit ] ; 2 uses
  %.0.copyload.i.i.i.i.i = phi i64 [ %i.gz, %bb.am ], [ %.sroa.014.0.i, %_ZN5clang14TypeLocBuilder19getTypeLocInContextERNS_10ASTContextENS_8QualTypeE.exit ], [ %i.gz, %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit ]
  %i.ko = and i64 %.0.copyload.i.i.i.i.i, -16
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = load ptr, ptr %i.kp, align 16, !tbaa !888 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 17
  %i.ks = load i16, ptr %i.kr, align 1
  %i.kt = and i16 %i.ks, 4
  %.not283 = icmp eq i16 %i.kt, 0
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ku, align 8, !tbaa !843 ; 2 uses
  br i1 %.not283, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.thread
  %i.kv = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.kw = inttoptr i64 %i.kv to ptr
  %i.kx = load ptr, ptr %i.kw, align 16, !tbaa !888
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load i8, ptr %i.ky, align 16            ; 2 uses
  %i.la = icmp eq i8 %i.kz, 49
  %.pre368.pre376 = load ptr, ptr %0, align 8, !tbaa !1925 ; 3 uses
  br i1 %i.la, label %.critedge55, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lb = getelementptr inbounds nuw i8, ptr %.pre368.pre376, i64 216
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !879, !nonnull !865, !align !866
  %i.ld = load i64, ptr %i.lc, align 8
  %i.le = and i64 %i.ld, 8192
  %.not = icmp ne i64 %i.le, 0
  %i.lf = icmp eq i8 %i.kz, 47
  %or.cond = and i1 %i.lf, %.not
  br i1 %or.cond, label %.thread, label %bb.bb

bb.av:                                            ; preds = %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.thread
  %.pre368.pre = load ptr, ptr %0, align 8, !tbaa !1925 ; 2 uses
  %.pre378 = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %.pre379 = inttoptr i64 %.pre378 to ptr
  %.pre504 = load ptr, ptr %.pre379, align 16, !tbaa !888
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre504, i64 16
  %.pre505 = load i8, ptr %.phi.trans.insert, align 16
  %i.lg = icmp eq i8 %.pre505, 47
  br i1 %i.lg, label %.thread, label %.critedge55

.thread:                                          ; preds = %bb.au, %bb.av
  %.pre368530 = phi ptr [ %.pre368.pre, %bb.av ], [ %.pre368.pre376, %bb.au ]
  %i.lh = getelementptr inbounds nuw i8, ptr %.pre368530, i64 8
  %i.li = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #28
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.lh, i32 %i.li, i32 noundef 6967) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #28
  %.pre367 = load ptr, ptr %0, align 8, !tbaa !1925
  %.sroa.07.0.copyload.pre = load ptr, ptr %13, align 8, !tbaa !874
  %.sroa.2.0.copyload.pre = load ptr, ptr %i.r, align 8, !tbaa !874
  br label %.critedge55

.critedge55:                                      ; preds = %bb.at, %.thread, %bb.av
  %.sroa.2.0.copyload = phi ptr [ %.sroa.2.0.copyload.pre, %.thread ], [ %.sroa.2.0.copyload372, %bb.av ], [ %.sroa.2.0.copyload372, %bb.at ]
  %.sroa.07.0.copyload = phi ptr [ %.sroa.07.0.copyload.pre, %.thread ], [ %.sroa.07.0.copyload370, %bb.av ], [ %.sroa.07.0.copyload370, %bb.at ]
  %i.lj = phi ptr [ %.pre367, %.thread ], [ %.pre368.pre, %bb.av ], [ %.pre368.pre376, %bb.at ]
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 232
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.lm = load i64, ptr %12, align 8, !tbaa !1579 ; 5 uses
  %i.ln = icmp ugt i64 %i.lm, 7
  br i1 %i.ln, label %bb.aw, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i200

bb.aw:                                            ; preds = %.critedge55
  %i.lo = trunc i64 %i.lm to i32
  %i.lp = lshr i32 %i.lo, 1
  %i.lq = and i32 %i.lp, 3
  switch i32 %i.lq, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i211
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread18.i.i223
    i32 3, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i219
    i32 2, label %.lr.ph.i.i.i205.preheader
  ]

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i200: ; preds = %.critedge55
  %i.lr = icmp samesign ult i64 %i.lm, 2
  br i1 %i.lr, label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit226, label %bb.ax

bb.ax:                                            ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.i.i200
  %i.ls = load ptr, ptr %i.q, align 8, !tbaa !1935
  %.0.copyload.i.i.i201 = load i32, ptr %i.ls, align 1
  br label %_ZNK5clang22NestedNameSpecifierLoc14getLocalEndLocEv.exit226

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i219: ; preds = %bb.aw
  %i.lt = and i64 %i.lm, -8
  %i.lu = inttoptr i64 %i.lt to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i220 = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %.sroa.3.0.copyload.i.i.i221 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i220, align 8, !tbaa !867 ; 2 uses
  %.not8.i.i.i222 = icmp eq i64 %.sroa.3.0.copyload.i.i.i221, 0
  br i1 %.not8.i.i.i222, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i211, label %.lr.ph.i.i.i205.preheader

.lr.ph.i.i.i205.preheader:                        ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i219, %bb.aw
  %storemerge9.i.i.i207.ph = phi i64 [ 2, %bb.aw ], [ %.sroa.3.0.copyload.i.i.i221, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i219 ]
  br label %.lr.ph.i.i.i205

.lr.ph.i.i.i205:                                  ; preds = %.lr.ph.i.i.i205.preheader, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i213
  %.010.i.i.i206 = phi i32 [ %i.ly, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i213 ], [ 0, %.lr.ph.i.i.i205.preheader ]
  %storemerge9.i.i.i207 = phi i64 [ %.sroa.3.0.i.i.i.i214, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i213 ], [ %storemerge9.i.i.i207.ph, %.lr.ph.i.i.i205.preheader ] ; 4 uses
  %i.lv = icmp ugt i64 %storemerge9.i.i.i207, 7   ; 2 uses
  %i.lw = and i64 %storemerge9.i.i.i207, 6
  %i.lx = icmp eq i64 %i.lw, 0
  %spec.select.i.i.i.i208 = select i1 %i.lx, i32 12, i32 8
  %.0.i.i.i.i209 = select i1 %i.lv, i32 %spec.select.i.i.i.i208, i32 4
  %i.ly = add i32 %.0.i.i.i.i209, %.010.i.i.i206  ; 2 uses
  br i1 %i.lv, label %bb.ay, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i210

bb.ay:                                            ; preds = %.lr.ph.i.i.i205
  %i.lz = trunc i64 %storemerge9.i.i.i207 to i32
  %i.ma = lshr i32 %i.lz, 1
  %i.mb = and i32 %i.ma, 3
  switch i32 %i.mb, label %default.unreachable528 [
    i32 1, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i210
    i32 0, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i210
    i32 3, label %bb.az
    i32 2, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i213
  ]

bb.az:                                            ; preds = %bb.ay
  %i.mc = and i64 %storemerge9.i.i.i207, -8
  %i.md = inttoptr i64 %i.mc to ptr
  %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i216 = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %.sroa.3.0.copyload.i.i.i.i217 = load i64, ptr %.sroa.3.0..sroa.56.8..sroa_idx.i.i.i.i216, align 8, !tbaa !867
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i213

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i213: ; preds = %bb.az, %bb.ay
  %.sroa.3.0.i.i.i.i214 = phi i64 [ %.sroa.3.0.copyload.i.i.i.i217, %bb.az ], [ 2, %bb.ay ] ; 2 uses
  %.not.i.i.i215 = icmp eq i64 %.sroa.3.0.i.i.i.i214, 0
  br i1 %.not.i.i.i215, label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i210, label %.lr.ph.i.i.i205, !llvm.loop !31

_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.loopexit.i210: ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit.i.i.i213, %bb.ay, %bb.ay, %.lr.ph.i.i.i205
  %i.me = add i32 %i.ly, 4
  %i.mf = zext i32 %i.me to i64
  br label %_ZN5clang22NestedNameSpecifierLoc13getDataLengthENS_19NestedNameSpecifierE.exit.i.i211
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS2_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_:bb.a

.lr.ph:                                           ; preds = %.lr.ph29
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS2_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i25 = phi i32 [ %i.ad, %.lr.ph ], [ %i.cm, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS2_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i25, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [288 x i8], ptr %i.e, i64 %i.ah ; 9 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1862 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !58
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.014.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !58
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2906

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [288 x i8], ptr %i.u, i64 %.lcssa12.i ; 7 uses
  store ptr %i.aj, ptr %i.bg, align 8, !tbaa !1862
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !84
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !765
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 20 ; 2 uses
  store i32 8, ptr %i.bk, align 4, !tbaa !868
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !765 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i, label %_ZN5clang24TemplateArgumentListInfoC2EOS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.bo = icmp eq ptr %i.bg, %i.ai
  br i1 %i.bo, label %_ZN5clang24TemplateArgumentListInfoC2EOS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !84 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.e, label %_ZN4llvm15SmallVectorImplIN5clang19TemplateArgumentLocEE12assignRemoteEOS3_.exit.i

_ZN4llvm15SmallVectorImplIN5clang19TemplateArgumentLocEE12assignRemoteEOS3_.exit.i: ; preds = %bb.d
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !84
  store i32 %i.bm, ptr %i.bj, align 8, !tbaa !765
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 20 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !868
  store i32 %i.bt, ptr %i.bk, align 4, !tbaa !868
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !84
  store i32 0, ptr %i.bs, align 4, !tbaa !868
  br label %_ZN5clang24TemplateArgumentListInfoC2EOS0_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bu = icmp ugt i32 %i.bm, 8
  br i1 %i.bu, label %bb.f, label %_ZSt4moveIPN5clang19TemplateArgumentLocES2_ET0_T_S4_S3_.exit34.i

bb.f:                                             ; preds = %bb.e
  %i.bv = zext i32 %i.bm to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(280) %i.bh, ptr noundef nonnull %i.bi, i64 noundef %i.bv, i64 noundef 32) #28
  br label %_ZSt4moveIPN5clang19TemplateArgumentLocES2_ET0_T_S4_S3_.exit34.i

_ZSt4moveIPN5clang19TemplateArgumentLocES2_ET0_T_S4_S3_.exit34.i: ; preds = %bb.e, %bb.f
  %i.bw = load i32, ptr %i.bl, align 8, !tbaa !765 ; 2 uses
  %.not.i.i.i14 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i14, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang19TemplateArgumentLocELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt4moveIPN5clang19TemplateArgumentLocES2_ET0_T_S4_S3_.exit34.i
  %i.bx = zext i32 %i.bw to i64
  %i.by = load ptr, ptr %i.bn, align 8, !tbaa !84
  %i.bz = load ptr, ptr %i.bh, align 8, !tbaa !84
  %gepdiff.i = shl nuw nsw i64 %i.bx, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 8 %i.by, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang19TemplateArgumentLocELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang19TemplateArgumentLocELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %bb.g, %_ZSt4moveIPN5clang19TemplateArgumentLocES2_ET0_T_S4_S3_.exit34.i
  store i32 %i.bm, ptr %i.bj, align 8, !tbaa !765
  br label %_ZN5clang24TemplateArgumentListInfoC2EOS0_.exit.i.sink.split

_ZN5clang24TemplateArgumentListInfoC2EOS0_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIN5clang19TemplateArgumentLocEE12assignRemoteEOS3_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang19TemplateArgumentLocELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  store i32 0, ptr %i.bl, align 8, !tbaa !765
  br label %_ZN5clang24TemplateArgumentListInfoC2EOS0_.exit.i

_ZN5clang24TemplateArgumentListInfoC2EOS0_.exit.i: ; preds = %_ZN5clang24TemplateArgumentListInfoC2EOS0_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 280
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ai, i64 280
  %i.cc = load i64, ptr %i.cb, align 8
  store i64 %i.cc, ptr %i.ca, align 8
  %i.cd = shl nuw i32 1, %.lcssa.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa11.i ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !58
  %i.cg = or i32 %i.cf, %i.cd
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !58
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !84 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS2_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5clang24TemplateArgumentListInfoC2EOS0_.exit.i
  tail call void @free(ptr noundef %i.ci) #28
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS2_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS2_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %_ZN5clang24TemplateArgumentListInfoC2EOS0_.exit.i, %bb.h
  %i.cl = add i32 %.0.i25, -1
  %i.cm = and i32 %i.cl, %.0.i25                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cm, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2907

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS2_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS5_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph29, !llvm.loop !2908

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS5_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre33 = load i32, ptr %0, align 8
  %.pre34 = and i32 %.pre33, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS5_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS5_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS5_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre34, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS5_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.cn = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS5_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.co = and i32 %i.cn, -2
  %i.cp = or disjoint i32 %.pre-phi, %i.co
  store i32 %i.cp, ptr %0, align 8
  %i.cq = load i32, ptr %1, align 8               ; 3 uses
  %i.cr = and i32 %i.cq, 1
  %.not.i.i11 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i11, label %bb.i, label %_ZN4llvm13SmallDenseMapIPN5clang12FunctionDeclENS1_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit

bb.i:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS5_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.cs = load i32, ptr %i.j, align 8, !tbaa !843 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %_ZN4llvm13SmallDenseMapIPN5clang12FunctionDeclENS1_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !843
  %i.cv = zext i32 %i.cs to i64                   ; 2 uses
  %i.cw = mul nuw nsw i64 %i.cv, 288
  %i.cx = add nuw nsw i64 %i.cv, 31
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = and i64 %i.cy, 1073741820
  %i.da = add nuw nsw i64 %i.cz, %i.cw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cu, i64 noundef %i.da, i64 noundef 8) #28
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPN5clang12FunctionDeclENS1_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPN5clang12FunctionDeclENS1_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS5_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.i, %bb.j
  %i.db = phi i32 [ %i.cq, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPN5clang12FunctionDeclENS5_24TemplateArgumentListInfoELj8ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit ], [ %i.cq, %bb.i ], [ %.pre.i, %bb.j ]
  %i.dc = and i32 %i.db, -2
  store i32 %i.dc, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

declare void @_ZN5clang8EnumDecl29setTemplateSpecializationKindENS_26TemplateSpecializationKindENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(164), i32 noundef, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12function_refIFbRN5clang17OverloadCandidateEEE11callback_fnIZNS1_20OverloadCandidateSet14NoteCandidatesESt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEERNS1_4SemaENS1_28OverloadCandidateDisplayKindENS_8ArrayRefIPNS1_4ExprEEENS_9StringRefES9_S5_Ed_UlS3_E_EEblS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(168) %1) #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 12 uses
  %i.b = and i64 %i.a, 15
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit:       ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 16, !tbaa !888
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16
  switch i8 %i.e, label %bb.bl [
    i8 60, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 59, label %bb.bk
    i8 10, label %bb.p
    i8 11, label %bb.q
    i8 12, label %bb.r
    i8 13, label %bb.s
    i8 14, label %bb.t
    i8 15, label %bb.u
    i8 16, label %bb.v
    i8 17, label %bb.w
    i8 18, label %bb.x
    i8 19, label %bb.y
    i8 20, label %bb.z
    i8 21, label %bb.aa
    i8 22, label %bb.ab
    i8 23, label %bb.ac
    i8 24, label %bb.ad
    i8 25, label %bb.ae
    i8 26, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit
    i8 27, label %bb.af
    i8 28, label %bb.ag
    i8 29, label %bb.ah
    i8 30, label %bb.ai
    i8 31, label %bb.aj
    i8 32, label %bb.ak
    i8 33, label %bb.al
    i8 34, label %bb.am
    i8 35, label %bb.an
    i8 36, label %bb.ao
    i8 37, label %bb.ap
    i8 38, label %bb.aq
    i8 39, label %bb.ar
    i8 40, label %bb.as
    i8 58, label %bb.bj
    i8 42, label %bb.at
    i8 43, label %bb.au
    i8 44, label %bb.av
    i8 45, label %bb.aw
    i8 46, label %bb.ax
    i8 47, label %bb.ay
    i8 48, label %bb.az
    i8 49, label %bb.ba
    i8 50, label %bb.bb
    i8 51, label %bb.bc
    i8 52, label %bb.bd
    i8 53, label %bb.be
    i8 54, label %bb.bf
    i8 55, label %bb.bg
    i8 56, label %bb.bh
    i8 57, label %bb.bi
  ]

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread: ; preds = %bb.a, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.f = and i64 %i.a, -16
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !888
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -8
  %i.k = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %i.j) #28, !inline_history !2909
  %i.l = ptrtoint ptr %3 to i64
  %i.m = icmp ne ptr %3, null
  %i.n = zext i1 %i.m to i64                      ; 2 uses
  %i.o = sub i64 %i.l, %i.n
  %i.p = zext i32 %i.k to i64                     ; 2 uses
  %i.q = udiv i64 %i.o, %i.p
  %i.r = add i64 %i.q, %i.n
  %i.s = mul i64 %i.r, %i.p
  %i.t = load ptr, ptr %i.g, align 16, !tbaa !888 ; 3 uses
  %i.u = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 5 uses
  %i.w = and i64 %i.v, 15
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i, label %bb.d

_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
  %i.x = load ptr, ptr %i.t, align 16, !tbaa !888
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 16
  switch i8 %i.z, label %bb.d [
    i8 51, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i
  %i.aa = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.v, i64 noundef 4, i32 noundef 4) #28, !inline_history !2909
  %i.ab = extractvalue { ptr, ptr } %i.aa, 1
  %.sroa.0.0.copyload.i.i.i.i486 = load i32, ptr %i.u, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i.i.i486, ptr %i.ab, align 4, !tbaa !58
  br label %bb.e

bb.c:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i
  %i.ac = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.v, i64 noundef 4, i32 noundef 4) #28, !inline_history !2909
  %i.ad = extractvalue { ptr, ptr } %i.ac, 1
  %.sroa.0.0.copyload.i.i.i29.i = load i32, ptr %i.u, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i.i29.i, ptr %i.ad, align 4, !tbaa !58
  br label %bb.e

bb.d:                                             ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15TypeSpecTypeLocENS_23TemplateTypeParmTypeLocENS_20TemplateTypeParmTypeEE6isKindERKNS_7TypeLocE.exit.i.i, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread
  %i.ae = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.t, ptr %i.u), !inline_history !2909
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.037.0.i = phi i64 [ %i.v, %bb.b ], [ %i.ae, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.af = icmp ult i64 %.sroa.037.0.i, 16
  br i1 %i.af, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE20RebuildQualifiedTypeENS_8QualTypeENS_16QualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.037.0.i, ptr %2, ptr %3), !inline_history !2909 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 16
  %spec.select.i = select i1 %i.ah, i64 0, i64 %i.ag
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.g:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ai = getelementptr i8, ptr %2, i64 32
  %.val = load i64, ptr %i.ai, align 16, !tbaa !843
  %i.aj = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE21TransformAdjustedTypeERNS_14TypeLocBuilderENS_15AdjustedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.val, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.h:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ak = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE20TransformDecayedTypeERNS_14TypeLocBuilderENS_14DecayedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.i:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformConstantArrayTypeERNS_14TypeLocBuilderENS_20ConstantArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.j:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.am = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE27TransformArrayParameterTypeERNS_14TypeLocBuilderENS_21ArrayParameterTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.k:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.an = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE32TransformDependentSizedArrayTypeERNS_14TypeLocBuilderENS_26DependentSizedArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.l:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ao = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE28TransformIncompleteArrayTypeERNS_14TypeLocBuilderENS_22IncompleteArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.m:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ap = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformVariableArrayTypeERNS_14TypeLocBuilderENS_20VariableArrayTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.n:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aq = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE19TransformAtomicTypeERNS_14TypeLocBuilderENS_13AtomicTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.o:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ar = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE23TransformAttributedTypeERNS_14TypeLocBuilderENS_17AttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.p:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.as = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE19TransformBitIntTypeERNS_14TypeLocBuilderENS_13BitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.q:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.at = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE25TransformBlockPointerTypeERNS_14TypeLocBuilderENS_19BlockPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.r:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.au = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE28TransformCountAttributedTypeERNS_14TypeLocBuilderENS_22CountAttributedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.s:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.av = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE20TransformBuiltinTypeERNS_14TypeLocBuilderENS_14BuiltinTypeLocE(ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.t:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.aw = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.a, i64 noundef 4, i32 noundef 4) #28
  %i.ax = extractvalue { ptr, ptr } %i.aw, 1
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %3, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.ax, align 4, !tbaa !58
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.u:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ay = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE21TransformDecltypeTypeERNS_14TypeLocBuilderENS_15DecltypeTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.v:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.az = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE17TransformAutoTypeERNS_14TypeLocBuilderENS_11AutoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.w:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ba = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE42TransformDeducedTemplateSpecializationTypeERNS_14TypeLocBuilderENS_36DeducedTemplateSpecializationTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.x:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bb = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE34TransformDependentAddressSpaceTypeERNS_14TypeLocBuilderENS_28DependentAddressSpaceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.y:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bc = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE28TransformDependentBitIntTypeERNS_14TypeLocBuilderENS_22DependentBitIntTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.z:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bd = tail call fastcc range(i64 16, 1) i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull readonly %2, ptr readonly %3, i1 noundef zeroext false, i64 0, ptr noundef null), !inline_history !2910
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aa:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.be = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE36TransformDependentSizedExtVectorTypeERNS_14TypeLocBuilderENS_30DependentSizedExtVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ab:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bf = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE28TransformDependentVectorTypeERNS_14TypeLocBuilderENS_22DependentVectorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ac:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bg = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE28TransformFunctionNoProtoTypeERNS_14TypeLocBuilderENS_22FunctionNoProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ad:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bh = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformFunctionProtoTypeERNS_14TypeLocBuilderENS_20FunctionProtoTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ae:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bi = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE35TransformHLSLAttributedResourceTypeERNS_14TypeLocBuilderENS_29HLSLAttributedResourceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.af:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bj = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE27TransformMacroQualifiedTypeERNS_14TypeLocBuilderENS_21MacroQualifiedTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ag:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bk = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE27TransformConstantMatrixTypeERNS_14TypeLocBuilderENS_21ConstantMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ah:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bl = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE33TransformDependentSizedMatrixTypeERNS_14TypeLocBuilderENS_27DependentSizedMatrixTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ai:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bm = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aj:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bn = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ak:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bo = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.al:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  tail call void @_ZN5clang14TypeLocBuilder12pushFullCopyENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3) #28
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.am:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bp = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformObjCTypeParamTypeERNS_14TypeLocBuilderENS_20ObjCTypeParamTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.an:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bq = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE29TransformOverflowBehaviorTypeERNS_14TypeLocBuilderENS_23OverflowBehaviorTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ao:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.br = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformPackExpansionTypeERNS_14TypeLocBuilderENS_20PackExpansionTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ap:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bs = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE25TransformPackIndexingTypeERNS_14TypeLocBuilderENS_19PackIndexingTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.aq:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bt = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE18TransformParenTypeERNS_14TypeLocBuilderENS_12ParenTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.ar:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bu = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE17TransformPipeTypeERNS_14TypeLocBuilderENS_11PipeTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.as:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bv = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE20TransformPointerTypeERNS_14TypeLocBuilderENS_14PointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit

bb.at:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.bw = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformReferenceTypeERNS_14TypeLocBuilderENS_16ReferenceTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr nonnull %2, ptr %3), !inline_history !2911
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformQualifiedTypeERNS_14TypeLocBuilderENS_16QualifiedTypeLocE.exit
end_hunk_4
begin_hunk_5_@_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformMemberPointerTypeERNS_14TypeLocBuilderENS_20MemberPointerTypeLocE:bb.a
  %i.bw = and i64 %.sroa.062.0, -16
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !888 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i8, ptr %i.bz, align 16
  %.not.i52 = icmp eq i8 %i.ca, 30
  br i1 %.not.i52, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread89, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.0.0.copyload.i.i.i.i53 = load i64, ptr %i.cb, align 8, !tbaa !843
  %i.cc = and i64 %.sroa.0.0.copyload.i.i.i.i53, -16
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !888
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i8, ptr %i.cf, align 16
  %i.ch = icmp eq i8 %i.cg, 30
  br i1 %i.ch, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, label %.critedge2

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit: ; preds = %bb.n
  %i.ci = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.by) #28 ; 2 uses
  %.not39 = icmp eq ptr %i.ci, null
  br i1 %.not39, label %.critedge2, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread89

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread89: ; preds = %bb.m, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit
  %.1.i92 = phi ptr [ %i.ci, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit ], [ %i.by, %bb.m ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.1.i92, i64 32
  %.sroa.0.0.copyload.i54 = load i64, ptr %i.cj, align 16, !tbaa !843 ; 2 uses
  %.not99 = icmp eq i64 %i.n, %.sroa.0.0.copyload.i54
  br i1 %.not99, label %.critedge2, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread89
  %i.ck = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.0.0.copyload.i54, i64 noundef 0, i32 noundef 1) #28 ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %bb.n, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, %bb.o, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread89
  %i.cl = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.062.0, i64 noundef 16, i32 noundef 8) #28
  %i.cm = extractvalue { ptr, ptr } %i.cl, 1      ; 2 uses
  %.sroa.0.0.copyload.i58 = load i32, ptr %3, align 8, !tbaa !58
  store i32 %.sroa.0.0.copyload.i58, ptr %i.cm, align 8, !tbaa !58
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.u, ptr %i.cn, align 8, !tbaa !3013
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %_ZN5clang12CXXScopeSpecD2Ev.exit, %.critedge2, %bb.a
  %.sroa.086.2 = phi i64 [ 0, %bb.a ], [ 0, %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 0, %bb.b ], [ 0, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ %.sroa.062.0, %.critedge2 ]
  ret i64 %.sroa.086.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE30TransformObjCObjectPointerTypeERNS_14TypeLocBuilderENS_24ObjCObjectPointerTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !843 ; 2 uses
  %i.b = ptrtoint ptr %3 to i64
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #28
  %i.e = icmp ne i64 %i.c, 0
  %i.f = zext i1 %i.e to i64                      ; 2 uses
  %i.g = sub i64 %i.c, %i.f
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = udiv i64 %i.g, %i.h
  %i.j = add i64 %i.i, %i.f
  %i.k = mul i64 %i.j, %i.h
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.n = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.m, ptr %i.l) ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  br i1 %i.o, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !1925  ; 2 uses
  %i.p = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.p, align 4, !tbaa !1941
  %.not = icmp eq i32 %.val.val, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.q = ptrtoint ptr %2 to i64
  %.sroa.0.0.copyload.i.i.i.i9 = load i64, ptr %i.a, align 16, !tbaa !843 ; 2 uses
  %i.r = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i9) #28 ; 0 uses
  %.not30 = icmp eq i64 %i.n, %.sroa.0.0.copyload.i.i.i.i9
  br i1 %.not30, label %bb.d, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.c
  %.val8.pre = load ptr, ptr %0, align 8, !tbaa !1925
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.b
  %.val8 = phi ptr [ %.val8.pre, %..critedge_crit_edge ], [ %.val, %bb.b ]
  %i.s = getelementptr i8, ptr %.val8, i64 232
  %.val8.val = load ptr, ptr %i.s, align 8, !tbaa !864
  %i.t = tail call i64 @_ZNK5clang10ASTContext24getObjCObjectPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %.val8.val, i64 %i.n) #28 ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.sroa.017.0 = phi i64 [ %i.t, %.critedge ], [ %i.q, %bb.c ] ; 2 uses
  %i.v = tail call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %.sroa.017.0, i64 noundef 4, i32 noundef 4) #28
  %i.w = extractvalue { ptr, ptr } %i.v, 1
  %.sroa.0.0.copyload.i.i14 = load i32, ptr %3, align 4, !tbaa !58
  store i32 %.sroa.0.0.copyload.i.i14, ptr %i.w, align 4, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge, %bb.a
  %.sroa.029.1 = phi i64 [ 0, %bb.a ], [ %.sroa.017.0, %bb.d ], [ 0, %.critedge ]
  ret i64 %.sroa.029.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE23TransformObjCObjectTypeERNS_14TypeLocBuilderENS_17ObjCObjectTypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %2, ptr %3) unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.1640", align 8 ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.2620", align 8 ; 5 uses
  %6 = alloca %"class.clang::ObjCObjectTypeLoc", align 8 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.2614", align 8 ; 15 uses
  %8 = alloca %"class.llvm::SmallVector.2561", align 8 ; 10 uses
  %9 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %10 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  %11 = alloca %"class.clang::TypeLocBuilder", align 8 ; 14 uses
  store ptr %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !843 ; 2 uses
  %i.c = ptrtoint ptr %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 16             ; 2 uses
  %i.f = lshr i32 %i.e, 16
  %i.g = and i32 %i.f, 1016
  %i.h = lshr i32 %i.e, 24
  %i.i = add nuw nsw i32 %i.h, 20
  %.lhs.trunc.i.i.i.i = add nuw nsw i32 %i.i, %i.g
  %.zext.i.i.i.i = and i32 %.lhs.trunc.i.i.i.i, 2040
  %i.j = add nuw nsw i32 %.zext.i.i.i.i, 8
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add i64 %i.k, %i.c                       ; 2 uses
  %i.m = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #28
  %i.n = icmp ne i64 %i.l, 0
  %i.o = zext i1 %i.n to i64                      ; 2 uses
  %i.p = sub i64 %i.l, %i.o
  %i.q = zext i32 %i.m to i64                     ; 2 uses
  %i.r = udiv i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.o
  %i.t = mul i64 %i.s, %i.q
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr
  %i.w = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %1, ptr %i.v, ptr %i.u) ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  br i1 %i.x, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i81 = load i64, ptr %i.b, align 8, !tbaa !843 ; 2 uses
  %i.y = tail call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i81) #28 ; 0 uses
  %i.z = icmp ne i64 %i.w, %.sroa.0.0.copyload.i.i.i.i81 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !765
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store i32 4, ptr %i.ac, align 4, !tbaa !868
  %i.ad = load i32, ptr %i.d, align 16
  %i.ae = lshr i32 %i.ad, 19
  %i.af = and i32 %i.ae, 127                      ; 2 uses
  %.not196 = icmp eq i32 %i.af, 0
  br i1 %.not196, label %.thread191, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.au = zext nneg i32 %i.af to i64
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %.066199 = phi i1 [ %i.z, %.lr.ph ], [ %.369.jt4, %bb.y ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1380 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ax, align 8, !tbaa !843 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.az = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 3 uses
  %i.ba = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.n

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 16, !tbaa !888 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i8, ptr %i.bc, align 16
  %i.be = icmp eq i8 %i.bd, 36
  br i1 %i.be, label %._crit_edge216, label %bb.n

._crit_edge216:                                   ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !1925
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.al, ptr %8, align 8, !tbaa !84
  store i32 0, ptr %i.am, align 8, !tbaa !765
  store i32 2, ptr %i.an, align 4, !tbaa !868
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.sroa.0.0.copyload.i90 = load i64, ptr %i.bf, align 16, !tbaa !843
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_8QualTypeERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.pre, i64 %.sroa.0.0.copyload.i90, ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.sroa.0.0.copyload.i.i.i.i91 = load i64, ptr %i.bg, align 16, !tbaa !843 ; 2 uses
  %i.bh = ptrtoint ptr %i.ay to i64
  %i.bi = add i64 %i.bh, 4                        ; 2 uses
  %i.bj = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i91) #28
  %i.bk = icmp ne i64 %i.bi, 0
  %i.bl = zext i1 %i.bk to i64                    ; 2 uses
  %i.bm = sub i64 %i.bi, %i.bl
  %i.bn = zext i32 %i.bj to i64                   ; 2 uses
  %i.bo = udiv i64 %i.bm, %i.bn
  %i.bp = add i64 %i.bo, %i.bl
  %i.bq = mul i64 %i.bp, %i.bn
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i91 to ptr
  store ptr %i.bs, ptr %9, align 8
  store ptr %i.br, ptr %i.ao, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !843
  %i.bv = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #28 ; 0 uses
  %i.bw = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #28 ; 0 uses
  %.val79 = load ptr, ptr %0, align 8, !tbaa !1925
  %i.bx = getelementptr inbounds nuw i8, ptr %.val79, i64 13800 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bx, align 4, !tbaa !58 ; 2 uses
  store i32 0, ptr %i.bx, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store ptr %i.ap, ptr %10, align 8, !tbaa !1699
  store i64 32, ptr %i.aq, align 8, !tbaa !1700
  store i64 32, ptr %i.ar, align 8, !tbaa !1701
  store i32 0, ptr %i.as, align 8, !tbaa !1702
  store i8 0, ptr %i.at, align 4, !tbaa !1703
  %i.by = load ptr, ptr %9, align 8, !tbaa !1933
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %i.bz) #28
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = load i64, ptr %i.aq, align 8, !tbaa !1700
  %i.cd = icmp ult i64 %i.cc, %i.cb
  br i1 %i.cd, label %bb.d, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.d:                                             ; preds = %._crit_edge216
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %10, i64 noundef %i.cb) #28
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %._crit_edge216, %bb.d
  %.sroa.041.0.copyload = load ptr, ptr %9, align 8, !tbaa !874
  %.sroa.242.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !874
  %i.ce = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %10, ptr %.sroa.041.0.copyload, ptr %.sroa.242.0.copyload) ; 2 uses
  %i.cf = icmp ult i64 %i.ce, 16
  br i1 %i.cf, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1, label %bb.e

bb.e:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.cg = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 232
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.cj = call i64 @_ZNK5clang10ASTContext20getPackExpansionTypeENS_8QualTypeENS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ci, i64 %i.ce, i32 %i.bu, i1 noundef zeroext true) #28 ; 2 uses
  %i.ck = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %1, i64 %i.cj, i64 noundef 4, i32 noundef 4) #28
  %i.cl = extractvalue { ptr, ptr } %i.ck, 1
  %.sroa.0.0.copyload.i96 = load i32, ptr %i.ay, align 8, !tbaa !58
  store i32 %.sroa.0.0.copyload.i96, ptr %i.cl, align 4, !tbaa !58
  %i.cm = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 232
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.cp = load i64, ptr %i.aq, align 8, !tbaa !1700
  %i.cq = load i64, ptr %i.ar, align 8, !tbaa !1701
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.co, i64 %i.cj, i32 noundef %i.cs) #28 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %10, align 8, !tbaa !1699
  %i.cw = load i64, ptr %i.ar, align 8, !tbaa !1701
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr align 1 %i.cx, i64 %i.cr, i1 false)
  %i.cy = load i32, ptr %i.ab, align 8, !tbaa !765 ; 2 uses
  %i.cz = load i32, ptr %i.ac, align 4, !tbaa !868
  %.not.i97 = icmp ult i32 %i.cy, %i.cz
  br i1 %.not.i97, label %bb.g, label %bb.f, !prof !901

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ct)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

bb.g:                                             ; preds = %bb.e
  %i.da = zext i32 %i.cy to i64
  %i.db = load ptr, ptr %7, align 8, !tbaa !84
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.da
  store ptr %i.ct, ptr %i.dc, align 1
  %i.dd = load i32, ptr %i.ab, align 8, !tbaa !765
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.ab, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4: ; preds = %bb.g, %bb.f
  %i.df = load ptr, ptr %10, align 8, !tbaa !1699 ; 3 uses
  %.not.i98.jt4 = icmp eq ptr %i.df, %i.ap
  %i.dg = icmp eq ptr %i.df, null
  %or.cond.i.jt4 = or i1 %.not.i98.jt4, %i.dg
  br i1 %or.cond.i.jt4, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4, label %bb.h

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1: ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %i.dh = load ptr, ptr %10, align 8, !tbaa !1699 ; 3 uses
  %.not.i98.jt1 = icmp eq ptr %i.dh, %i.ap
  %i.di = icmp eq ptr %i.dh, null
  %or.cond.i.jt1 = or i1 %.not.i98.jt1, %i.di
  br i1 %or.cond.i.jt1, label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @_ZdaPv(ptr noundef nonnull %i.df) #30
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #30
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1

_ZN5clang14TypeLocBuilderD2Ev.exit.jt4:           ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bx, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.dj = load ptr, ptr %8, align 8, !tbaa !84    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.al
  br i1 %i.dk, label %bb.l, label %bb.j

_ZN5clang14TypeLocBuilderD2Ev.exit.jt1:           ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.bx, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.dl = load ptr, ptr %8, align 8, !tbaa !84    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.al
  br i1 %i.dm, label %bb.m, label %bb.k

bb.j:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @free(ptr noundef %i.dj) #28
  br label %bb.l

bb.k:                                             ; preds = %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @free(ptr noundef %i.dl) #28
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.y

bb.m:                                             ; preds = %bb.k, %_ZN5clang14TypeLocBuilderD2Ev.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.loopexit

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store ptr %i.ag, ptr %11, align 8, !tbaa !1699
  store i64 32, ptr %i.ah, align 8, !tbaa !1700
  store i64 32, ptr %i.ai, align 8, !tbaa !1701
  store i32 0, ptr %i.aj, align 8, !tbaa !1702
  store i8 0, ptr %i.ak, align 4, !tbaa !1703
  %i.dn = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #28
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = load i64, ptr %i.ah, align 8, !tbaa !1700
  %i.dq = icmp ult i64 %i.dp, %i.do
  br i1 %i.dq, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit107

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %11, i64 noundef %i.do) #28
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit107

_ZN5clang14TypeLocBuilder7reserveEm.exit107:      ; preds = %bb.n, %bb.o
  %i.dr = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %11, ptr %i.az, ptr nonnull %i.ay) ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 16
  br i1 %i.ds, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit112.jt1, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit107
  %i.dt = icmp eq i64 %i.dr, %.sroa.0.0.copyload.i
  br i1 %i.dt, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.du = load i32, ptr %i.ab, align 8, !tbaa !765 ; 2 uses
  %i.dv = load i32, ptr %i.ac, align 4, !tbaa !868
  %.not.i111 = icmp ult i32 %i.du, %i.dv
  br i1 %.not.i111, label %bb.s, label %bb.r, !prof !901

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.ax)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit112.jt4

bb.s:                                             ; preds = %bb.q
  %i.dw = zext i32 %i.du to i64
  %i.dx = load ptr, ptr %7, align 8, !tbaa !84
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  store ptr %i.ax, ptr %i.dy, align 1
end_hunk_5
begin_hunk_6_@_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE33TransformUnaryExprOrTypeTraitExprEPNS_24UnaryExprOrTypeTraitExprE:bb.a
bb.c:                                             ; preds = %bb.b
  %.val40 = load ptr, ptr %0, align 8, !tbaa !1925 ; 2 uses
  %i.g = getelementptr i8, ptr %.val40, i64 13800
  %.val40.val = load i32, ptr %i.g, align 4, !tbaa !1941
  %.not64 = icmp eq i32 %.val40.val, 0
  %i.h = icmp eq ptr %i.e, %i.f
  %or.cond = and i1 %i.h, %.not64
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %1 to i64
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.j, align 8, !tbaa !58
  %i.k = load i24, ptr %1, align 8
  %i.l = lshr i24 %i.k, 19
  %i.m = and i24 %i.l, 15
  %i.n = zext nneg i24 %i.m to i32
  %i.o = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %i.p = tail call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val40, ptr noundef nonnull %i.f, i32 %.sroa.0.0.copyload.i, i32 noundef %i.n, i64 %i.o) #28
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866 ; 2 uses
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextENS0_24ReuseLambdaContextDecl_tENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.q, i32 noundef 0, i32 noundef 0, i32 noundef 4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !1380
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !843  ; 6 uses
  %i.t = load i16, ptr %i.s, align 8
  %i.u = and i16 %i.t, 511
  %.not = icmp eq i16 %i.u, 20
  br i1 %.not, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1831 ; 3 uses
  %i.x = load i16, ptr %i.w, align 8
  %i.y = and i16 %i.x, 511
  %i.z = icmp eq i16 %i.y, 71
  br i1 %i.z, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.aa = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE34TransformDependentScopeDeclRefExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.w, i1 noundef zeroext false, ptr noundef nonnull %i.a), !inline_history !3186 ; 3 uses
  %spec.select.i = icmp ugt i64 %i.aa, 1
  br i1 %spec.select.i, label %bb.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.i:                                             ; preds = %bb.h
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1925 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val.i, i64 13800
  %.val.val.i = load i32, ptr %i.ab, align 4, !tbaa !1941
  %i.ac = icmp eq i32 %.val.val.i, 0
  %i.ad = and i64 %i.aa, -2
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = icmp eq ptr %i.w, %i.ae
  %or.cond61 = and i1 %i.af, %i.ac
  br i1 %or.cond61, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = ptrtoint ptr %i.s to i64
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.0.0.copyload.i48 = load i32, ptr %i.ah, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %.sroa.0.0.copyload.i47 = load i32, ptr %i.ai, align 4, !tbaa !58
  %i.aj = call i64 @_ZN5clang4Sema14ActOnParenExprENS_14SourceLocationES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %.sroa.0.0.copyload.i48, i32 %.sroa.0.0.copyload.i47, ptr noundef %i.ae) #28
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.ak = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.s)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit: ; preds = %bb.k, %bb.j, %bb.h, %bb.l
  %storemerge = phi i64 [ %i.ak, %bb.l ], [ %i.aj, %bb.k ], [ %i.ag, %bb.j ], [ %i.aa, %bb.h ] ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !1380 ; 2 uses
  %.not37 = icmp eq ptr %i.al, null
  br i1 %.not37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i45 = load i32, ptr %i.am, align 8, !tbaa !58
  %i.an = load i24, ptr %1, align 8
  %i.ao = lshr i24 %i.an, 19
  %i.ap = and i24 %i.ao, 15
  %i.aq = zext nneg i24 %i.ap to i32
  %i.ar = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %.val41 = load ptr, ptr %0, align 8, !tbaa !1925
  %i.as = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val41, ptr noundef nonnull %i.al, i32 %.sroa.0.0.copyload.i45, i32 noundef %i.aq, i64 %i.ar) #28
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.n:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE39TransformParenDependentScopeDeclRefExprEPNS_9ParenExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE.exit
  %i.at = icmp eq i64 %storemerge, 1
  br i1 %i.at, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val = load ptr, ptr %0, align 8, !tbaa !1925  ; 2 uses
  %i.au = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.au, align 4, !tbaa !1941
  %.not63 = icmp eq i32 %.val.val, 0
  %i.av = and i64 %storemerge, -2
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  br i1 %.not63, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !843
  %i.ay = icmp eq ptr %i.ax, %i.aw
  br i1 %i.ay, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %bb.p
  %i.az = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

._crit_edge:                                      ; preds = %bb.o, %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i46 = load i32, ptr %i.ba, align 8, !tbaa !58
  %i.bb = load i24, ptr %1, align 8
  %i.bc = lshr i24 %i.bb, 19
  %i.bd = and i24 %i.bc, 15
  %i.be = zext nneg i24 %i.bd to i32
  %i.bf = call i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_4ExprENS_14SourceLocationENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef %i.aw, i32 %.sroa.0.0.copyload.i46, i32 noundef %i.be) #28
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.n, %._crit_edge, %bb.q, %bb.m
  %.sroa.052.0 = phi i64 [ %i.as, %bb.m ], [ %i.bf, %._crit_edge ], [ %i.az, %bb.q ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.q) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.d, %bb.e, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.sroa.052.1 = phi i64 [ %.sroa.052.0, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ], [ %i.i, %bb.d ], [ %i.p, %bb.e ], [ 1, %bb.b ]
  ret i64 %.sroa.052.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE22TransformTypeTraitExprEPNS_13TypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2614", align 8 ; 14 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 12 uses
  %4 = alloca %"class.clang::TypeLoc", align 8    ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.2561", align 8 ; 8 uses
  %6 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  store i32 0, ptr %i.b, align 8, !tbaa !765
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i32 4, ptr %i.c, align 4, !tbaa !868
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !843  ; 2 uses
  %.not217 = icmp eq i32 %i.e, 0
  br i1 %.not217, label %.thread212, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.u = zext i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %.not, label %.thread212, label %bb.c, !llvm.loop !3187

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.0220 = phi i1 [ false, %.lr.ph ], [ %.3, %bb.b ] ; 3 uses
  %i.v = load i32, ptr %1, align 8
  %i.w = lshr i32 %i.v, 27
  %.lobit.i.i.i.i.i.i.i = and i32 %i.w, 1
  %i.x = xor i32 %.lobit.i.i.i.i.i.i.i, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1380 ; 6 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !tbaa !843 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 4 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i, 15
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %bb.d

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.c
  %i.af = load ptr, ptr %i.ad, align 16, !tbaa !888
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 16
  %i.ai = icmp eq i8 %i.ah, 36
  br i1 %i.ai, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.g, ptr %3, align 8, !tbaa !1699
  store i64 32, ptr %i.h, align 8, !tbaa !1700
  store i64 32, ptr %i.i, align 8, !tbaa !1701
  store i32 0, ptr %i.j, align 8, !tbaa !1702
  store i8 0, ptr %i.k, align 4, !tbaa !1703
  %i.aj = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #28
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = load i64, ptr %i.h, align 8, !tbaa !1700
  %i.am = icmp ult i64 %i.al, %i.ak
  br i1 %i.am, label %bb.e, label %_ZN5clang14TypeLocBuilder7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 noundef %i.ak) #28
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit

_ZN5clang14TypeLocBuilder7reserveEm.exit:         ; preds = %bb.d, %bb.e
  %i.an = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr %i.ad, ptr nonnull %i.ac) ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  br i1 %i.ao, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.sroa.0.0.copyload.i79 = load i64, ptr %i.ab, align 8, !tbaa !843
  %i.ap = icmp eq i64 %i.an, %.sroa.0.0.copyload.i79
  br i1 %i.ap, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !765 ; 2 uses
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !901

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.i:                                             ; preds = %bb.g
  %i.as = zext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !84
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  store ptr %i.ab, ptr %i.au, align 1
  %i.av = load i32, ptr %i.b, align 8, !tbaa !765
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.j:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 232
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !1700
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !1701
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.az, i64 %i.an, i32 noundef %i.bd) #28 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %3, align 8, !tbaa !1699
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !1701
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %i.bi, i64 %i.bc, i1 false)
  %i.bj = load i32, ptr %i.b, align 8, !tbaa !765 ; 2 uses
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i81 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not.i81, label %bb.l, label %bb.k, !prof !901

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.be)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = zext i32 %i.bj to i64
  %i.bm = load ptr, ptr %2, align 8, !tbaa !84
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.be, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !765
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.b, align 8, !tbaa !765
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit: ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %_ZN5clang14TypeLocBuilder7reserveEm.exit
  %.065 = phi i32 [ 4, %bb.i ], [ 1, %_ZN5clang14TypeLocBuilder7reserveEm.exit ], [ 4, %bb.h ], [ 4, %bb.k ], [ 4, %bb.l ]
  %.2 = phi i1 [ %.0220, %bb.i ], [ %.0220, %_ZN5clang14TypeLocBuilder7reserveEm.exit ], [ %.0220, %bb.h ], [ true, %bb.k ], [ true, %bb.l ]
  %i.bq = load ptr, ptr %3, align 8, !tbaa !1699  ; 3 uses
  %.not.i83 = icmp eq ptr %i.bq, %i.g
  %i.br = icmp eq ptr %i.bq, null
  %or.cond.i = or i1 %.not.i83, %i.br
  br i1 %or.cond.i, label %_ZN5clang14TypeLocBuilderD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #30
  br label %_ZN5clang14TypeLocBuilderD2Ev.exit

_ZN5clang14TypeLocBuilderD2Ev.exit:               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.v

bb.n:                                             ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_20PackExpansionTypeLocENS_17PackExpansionTypeENS_24PackExpansionTypeLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bs, align 16, !tbaa !843 ; 2 uses
  %i.bt = ptrtoint ptr %i.ac to i64
  %i.bu = add i64 %i.bt, 4                        ; 2 uses
  %i.bv = call noundef i32 @_ZN5clang7TypeLoc24getLocalAlignmentForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i.i.i) #28
  %i.bw = icmp ne i64 %i.bu, 0
  %i.bx = zext i1 %i.bw to i64                    ; 2 uses
  %i.by = sub i64 %i.bu, %i.bx
  %i.bz = zext i32 %i.bv to i64                   ; 2 uses
  %i.ca = udiv i64 %i.by, %i.bz
  %i.cb = add i64 %i.ca, %i.bx
  %i.cc = mul i64 %i.cb, %i.bz
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr ; 2 uses
  store ptr %i.ce, ptr %4, align 8
  store ptr %i.cd, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.m, ptr %5, align 8, !tbaa !84
  store i32 0, ptr %i.n, align 8, !tbaa !765
  store i32 2, ptr %i.o, align 4, !tbaa !868
  %i.cf = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksENS_7TypeLocERN4llvm15SmallVectorImplISt4pairINS2_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cf, ptr %i.ce, ptr %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !843
  %i.ci = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28 ; 0 uses
  %i.cj = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28 ; 0 uses
  %.val72 = load ptr, ptr %0, align 8, !tbaa !1925
  %i.ck = getelementptr inbounds nuw i8, ptr %.val72, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ck, align 4, !tbaa !58
  store i32 0, ptr %i.ck, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.p, ptr %6, align 8, !tbaa !1699
  store i64 32, ptr %i.q, align 8, !tbaa !1700
  store i64 32, ptr %i.r, align 8, !tbaa !1701
  store i32 0, ptr %i.s, align 8, !tbaa !1702
  store i8 0, ptr %i.t, align 4, !tbaa !1703
  %.sroa.0.0.copyload.i88 = load i64, ptr %i.ab, align 8, !tbaa !843
  %i.cl = call noundef i32 @_ZN5clang7TypeLoc22getFullDataSizeForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i88) #28
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = load i64, ptr %i.q, align 8, !tbaa !1700
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %bb.o, label %_ZN5clang14TypeLocBuilder7reserveEm.exit91

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang14TypeLocBuilder4growEm(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 noundef %i.cm) #28
  br label %_ZN5clang14TypeLocBuilder7reserveEm.exit91

_ZN5clang14TypeLocBuilder7reserveEm.exit91:       ; preds = %bb.n, %bb.o
  %.sroa.034.0.copyload = load ptr, ptr %4, align 8, !tbaa !874
  %.sroa.235.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !874
  %i.cp = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %6, ptr %.sroa.034.0.copyload, ptr %.sroa.235.0.copyload) ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 16
  br i1 %i.cq, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit101, label %bb.p

bb.p:                                             ; preds = %_ZN5clang14TypeLocBuilder7reserveEm.exit91
  %i.cr = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  %i.cs = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  %.sroa.2.0.insert.ext.i93 = zext i32 %i.cs to i64
  %.sroa.2.0.insert.shift.i94 = shl nuw i64 %.sroa.2.0.insert.ext.i93, 32
  %.sroa.0.0.insert.ext.i95 = zext i32 %i.cr to i64
  %.sroa.0.0.insert.insert.i96 = or disjoint i64 %.sroa.2.0.insert.shift.i94, %.sroa.0.0.insert.ext.i95
  %.sroa.0.0.copyload.i97 = load i32, ptr %i.ac, align 8, !tbaa !58
  %.val75 = load ptr, ptr %0, align 8, !tbaa !1925
  %i.ct = call i64 @_ZN5clang4Sema18CheckPackExpansionENS_8QualTypeENS_11SourceRangeENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val75, i64 %i.cp, i64 %.sroa.0.0.insert.insert.i96, i32 %.sroa.0.0.copyload.i97, i32 %i.ch) #28 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  br i1 %i.cu, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit101, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = call { ptr, ptr } @_ZN5clang14TypeLocBuilder8pushImplENS_8QualTypeEmj(ptr noundef nonnull align 8 dereferenceable(61) %6, i64 %i.ct, i64 noundef 4, i32 noundef 4) #28
  %i.cw = extractvalue { ptr, ptr } %i.cv, 1
  %.sroa.0.0.copyload.i99 = load i32, ptr %i.ac, align 8, !tbaa !58
  store i32 %.sroa.0.0.copyload.i99, ptr %i.cw, align 4, !tbaa !58
  %i.cx = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 232
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.da = load i64, ptr %i.q, align 8, !tbaa !1700
  %i.db = load i64, ptr %i.r, align 8, !tbaa !1701
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  %i.de = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.cz, i64 %i.ct, i32 noundef %i.dd) #28 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %6, align 8, !tbaa !1699
  %i.dh = load i64, ptr %i.r, align 8, !tbaa !1701
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr align 1 %i.di, i64 %i.dc, i1 false)
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !765 ; 2 uses
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !868
  %.not.i100 = icmp ult i32 %i.dj, %i.dk
  br i1 %.not.i100, label %bb.s, label %bb.r, !prof !901

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.de)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang14TypeSourceInfoELb1EE9push_backES3_.exit101

bb.s:                                             ; preds = %bb.q
  %i.dl = zext i32 %i.dj to i64
end_hunk_6
begin_hunk_7_@_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE35TransformCXXRewrittenBinaryOperatorEPNS_26CXXRewrittenBinaryOperatorE:bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.1, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1931
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1: ; preds = %bb.q, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1
  %.0.i.1 = phi ptr [ %i.ef, %bb.q ], [ %i.cv, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i.1 ] ; 3 uses
  %.not39.1 = icmp eq ptr %.0.i.1, null
  br i1 %.not39.1, label %.critedge, label %bb.r

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1
  %i.eg = ptrtoint ptr %.0.i.1 to i64
  %i.eh = or i64 %i.eg, 3
  %.not40.1 = icmp ne ptr %.0.i.1, %i.cv
  %spec.select.1 = select i1 %.not40.1, i1 true, i1 %.4.ph
  %i.ei = zext nneg i32 %i.ca to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ei
  store i64 %i.eh, ptr %i.ej, align 8
  %i.ek = add nuw nsw i32 %i.ca, 1
  store i32 %i.ek, ptr %i.k, align 8, !tbaa !765
  br label %.critedge.thread59

.critedge.thread59:                               ; preds = %bb.r, %bb.m, %bb.l, %bb.k
  %.4.ph.1 = phi i1 [ %spec.select.1, %bb.r ], [ %.4.ph, %bb.k ], [ %.4.ph, %bb.l ], [ %.4.ph, %bb.m ]
  %.val = load ptr, ptr %0, align 8, !tbaa !1925  ; 3 uses
  %i.el = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.el, align 4, !tbaa !1941
  %i.em = icmp ne i32 %.val.val, 0
  %or.cond = select i1 %i.em, i1 true, i1 %.4.ph.1
  %.pre = and i64 %i.d, -2
  %.pre72 = inttoptr i64 %.pre to ptr             ; 2 uses
  br i1 %or.cond, label %.critedge.thread59._crit_edge, label %bb.s

bb.s:                                             ; preds = %.critedge.thread59
  %i.en = load ptr, ptr %i.b, align 8, !tbaa !3466 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %.pre72
  br i1 %i.eo, label %bb.t, label %.critedge.thread59._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.ep = and i64 %i.h, -2
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !3467 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.eq
  br i1 %i.es, label %bb.u, label %.critedge.thread59._crit_edge

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr %i.en, ptr %i.a, align 16, !tbaa !1450
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.er, ptr %i.et, align 8, !tbaa !1450
  call void @_ZN5clang4Sema32MarkDeclarationsReferencedInExprEPNS_4ExprEbN4llvm8ArrayRefIPKS1_EE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef nonnull %1, i1 noundef zeroext false, ptr nonnull %i.a, i64 2) #28
  %i.eu = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.critedge

.critedge.thread59._crit_edge:                    ; preds = %.critedge.thread59, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNK5clang26CXXRewrittenBinaryOperator17getDecomposedFormEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::CXXRewrittenBinaryOperator::DecomposedForm") align 8 %2, ptr noundef nonnull readonly align 8 dereferenceable(24) %1) #33
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !3470
  %i.ex = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.ey = load i32, ptr %3, align 8, !tbaa !3473
  %i.ez = and i64 %i.h, -2
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = call i64 @_ZN5clang4Sema21CreateOverloadedBinOpENS_14SourceLocationENS_18BinaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprES7_bbPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.ex, i32 noundef %i.ey, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %.pre72, ptr noundef %i.fa, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1, %.critedge.thread59._crit_edge, %bb.u
  %.sroa.053.3 = phi i64 [ %i.fb, %.critedge.thread59._crit_edge ], [ %i.eu, %bb.u ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.1 ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  %i.fc = load ptr, ptr %4, align 8, !tbaa !84    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.j
  br i1 %i.fd, label %_ZN5clang13UnresolvedSetILj2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.fc) #28
  br label %_ZN5clang13UnresolvedSetILj2EED2Ev.exit

_ZN5clang13UnresolvedSetILj2EED2Ev.exit:          ; preds = %.critedge, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.w:                                             ; preds = %_ZN5clang13UnresolvedSetILj2EED2Ev.exit, %bb.b, %bb.a
  %.sroa.053.5 = phi i64 [ 1, %bb.a ], [ %.sroa.053.3, %_ZN5clang13UnresolvedSetILj2EED2Ev.exit ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i64 %.sroa.053.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE23TransformCXXReflectExprEPNS_14CXXReflectExprE() unnamed_addr #23 align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE32TransformCXXPseudoDestructorExprEPNS_23CXXPseudoDestructorExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %2 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 6 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %7 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %9 = alloca %"class.clang::OpaquePtr", align 8  ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"class.clang::CXXScopeSpec", align 8 ; 12 uses
  %11 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %12 = alloca %"class.clang::PseudoDestructorTypeStorage", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3482
  %i.e = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d) ; 2 uses
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store ptr null, ptr %9, align 8, !tbaa !1896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i8 0, ptr %i.b, align 1, !tbaa !860
  %i.g = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.h = and i64 %i.e, -2
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.j, align 4, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = trunc i8 %i.l to i1
  %i.n = select i1 %i.m, i16 37, i16 26
  %i.o = call i64 @_ZN5clang4Sema28ActOnStartCXXMemberReferenceEPNS_5ScopeEPNS_4ExprENS_14SourceLocationENS_3tok9TokenKindERNS_9OpaquePtrINS_8QualTypeEEERb(ptr noundef nonnull align 8 dereferenceable(18640) %i.g, ptr noundef null, ptr noundef %i.i, i32 %.sroa.0.0.copyload.i, i16 noundef zeroext %i.n, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #28 ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %9, align 8, !tbaa !1896   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.s, align 8, !tbaa !867 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !874 ; 2 uses
  %.not92 = icmp eq i64 %.sroa.0.0.copyload.i48, 0
  br i1 %.not92, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i48, ptr %.sroa.2.0.copyload.i, i64 %i.r, ptr noundef null) ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0        ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.t, 1
  %.not93 = icmp eq i64 %i.u, 0
  br i1 %.not93, label %bb.ai, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.074.0 = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ]
  %.sroa.8.0 = phi ptr [ %i.v, %bb.d ], [ %.sroa.2.0.copyload.i, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %10, i64 %.sroa.074.0, ptr %.sroa.8.0) #28
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.w, align 8 ; 3 uses
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.y = icmp ne i64 %i.x, 0                      ; 2 uses
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 5 uses
  %.not94 = icmp eq i64 %i.z, 0
  %.not = or i1 %i.y, %.not94
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i103 = load i64, ptr %i.aa, align 8, !tbaa !843 ; 4 uses
  %i.ab = icmp ult i64 %.sroa.0.0.copyload.i.i103, 16
  br i1 %i.ab, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread, label %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.i

_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.i: ; preds = %bb.f
  %i.ac = and i64 %.sroa.0.0.copyload.i.i103, -16
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !888
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 17
  %i.ag = load i16, ptr %i.af, align 1
  %i.ah = and i16 %i.ag, 2
  %.not.i.i104 = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i104, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !1699
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 32, ptr %i.aj, align 8, !tbaa !1700
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 32, ptr %i.ak, align 8, !tbaa !1701
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.al, align 8, !tbaa !1702
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 0, ptr %i.am, align 4, !tbaa !1703
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ao = inttoptr i64 %.sroa.0.0.copyload.i.i103 to ptr ; 4 uses
  %i.ap = and i64 %.sroa.0.0.copyload.i.i103, 15
  %.not.i.i116 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i116, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i:     ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ao, align 16, !tbaa !888
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i8, ptr %i.ar, align 16
  switch i8 %i.as, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i [
    i8 50, label %bb.h
    i8 20, label %bb.i
  ]

bb.h:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.at = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ao, ptr nonnull %i.an, i64 %i.r, ptr noundef null, i1 noundef zeroext true), !inline_history !3474
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

bb.i:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i
  %i.au = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ao, ptr nonnull %i.an, i1 noundef zeroext false, i64 %i.r, ptr noundef null), !inline_history !3474
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i, %bb.g
  %i.av = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %3, ptr nonnull %i.ao, ptr nonnull %i.an), !inline_history !3474
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.h, %bb.i, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i
  %.sroa.014.0.i = phi i64 [ %i.av, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i ], [ %i.at, %bb.h ], [ %i.au, %bb.i ] ; 2 uses
  %i.aw = icmp ult i64 %.sroa.014.0.i, 16
  br i1 %i.aw, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !1699
  br label %bb.k

bb.j:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 232
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.ba = load i64, ptr %i.aj, align 8, !tbaa !1700
  %i.bb = load i64, ptr %i.ak, align 8, !tbaa !1701
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.az, i64 %.sroa.014.0.i, i32 noundef %i.bd) #28, !inline_history !3475 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %3, align 8, !tbaa !1699  ; 2 uses
  %i.bh = load i64, ptr %i.ak, align 8, !tbaa !1701
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %i.bi, i64 %i.bc, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.bj = phi ptr [ %i.bg, %bb.j ], [ %.pre.i, %._crit_edge.i ] ; 3 uses
  %.0.i = phi ptr [ %i.be, %bb.j ], [ null, %._crit_edge.i ] ; 2 uses
  %.not.i11.i = icmp eq ptr %i.bj, %i.ai
  %i.bk = icmp eq ptr %i.bj, null
  %or.cond.i.i = or i1 %.not.i11.i, %i.bk
  br i1 %or.cond.i.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #30, !inline_history !3475
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.not45.not = icmp eq ptr %.0.i, null
  br i1 %.not45.not, label %.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread: ; preds = %bb.f, %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit
  %.1.i124 = phi ptr [ %.0.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit ], [ %i.aa, %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.i ], [ %i.aa, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @_ZN5clang27PseudoDestructorTypeStorageC1EPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull %.1.i124) #28
  %.sroa.065.0.copyload66 = load i64, ptr %11, align 8
  %.sroa.7.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.7.0.copyload69 = load i32, ptr %.sroa.7.0..sroa_idx68, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.q

bb.m:                                             ; preds = %bb.e
  %i.bl = icmp ult ptr %i.q, inttoptr (i64 16 to ptr)
  br i1 %i.bl, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = and i64 %i.r, -16
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load ptr, ptr %i.bn, align 16, !tbaa !888
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 17
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = and i16 %i.bq, 4
  %.not95 = icmp eq i16 %i.br, 0
  br i1 %.not95, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bs, align 8, !tbaa !58
  %i.bt = or i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.bu = select i1 %i.y, i64 %i.bt, i64 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bv = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i56 = load i32, ptr %i.bw, align 8, !tbaa !58
  %.sroa.09.0.copyload = load ptr, ptr %9, align 8, !tbaa !874
  %i.bx = call ptr @_ZN5clang4Sema17getDestructorNameERKNS_14IdentifierInfoENS_14SourceLocationEPNS_5ScopeERNS_12CXXScopeSpecENS_9OpaquePtrINS_8QualTypeEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i32 %.sroa.0.0.copyload.i.i56, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr %.sroa.09.0.copyload, i1 noundef zeroext false) #28 ; 2 uses
  %.not96 = icmp eq ptr %i.bx, null
  br i1 %.not96, label %.thread, label %.thread89

.thread89:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.by = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 232
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.cb = call i64 @_ZN5clang4Sema17GetTypeFromParserENS_9OpaquePtrINS_8QualTypeEEEPPNS_14TypeSourceInfoE(ptr nonnull %i.bx, ptr noundef null) #28
  %.sroa.0.0.copyload.i.i57 = load i32, ptr %i.bw, align 8, !tbaa !58
  %i.cc = call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ca, i64 %i.cb, i32 %.sroa.0.0.copyload.i.i57) #28
  call void @_ZN5clang27PseudoDestructorTypeStorageC1EPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef %i.cc) #28
  %.sroa.065.0.copyload67 = load i64, ptr %12, align 8
  %.sroa.7.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.7.0.copyload71 = load i32, ptr %.sroa.7.0..sroa_idx70, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.q

bb.q:                                             ; preds = %.thread89, %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread, %bb.o
  %.sroa.7.2 = phi i32 [ %.sroa.7.0.copyload71, %.thread89 ], [ %.sroa.0.0.copyload.i.i, %bb.o ], [ %.sroa.7.0.copyload69, %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread ] ; 2 uses
  %.sroa.065.2 = phi i64 [ %.sroa.065.0.copyload67, %.thread89 ], [ %i.bu, %bb.o ], [ %.sroa.065.0.copyload66, %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit.thread ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !3483 ; 5 uses
  %.not46 = icmp eq ptr %i.ce, null
  br i1 %.not46, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit115.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i105 = load i64, ptr %i.ce, align 8, !tbaa !843 ; 4 uses
  %i.cf = icmp ult i64 %.sroa.0.0.copyload.i.i105, 16
  br i1 %i.cf, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit115.thread, label %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.i106

_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.i106: ; preds = %bb.r
  %i.cg = and i64 %.sroa.0.0.copyload.i.i105, -16
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load ptr, ptr %i.ch, align 16, !tbaa !888
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 17
  %i.ck = load i16, ptr %i.cj, align 1
  %i.cl = and i16 %i.ck, 2
  %.not.i.i107 = icmp eq i16 %i.cl, 0
  br i1 %.not.i.i107, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit115.thread, label %bb.s

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.i106
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.cm, ptr %2, align 8, !tbaa !1699
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 32, ptr %i.cn, align 8, !tbaa !1700
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 32, ptr %i.co, align 8, !tbaa !1701
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 0, ptr %i.cp, align 8, !tbaa !1702
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i8 0, ptr %i.cq, align 4, !tbaa !1703
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cs = inttoptr i64 %.sroa.0.0.copyload.i.i105 to ptr ; 4 uses
  %i.ct = and i64 %.sroa.0.0.copyload.i.i105, 15
  %.not.i.i117 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i117, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i120, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i118

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i120:  ; preds = %bb.s
  %i.cu = load ptr, ptr %i.cs, align 16, !tbaa !888
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i8, ptr %i.cv, align 16
  switch i8 %i.cw, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i118 [
    i8 50, label %bb.t
    i8 20, label %bb.u
  ]

bb.t:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i120
  %i.cx = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE35TransformTemplateSpecializationTypeERNS_14TypeLocBuilderENS_29TemplateSpecializationTypeLocENS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cs, ptr nonnull %i.cr, i64 %i.r, ptr noundef null, i1 noundef zeroext true), !inline_history !3474
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit121

bb.u:                                             ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i120
  %i.cy = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformDependentNameTypeERNS_14TypeLocBuilderENS_20DependentNameTypeLocEbNS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cs, ptr nonnull %i.cr, i1 noundef zeroext false, i64 %i.r, ptr noundef null), !inline_history !3474
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit121

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i118: ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.i120, %bb.s
  %i.cz = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE13TransformTypeERNS_14TypeLocBuilderENS_7TypeLocE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(61) %2, ptr nonnull %i.cs, ptr nonnull %i.cr), !inline_history !3474
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit121

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit121: ; preds = %bb.t, %bb.u, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i118
  %.sroa.014.0.i119 = phi i64 [ %i.cz, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit.thread.i118 ], [ %i.cx, %bb.t ], [ %i.cy, %bb.u ] ; 2 uses
  %i.da = icmp ult i64 %.sroa.014.0.i119, 16
  br i1 %i.da, label %._crit_edge.i113, label %bb.v

._crit_edge.i113:                                 ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit121
  %.pre.i114 = load ptr, ptr %2, align 8, !tbaa !1699
  br label %bb.w

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeERNS_14TypeLocBuilderENS_7TypeLocENS_8QualTypeEPNS_9NamedDeclE.exit121
  %i.db = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 232
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.de = load i64, ptr %i.cn, align 8, !tbaa !1700
  %i.df = load i64, ptr %i.co, align 8, !tbaa !1701
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = call noundef ptr @_ZNK5clang10ASTContext20CreateTypeSourceInfoENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.dd, i64 %.sroa.014.0.i119, i32 noundef %i.dh) #28, !inline_history !3475 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %2, align 8, !tbaa !1699  ; 2 uses
  %i.dl = load i64, ptr %i.co, align 8, !tbaa !1701
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dj, ptr align 1 %i.dm, i64 %i.dg, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i113
  %i.dn = phi ptr [ %i.dk, %bb.v ], [ %.pre.i114, %._crit_edge.i113 ] ; 3 uses
  %.0.i108 = phi ptr [ %i.di, %bb.v ], [ null, %._crit_edge.i113 ] ; 2 uses
  %.not.i11.i109 = icmp eq ptr %i.dn, %i.cm
  %i.do = icmp eq ptr %i.dn, null
  %or.cond.i.i110 = or i1 %.not.i11.i109, %i.do
  br i1 %or.cond.i.i110, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit115, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.dn) #30, !inline_history !3475
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit115

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit115: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.not47 = icmp eq ptr %.0.i108, null
  br i1 %.not47, label %.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit115.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit115.thread: ; preds = %bb.r, %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.i106, %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit115, %bb.q
  %.042 = phi ptr [ %.0.i108, %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit115 ], [ null, %bb.q ], [ %i.ce, %_ZN12_GLOBAL__N_129CurrentInstantiationRebuilder18AlreadyTransformedEN5clang8QualTypeE.exit.i106 ], [ %i.ce, %bb.r ] ; 7 uses
  %i.dp = and i64 %i.o, -2
  %i.dq = inttoptr i64 %i.dp to ptr               ; 4 uses
  %.sroa.0.0.copyload.i58 = load i32, ptr %i.j, align 4, !tbaa !58 ; 2 uses
  %i.dr = load i8, ptr %i.k, align 8
  %i.ds = trunc i8 %i.dr to i1                    ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i59 = load i32, ptr %i.dt, align 8, !tbaa !58 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i60 = load i32, ptr %i.du, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.065.2, ptr %8, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.7.2, ptr %.sroa.2.0..sroa_idx, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i61 = load i64, ptr %i.dv, align 8, !tbaa !843
  %i.dw = and i64 %.sroa.0.0.copyload.i.i61, -16
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !843
  %i.ea = load i24, ptr %i.dq, align 8
  %i.eb = and i24 %i.ea, 65536
  %.not70.i = icmp eq i24 %i.eb, 0
  br i1 %.not70.i, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit115.thread
  %i.ec = and i64 %.sroa.065.2, 4
  %.not.i.i.i.i.i.i63 = icmp eq i64 %i.ec, 0      ; 2 uses
  %i.ed = and i64 %.sroa.065.2, -5                ; 2 uses
  %i.ee = inttoptr i64 %i.ed to ptr               ; 2 uses
  %.not71.i = icmp eq i64 %i.ed, 0
  %.not.i = or i1 %.not.i.i.i.i.i.i63, %.not71.i
  br i1 %.not.i, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %bb.y
  %i.ef = and i64 %i.dz, -16
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load ptr, ptr %i.eg, align 16, !tbaa !888 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i8, ptr %i.ei, align 16            ; 2 uses
  br i1 %i.ds, label %.critedge45.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ek = icmp eq i8 %i.ej, 49
  br i1 %i.ek, label %.critedge2.i, label %.critedge.i

.critedge45.i:                                    ; preds = %bb.z
  %i.el = icmp eq i8 %i.ej, 40
  br i1 %i.el, label %bb.ab, label %.critedge2.i

bb.ab:                                            ; preds = %.critedge45.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %.sroa.0.0.copyload.i49.i = load i64, ptr %i.em, align 16, !tbaa !843
  %i.en = and i64 %.sroa.0.0.copyload.i49.i, -16
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = load ptr, ptr %i.eo, align 16, !tbaa !888
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.eq, align 8, !tbaa !843
  %i.er = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = load ptr, ptr %i.es, align 16, !tbaa !888 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load i8, ptr %i.eu, align 16
  %i.ew = icmp ne i8 %i.ev, 49
  %.not4272.i = icmp eq ptr %i.et, null
  %.not42.i = or i1 %.not4272.i, %i.ew
  br i1 %.not42.i, label %.critedge.i, label %.critedge2.i

.critedge.i:                                      ; preds = %bb.ab, %bb.aa, %bb.y, %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE26TransformTypeInObjectScopeEPNS_14TypeSourceInfoENS_8QualTypeEPNS_9NamedDeclE.exit115.thread
  %i.ex = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.ey = select i1 %i.ds, i16 37, i16 26
  %i.ez = call i64 @_ZN5clang4Sema25BuildPseudoDestructorExprEPNS_4ExprENS_14SourceLocationENS_3tok9TokenKindERKNS_12CXXScopeSpecEPNS_14TypeSourceInfoES3_S3_NS_27PseudoDestructorTypeStorageE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ex, ptr noundef nonnull %i.dq, i32 %.sroa.0.0.copyload.i58, i16 noundef zeroext %i.ey, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %.042, i32 %.sroa.0.0.copyload.i59, i32 %.sroa.0.0.copyload.i60, ptr noundef nonnull byval(%"class.clang::PseudoDestructorTypeStorage") align 8 %8) #28
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_129CurrentInstantiationRebuilderEE30RebuildCXXPseudoDestructorExprEPNS_4ExprENS_14SourceLocationEbRNS_12CXXScopeSpecEPNS_14TypeSourceInfoES6_S6_NS_27PseudoDestructorTypeStorageE.exit

.critedge2.i:                                     ; preds = %bb.ab, %.critedge45.i, %bb.aa
  %.0.i.i.i.i.i51.i = select i1 %.not.i.i.i.i.i.i63, ptr %i.ee, ptr null
  %i.fa = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !865, !align !866
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 232
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 17800
  %.sroa.0.0.copyload.i52.i = load i64, ptr %i.ee, align 8, !tbaa !843 ; 2 uses
  %i.fe = and i64 %.sroa.0.0.copyload.i52.i, -16
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !843
  %i.fi = and i64 %.sroa.0.0.copyload.i52.i, 7
  %i.fj = or i64 %i.fh, %i.fi
  %i.fk = call i64 @_ZN5clang20DeclarationNameTable20getCXXDestructorNameENS_7CanQualINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(824) %i.fd, i64 %i.fj) #28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 %i.fk, ptr %4, align 8, !tbaa !867
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.7.2, ptr %i.fl, align 8, !tbaa !58
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, i64 %i.fk) #28
  store ptr %.0.i.i.i.i.i51.i, ptr %i.fm, align 8, !tbaa !843
  %.not43.i = icmp eq ptr %.042, null
  br i1 %.not43.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.critedge2.i
  %.sroa.0.0.copyload.i54.i = load i64, ptr %.042, align 8, !tbaa !843 ; 2 uses
  %i.fn = and i64 %.sroa.0.0.copyload.i54.i, -16
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !843
  %i.fr = and i64 %i.fq, -16
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load ptr, ptr %i.fs, align 16, !tbaa !888
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i8, ptr %i.fu, align 16
  %i.fw = add i8 %i.fv, -47
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.fw, 3
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.val47.i = load ptr, ptr %0, align 8, !tbaa !1925
  %i.fx = getelementptr inbounds nuw i8, ptr %.val47.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.fy = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %i.fz = inttoptr i64 %.sroa.0.0.copyload.i54.i to ptr
  store ptr %i.fz, ptr %6, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.fy, ptr %i.ga, align 8
  %i.gb = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.fx, i32 %i.gb, i32 noundef 3796) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.0.0.copyload.i58.i = load i64, ptr %.042, align 8, !tbaa !843
  store i64 %.sroa.0.0.copyload.i58.i, ptr %7, align 8
  %i.gc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_8QualTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.val46.i = load ptr, ptr %0, align 8, !tbaa !1925
  %i.gd = getelementptr inbounds nuw i8, ptr %.val46.i, i64 216
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !879, !nonnull !865, !align !866
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = lshr i32 %i.gg, 12
  %i.gi = and i32 %i.gh, 1
  store i32 %i.gi, ptr %i.a, align 4, !tbaa !58
end_hunk_7

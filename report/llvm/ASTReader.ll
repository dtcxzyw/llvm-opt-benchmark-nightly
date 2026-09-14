Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReader?download=true
inline.NumInlined: 33820
inline.NumDeleted: 13736
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN5clang9ASTReader19ReadKnownNamespacesERN4llvm15SmallVectorImplIPNS_13NamespaceDeclEEE:bb.a
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !1146

bb.d:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang13NamespaceDeclENS1_4DeclEEEDaPT0_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang13NamespaceDeclENS1_4DeclEEEDaPT0_.exit
  %i.p = zext i32 %i.n to i64
  %i.q = load ptr, ptr %1, align 8, !tbaa !872
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  store ptr %i.i, ptr %i.r, align 1
  %i.s = load i32, ptr %i.a, align 8, !tbaa !873
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.a, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !49
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn24_N5clang9ASTReader19ReadKnownNamespacesERN4llvm15SmallVectorImplIPNS_13NamespaceDeclEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) initializes((8, 12)) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !873
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8856
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.e = load i32, ptr %i.d, align 8, !tbaa !873  ; 2 uses
  %.not12.i = icmp eq i32 %i.e, 0
  br i1 %.not12.i, label %_ZN5clang9ASTReader19ReadKnownNamespacesERN4llvm15SmallVectorImplIPNS_13NamespaceDeclEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = zext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit.i ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !872
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8
  %i.j = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.a, i64 %.sroa.0.0.copyload.i) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 127
  %i.n = icmp eq i32 %i.m, 78
  br i1 %i.n, label %_ZN4llvm16dyn_cast_or_nullIN5clang13NamespaceDeclENS1_4DeclEEEDaPT0_.exit.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit.i

_ZN4llvm16dyn_cast_or_nullIN5clang13NamespaceDeclENS1_4DeclEEEDaPT0_.exit.i: ; preds = %bb.c
  %i.o = load i32, ptr %i.b, align 8, !tbaa !873  ; 2 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !874
  %.not.i.i = icmp ult i32 %i.o, %i.p
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !1146

bb.d:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang13NamespaceDeclENS1_4DeclEEEDaPT0_.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit.i

bb.e:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang13NamespaceDeclENS1_4DeclEEEDaPT0_.exit.i
  %i.q = zext i32 %i.o to i64
  %i.r = load ptr, ptr %1, align 8, !tbaa !872
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  store ptr %i.j, ptr %i.s, align 1
  %i.t = load i32, ptr %i.b, align 8, !tbaa !873
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.b, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.g
  br i1 %.not.i, label %_ZN5clang9ASTReader19ReadKnownNamespacesERN4llvm15SmallVectorImplIPNS_13NamespaceDeclEEE.exit, label %bb.b, !llvm.loop !49

_ZN5clang9ASTReader19ReadKnownNamespacesERN4llvm15SmallVectorImplIPNS_13NamespaceDeclEEE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang9ASTReader20ReadUndefinedButUsedERN4llvm9MapVectorIPNS_9NamedDeclENS_14SourceLocationENS1_8DenseMapIS4_jNS1_12DenseMapInfoIS4_vEENS1_6detail12DenseMapPairIS4_jEEEENS1_11SmallVectorISt4pairIS4_S5_ELj0EEELj0EEE(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.4422", align 8   ; 4 uses
  %3 = alloca %"class.std::tuple.4425", align 8   ; 4 uses
  %4 = alloca %"struct.std::pair.2749", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8928
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8936 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !873  ; 2 uses
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = zext i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm9MapVectorIPN5clang9NamedDeclENS1_14SourceLocationENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S4_ELj0EEELj0EE6insertEOSE_.exit, %bb.a
  store i32 0, ptr %i.b, align 8, !tbaa !873
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm9MapVectorIPN5clang9NamedDeclENS1_14SourceLocationENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S4_ELj0EEELj0EE6insertEOSE_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm9MapVectorIPN5clang9NamedDeclENS1_14SourceLocationENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S4_ELj0EEELj0EE6insertEOSE_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !872
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.i, align 8
  %i.j = call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %0, i64 %.sroa.02.0.copyload)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !5607
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %i.j, ptr %4, align 8
  store i32 %i.l, ptr %.sroa.2.0..sroa_idx, align 8
  %i.m = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9NamedDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(12) %4), !noalias !5608 ; 2 uses
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.m, 1
  %i.n = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.n, label %bb.c, label %_ZN4llvm9MapVectorIPN5clang9NamedDeclENS1_14SourceLocationENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S4_ELj0EEELj0EE6insertEOSE_.exit

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i8 } %i.m, 0
  %i.o = load i32, ptr %i.e, align 8, !tbaa !873  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !5610
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %4, ptr %2, align 8, !tbaa !2915, !alias.scope !5611
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %.sroa.2.0..sroa_idx, ptr %3, align 8, !tbaa !2916, !alias.scope !5612
  %i.q = load i32, ptr %i.f, align 4, !tbaa !874
  %.not.i.i.i = icmp ult i32 %i.o, %i.q
  br i1 %.not.i.i.i, label %bb.e, label %bb.d, !prof !1146

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang9NamedDeclENS2_14SourceLocationEELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESC_IJOS5_EEEEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt4pairIPN5clang9NamedDeclENS2_14SourceLocationEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESC_IJOS5_EEEEERS6_DpOT_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.o to i64
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !872
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.s ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !1997
  store ptr %i.v, ptr %i.u, align 8, !tbaa !5614
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !952
  store i32 %i.x, ptr %i.w, align 8, !tbaa !952
  %i.y = load i32, ptr %i.e, align 8, !tbaa !873
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.e, align 8, !tbaa !873
  br label %_ZN4llvm15SmallVectorImplISt4pairIPN5clang9NamedDeclENS2_14SourceLocationEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESC_IJOS5_EEEEERS6_DpOT_.exit.i.i

_ZN4llvm15SmallVectorImplISt4pairIPN5clang9NamedDeclENS2_14SourceLocationEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESC_IJOS5_EEEEERS6_DpOT_.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZN4llvm9MapVectorIPN5clang9NamedDeclENS1_14SourceLocationENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S4_ELj0EEELj0EE6insertEOSE_.exit

_ZN4llvm9MapVectorIPN5clang9NamedDeclENS1_14SourceLocationENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S4_ELj0EEELj0EE6insertEOSE_.exit: ; preds = %bb.b, %_ZN4llvm15SmallVectorImplISt4pairIPN5clang9NamedDeclENS2_14SourceLocationEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESC_IJOS5_EEEEERS6_DpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5605
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn24_N5clang9ASTReader20ReadUndefinedButUsedERN4llvm9MapVectorIPNS_9NamedDeclENS_14SourceLocationENS1_8DenseMapIS4_jNS1_12DenseMapInfoIS4_vEENS1_6detail12DenseMapPairIS4_jEEEENS1_11SmallVectorISt4pairIS4_S5_ELj0EEELj0EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN5clang9ASTReader20ReadUndefinedButUsedERN4llvm9MapVectorIPNS_9NamedDeclENS_14SourceLocationENS1_8DenseMapIS4_jNS1_12DenseMapInfoIS4_vEENS1_6detail12DenseMapPairIS4_jEEEENS1_11SmallVectorISt4pairIS4_S5_ELj0EEELj0EEE(ptr noundef nonnull align 8 dereferenceable(16376) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang9ASTReader32ReadMismatchingDeleteExpressionsERN4llvm9MapVectorIPNS_9FieldDeclENS1_11SmallVectorISt4pairINS_14SourceLocationEbELj4EEENS1_8DenseMapIS4_jNS1_12DenseMapInfoIS4_vEENS1_6detail12DenseMapPairIS4_jEEEENS5_IS6_IS4_S9_ELj0EEELj0EEE(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.4447", align 8   ; 4 uses
  %3 = alloca %"class.std::tuple.4141", align 1   ; 3 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9072 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9080
  %i.d = load i32, ptr %i.c, align 8, !tbaa !873  ; 2 uses
  %.not25 = icmp eq i32 %i.d, 0
  br i1 %.not25, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  br label %bb.b

._crit_edge29:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph28, %._crit_edge
  %.026 = phi i32 [ 0, %.lr.ph28 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.k = add i32 %.026, 1
  %i.l = zext i32 %.026 to i64
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !872
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8, !tbaa !167
  %i.p = call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %0, i64 %i.o)
  store ptr %i.p, ptr %i.a, align 8, !tbaa !2918
  %i.q = zext i32 %i.k to i64
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !872
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !167  ; 2 uses
  %.121 = add i32 %.026, 2                        ; 2 uses
  %.not30 = icmp eq i64 %i.t, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationEbELb1EE9push_backES4_.exit, %bb.b
  %.1.lcssa = phi i32 [ %.121, %bb.b ], [ %.1, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationEbELb1EE9push_backES4_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not = icmp eq i32 %.1.lcssa, %i.d
  br i1 %.not, label %._crit_edge29, label %bb.b, !llvm.loop !5615

.lr.ph:                                           ; preds = %bb.b, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationEbELb1EE9push_backES4_.exit
  %.1.in23 = phi i32 [ %.1, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationEbELb1EE9push_backES4_.exit ], [ %.121, %bb.b ] ; 3 uses
  %.01022 = phi i64 [ %i.eu, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationEbELb1EE9push_backES4_.exit ], [ 0, %bb.b ]
  %i.u = add i32 %.1.in23, 1
  %i.v = zext i32 %.1.in23 to i64
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !872  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !167
  %i.z = zext i32 %i.u to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !167
  %.not18 = icmp eq i64 %i.ab, 0
  %i.ac = load ptr, ptr %1, align 8, !tbaa !2919, !noalias !5632 ; 3 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !2920, !noalias !5632 ; 3 uses
  %i.ae = load i32, ptr %i.f, align 4, !tbaa !2921, !noalias !5632 ; 4 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ag = add i32 %i.ae, -1                       ; 2 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !2918, !noalias !5633 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.ag, %i.am                    ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !952, !noalias !5633
  %i.at = and i32 %i.an, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph.i.i, label %.loopexit.i, !prof !1857

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %i.aw = phi ptr [ %i.bc, %bb.d ], [ %i.ap, %bb.c ] ; 2 uses
  %.024.i.i = phi i32 [ %i.ba, %bb.d ], [ %i.an, %bb.c ]
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2918, !noalias !5633
  %i.ay = icmp eq ptr %i.ah, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.d, !prof !1146

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.az = add nuw i32 %.024.i.i, 1
  %i.ba = and i32 %i.az, %i.ag                    ; 3 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.bb ; 2 uses
  %i.bd = lshr i64 %i.bb, 5
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !952, !noalias !5633
  %i.bg = and i32 %i.ba, 31
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = trunc i32 %i.bh to i1
  br i1 %i.bi, label %.lr.ph.i.i, label %.loopexit.i, !prof !1858, !llvm.loop !5624

.loopexit.i:                                      ; preds = %bb.d, %bb.c, %.lr.ph
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.ap, %bb.c ], [ null, %.lr.ph ], [ %i.bc, %bb.d ]
  %i.bj = load i32, ptr %i.h, align 8, !tbaa !2922, !noalias !5633
  %i.bk = shl i32 %i.bj, 2
  %i.bl = add i32 %i.bk, 4
  %i.bm = mul i32 %i.ae, 3
  %.not.i.i = icmp ult i32 %i.bl, %i.bm
  br i1 %.not.i.i, label %.loopexit.i..loopexit_crit_edge, label %bb.e, !prof !1146

.loopexit.i..loopexit_crit_edge:                  ; preds = %.loopexit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !2918, !noalias !5633
  br label %.loopexit

bb.e:                                             ; preds = %.loopexit.i
  %i.bn = shl i32 %i.ae, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9FieldDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.bn), !noalias !5633
  %i.bo = load ptr, ptr %1, align 8, !tbaa !2919, !noalias !5634 ; 5 uses
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !2920, !noalias !5634 ; 5 uses
  %i.bq = load i32, ptr %i.f, align 4, !tbaa !2921, !noalias !5634 ; 2 uses
  %i.br = icmp ne i32 %i.bq, 0
  call void @llvm.assume(i1 %i.br)
  %i.bs = add i32 %i.bq, -1                       ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !2918, !noalias !5633 ; 5 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = mul i64 %i.bu, -4658895280553007687     ; 2 uses
  %i.bw = lshr i64 %i.bv, 31
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = trunc i64 %i.bx to i32
  %i.bz = and i32 %i.bs, %i.by                    ; 3 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.ca ; 2 uses
  %i.cc = lshr i64 %i.ca, 5
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !952, !noalias !5633
  %i.cf = and i32 %i.bz, 31
  %i.cg = lshr i32 %i.ce, %i.cf
  %i.ch = trunc i32 %i.cg to i1
  br i1 %i.ch, label %.lr.ph.i, label %.loopexit, !prof !1857

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %i.ci = phi ptr [ %i.co, %bb.f ], [ %i.cb, %bb.e ] ; 2 uses
  %.024.i = phi i32 [ %i.cm, %bb.f ], [ %i.bz, %bb.e ]
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2918, !noalias !5633
  %i.ck = icmp eq ptr %i.bt, %i.cj
  br i1 %i.ck, label %.loopexit, label %bb.f, !prof !1146

bb.f:                                             ; preds = %.lr.ph.i
  %i.cl = add nuw i32 %.024.i, 1
  %i.cm = and i32 %i.cl, %i.bs                    ; 3 uses
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.cn ; 2 uses
  %i.cp = lshr i64 %i.cn, 5
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !952, !noalias !5633
  %i.cs = and i32 %i.cm, 31
  %i.ct = lshr i32 %i.cr, %i.cs
  %i.cu = trunc i32 %i.ct to i1
  br i1 %i.cu, label %.lr.ph.i, label %.loopexit, !prof !1858, !llvm.loop !5624

.loopexit:                                        ; preds = %.lr.ph.i, %bb.f, %.loopexit.i..loopexit_crit_edge, %bb.e
  %i.cv = phi ptr [ %.pre, %.loopexit.i..loopexit_crit_edge ], [ %i.bt, %bb.e ], [ %i.bt, %bb.f ], [ %i.bt, %.lr.ph.i ]
  %i.cw = phi ptr [ %i.ac, %.loopexit.i..loopexit_crit_edge ], [ %i.bo, %bb.e ], [ %i.bo, %bb.f ], [ %i.bo, %.lr.ph.i ]
  %i.cx = phi ptr [ %i.ad, %.loopexit.i..loopexit_crit_edge ], [ %i.bp, %bb.e ], [ %i.bp, %bb.f ], [ %i.bp, %.lr.ph.i ]
  %i.cy = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i..loopexit_crit_edge ], [ %i.cb, %bb.e ], [ %i.ci, %.lr.ph.i ], [ %i.co, %bb.f ] ; 3 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 4                 ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  %i.de = and i32 %i.dd, 31
  %i.df = shl nuw i32 1, %i.de
  %i.dg = lshr i64 %i.dc, 5
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !952, !noalias !5633
  %i.dj = or i32 %i.df, %i.di
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !952, !noalias !5633
  %i.dk = load i32, ptr %i.h, align 8, !tbaa !2922, !noalias !5633
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.h, align 8, !tbaa !2922, !noalias !5633
  store ptr %i.cv, ptr %i.cy, align 8, !tbaa !2918, !noalias !5633
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  store i32 0, ptr %i.dm, align 8, !tbaa !952, !noalias !5633
  %i.dn = load i32, ptr %i.i, align 8, !tbaa !873 ; 3 uses
  store i32 %i.dn, ptr %i.dm, align 8, !tbaa !5636
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.a, ptr %2, align 8, !tbaa !2924, !alias.scope !5637
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.do = load i32, ptr %i.j, align 4, !tbaa !874
  %.not.i.i.i = icmp ult i32 %i.dn, %i.do
  br i1 %.not.i.i.i, label %bb.h, label %bb.g, !prof !1146

bb.g:                                             ; preds = %.loopexit
  %i.dp = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang9FieldDeclENS_11SmallVectorIS1_INS2_14SourceLocationEbELj4EEEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESF_IJEEEEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.pre.i.i = load i32, ptr %i.i, align 8, !tbaa !873
  br label %_ZN4llvm15SmallVectorImplISt4pairIPN5clang9FieldDeclENS_11SmallVectorIS1_INS2_14SourceLocationEbELj4EEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESF_IJEEEEERS9_DpOT_.exit.i.i

bb.h:                                             ; preds = %.loopexit
  %i.dq = zext i32 %i.dn to i64
  %i.dr = load ptr, ptr %i.g, align 8, !tbaa !872
  %i.ds = getelementptr inbounds nuw [56 x i8], ptr %i.dr, i64 %i.dq ; 5 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !2918
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !2931
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !872
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i32 0, ptr %i.dw, align 8, !tbaa !873
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  store i32 4, ptr %i.dx, align 4, !tbaa !874
  %i.dy = load i32, ptr %i.i, align 8, !tbaa !873
  %i.dz = add i32 %i.dy, 1                        ; 2 uses
  store i32 %i.dz, ptr %i.i, align 8, !tbaa !873
  br label %_ZN4llvm15SmallVectorImplISt4pairIPN5clang9FieldDeclENS_11SmallVectorIS1_INS2_14SourceLocationEbELj4EEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESF_IJEEEEERS9_DpOT_.exit.i.i

_ZN4llvm15SmallVectorImplISt4pairIPN5clang9FieldDeclENS_11SmallVectorIS1_INS2_14SourceLocationEbELj4EEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESF_IJEEEEERS9_DpOT_.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ea = phi i32 [ %.pre.i.i, %bb.g ], [ %i.dz, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.eb = load ptr, ptr %i.g, align 8, !tbaa !872
  %i.ec = zext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [56 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -56
  br label %_ZN4llvm9MapVectorIPN5clang9FieldDeclENS_11SmallVectorISt4pairINS1_14SourceLocationEbELj4EEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS4_IS5_IS3_S8_ELj0EEELj0EEixERKS3_.exit

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ef = load ptr, ptr %i.g, align 8, !tbaa !872
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !5636
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [56 x i8], ptr %i.ef, i64 %i.ei
  br label %_ZN4llvm9MapVectorIPN5clang9FieldDeclENS_11SmallVectorISt4pairINS1_14SourceLocationEbELj4EEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS4_IS5_IS3_S8_ELj0EEELj0EEixERKS3_.exit

_ZN4llvm9MapVectorIPN5clang9FieldDeclENS_11SmallVectorISt4pairINS1_14SourceLocationEbELj4EEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS4_IS5_IS3_S8_ELj0EEELj0EEixERKS3_.exit: ; preds = %_ZN4llvm15SmallVectorImplISt4pairIPN5clang9FieldDeclENS_11SmallVectorIS1_INS2_14SourceLocationEbELj4EEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESF_IJEEEEERS9_DpOT_.exit.i.i, %bb.i
  %.sroa.09.0.i.i = phi ptr [ %i.ee, %_ZN4llvm15SmallVectorImplISt4pairIPN5clang9FieldDeclENS_11SmallVectorIS1_INS2_14SourceLocationEbELj4EEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESF_IJEEEEERS9_DpOT_.exit.i.i ], [ %i.ej, %bb.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8 ; 2 uses
  %.sroa.2.0.insert.shift.i = select i1 %.not18, i64 0, i64 4294967296
  %.sroa.0.0.insert.ext.i = and i64 %i.y, 4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16 ; 3 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !873 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 20
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !874
  %.not.i = icmp ult i32 %i.em, %i.eo
  br i1 %.not.i, label %bb.k, label %bb.j, !prof !1146

bb.j:                                             ; preds = %_ZN4llvm9MapVectorIPN5clang9FieldDeclENS_11SmallVectorISt4pairINS1_14SourceLocationEbELj4EEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS4_IS5_IS3_S8_ELj0EEELj0EEixERKS3_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationEbELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 %.sroa.0.0.insert.insert.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationEbELb1EE9push_backES4_.exit

bb.k:                                             ; preds = %_ZN4llvm9MapVectorIPN5clang9FieldDeclENS_11SmallVectorISt4pairINS1_14SourceLocationEbELj4EEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS4_IS5_IS3_S8_ELj0EEELj0EEixERKS3_.exit
  %i.ep = zext i32 %i.em to i64
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !872
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ep
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.er, align 1
  %i.es = load i32, ptr %i.el, align 8, !tbaa !873
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.el, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationEbELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationEbELb1EE9push_backES4_.exit: ; preds = %bb.j, %bb.k
  %i.eu = add nuw i64 %.01022, 1                  ; 2 uses
  %.1 = add i32 %.1.in23, 2                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.eu, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5631
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn24_N5clang9ASTReader32ReadMismatchingDeleteExpressionsERN4llvm9MapVectorIPNS_9FieldDeclENS1_11SmallVectorISt4pairINS_14SourceLocationEbELj4EEENS1_8DenseMapIS4_jNS1_12DenseMapInfoIS4_vEENS1_6detail12DenseMapPairIS4_jEEEENS5_IS6_IS4_S9_ELj0EEELj0EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN5clang9ASTReader32ReadMismatchingDeleteExpressionsERN4llvm9MapVectorIPNS_9FieldDeclENS1_11SmallVectorISt4pairINS_14SourceLocationEbELj4EEENS1_8DenseMapIS4_jNS1_12DenseMapInfoIS4_vEENS1_6detail12DenseMapPairIS4_jEEEENS5_IS6_IS4_S9_ELj0EEELj0EEE(ptr noundef nonnull align 8 dereferenceable(16376) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang9ASTReader24ReadTentativeDefinitionsERN4llvm15SmallVectorImplIPNS_7VarDeclEEE(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5216 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !873  ; 2 uses
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = zext i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit, %bb.a
  store i32 0, ptr %i.b, align 8, !tbaa !873
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit ] ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !872
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %.sroa.0.0.copyload = load i64, ptr %i.h, align 8
  %i.i = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %0, i64 %.sroa.0.0.copyload) ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 127
  %i.m = add nsw i32 %i.l, -41
  %i.n = icmp ult i32 %i.m, 7
  br i1 %i.n, label %_ZN4llvm16dyn_cast_or_nullIN5clang7VarDeclENS1_4DeclEEEDaPT0_.exit, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit

_ZN4llvm16dyn_cast_or_nullIN5clang7VarDeclENS1_4DeclEEEDaPT0_.exit: ; preds = %bb.c
  %i.o = load i32, ptr %i.d, align 8, !tbaa !873  ; 2 uses
  %i.p = load i32, ptr %i.e, align 4, !tbaa !874
  %.not.i = icmp ult i32 %i.o, %i.p
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !1146

bb.d:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang7VarDeclENS1_4DeclEEEDaPT0_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang7VarDeclENS1_4DeclEEEDaPT0_.exit
  %i.q = zext i32 %i.o to i64
  %i.r = load ptr, ptr %1, align 8, !tbaa !872
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  store ptr %i.i, ptr %i.s, align 1
  %i.t = load i32, ptr %i.d, align 8, !tbaa !873
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.d, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !50
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn24_N5clang9ASTReader24ReadTentativeDefinitionsERN4llvm15SmallVectorImplIPNS_7VarDeclEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5184
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5192 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !873  ; 2 uses
  %.not11.i = icmp eq i32 %i.d, 0
  br i1 %.not11.i, label %_ZN5clang9ASTReader24ReadTentativeDefinitionsERN4llvm15SmallVectorImplIPNS_7VarDeclEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i ] ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !872
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8
  %i.j = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.a, i64 %.sroa.0.0.copyload.i) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 127
  %i.n = add nsw i32 %i.m, -41
  %i.o = icmp ult i32 %i.n, 7
  br i1 %i.o, label %_ZN4llvm16dyn_cast_or_nullIN5clang7VarDeclENS1_4DeclEEEDaPT0_.exit.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i

_ZN4llvm16dyn_cast_or_nullIN5clang7VarDeclENS1_4DeclEEEDaPT0_.exit.i: ; preds = %bb.c
  %i.p = load i32, ptr %i.e, align 8, !tbaa !873  ; 2 uses
  %i.q = load i32, ptr %i.f, align 4, !tbaa !874
  %.not.i.i = icmp ult i32 %i.p, %i.q
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !1146

bb.d:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang7VarDeclENS1_4DeclEEEDaPT0_.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i

bb.e:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang7VarDeclENS1_4DeclEEEDaPT0_.exit.i
  %i.r = zext i32 %i.p to i64
  %i.s = load ptr, ptr %1, align 8, !tbaa !872
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  store ptr %i.j, ptr %i.t, align 1
  %i.u = load i32, ptr %i.e, align 8, !tbaa !873
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.e, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.g
  br i1 %.not.i, label %_ZN5clang9ASTReader24ReadTentativeDefinitionsERN4llvm15SmallVectorImplIPNS_7VarDeclEEE.exit, label %bb.b, !llvm.loop !50

_ZN5clang9ASTReader24ReadTentativeDefinitionsERN4llvm15SmallVectorImplIPNS_7VarDeclEEE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i, %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !873
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang9ASTReader25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIPKNS_14DeclaratorDeclEEE(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6456
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6464 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !873  ; 2 uses
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = zext i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14DeclaratorDeclELb1EE9push_backES4_.exit, %bb.a
  store i32 0, ptr %i.b, align 8, !tbaa !873
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14DeclaratorDeclELb1EE9push_backES4_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14DeclaratorDeclELb1EE9push_backES4_.exit ] ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !872
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %.sroa.0.0.copyload = load i64, ptr %i.h, align 8
  %i.i = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %0, i64 %.sroa.0.0.copyload) ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14DeclaratorDeclELb1EE9push_backES4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 127
  %i.m = add nsw i32 %i.l, -35
  %i.n = icmp ult i32 %i.m, 18
  br i1 %i.n, label %_ZN4llvm16dyn_cast_or_nullIN5clang14DeclaratorDeclENS1_4DeclEEEDaPT0_.exit, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14DeclaratorDeclELb1EE9push_backES4_.exit

_ZN4llvm16dyn_cast_or_nullIN5clang14DeclaratorDeclENS1_4DeclEEEDaPT0_.exit: ; preds = %bb.c
  %i.o = load i32, ptr %i.d, align 8, !tbaa !873  ; 2 uses
  %i.p = load i32, ptr %i.e, align 4, !tbaa !874
  %.not.i = icmp ult i32 %i.o, %i.p
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !1146

bb.d:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang14DeclaratorDeclENS1_4DeclEEEDaPT0_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14DeclaratorDeclELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14DeclaratorDeclELb1EE9push_backES4_.exit

bb.e:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang14DeclaratorDeclENS1_4DeclEEEDaPT0_.exit
  %i.q = zext i32 %i.o to i64
  %i.r = load ptr, ptr %1, align 8, !tbaa !872
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  store ptr %i.i, ptr %i.s, align 1
  %i.t = load i32, ptr %i.d, align 8, !tbaa !873
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.d, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14DeclaratorDeclELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKN5clang14DeclaratorDeclELb1EE9push_backES4_.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !51
}

; Function Attrs: nounwind uwtable
end_hunk_0

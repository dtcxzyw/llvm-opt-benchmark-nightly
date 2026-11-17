Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDeclCXX?download=true
inline.NumInlined: 22648
inline.NumDeleted: 9795
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZL24CheckConstexprReturnTypeRN5clang4SemaEPKNS_12FunctionDeclENS0_18CheckConstexprKindE:bb.a
  %i.q = and i64 %.sroa.0.0.copyload.i1.i, -16
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !98  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 17
  %i.u = load i16, ptr %i.t, align 1
  %i.v = and i16 %i.u, 4
  %.not.i = icmp eq i16 %i.v, 0
  br i1 %.not.i, label %bb.c, label %_ZL16CheckLiteralTypeIJbEEbRN5clang4SemaENS1_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit

bb.c:                                             ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit
  %i.w = icmp eq i32 %2, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang4Sema18BoundTypeDiagnoserIJbEEE, i64 16), ptr %3, align 8, !tbaa !1195
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3519, ptr %i.x, align 8, !tbaa !1498
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.y, align 8, !tbaa !1499
  %i.z = call noundef zeroext i1 @_ZN5clang4Sema18RequireLiteralTypeENS_14SourceLocationENS_8QualTypeERNS0_13TypeDiagnoserE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i1.i, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.aa = xor i1 %i.z, true
  br label %_ZL16CheckLiteralTypeIJbEEbRN5clang4SemaENS1_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.ad = tail call noundef zeroext i1 @_ZNK5clang4Type13isLiteralTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(23904) %i.ac) #26
  br label %_ZL16CheckLiteralTypeIJbEEbRN5clang4SemaENS1_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit

_ZL16CheckLiteralTypeIJbEEbRN5clang4SemaENS1_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit: ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.ad, %bb.e ], [ %i.aa, %bb.d ], [ true, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang13CXXRecordDecl30defaultedDestructorIsConstexprEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1478 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 1
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.e, i64 %i.f, i64 0 ; 3 uses
  %i.g = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18624
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1288 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1289 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1290
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !1289
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1292
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !1293
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !1294
  %i.x = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.y = ptrtoint ptr %i.b to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  %i.z = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.z, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i, %bb.a
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.a ] ; 2 uses
  %i.aa = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  %.not.not.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1293
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1292 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1297 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !1293
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !1195
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !107
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !107
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #26, !inline_history !12
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1476
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ao, 16
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang13CXXRecordDecl4dataEv.exit
  %i.aq = tail call noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang4Decl11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #27
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = and i64 %i.ar, 65536
  %i.at = icmp ne i64 %i.as, 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK5clang13CXXRecordDecl4dataEv.exit
  %i.au = phi i1 [ false, %_ZNK5clang13CXXRecordDecl4dataEv.exit ], [ %i.at, %bb.l ]
  ret i1 %i.au
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL28CheckConstexprParameterTypesRN5clang4SemaEPKNS_12FunctionDeclENS0_18CheckConstexprKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.clang::Sema::BoundTypeDiagnoser.2452", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %4 = alloca %"class.clang::SourceRange", align 8 ; 8 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !92
  %i.e = and i64 %.sroa.0.0.copyload.i, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !98  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i8, ptr %i.h, align 16
  %.not.i = icmp eq i8 %i.i, 24
  br i1 %.not.i, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.g) #26
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.1.i, i64 48 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.m = load i64, ptr %i.l, align 16
  %i.n = lshr i64 %i.m, 45
  %.idx = and i64 %i.n, 524280                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 2 uses
  %.not27 = icmp samesign eq i64 %.idx, 0
  br i1 %.not27, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.s = icmp eq i32 %2, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  br i1 %i.s, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %.02128.us = phi ptr [ %i.aw, %bb.c ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !1282
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv37
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1167 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.0.0.copyload.i22.us = load i32, ptr %i.ac, align 8, !tbaa !116
  %.sroa.0.0.copyload.us = load i64, ptr %.02128.us, align 8, !tbaa !92 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %5 = trunc nuw nsw i64 %indvars.iv.next38 to i32
  store i32 %5, ptr %i.a, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !1195
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call i64 %i.af(ptr noundef nonnull align 8 dereferenceable(104) %i.ab) #27
  store i64 %i.ag, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ah = load i32, ptr %i.q, align 4
  %i.ai = and i32 %i.ah, 127
  %i.aj = icmp eq i32 %i.ai, 39
  %i.ak = zext i1 %i.aj to i8
  store i8 %i.ak, ptr %i.b, align 1, !tbaa !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.al = load i16, ptr %i.r, align 4
  %i.am = and i16 %i.al, 3
  %i.an = icmp eq i16 %i.am, 2
  %i.ao = zext i1 %i.an to i8
  store i8 %i.ao, ptr %i.c, align 1, !tbaa !1283
  %i.ap = and i64 %.sroa.0.0.copyload.us, -16
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 17
  %i.at = load i16, ptr %i.as, align 1
  %i.au = and i16 %i.at, 4
  %.not.i23.us = icmp eq i16 %i.au, 0
  br i1 %.not.i23.us, label %_ZL16CheckLiteralTypeIJjN5clang11SourceRangeEbbEEbRNS0_4SemaENS2_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit.us, label %_ZL16CheckLiteralTypeIJjN5clang11SourceRangeEbbEEbRNS0_4SemaENS2_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit.thread.us

_ZL16CheckLiteralTypeIJjN5clang11SourceRangeEbbEEbRNS0_4SemaENS2_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit.thread.us: ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.c

_ZL16CheckLiteralTypeIJjN5clang11SourceRangeEbbEEbRNS0_4SemaENS2_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit.us: ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang4Sema18BoundTypeDiagnoserIJjNS_11SourceRangeEbbEEE, i64 16), ptr %3, align 8, !tbaa !1195
  store i32 3518, ptr %i.u, align 8, !tbaa !1534
  store ptr %i.c, ptr %i.v, align 8, !tbaa !1499
  store ptr %i.b, ptr %i.w, align 8, !tbaa !1499
  store ptr %4, ptr %i.x, align 8, !tbaa !1535
  store ptr %i.a, ptr %i.y, align 8, !tbaa !1536
  %i.av = call noundef zeroext i1 @_ZN5clang4Sema18RequireLiteralTypeENS_14SourceLocationENS_8QualTypeERNS0_13TypeDiagnoserE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i22.us, i64 %.sroa.0.0.copyload.us, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.av, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZL16CheckLiteralTypeIJjN5clang11SourceRangeEbbEEbRNS0_4SemaENS2_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit.us, %_ZL16CheckLiteralTypeIJjN5clang11SourceRangeEbbEEbRNS0_4SemaENS2_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit.thread.us
  %i.aw = getelementptr inbounds nuw i8, ptr %.02128.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.aw, %i.o
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !2405

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.02128 = phi ptr [ %i.bf, %bb.d ], [ %i.k, %.lr.ph ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.02128, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ax = and i64 %.sroa.0.0.copyload, -16
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !98 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 17
  %i.bb = load i16, ptr %i.ba, align 1
  %i.bc = and i16 %i.bb, 4
  %.not.i23 = icmp eq i16 %i.bc, 0
  br i1 %.not.i23, label %.split, label %_ZL16CheckLiteralTypeIJjN5clang11SourceRangeEbbEEbRNS0_4SemaENS2_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit.thread

_ZL16CheckLiteralTypeIJjN5clang11SourceRangeEbbEEbRNS0_4SemaENS2_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit.thread: ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.d

.split:                                           ; preds = %.lr.ph.split
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.be = tail call noundef zeroext i1 @_ZNK5clang4Type13isLiteralTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(23904) %i.bd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.be, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.split, %_ZL16CheckLiteralTypeIJjN5clang11SourceRangeEbbEEbRNS0_4SemaENS2_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %.02128, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.o
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !2405

.critedge:                                        ; preds = %bb.d, %.split, %_ZL16CheckLiteralTypeIJjN5clang11SourceRangeEbbEEbRNS0_4SemaENS2_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit.us, %bb.c, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %.not.lcssa = phi i1 [ true, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit ], [ true, %bb.c ], [ false, %_ZL16CheckLiteralTypeIJjN5clang11SourceRangeEbbEEbRNS0_4SemaENS2_18CheckConstexprKindENS0_14SourceLocationENS0_8QualTypeEjDpOT_.exit.us ], [ false, %.split ], [ true, %bb.d ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema42CheckImmediateEscalatingFunctionDefinitionEPNS_12FunctionDeclEPKNS_4sema17FunctionScopeInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !1246
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 65536
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK5clang12FunctionDecl21isImmediateEscalatingEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #26
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.j = load i16, ptr %i.i, align 4
  %i.k = lshr i32 %i.h, 18
  %i.l = trunc nuw nsw i32 %i.k to i16
  %i.m = and i16 %i.l, 4
  %i.n = and i16 %i.j, -5
  %i.o = or disjoint i16 %i.m, %i.n
  store i16 %i.o, ptr %i.i, align 4
  %i.p = load i32, ptr %i.g, align 8
  %i.q = and i32 %i.p, 1048576
  %.not10 = icmp eq i32 %i.q, 0
  br i1 %.not10, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4192
  %i.s = load ptr, ptr %1, align 8, !tbaa !1195
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(168) %1) #26 ; 2 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !2414, !noalias !2415 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4200
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2416, !noalias !2415 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4212
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !2417, !noalias !2415 ; 4 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = ptrtoint ptr %i.v to i64
  %i.ae = mul i64 %i.ad, -4658895280553007687     ; 2 uses
  %i.af = lshr i64 %i.ae, 31
  %i.ag = xor i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ac, %i.ah                    ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !116, !noalias !2418
  %i.an = and i32 %i.ai, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1165

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %i.aq = phi i64 [ %i.aw, %bb.f ], [ %i.aj, %bb.e ]
  %.017.i.i.i.i.i = phi i32 [ %i.av, %bb.f ], [ %i.ai, %bb.e ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1392, !noalias !2418
  %i.at = icmp eq ptr %i.v, %i.as
  br i1 %i.at, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9NamedDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.f, !prof !113

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.au = add nuw i32 %.017.i.i.i.i.i, 1
  %i.av = and i32 %i.au, %i.ac                    ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = lshr i64 %i.aw, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !116, !noalias !2418
  %i.ba = and i32 %i.av, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1168

.loopexit.i.i.i:                                  ; preds = %bb.f, %bb.e, %bb.d
  %i.bd = zext i32 %i.aa to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.bd
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9NamedDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9NamedDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.aa to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9NamedDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9NamedDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9NamedDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9NamedDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.bd, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ar, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang9NamedDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.be, %.loopexit.i.i.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.pre-phi.i
  %i.bg = icmp eq ptr %.lcssa.sink.i.i.i, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4224 ; 2 uses
  %.sink16.in.i = select i1 %i.bg, ptr %i.bi, ptr %i.bh
  %.sink16.i = load i32, ptr %.sink16.in.i, align 8, !tbaa !116 ; 2 uses
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGCall?download=true
inline.NumInlined: 11709
inline.NumDeleted: 6226
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK5clang13CXXRecordDecl20hasTrivialDestructorEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18624
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !908  ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !909  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !910
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !110

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !909
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !912
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !913
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !914
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !913
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !912 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !917 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !913
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !62
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !59
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !59
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #27, !inline_history !2
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !931
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 17592186044416
  %i.ap = icmp ne i64 %i.ao, 0
  ret i1 %i.ap
}

declare noundef zeroext i1 @_ZNK5clang8QualType23isTriviallyCopyableTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen40mergeDefaultFunctionDefinitionAttributesERN4llvm8FunctionERKNS_14CodeGenOptionsERKNS_11LangOptionsERKNS_13TargetOptionsEb(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2496) %1, ptr noundef nonnull align 8 dereferenceable(1136) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvm::SplittingIterator", align 8 ; 11 uses
  %6 = alloca %"class.llvm::SplittingIterator", align 8 ; 8 uses
  %7 = alloca %"class.llvm::SplittingIterator", align 8 ; 13 uses
  %8 = alloca %"class.llvm::SplittingIterator", align 8 ; 13 uses
  %9 = alloca %"class.llvm::Attribute", align 8   ; 5 uses
  %10 = alloca %"class.llvm::StringSet.807", align 8 ; 16 uses
  %11 = alloca %"class.llvm::SmallVector.1215", align 8 ; 14 uses
  %12 = alloca %"class.llvm::iterator_range.1735", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.llvm::AttrBuilder", align 8 ; 14 uses
  %15 = alloca %"class.llvm::AttributeMask", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %0) #27
  store ptr %i.a, ptr %14, align 8, !tbaa !1340
  %i.b = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 8, ptr %i.e, align 4, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1341 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1342
  %i.k = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %14, ptr nonnull @.str.2, i64 10, ptr %i.j, i64 %i.g) #27 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1341 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1342
  %i.q = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %14, ptr nonnull @.str.3, i64 8, ptr %i.p, i64 %i.m) #27 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #27 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  %i.u = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef 52) #27
  call fastcc void @_ZL35getTrivialDefaultFunctionAttributesN4llvm9StringRefEbRKN5clang14CodeGenOptionsERKNS1_11LangOptionsEbRNS_11AttrBuilderE(ptr %i.s, i64 %i.t, i1 noundef zeroext %i.u, ptr noundef nonnull align 8 dereferenceable(2496) %1, ptr noundef nonnull align 8 dereferenceable(1136) %2, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(88) %14)
  br i1 %4, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = call noundef zeroext i1 @_ZNK4llvm11GlobalValue14isInterposableEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext true) #27
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm8Function10addFnAttrsERKNS_11AttrBuilderE(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull align 8 dereferenceable(88) %14) #27
  br label %bb.ar

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %15, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !1734
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !1735
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr %i.w, ptr %i.y, align 8, !tbaa !1736
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 48
  store ptr %i.w, ptr %i.z, align 8, !tbaa !1737
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 56
  store i64 0, ptr %i.aa, align 8, !tbaa !1738
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 728
  %.sroa.04.0.copyload = load i16, ptr %i.ab, align 8, !tbaa !1344 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 730
  %.sroa.03.0.copyload = load i16, ptr %i.ac, align 2, !tbaa !1344 ; 2 uses
  %.sroa.03.0.extract.trunc.i = trunc i16 %.sroa.04.0.copyload to i8 ; 2 uses
  %.sroa.34.0.extract.shift.i = lshr i16 %.sroa.04.0.copyload, 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.03.0.copyload to i8 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i16 %.sroa.03.0.copyload, 8 ; 2 uses
  %i.ad = icmp eq i8 %.sroa.0.0.extract.trunc.i, -1
  %i.ae = select i1 %i.ad, i8 %.sroa.03.0.extract.trunc.i, i8 %.sroa.0.0.extract.trunc.i
  %i.af = icmp eq i16 %.sroa.3.0.extract.shift.i, 255
  %.v.i = select i1 %i.af, i16 %.sroa.34.0.extract.shift.i, i16 %.sroa.3.0.extract.shift.i
  %i.ag = call i32 @_ZNK4llvm8Function16getDenormalFPEnvEv(ptr noundef nonnull align 8 dereferenceable(140) %0) #27 ; 4 uses
  %.sroa.04.0.extract.trunc.i = trunc i32 %i.ag to i16
  %.sroa.2.0.extract.shift.i = lshr i32 %i.ag, 16
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.ag to i8 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i16 %.sroa.04.0.extract.trunc.i, 8 ; 2 uses
  %i.ah = icmp eq i16 %.sroa.3.0.extract.shift.i.i, 3
  %.sroa.32.0.i.i = select i1 %i.ah, i16 %.sroa.34.0.extract.shift.i, i16 %.sroa.3.0.extract.shift.i.i ; 3 uses
  %i.ai = icmp eq i8 %.sroa.0.0.extract.trunc.i.i, 3
  %.sroa.01.0.i.i = select i1 %i.ai, i8 %.sroa.03.0.extract.trunc.i, i8 %.sroa.0.0.extract.trunc.i.i ; 3 uses
  %.sroa.0.0.extract.trunc.i5.i = trunc i32 %.sroa.2.0.extract.shift.i to i8 ; 2 uses
  %sum.shift.i = lshr i32 %i.ag, 24               ; 2 uses
  %.sroa.3.0.extract.shift.i614.i = trunc nuw nsw i32 %sum.shift.i to i16
  %i.aj = icmp eq i32 %sum.shift.i, 3
  %.sroa.32.0.i7.i = select i1 %i.aj, i16 %.v.i, i16 %.sroa.3.0.extract.shift.i614.i ; 2 uses
  %i.ak = icmp eq i8 %.sroa.0.0.extract.trunc.i5.i, 3
  %.sroa.01.0.i8.i = select i1 %i.ak, i8 %i.ae, i8 %.sroa.0.0.extract.trunc.i5.i ; 2 uses
  %i.al = icmp eq i8 %.sroa.01.0.i8.i, -1
  %i.am = select i1 %i.al, i8 %.sroa.01.0.i.i, i8 %.sroa.01.0.i8.i ; 2 uses
  %i.an = icmp eq i16 %.sroa.32.0.i7.i, 255
  %.v.i.i = select i1 %i.an, i16 %.sroa.32.0.i.i, i16 %.sroa.32.0.i7.i ; 2 uses
  %.sroa.7.0.extract.trunc = zext nneg i16 %.v.i.i to i32
  %i.ao = icmp eq i8 %.sroa.01.0.i.i, 0
  %i.ap = icmp eq i16 %.sroa.32.0.i.i, 0
  %or.cond37 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond37, label %_ZNK4llvm13DenormalFPEnveqES0_.exit, label %_ZNK4llvm13DenormalFPEnveqES0_.exit.thread

_ZNK4llvm13DenormalFPEnveqES0_.exit:              ; preds = %bb.h
  %16 = icmp eq i8 %i.am, 0
  %17 = icmp eq i16 %.v.i.i, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %bb.i, label %_ZNK4llvm13DenormalFPEnveqES0_.exit.thread

bb.i:                                             ; preds = %_ZNK4llvm13DenormalFPEnveqES0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !72
  %i.as = or i64 %i.ar, 4294967296
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !72
  br label %bb.j

_ZNK4llvm13DenormalFPEnveqES0_.exit.thread:       ; preds = %bb.h, %_ZNK4llvm13DenormalFPEnveqES0_.exit
  %.sroa.7.0.insert.shift = shl nuw i32 %.sroa.7.0.extract.trunc, 24
  %.sroa.6.0.insert.ext = zext i8 %i.am to i32
  %.sroa.6.0.insert.shift = shl nuw nsw i32 %.sroa.6.0.insert.ext, 16
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.7.0.insert.shift
  %i.at = shl nuw i16 %.sroa.32.0.i.i, 8
  %.sroa.5.0.insert.shift = zext i16 %i.at to i32
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %.sroa.01.0.i.i to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.0.0.insert.ext
  %i.au = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder20addDenormalFPEnvAttrENS_13DenormalFPEnvE(ptr noundef nonnull align 8 dereferenceable(88) %14, i32 %.sroa.0.0.insert.insert) #27 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm13DenormalFPEnveqES0_.exit.thread, %bb.i
  call void @_ZN4llvm8Function13removeFnAttrsERKNS_13AttributeMaskE(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull align 8 dereferenceable(64) %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.av = call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr nonnull @.str.96, i64 15) #27 ; 2 uses
  store ptr %i.av, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, i8 0, i64 16, i1 false)
  store i32 8, ptr %i.aw, align 8, !tbaa !1345
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.ax, ptr %11, align 8, !tbaa !74
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 9 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  store i32 3, ptr %i.az, align 4, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1739
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !1740
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 5                 ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 3
  br i1 %i.bi, label %bb.k, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %i.ax, i64 noundef %i.bh, i64 noundef 16) #27
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !1742
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i: ; preds = %bb.k, %bb.j
  %i.bj = phi ptr [ %i.av, %bb.j ], [ %.pre.i, %bb.k ]
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %bb.ad, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.bk = call { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #27 ; 2 uses
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i8 44, ptr %7, align 8, !tbaa !1745, !noalias !1743
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false), !noalias !1743
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 6 uses
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !1348, !noalias !1743
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  store i64 %i.bm, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !72, !noalias !1743
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store ptr %7, ptr %i.bp, align 8, !tbaa !1349, !noalias !1743
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 1, ptr %i.bq, align 8, !tbaa !1350, !noalias !1743
  %i.br = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr nonnull align 8 dereferenceable(56) %7, i64 1, i64 noundef 0) #27, !noalias !1746 ; 3 uses
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !1348, !noalias !1743
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !72, !noalias !1743
  br label %_ZN4llvm17SplittingIteratorC2ENS_9StringRefEc.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bt = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !1350, !noalias !1746 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bt)
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !1349, !noalias !1746 ; 2 uses
  %i.bv = add nuw i64 %i.br, 1
  %.sroa.speculated4.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bv) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.speculated4.i.i.i.i.i.i
  %i.bx = sub i64 %i.bt, %.sroa.speculated4.i.i.i.i.i.i
  br label %_ZN4llvm17SplittingIteratorC2ENS_9StringRefEc.exit.i.i

_ZN4llvm17SplittingIteratorC2ENS_9StringRefEc.exit.i.i: ; preds = %bb.n, %bb.m
  %.sroa.5.0.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i, %bb.m ], [ %.sroa.speculated.i.i.i.i.i.i, %bb.n ]
  %.sroa.01.0.i.i.i.i = phi ptr [ %.sroa.01.0.copyload.i.i.i.i, %bb.m ], [ %i.bu, %bb.n ]
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.bx, %bb.n ]
  %.sroa.6.0.i.i.i.i = phi ptr [ null, %bb.m ], [ %i.bw, %bb.n ]
  store ptr %.sroa.01.0.i.i.i.i, ptr %i.bn, align 8, !tbaa !1348, !noalias !1743
  %.sroa.5.0..sroa.4.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sroa.5.0.i.i.i.i, ptr %.sroa.5.0..sroa.4.8..sroa_idx.i.i.i.i, align 8, !tbaa !72, !noalias !1743
  store ptr %.sroa.6.0.i.i.i.i, ptr %i.bo, align 8, !tbaa !1348, !noalias !1743
  store i64 %.sroa.9.0.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !72, !noalias !1743
  store i8 44, ptr %8, align 8, !tbaa !1745, !noalias !1743
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 5 uses
  %.sroa.2.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, i8 0, i64 32, i1 false), !noalias !1743
  store ptr %8, ptr %i.ca, align 8, !tbaa !1349, !noalias !1743
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 1, ptr %i.cb, align 8, !tbaa !1350, !noalias !1743
  %i.cc = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr nonnull align 8 dereferenceable(56) %8, i64 1, i64 noundef 0) #27, !noalias !1747 ; 3 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm17SplittingIteratorC2ENS_9StringRefEc.exit.i.i
  %.sroa.01.0.copyload.i.i12.i.i = load ptr, ptr %i.bz, align 8, !tbaa !1348, !noalias !1743
  %.sroa.5.0.copyload.i.i13.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i4.i.i, align 8, !tbaa !72, !noalias !1743
  br label %_ZN4llvm17SplittingIteratorC2ENS_9StringRefEc.exit14.i.i

bb.p:                                             ; preds = %_ZN4llvm17SplittingIteratorC2ENS_9StringRefEc.exit.i.i
  %i.ce = load i64, ptr %.sroa.2.0..sroa_idx.i4.i.i, align 8, !tbaa !1350, !noalias !1747 ; 3 uses
  %.sroa.speculated.i.i.i.i5.i.i = call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.ce)
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !1349, !noalias !1747 ; 2 uses
  %i.cg = add nuw i64 %i.cc, 1
  %.sroa.speculated4.i.i.i.i6.i.i = call i64 @llvm.umin.i64(i64 %i.ce, i64 %i.cg) ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.speculated4.i.i.i.i6.i.i
  %i.ci = sub i64 %i.ce, %.sroa.speculated4.i.i.i.i6.i.i
  br label %_ZN4llvm17SplittingIteratorC2ENS_9StringRefEc.exit14.i.i

_ZN4llvm17SplittingIteratorC2ENS_9StringRefEc.exit14.i.i: ; preds = %bb.p, %bb.o
  %.sroa.5.0.i.i7.i.i = phi i64 [ %.sroa.5.0.copyload.i.i13.i.i, %bb.o ], [ %.sroa.speculated.i.i.i.i5.i.i, %bb.p ]
  %.sroa.01.0.i.i8.i.i = phi ptr [ %.sroa.01.0.copyload.i.i12.i.i, %bb.o ], [ %i.cf, %bb.p ]
  %.sroa.9.0.i.i9.i.i = phi i64 [ 0, %bb.o ], [ %i.ci, %bb.p ]
  %.sroa.6.0.i.i10.i.i = phi ptr [ null, %bb.o ], [ %i.ch, %bb.p ]
  store ptr %.sroa.01.0.i.i8.i.i, ptr %i.by, align 8, !tbaa !1348, !noalias !1743
  %.sroa.5.0..sroa.4.8..sroa_idx.i.i11.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %.sroa.5.0.i.i7.i.i, ptr %.sroa.5.0..sroa.4.8..sroa_idx.i.i11.i.i, align 8, !tbaa !72, !noalias !1743
  store ptr %.sroa.6.0.i.i10.i.i, ptr %i.bz, align 8, !tbaa !1348, !noalias !1743
  store i64 %.sroa.9.0.i.i9.i.i, ptr %.sroa.2.0..sroa_idx.i4.i.i, align 8, !tbaa !72, !noalias !1743
  %i.cj = load i8, ptr %7, align 8, !tbaa !1745, !noalias !1743 ; 2 uses
  store i8 %i.cj, ptr %12, align 8, !tbaa !1745, !alias.scope !1743
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !1351
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !tbaa.struct !1351
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !1351
  %i.cn = load ptr, ptr %i.bp, align 8, !tbaa !1349, !noalias !1743
  %i.co = icmp eq ptr %i.cn, %7
  br i1 %i.co, label %bb.q, label %_ZN4llvm17SplittingIteratorC2ERKS0_.exit.i.i.i

bb.q:                                             ; preds = %_ZN4llvm17SplittingIteratorC2ENS_9StringRefEc.exit14.i.i
  store ptr %12, ptr %i.cm, align 8, !tbaa !1348, !alias.scope !1743
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !72, !alias.scope !1743
  br label %_ZN4llvm17SplittingIteratorC2ERKS0_.exit.i.i.i

_ZN4llvm17SplittingIteratorC2ERKS0_.exit.i.i.i:   ; preds = %bb.q, %_ZN4llvm17SplittingIteratorC2ENS_9StringRefEc.exit14.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  %i.cq = load i8, ptr %8, align 8, !tbaa !1745, !noalias !1743 ; 2 uses
  store i8 %i.cq, ptr %i.cp, align 8, !tbaa !1745, !alias.scope !1743
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1351
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !1351
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !1351
  %i.cu = load ptr, ptr %i.ca, align 8, !tbaa !1349, !noalias !1743
  %i.cv = icmp eq ptr %i.cu, %8
  br i1 %i.cv, label %bb.r, label %_ZN4llvm5splitENS_9StringRefEc.exit.i

bb.r:                                             ; preds = %_ZN4llvm17SplittingIteratorC2ERKS0_.exit.i.i.i
  store ptr %i.cp, ptr %i.ct, align 8, !tbaa !1348, !alias.scope !1743
  %.sroa.4.0..sroa_idx.i1.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 104
  store i64 1, ptr %.sroa.4.0..sroa_idx.i1.i.i.i, align 8, !tbaa !72, !alias.scope !1743
  br label %_ZN4llvm5splitENS_9StringRefEc.exit.i

_ZN4llvm5splitENS_9StringRefEc.exit.i:            ; preds = %bb.r, %_ZN4llvm17SplittingIteratorC2ERKS0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  store i8 %i.cj, ptr %5, align 8, !tbaa !1745, !alias.scope !1748
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !1351
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !1351
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !1351
  %i.cz = load ptr, ptr %i.cm, align 8, !tbaa !1349, !noalias !1748
  %i.da = icmp eq ptr %i.cz, %12
  br i1 %i.da, label %bb.s, label %_ZNK4llvm14iterator_rangeINS_17SplittingIteratorEE5beginEv.exit.i.i

bb.s:                                             ; preds = %_ZN4llvm5splitENS_9StringRefEc.exit.i
  store ptr %5, ptr %i.cy, align 8, !tbaa !1348, !alias.scope !1748
  %.sroa.4.0..sroa_idx.i.i.i8.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i8.i, align 8, !tbaa !72, !alias.scope !1748
  br label %_ZNK4llvm14iterator_rangeINS_17SplittingIteratorEE5beginEv.exit.i.i

_ZNK4llvm14iterator_rangeINS_17SplittingIteratorEE5beginEv.exit.i.i: ; preds = %bb.s, %_ZN4llvm5splitENS_9StringRefEc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  store i8 %i.cq, ptr %6, align 8, !tbaa !1745, !alias.scope !1749
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZL35getTrivialDefaultFunctionAttributesN4llvm9StringRefEbRKN5clang14CodeGenOptionsERKNS1_11LangOptionsEbRNS_11AttrBuilderE:bb.a
bb.av:                                            ; preds = %bb.aq
  %i.eg = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr nonnull @.str.12, i64 19, ptr nonnull @.str.86, i64 4) #27 ; 0 uses
  br label %bb.ba

bb.aw:                                            ; preds = %bb.aq
  %i.eh = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr nonnull @.str.12, i64 19, ptr nonnull @.str.87, i64 11) #27 ; 0 uses
  br label %bb.ba

bb.ax:                                            ; preds = %bb.aq
  %i.ei = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr nonnull @.str.12, i64 19, ptr nonnull @.str.88, i64 7) #27 ; 0 uses
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aq
  %i.ej = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr nonnull @.str.12, i64 19, ptr nonnull @.str.89, i64 7) #27 ; 0 uses
  br label %bb.ba

bb.az:                                            ; preds = %bb.aq
  %i.ek = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr nonnull @.str.12, i64 19, ptr nonnull @.str.90, i64 3) #27 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.p, %bb.q
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.em = load i64, ptr %i.el, align 8
  %i.en = and i64 %i.em, 1099511627776
  %.not233 = icmp eq i64 %i.en, 0
  br i1 %.not233, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eo = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %6, i32 noundef 6) #27 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = and i64 %i.eq, 137438953472
  %.not95 = icmp eq i64 %i.er, 0
  br i1 %.not95, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = and i64 %i.et, 70368744177664
  %.not96 = icmp eq i64 %i.eu, 0
  br i1 %.not96, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = and i64 %i.ew, 4611686018427387904
  %.not97 = icmp eq i64 %i.ex, 0
  br i1 %.not97, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = and i64 %i.ez, 68719476736
  %.not98 = icmp eq i64 %i.fa, 0
  br i1 %.not98, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.fb = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %6, i32 noundef 45) #27 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = and i64 %i.fd, 8796093022208
  %i.ff = icmp eq i64 %i.fe, 0
  %or.cond = or i1 %5, %i.ff
  br i1 %or.cond, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fg = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr nonnull @.str.91, i64 15, ptr null, i64 0) #27 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 2000
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1356 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 2008
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1356 ; 2 uses
  %.not234235 = icmp eq ptr %i.fi, %i.fk
  br i1 %.not234235, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bj
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  br label %bb.bk

._crit_edge:                                      ; preds = %_ZNK4llvm9StringRef5splitEc.exit, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.fn = load i16, ptr %i.fm, align 8            ; 2 uses
  %i.fo = and i16 %i.fn, 24576                    ; 2 uses
  %.not.i135 = icmp eq i16 %i.fo, 0
  %i.fp = icmp eq i16 %i.fo, 16384
  %i.fq = select i1 %i.fp, i32 2, i32 1
  %i.fr = select i1 %.not.i135, i32 0, i32 %i.fq
  store i32 %i.fr, ptr %10, align 4, !tbaa !1763
  %.lobit.i = lshr i16 %i.fn, 15
  %i.fs = zext nneg i16 %.lobit.i to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !1764
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = trunc i64 %i.fv to i8                   ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fy = and i8 %i.fw, 1
  store i8 %i.fy, ptr %i.fx, align 4, !tbaa !1765
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 9
  %i.ga = lshr i8 %i.fw, 1
  %i.gb = and i8 %i.ga, 1
  store i8 %i.gb, ptr %i.fz, align 1, !tbaa !1766
  %i.gc = getelementptr inbounds nuw i8, ptr %10, i64 10
  %i.gd = lshr i8 %i.fw, 2
  %i.ge = and i8 %i.gd, 1
  store i8 %i.ge, ptr %i.gc, align 2, !tbaa !1767
  call void @_ZN5clang7CodeGen17TargetCodeGenInfo32initBranchProtectionFnAttributesERKNS_10TargetInfo20BranchProtectionInfoERN4llvm11AttrBuilderE(ptr noundef nonnull align 4 dereferenceable(11) %10, ptr noundef nonnull align 8 dereferenceable(88) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  ret void

bb.bk:                                            ; preds = %.lr.ph, %_ZNK4llvm9StringRef5splitEc.exit
  %.sroa.0140.0236 = phi ptr [ %i.fi, %.lr.ph ], [ %i.gq, %_ZNK4llvm9StringRef5splitEc.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.gf = load ptr, ptr %.sroa.0140.0236, align 8, !tbaa !1342
  store ptr %i.gf, ptr %9, align 8, !tbaa !1349
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0140.0236, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !1341
  store i64 %i.gh, ptr %i.fl, align 8, !tbaa !1350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 61, ptr %i.a, align 1, !tbaa !64, !noalias !1768
  %i.gi = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %i.a, i64 1, i64 noundef 0) #27, !noalias !1769 ; 3 uses
  %i.gj = icmp eq i64 %i.gi, -1
  br i1 %i.gj, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %.sroa.0136.0.copyload = load ptr, ptr %9, align 8, !tbaa !1348
  %.sroa.5.0.copyload = load i64, ptr %i.fl, align 8, !tbaa !72
  br label %_ZNK4llvm9StringRef5splitEc.exit

bb.bm:                                            ; preds = %bb.bk
  %i.gk = load i64, ptr %i.fl, align 8, !tbaa !1350, !noalias !1769 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.gk)
  %i.gl = load ptr, ptr %9, align 8, !tbaa !1349, !noalias !1769 ; 2 uses
  %i.gm = add nuw i64 %i.gi, 1
  %.sroa.speculated4.i.i.i = call i64 @llvm.umin.i64(i64 %i.gk, i64 %i.gm) ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.sroa.speculated4.i.i.i
  %i.go = sub i64 %i.gk, %.sroa.speculated4.i.i.i
  br label %_ZNK4llvm9StringRef5splitEc.exit

_ZNK4llvm9StringRef5splitEc.exit:                 ; preds = %bb.bl, %bb.bm
  %.sroa.6.0 = phi ptr [ null, %bb.bl ], [ %i.gn, %bb.bm ]
  %.sroa.9.0 = phi i64 [ 0, %bb.bl ], [ %i.go, %bb.bm ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload, %bb.bl ], [ %.sroa.speculated.i.i.i, %bb.bm ]
  %.sroa.0136.0 = phi ptr [ %.sroa.0136.0.copyload, %bb.bl ], [ %i.gl, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gp = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr %.sroa.0136.0, i64 %.sroa.5.0, ptr %.sroa.6.0, i64 %.sroa.9.0) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0140.0236, i64 32 ; 2 uses
  %.not234 = icmp eq ptr %i.gq, %i.fk
  br i1 %.not234, label %._crit_edge, label %bb.bk
}

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4llvm11GlobalValue14isInterposableEb(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN4llvm8Function10addFnAttrsERKNS_11AttrBuilderE(ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare i32 @_ZNK4llvm8Function16getDenormalFPEnvEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder20addDenormalFPEnvAttrENS_13DenormalFPEnvE(ptr noundef nonnull align 8 dereferenceable(88), i32) local_unnamed_addr #1

declare void @_ZN4llvm8Function13removeFnAttrsERKNS_13AttributeMaskE(ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen13CodeGenModule35getTrivialDefaultFunctionAttributesEN4llvm9StringRefEbbRNS2_11AttrBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4008) %0, ptr %1, i64 %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(88) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1359, !nonnull !59, !align !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1360, !nonnull !59, !align !60
  tail call fastcc void @_ZL35getTrivialDefaultFunctionAttributesN4llvm9StringRefEbRKN5clang14CodeGenOptionsERKNS1_11LangOptionsEbRNS_11AttrBuilderE(ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(2496) %i.b, ptr noundef nonnull align 8 dereferenceable(1136) %i.d, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(88) %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen13CodeGenModule28getDefaultFunctionAttributesEN4llvm9StringRefEbbRNS2_11AttrBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4008) %0, ptr %1, i64 %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(88) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1359, !nonnull !59, !align !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1360, !nonnull !59, !align !60
  tail call fastcc void @_ZL35getTrivialDefaultFunctionAttributesN4llvm9StringRefEbRKN5clang14CodeGenOptionsERKNS1_11LangOptionsEbRNS_11AttrBuilderE(ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(2496) %i.b, ptr noundef nonnull align 8 dereferenceable(1136) %i.d, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(88) %5)
  br i1 %4, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1359, !nonnull !59, !align !60
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1888
  tail call void @_ZN5clang7CodeGen17TargetCodeGenInfo27initPointerAuthFnAttributesERKNS_18PointerAuthOptionsERN4llvm11AttrBuilderE(ptr noundef nonnull align 4 dereferenceable(68) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %5) #27
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1359, !nonnull !59, !align !60 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 728
  %.val = load i16, ptr %i.h, align 8, !tbaa !1344 ; 4 uses
  %i.i = getelementptr i8, ptr %i.g, i64 730
  %.val9 = load i16, ptr %i.i, align 2, !tbaa !1344 ; 2 uses
  %.sroa.03.0.extract.trunc.i.i.i = trunc i16 %.val to i8
  %.sroa.34.0.extract.shift.i.i.i = lshr i16 %.val, 8
  %.sroa.0.0.extract.trunc.i.i.i = trunc i16 %.val9 to i8 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i = lshr i16 %.val9, 8 ; 2 uses
  %i.j = icmp eq i8 %.sroa.0.0.extract.trunc.i.i.i, -1
  %i.k = select i1 %i.j, i8 %.sroa.03.0.extract.trunc.i.i.i, i8 %.sroa.0.0.extract.trunc.i.i.i ; 2 uses
  %i.l = icmp eq i16 %.sroa.3.0.extract.shift.i.i.i, 255
  %.v.i.i.i = select i1 %i.l, i16 %.sroa.34.0.extract.shift.i.i.i, i16 %.sroa.3.0.extract.shift.i.i.i ; 2 uses
  %.sroa.8.0.insert.ext.i.i = zext nneg i16 %.v.i.i.i to i32
  %6 = icmp eq i16 %.val, 0
  br i1 %6, label %_ZNK4llvm13DenormalFPEnvneES0_.exit.i.i, label %_ZNK4llvm13DenormalFPEnvneES0_.exit.thread.i.i

_ZNK4llvm13DenormalFPEnvneES0_.exit.i.i:          ; preds = %bb.b
  %7 = icmp ne i8 %i.k, 0
  %8 = icmp ne i16 %.v.i.i.i, 0
  %.not3.i.i.i = select i1 %7, i1 true, i1 %8
  br i1 %.not3.i.i.i, label %_ZNK4llvm13DenormalFPEnvneES0_.exit.thread.i.i, label %.critedge

_ZNK4llvm13DenormalFPEnvneES0_.exit.thread.i.i:   ; preds = %_ZNK4llvm13DenormalFPEnvneES0_.exit.i.i, %bb.b
  %.sroa.8.0.insert.shift.i.i = shl nuw i32 %.sroa.8.0.insert.ext.i.i, 24
  %.sroa.6.0.insert.ext.i.i = zext i8 %i.k to i32
  %.sroa.6.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.6.0.insert.ext.i.i, 16
  %.sroa.6.0.insert.insert.i.i = or disjoint i32 %.sroa.8.0.insert.shift.i.i, %.sroa.6.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = zext i16 %.val to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.6.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %i.m = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder20addDenormalFPEnvAttrENS_13DenormalFPEnvE(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 %.sroa.0.0.insert.insert.i.i) #27 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4llvm13DenormalFPEnvneES0_.exit.thread.i.i, %_ZNK4llvm13DenormalFPEnvneES0_.exit.i.i, %bb.a
  ret void
}

declare void @_ZN5clang7CodeGen17TargetCodeGenInfo27initPointerAuthFnAttributesERKNS_18PointerAuthOptionsERN4llvm11AttrBuilderE(ptr noundef nonnull align 4 dereferenceable(68), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen13CodeGenModule38addDefaultFunctionDefinitionAttributesERN4llvm11AttrBuilderE(ptr noundef nonnull align 8 dereferenceable(4008) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1359, !nonnull !59, !align !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1360, !nonnull !59, !align !60
  tail call fastcc void @_ZL35getTrivialDefaultFunctionAttributesN4llvm9StringRefEbRKN5clang14CodeGenOptionsERKNS1_11LangOptionsEbRNS_11AttrBuilderE(ptr nonnull @.str, i64 0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(2496) %i.b, ptr noundef nonnull align 8 dereferenceable(1136) %i.d, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1359, !nonnull !59, !align !60
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1888
  tail call void @_ZN5clang7CodeGen17TargetCodeGenInfo27initPointerAuthFnAttributesERKNS_18PointerAuthOptionsERN4llvm11AttrBuilderE(ptr noundef nonnull align 4 dereferenceable(68) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %1) #27
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1359, !nonnull !59, !align !60 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 728
  %.val.i = load i16, ptr %i.h, align 8, !tbaa !1344 ; 4 uses
  %i.i = getelementptr i8, ptr %i.g, i64 730
  %.val9.i = load i16, ptr %i.i, align 2, !tbaa !1344 ; 2 uses
  %.sroa.03.0.extract.trunc.i.i.i.i = trunc i16 %.val.i to i8
  %.sroa.34.0.extract.shift.i.i.i.i = lshr i16 %.val.i, 8
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i16 %.val9.i to i8 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i16 %.val9.i, 8 ; 2 uses
  %i.j = icmp eq i8 %.sroa.0.0.extract.trunc.i.i.i.i, -1
  %i.k = select i1 %i.j, i8 %.sroa.03.0.extract.trunc.i.i.i.i, i8 %.sroa.0.0.extract.trunc.i.i.i.i ; 2 uses
  %i.l = icmp eq i16 %.sroa.3.0.extract.shift.i.i.i.i, 255
  %.v.i.i.i.i = select i1 %i.l, i16 %.sroa.34.0.extract.shift.i.i.i.i, i16 %.sroa.3.0.extract.shift.i.i.i.i ; 2 uses
  %.sroa.8.0.insert.ext.i.i.i = zext nneg i16 %.v.i.i.i.i to i32
  %2 = icmp eq i16 %.val.i, 0
  br i1 %2, label %_ZNK4llvm13DenormalFPEnvneES0_.exit.i.i.i, label %_ZNK4llvm13DenormalFPEnvneES0_.exit.thread.i.i.i

_ZNK4llvm13DenormalFPEnvneES0_.exit.i.i.i:        ; preds = %bb.a
  %3 = icmp ne i8 %i.k, 0
  %4 = icmp ne i16 %.v.i.i.i.i, 0
  %.not3.i.i.i.i = select i1 %3, i1 true, i1 %4
  br i1 %.not3.i.i.i.i, label %_ZNK4llvm13DenormalFPEnvneES0_.exit.thread.i.i.i, label %_ZN5clang7CodeGen13CodeGenModule28getDefaultFunctionAttributesEN4llvm9StringRefEbbRNS2_11AttrBuilderE.exit

_ZNK4llvm13DenormalFPEnvneES0_.exit.thread.i.i.i: ; preds = %_ZNK4llvm13DenormalFPEnvneES0_.exit.i.i.i, %bb.a
  %.sroa.8.0.insert.shift.i.i.i = shl nuw i32 %.sroa.8.0.insert.ext.i.i.i, 24
  %.sroa.6.0.insert.ext.i.i.i = zext i8 %i.k to i32
  %.sroa.6.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.6.0.insert.ext.i.i.i, 16
  %.sroa.6.0.insert.insert.i.i.i = or disjoint i32 %.sroa.8.0.insert.shift.i.i.i, %.sroa.6.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %.val.i to i32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.6.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.m = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder20addDenormalFPEnvAttrENS_13DenormalFPEnvE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 %.sroa.0.0.insert.insert.i.i.i) #27 ; 0 uses
  br label %_ZN5clang7CodeGen13CodeGenModule28getDefaultFunctionAttributesEN4llvm9StringRefEbbRNS2_11AttrBuilderE.exit

_ZN5clang7CodeGen13CodeGenModule28getDefaultFunctionAttributesEN4llvm9StringRefEbbRNS2_11AttrBuilderE.exit: ; preds = %_ZNK4llvm13DenormalFPEnvneES0_.exit.i.i.i, %_ZNK4llvm13DenormalFPEnvneES0_.exit.thread.i.i.i
  %i.n = tail call noundef zeroext i1 @_ZN5clang7CodeGen13CodeGenModule27GetCPUAndFeaturesAttributesENS_10GlobalDeclERN4llvm11AttrBuilderEb(ptr noundef nonnull align 8 dereferenceable(4008) %0, i64 0, i32 0, ptr noundef nonnull align 8 dereferenceable(88) %1, i1 noundef zeroext true) #27 ; 0 uses
  ret void
}

declare noundef zeroext i1 @_ZN5clang7CodeGen13CodeGenModule27GetCPUAndFeaturesAttributesENS_10GlobalDeclERN4llvm11AttrBuilderEb(ptr noundef nonnull align 8 dereferenceable(4008), i64, i32, ptr noundef nonnull align 8 dereferenceable(88), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen13CodeGenModule21AdjustMemoryAttributeEN4llvm9StringRefENS0_12CGCalleeInfoERNS2_13AttributeListE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4008) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef readnone byval(%"class.clang::CodeGen::CGCalleeInfo") align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @_ZNK4llvm13AttributeList16getMemoryEffectsEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #27 ; 3 uses
  %i.b = trunc i32 %i.a to i8                     ; 4 uses
  %i.c = lshr i8 %i.b, 2
  %i.d = lshr i8 %i.b, 4
  %i.e = lshr i8 %i.b, 6
  %i.f = lshr i32 %i.a, 8
  %i.g = trunc i32 %i.f to i8
  %i.h = lshr i32 %i.a, 10
  %i.i = trunc i32 %i.h to i8
  %i.j = or i8 %i.d, %i.c
  %i.k = or i8 %i.j, %i.g
  %i.l = or i8 %i.k, %i.i
  %i.m = or i8 %i.l, %i.b
  %i.n = and i8 %i.m, 3
  %i.o = or i8 %i.n, %i.e
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1361, !nonnull !59, !align !60
  %i.s = tail call ptr @_ZNK4llvm13AttributeList22removeAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef -1, i32 noundef 99) #27
  store ptr %i.s, ptr %4, align 8, !tbaa !1363
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !1361, !nonnull !59, !align !60
  %i.u = tail call ptr @_ZN4llvm9Attribute20getWithMemoryEffectsERNS_11LLVMContextENS_17MemoryEffectsBaseINS_13IRMemLocationEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 2730) #27
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !1361, !nonnull !59, !align !60
  %i.w = tail call ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef -1, ptr %i.u) #27
  store ptr %i.w, ptr %4, align 8, !tbaa !1363
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @_ZNK4llvm13AttributeList16getMemoryEffectsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @_ZN4llvm9Attribute20getWithMemoryEffectsERNS_11LLVMContextENS_17MemoryEffectsBaseINS_13IRMemLocationEEE(ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen13CodeGenModule22ConstructAttributeListEN4llvm9StringRefERKNS0_14CGFunctionInfoENS0_12CGCalleeInfoERNS2_13AttributeListERjbb(ptr noundef nonnull align 8 dereferenceable(4008) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr nofree noundef readonly byval(%"class.clang::CodeGen::CGCalleeInfo") align 8 captures(none) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %6, i1 noundef zeroext %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.llvm::Attribute", align 8   ; 4 uses
  %10 = alloca %"class.llvm::Attribute", align 8  ; 4 uses
  %11 = alloca %"class.llvm::Attribute", align 8  ; 4 uses
  %12 = alloca %"class.llvm::Attribute", align 8  ; 4 uses
  %13 = alloca %"class.clang::QualType", align 8  ; 5 uses
  %14 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %15 = alloca %"class.llvm::SmallString", align 8 ; 10 uses
  %16 = alloca %"class.llvm::SmallString", align 8 ; 10 uses
  %17 = alloca %"class.llvm::SmallVector.1743", align 8 ; 9 uses
  %18 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %20 = alloca %"class.llvm::AttrBuilder", align 8 ; 64 uses
  %21 = alloca %"class.llvm::AttrBuilder", align 8 ; 18 uses
  %22 = alloca %"class.std::optional", align 8    ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.llvm::SmallVector.1215", align 8 ; 12 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %27 = alloca [8 x %"class.llvm::StringRef"], align 8 ; 4 uses
  %28 = alloca %"class.(anonymous namespace)::ClangToLLVMArgMapping", align 8 ; 12 uses
  %29 = alloca %"class.llvm::SmallVector.1221", align 8 ; 17 uses
  %30 = alloca %"class.llvm::AttrBuilder", align 8 ; 33 uses
  %31 = alloca %"struct.clang::TypeInfoChars", align 8 ; 5 uses
  %32 = alloca %"class.llvm::SmallVector.1228", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1361, !nonnull !59, !align !60 ; 2 uses
  store ptr %i.c, ptr %20, align 8, !tbaa !1340
  %i.d = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i32 8, ptr %i.g, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  store ptr %i.c, ptr %21, align 8, !tbaa !1340
  %i.h = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i32 8, ptr %i.k, align 4, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = trunc i64 %i.m to i32
  %i.o = lshr i32 %i.n, 8
  %i.p = and i32 %i.o, 255
  store i32 %i.p, ptr %6, align 4, !tbaa !946
  %i.q = load i64, ptr %i.l, align 8              ; 2 uses
  %i.r = and i64 %i.q, 67108864
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef 40) #27 ; 0 uses
  %.pre = load i64, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi i64 [ %.pre, %bb.b ], [ %i.q, %bb.a ]
  %i.u = and i64 %i.t, 33554432
  %.not1117 = icmp eq i64 %i.u, 0
  br i1 %.not1117, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr nonnull @.str.4, i64 19, ptr null, i64 0) #27 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.x = load ptr, ptr %4, align 8, !tbaa !1366
  call fastcc void @_ZL34AddAttributesFromFunctionProtoTypeRN5clang10ASTContextERN4llvm11AttrBuilderEPKNS_17FunctionProtoTypeE(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr noundef %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = and i64 %.sroa.0.0.copyload.i, -8        ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 52 uses
  %.not.i = icmp eq i64 %i.z, 0                   ; 6 uses
  br i1 %.not.i, label %_ZL27AddAttributesFromOMPAssumesRN4llvm11AttrBuilderEPKN5clang4DeclE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.ab, ptr %17, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !75
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 4, ptr %i.ad, align 4, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 28 ; 26 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, 256
  %.not.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i, label %_ZNK5clang4Decl14specific_attrsINS_13OMPAssumeAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i, label %_ZNK5clang4Decl19specific_attr_beginINS_13OMPAssumeAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i

_ZNK5clang4Decl19specific_attr_beginINS_13OMPAssumeAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i: ; preds = %bb.f
  %i.ah = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.aa) #27
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !74 ; 2 uses
  %.pre.i.i = load i32, ptr %i.ae, align 4
  %.pre4.i.i = and i32 %.pre.i.i, 256
  %i.aj = icmp eq i32 %.pre4.i.i, 0
  br i1 %i.aj, label %_ZNK5clang4Decl14specific_attrsINS_13OMPAssumeAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang4Decl19specific_attr_beginINS_13OMPAssumeAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i
  %i.ak = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.aa) #27 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !74
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !75
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ao
  br label %_ZNK5clang4Decl14specific_attrsINS_13OMPAssumeAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i

_ZNK5clang4Decl14specific_attrsINS_13OMPAssumeAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i: ; preds = %bb.g, %_ZNK5clang4Decl19specific_attr_beginINS_13OMPAssumeAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i, %bb.f
  %i.aq = phi ptr [ %i.ai, %bb.g ], [ %i.ai, %_ZNK5clang4Decl19specific_attr_beginINS_13OMPAssumeAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i ], [ null, %bb.f ]
  %i.ar = phi ptr [ %i.ap, %bb.g ], [ null, %_ZNK5clang4Decl19specific_attr_beginINS_13OMPAssumeAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i ], [ null, %bb.f ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5clang22specific_attr_iteratorINS_13OMPAssumeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i, %_ZNK5clang4Decl14specific_attrsINS_13OMPAssumeAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i
  %.sroa.014.0.i = phi ptr [ %i.aq, %_ZNK5clang4Decl14specific_attrsINS_13OMPAssumeAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i ], [ %i.bv, %_ZNK5clang22specific_attr_iteratorINS_13OMPAssumeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i ] ; 8 uses
  %i.at = icmp ult ptr %.sroa.014.0.i, %i.ar
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %bb.j

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %.sroa.07.1.i.i.i = phi ptr [ %i.ay, %bb.i ], [ %.sroa.014.0.i, %bb.h ] ; 3 uses
  %i.au = load ptr, ptr %.sroa.07.1.i.i.i, align 8, !tbaa !112
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.aw = load i16, ptr %i.av, align 4
  %i.ax = icmp eq i16 %i.aw, 312
  br i1 %i.ax, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OMPAssumeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10.i = icmp eq ptr %i.ay, %i.ar
  br i1 %.not.i.i.i10.i, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OMPAssumeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread.i, label %.lr.ph.i.i.i.i, !llvm.loop !1770

bb.j:                                             ; preds = %bb.h
  %.not2.i3.i.i.i = icmp eq ptr %i.ar, %.sroa.014.0.i
  br i1 %.not2.i3.i.i.i, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OMPAssumeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread.i, label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.j, %bb.k
  %.sroa.0.1.i.i.i = phi ptr [ %i.bd, %bb.k ], [ %i.ar, %bb.j ] ; 3 uses
  %i.az = load ptr, ptr %.sroa.0.1.i.i.i, align 8, !tbaa !112
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 36
  %i.bb = load i16, ptr %i.ba, align 4
  %i.bc = icmp eq i16 %i.bb, 312
  br i1 %i.bc, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OMPAssumeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i, label %bb.k

end_hunk_1
begin_hunk_2_@_ZN5clang7CodeGen13CodeGenModule22ConstructAttributeListEN4llvm9StringRefERKNS0_14CGFunctionInfoENS0_12CGCalleeInfoERNS2_13AttributeListERjbb:bb.a
  %i.zc = add i64 %i.zb, 1
  call void @_ZdlPvm(ptr noundef %i.yz, i64 noundef %i.zc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514: ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj3EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %i.zd = load ptr, ptr %23, align 8, !tbaa !1342 ; 2 uses
  %i.ze = icmp eq ptr %i.zd, %i.ud
  br i1 %i.ze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514
  %i.zf = load i64, ptr %i.ud, align 8, !tbaa !64
  %i.zg = add i64 %i.zf, 1
  call void @_ZdlPvm(ptr noundef %i.zd, i64 noundef %i.zg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %_ZL27AddAttributesFromOMPAssumesRN4llvm11AttrBuilderEPKN5clang4DeclE.exit.thread

_ZL27AddAttributesFromOMPAssumesRN4llvm11AttrBuilderEPKN5clang4DeclE.exit.thread: ; preds = %bb.cs, %_ZN5clangneENS_22specific_attr_iteratorINS_17ModularFormatAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i, %bb.cr, %_ZNK5clang4Decl7hasAttrINS_23ArmLocallyStreamingAttrEEEbv.exit.thread1041, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517
  %.sroa.0937.1 = phi i32 [ %.sroa.0937.0, %_ZN5clangneENS_22specific_attr_iteratorINS_17ModularFormatAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i ], [ undef, %bb.e ], [ %.sroa.0937.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517 ], [ %.sroa.0937.0, %_ZNK5clang4Decl7hasAttrINS_23ArmLocallyStreamingAttrEEEbv.exit.thread1041 ], [ %.sroa.0937.0, %bb.cr ], [ %.sroa.0937.0, %bb.cs ]
  %.sroa.5939.1 = phi i8 [ %.sroa.5939.0, %_ZN5clangneENS_22specific_attr_iteratorINS_17ModularFormatAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i ], [ 0, %bb.e ], [ %.sroa.5939.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517 ], [ %.sroa.5939.0, %_ZNK5clang4Decl7hasAttrINS_23ArmLocallyStreamingAttrEEEbv.exit.thread1041 ], [ %.sroa.5939.0, %bb.cr ], [ %.sroa.5939.0, %bb.cs ] ; 2 uses
  %.2 = phi ptr [ %.1, %_ZN5clangneENS_22specific_attr_iteratorINS_17ModularFormatAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i ], [ null, %bb.e ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517 ], [ %.1, %_ZNK5clang4Decl7hasAttrINS_23ArmLocallyStreamingAttrEEEbv.exit.thread1041 ], [ %.1, %bb.cr ], [ %.1, %bb.cs ] ; 3 uses
  %.0 = phi i1 [ %i.pu, %_ZN5clangneENS_22specific_attr_iteratorINS_17ModularFormatAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i ], [ false, %bb.e ], [ %i.pu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517 ], [ %i.pu, %_ZNK5clang4Decl7hasAttrINS_23ArmLocallyStreamingAttrEEEbv.exit.thread1041 ], [ %i.pu, %bb.cr ], [ %i.pu, %bb.cs ]
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !1360, !nonnull !59, !align !60 ; 3 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  %i.zk = load i64, ptr %i.zj, align 8
  %i.zl = and i64 %i.zk, 36028797018963968
  %.not.i518 = icmp eq i64 %i.zl, 0
  br i1 %.not.i518, label %bb.dl, label %_ZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrE.exit.sink.split

bb.dl:                                            ; preds = %_ZL27AddAttributesFromOMPAssumesRN4llvm11AttrBuilderEPKN5clang4DeclE.exit.thread
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zi, i64 760
  %.val.i = load ptr, ptr %i.zm, align 8, !tbaa !1356 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zi, i64 768
  %.val13.i = load ptr, ptr %i.zn, align 8, !tbaa !1356 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %.val.i, %.val13.i
  br i1 %.not6.i.i.i, label %"_ZN4llvm8for_eachIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEZL22addNoBuiltinAttributesRNS_11AttrBuilderERKN5clang11LangOptionsEPKNSE_13NoBuiltinAttrEE3$_0EET0_OT_SM_.exit.i", label %.lr.ph.i.i.i519

.lr.ph.i.i.i519:                                  ; preds = %bb.dl
  %i.zo = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 6 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %bb.dm

bb.dm:                                            ; preds = %"_ZZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrEENK3$_0clENS_9StringRefE.exit.i.i.i", %.lr.ph.i.i.i519
  %.sroa.03.07.i.i.i = phi ptr [ %.val.i, %.lr.ph.i.i.i519 ], [ %i.aab, %"_ZZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrEENK3$_0clENS_9StringRefE.exit.i.i.i" ] ; 3 uses
  %i.zr = load ptr, ptr %.sroa.03.07.i.i.i, align 8, !tbaa !1342
  %i.zs = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 8
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !1341 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  store ptr %i.zo, ptr %16, align 8, !tbaa !98
  store i64 32, ptr %i.zq, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.zo, ptr noundef nonnull align 1 dereferenceable(11) @.str.111, i64 11, i1 false)
  store i64 11, ptr %i.zp, align 8, !tbaa !99
  %i.zu = add i64 %i.zt, 11                       ; 2 uses
  %i.zv = icmp ugt i64 %i.zu, 32
  br i1 %i.zv, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.thread.i.i.i.i, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.thread.i.i.i.i: ; preds = %bb.dm
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull %i.zo, i64 noundef %i.zu, i64 noundef 1) #27
  %.pre8.pre.i.i9.i.i.i.i = load i64, ptr %i.zp, align 8, !tbaa !99
  %.pre5.pre.i.i.i.i = load ptr, ptr %16, align 8, !tbaa !98
  br label %bb.dn

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i.i: ; preds = %bb.dm
  %.not.i.i.i7.i.i.i.i = icmp samesign eq i64 %i.zt, 0
  br i1 %.not.i.i.i7.i.i.i.i, label %_ZN4llvm11SmallStringILj32EEpLENS_9StringRefE.exit10.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.thread.i.i.i.i
  %.pre8.i.i613.i.i.i.i = phi i64 [ %.pre8.pre.i.i9.i.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.thread.i.i.i.i ], [ 11, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i.i ]
  %.pre512.i.i.i.i = phi ptr [ %.pre5.pre.i.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.thread.i.i.i.i ], [ %i.zo, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i.i ]
  %i.zw = getelementptr inbounds nuw i8, ptr %.pre512.i.i.i.i, i64 %.pre8.i.i613.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zw, ptr readonly align 1 %i.zr, i64 %i.zt, i1 false)
  %.pre.i.i8.i.i.i.i = load i64, ptr %i.zp, align 8, !tbaa !99
  %.pre.i.i.i.i = load ptr, ptr %16, align 8, !tbaa !98
  %.pre.i.i.i520 = add i64 %.pre.i.i8.i.i.i.i, %i.zt
  br label %_ZN4llvm11SmallStringILj32EEpLENS_9StringRefE.exit10.i.i.i.i

_ZN4llvm11SmallStringILj32EEpLENS_9StringRefE.exit10.i.i.i.i: ; preds = %bb.dn, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i520, %bb.dn ], [ 11, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i.i ] ; 2 uses
  %i.zx = phi ptr [ %.pre.i.i.i.i, %bb.dn ], [ %i.zo, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i.i ]
  store i64 %.pre-phi.i.i.i, ptr %i.zp, align 8, !tbaa !99
  %i.zy = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr %i.zx, i64 %.pre-phi.i.i.i, ptr null, i64 0) #27 ; 0 uses
  %i.zz = load ptr, ptr %16, align 8, !tbaa !98   ; 2 uses
  %i.aaa = icmp eq ptr %i.zz, %i.zo
  br i1 %i.aaa, label %"_ZZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrEENK3$_0clENS_9StringRefE.exit.i.i.i", label %bb.do

bb.do:                                            ; preds = %_ZN4llvm11SmallStringILj32EEpLENS_9StringRefE.exit10.i.i.i.i
  call void @free(ptr noundef %i.zz) #27
  br label %"_ZZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrEENK3$_0clENS_9StringRefE.exit.i.i.i"

"_ZZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrEENK3$_0clENS_9StringRefE.exit.i.i.i": ; preds = %bb.do, %_ZN4llvm11SmallStringILj32EEpLENS_9StringRefE.exit10.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.aab = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aab, %.val13.i
  br i1 %.not.i.i.i, label %"_ZN4llvm8for_eachIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEZL22addNoBuiltinAttributesRNS_11AttrBuilderERKN5clang11LangOptionsEPKNSE_13NoBuiltinAttrEE3$_0EET0_OT_SM_.exit.i", label %bb.dm, !llvm.loop !1806

"_ZN4llvm8for_eachIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEZL22addNoBuiltinAttributesRNS_11AttrBuilderERKN5clang11LangOptionsEPKNSE_13NoBuiltinAttrEE3$_0EET0_OT_SM_.exit.i": ; preds = %"_ZZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrEENK3$_0clENS_9StringRefE.exit.i.i.i", %bb.dl
  %.not12.i = icmp eq ptr %.2, null
  br i1 %.not12.i, label %_ZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrE.exit, label %bb.dp

bb.dp:                                            ; preds = %"_ZN4llvm8for_eachIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEZL22addNoBuiltinAttributesRNS_11AttrBuilderERKN5clang11LangOptionsEPKNSE_13NoBuiltinAttrEE3$_0EET0_OT_SM_.exit.i"
  %i.aac = getelementptr inbounds nuw i8, ptr %.2, i64 48 ; 2 uses
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !1850 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.2, i64 40 ; 2 uses
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !1851
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw [16 x i8], ptr %i.aad, i64 %i.aag ; 2 uses
  %i.aai = call noundef ptr @_ZSt9__find_ifIPN4llvm9StringRefEN9__gnu_cxx5__ops16_Iter_equals_valIA2_KcEEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %i.aad, ptr noundef %i.aah, ptr nonnull align 1 dereferenceable(2) @.str.110)
  %.not42.i = icmp eq ptr %i.aai, %i.aah
  br i1 %.not42.i, label %bb.dq, label %_ZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrE.exit.sink.split

bb.dq:                                            ; preds = %bb.dp
  %i.aaj = load ptr, ptr %i.aac, align 8, !tbaa !1850 ; 2 uses
  %i.aak = load i32, ptr %i.aae, align 8, !tbaa !1851 ; 2 uses
  %i.aal = zext i32 %i.aak to i64
  %.idx.i = shl nuw nsw i64 %i.aal, 4
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %.idx.i
  %.not5.i.i.i = icmp eq i32 %i.aak, 0
  br i1 %.not5.i.i.i, label %_ZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrE.exit, label %.lr.ph.i.i18.i

.lr.ph.i.i18.i:                                   ; preds = %bb.dq
  %i.aan = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 6 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.dr

bb.dr:                                            ; preds = %"_ZZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrEENK3$_0clENS_9StringRefE.exit.i.i28.i", %.lr.ph.i.i18.i
  %.06.i.i.i = phi ptr [ %i.aaj, %.lr.ph.i.i18.i ], [ %i.aax, %"_ZZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrEENK3$_0clENS_9StringRefE.exit.i.i28.i" ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.06.i.i.i, align 8, !tbaa !1348
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !72 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  store ptr %i.aan, ptr %15, align 8, !tbaa !98
  store i64 32, ptr %i.aap, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.aan, ptr noundef nonnull align 1 dereferenceable(11) @.str.111, i64 11, i1 false)
  store i64 11, ptr %i.aao, align 8, !tbaa !99
  %i.aaq = add i64 %.sroa.2.0.copyload.i.i.i, 11  ; 2 uses
  %i.aar = icmp ugt i64 %i.aaq, 32
  br i1 %i.aar, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.thread.i.i.i30.i, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i19.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.thread.i.i.i30.i: ; preds = %bb.dr
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull %i.aan, i64 noundef %i.aaq, i64 noundef 1) #27
  %.pre8.pre.i.i9.i.i.i31.i = load i64, ptr %i.aao, align 8, !tbaa !99
  %.pre5.pre.i.i.i32.i = load ptr, ptr %15, align 8, !tbaa !98
  br label %bb.ds

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i19.i: ; preds = %bb.dr
  %.not.i.i.i7.i.i.i20.i = icmp samesign eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i7.i.i.i20.i, label %_ZN4llvm11SmallStringILj32EEpLENS_9StringRefE.exit10.i.i.i26.i, label %bb.ds

bb.ds:                                            ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i19.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.thread.i.i.i30.i
  %.pre8.i.i613.i.i.i21.i = phi i64 [ %.pre8.pre.i.i9.i.i.i31.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.thread.i.i.i30.i ], [ 11, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i19.i ]
  %.pre512.i.i.i22.i = phi ptr [ %.pre5.pre.i.i.i32.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.thread.i.i.i30.i ], [ %i.aan, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i19.i ]
  %i.aas = getelementptr inbounds nuw i8, ptr %.pre512.i.i.i22.i, i64 %.pre8.i.i613.i.i.i21.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aas, ptr readonly align 1 %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i, i1 false)
  %.pre.i.i8.i.i.i23.i = load i64, ptr %i.aao, align 8, !tbaa !99
  %.pre.i.i.i24.i = load ptr, ptr %15, align 8, !tbaa !98
  %.pre.i.i25.i = add i64 %.pre.i.i8.i.i.i23.i, %.sroa.2.0.copyload.i.i.i
  br label %_ZN4llvm11SmallStringILj32EEpLENS_9StringRefE.exit10.i.i.i26.i

_ZN4llvm11SmallStringILj32EEpLENS_9StringRefE.exit10.i.i.i26.i: ; preds = %bb.ds, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i19.i
  %.pre-phi.i.i27.i = phi i64 [ %.pre.i.i25.i, %bb.ds ], [ 11, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i19.i ] ; 2 uses
  %i.aat = phi ptr [ %.pre.i.i.i24.i, %bb.ds ], [ %i.aan, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i5.i.i.i19.i ]
  store i64 %.pre-phi.i.i27.i, ptr %i.aao, align 8, !tbaa !99
  %i.aau = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr %i.aat, i64 %.pre-phi.i.i27.i, ptr null, i64 0) #27 ; 0 uses
  %i.aav = load ptr, ptr %15, align 8, !tbaa !98  ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, %i.aan
  br i1 %i.aaw, label %"_ZZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrEENK3$_0clENS_9StringRefE.exit.i.i28.i", label %bb.dt

bb.dt:                                            ; preds = %_ZN4llvm11SmallStringILj32EEpLENS_9StringRefE.exit10.i.i.i26.i
  call void @free(ptr noundef %i.aav) #27
  br label %"_ZZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrEENK3$_0clENS_9StringRefE.exit.i.i28.i"

"_ZZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrEENK3$_0clENS_9StringRefE.exit.i.i28.i": ; preds = %bb.dt, %_ZN4llvm11SmallStringILj32EEpLENS_9StringRefE.exit10.i.i.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.aax = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16 ; 2 uses
  %.not.i.i29.i = icmp eq ptr %i.aax, %i.aam
  br i1 %.not.i.i29.i, label %_ZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrE.exit, label %bb.dr, !llvm.loop !1807

_ZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrE.exit.sink.split: ; preds = %bb.dp, %_ZL27AddAttributesFromOMPAssumesRN4llvm11AttrBuilderEPKN5clang4DeclE.exit.thread
  %i.aay = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr nonnull @.str.109, i64 11, ptr null, i64 0) #27 ; 0 uses
  br label %_ZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrE.exit

_ZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrE.exit: ; preds = %"_ZZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrEENK3$_0clENS_9StringRefE.exit.i.i28.i", %_ZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrE.exit.sink.split, %"_ZN4llvm8for_eachIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEZL22addNoBuiltinAttributesRNS_11AttrBuilderERKN5clang11LangOptionsEPKNSE_13NoBuiltinAttrEE3$_0EET0_OT_SM_.exit.i", %bb.dq
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 18 uses
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !1359, !nonnull !59, !align !60
  %i.abb = load ptr, ptr %i.zh, align 8, !tbaa !1360, !nonnull !59, !align !60
  call fastcc void @_ZL35getTrivialDefaultFunctionAttributesN4llvm9StringRefEbRKN5clang14CodeGenOptionsERKNS1_11LangOptionsEbRNS_11AttrBuilderE(ptr %1, i64 %2, i1 noundef zeroext %.0, ptr noundef nonnull align 8 dereferenceable(2496) %i.aba, ptr noundef nonnull align 8 dereferenceable(1136) %i.abb, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(88) %20)
  br i1 %7, label %_ZN5clang7CodeGen13CodeGenModule28getDefaultFunctionAttributesEN4llvm9StringRefEbbRNS2_11AttrBuilderE.exit.thread, label %bb.du

bb.du:                                            ; preds = %_ZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrE.exit
  %i.abc = load ptr, ptr %i.aaz, align 8, !tbaa !1359, !nonnull !59, !align !60
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 1888
  call void @_ZN5clang7CodeGen17TargetCodeGenInfo27initPointerAuthFnAttributesERKNS_18PointerAuthOptionsERN4llvm11AttrBuilderE(ptr noundef nonnull align 4 dereferenceable(68) %i.abd, ptr noundef nonnull align 8 dereferenceable(88) %20) #27
  %i.abe = load ptr, ptr %i.aaz, align 8, !tbaa !1359, !nonnull !59, !align !60 ; 2 uses
  %i.abf = getelementptr i8, ptr %i.abe, i64 728
  %.val.i521 = load i16, ptr %i.abf, align 8, !tbaa !1344 ; 4 uses
  %i.abg = getelementptr i8, ptr %i.abe, i64 730
  %.val9.i = load i16, ptr %i.abg, align 2, !tbaa !1344 ; 2 uses
  %.sroa.03.0.extract.trunc.i.i.i.i = trunc i16 %.val.i521 to i8
  %.sroa.34.0.extract.shift.i.i.i.i = lshr i16 %.val.i521, 8
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i16 %.val9.i to i8 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i16 %.val9.i, 8 ; 2 uses
  %i.abh = icmp eq i8 %.sroa.0.0.extract.trunc.i.i.i.i, -1
  %i.abi = select i1 %i.abh, i8 %.sroa.03.0.extract.trunc.i.i.i.i, i8 %.sroa.0.0.extract.trunc.i.i.i.i ; 2 uses
  %i.abj = icmp eq i16 %.sroa.3.0.extract.shift.i.i.i.i, 255
  %.v.i.i.i.i = select i1 %i.abj, i16 %.sroa.34.0.extract.shift.i.i.i.i, i16 %.sroa.3.0.extract.shift.i.i.i.i ; 2 uses
  %.sroa.8.0.insert.ext.i.i.i = zext nneg i16 %.v.i.i.i.i to i32
  %33 = icmp eq i16 %.val.i521, 0
  br i1 %33, label %_ZNK4llvm13DenormalFPEnvneES0_.exit.i.i.i, label %_ZNK4llvm13DenormalFPEnvneES0_.exit.thread.i.i.i

_ZNK4llvm13DenormalFPEnvneES0_.exit.i.i.i:        ; preds = %bb.du
  %34 = icmp ne i8 %i.abi, 0
  %35 = icmp ne i16 %.v.i.i.i.i, 0
  %.not3.i.i.i.i = select i1 %34, i1 true, i1 %35
  br i1 %.not3.i.i.i.i, label %_ZNK4llvm13DenormalFPEnvneES0_.exit.thread.i.i.i, label %_ZN5clang7CodeGen13CodeGenModule28getDefaultFunctionAttributesEN4llvm9StringRefEbbRNS2_11AttrBuilderE.exit

_ZNK4llvm13DenormalFPEnvneES0_.exit.thread.i.i.i: ; preds = %_ZNK4llvm13DenormalFPEnvneES0_.exit.i.i.i, %bb.du
  %.sroa.8.0.insert.shift.i.i.i = shl nuw i32 %.sroa.8.0.insert.ext.i.i.i, 24
  %.sroa.6.0.insert.ext.i.i.i = zext i8 %i.abi to i32
  %.sroa.6.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.6.0.insert.ext.i.i.i, 16
  %.sroa.6.0.insert.insert.i.i.i = or disjoint i32 %.sroa.8.0.insert.shift.i.i.i, %.sroa.6.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %.val.i521 to i32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.6.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.abk = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder20addDenormalFPEnvAttrENS_13DenormalFPEnvE(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 %.sroa.0.0.insert.insert.i.i.i) #27 ; 0 uses
  br label %_ZN5clang7CodeGen13CodeGenModule28getDefaultFunctionAttributesEN4llvm9StringRefEbbRNS2_11AttrBuilderE.exit

_ZN5clang7CodeGen13CodeGenModule28getDefaultFunctionAttributesEN4llvm9StringRefEbbRNS2_11AttrBuilderE.exit: ; preds = %_ZNK4llvm13DenormalFPEnvneES0_.exit.i.i.i, %_ZNK4llvm13DenormalFPEnvneES0_.exit.thread.i.i.i
  br i1 %.not.i, label %.thread1060, label %bb.dv

_ZN5clang7CodeGen13CodeGenModule28getDefaultFunctionAttributesEN4llvm9StringRefEbbRNS2_11AttrBuilderE.exit.thread: ; preds = %_ZL22addNoBuiltinAttributesRN4llvm11AttrBuilderERKN5clang11LangOptionsEPKNS2_13NoBuiltinAttrE.exit
  br i1 %.not.i, label %_ZN4llvm13binary_searchIRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERNS_9StringRefEEEDaOT_OT0_.exit.thread, label %bb.dv

bb.dv:                                            ; preds = %_ZN5clang7CodeGen13CodeGenModule28getDefaultFunctionAttributesEN4llvm9StringRefEbbRNS2_11AttrBuilderE.exit.thread, %_ZN5clang7CodeGen13CodeGenModule28getDefaultFunctionAttributesEN4llvm9StringRefEbbRNS2_11AttrBuilderE.exit
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aa, i64 28 ; 7 uses
  %i.abm = load i32, ptr %i.abl, align 4
  %i.abn = and i32 %i.abm, 256
  %.not.i522 = icmp eq i32 %i.abn, 0
  br i1 %.not.i522, label %_ZNK5clang4Decl7hasAttrINS_30NoSpeculativeLoadHardeningAttrEEEbv.exit.thread1044, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.abo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.aa) #27 ; 2 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !74 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  %i.abr = load i32, ptr %i.abq, align 8, !tbaa !75 ; 2 uses
  %i.abs = zext i32 %i.abr to i64
  %.idx.i.i523 = shl nuw nsw i64 %i.abs, 3
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abp, i64 %.idx.i.i523 ; 2 uses
  %.not.i.i524 = icmp eq i32 %i.abr, 0
  br i1 %.not.i.i524, label %_ZNK5clang4Decl7hasAttrINS_30NoSpeculativeLoadHardeningAttrEEEbv.exit.thread1044, label %.lr.ph.i.i.i.i.i525

.lr.ph.i.i.i.i.i525:                              ; preds = %bb.dw, %bb.dx
  %.sroa.07.1.i.i.i.i526 = phi ptr [ %i.aby, %bb.dx ], [ %i.abp, %bb.dw ] ; 3 uses
  %i.abu = load ptr, ptr %.sroa.07.1.i.i.i.i526, align 8, !tbaa !112
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 36
  %i.abw = load i16, ptr %i.abv, align 4
  %i.abx = icmp eq i16 %i.abw, 301
  br i1 %i.abx, label %_ZNK5clang4Decl7hasAttrINS_30NoSpeculativeLoadHardeningAttrEEEbv.exit, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i.i.i.i.i525
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i526, i64 8 ; 2 uses
  %.not.i.i.i.i.i527 = icmp eq ptr %i.aby, %i.abt
  br i1 %.not.i.i.i.i.i527, label %_ZNK5clang4Decl7hasAttrINS_30NoSpeculativeLoadHardeningAttrEEEbv.exit.thread1044, label %.lr.ph.i.i.i.i.i525, !llvm.loop !1808

_ZNK5clang4Decl7hasAttrINS_30NoSpeculativeLoadHardeningAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i525
  %.not1138 = icmp eq ptr %.sroa.07.1.i.i.i.i526, %i.abt
  br i1 %.not1138, label %_ZNK5clang4Decl7hasAttrINS_30NoSpeculativeLoadHardeningAttrEEEbv.exit.thread1044, label %bb.dy

bb.dy:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_30NoSpeculativeLoadHardeningAttrEEEbv.exit
  %i.abz = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15removeAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef 73) #27 ; 0 uses
  br label %_ZNK5clang4Decl7hasAttrINS_30NoSpeculativeLoadHardeningAttrEEEbv.exit.thread1044

_ZNK5clang4Decl7hasAttrINS_30NoSpeculativeLoadHardeningAttrEEEbv.exit.thread1044: ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dy, %_ZNK5clang4Decl7hasAttrINS_30NoSpeculativeLoadHardeningAttrEEEbv.exit
  %i.aca = load i32, ptr %i.abl, align 4
  %i.acb = and i32 %i.aca, 256
  %.not.i529 = icmp eq i32 %i.acb, 0
  br i1 %.not.i529, label %_ZNK5clang4Decl7hasAttrINS_28SpeculativeLoadHardeningAttrEEEbv.exit.thread1046, label %bb.dz

bb.dz:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_30NoSpeculativeLoadHardeningAttrEEEbv.exit.thread1044
  %i.acc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.aa) #27 ; 2 uses
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !74 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acc, i64 8
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !75 ; 2 uses
  %i.acg = zext i32 %i.acf to i64
  %.idx.i.i530 = shl nuw nsw i64 %i.acg, 3
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acd, i64 %.idx.i.i530 ; 2 uses
  %.not.i.i531 = icmp eq i32 %i.acf, 0
  br i1 %.not.i.i531, label %_ZNK5clang4Decl7hasAttrINS_28SpeculativeLoadHardeningAttrEEEbv.exit.thread1046, label %.lr.ph.i.i.i.i.i532

.lr.ph.i.i.i.i.i532:                              ; preds = %bb.dz, %bb.ea
  %.sroa.07.1.i.i.i.i533 = phi ptr [ %i.acm, %bb.ea ], [ %i.acd, %bb.dz ] ; 3 uses
  %i.aci = load ptr, ptr %.sroa.07.1.i.i.i.i533, align 8, !tbaa !112
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 36
  %i.ack = load i16, ptr %i.acj, align 4
  %i.acl = icmp eq i16 %i.ack, 383
  br i1 %i.acl, label %_ZNK5clang4Decl7hasAttrINS_28SpeculativeLoadHardeningAttrEEEbv.exit, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i.i.i.i.i532
  %i.acm = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i533, i64 8 ; 2 uses
  %.not.i.i.i.i.i534 = icmp eq ptr %i.acm, %i.ach
  br i1 %.not.i.i.i.i.i534, label %_ZNK5clang4Decl7hasAttrINS_28SpeculativeLoadHardeningAttrEEEbv.exit.thread1046, label %.lr.ph.i.i.i.i.i532, !llvm.loop !1809

_ZNK5clang4Decl7hasAttrINS_28SpeculativeLoadHardeningAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i532
  %.not1139 = icmp eq ptr %.sroa.07.1.i.i.i.i533, %i.ach
  br i1 %.not1139, label %_ZNK5clang4Decl7hasAttrINS_28SpeculativeLoadHardeningAttrEEEbv.exit.thread1046, label %bb.eb

bb.eb:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_28SpeculativeLoadHardeningAttrEEEbv.exit
  %i.acn = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef 73) #27 ; 0 uses
  br label %_ZNK5clang4Decl7hasAttrINS_28SpeculativeLoadHardeningAttrEEEbv.exit.thread1046

_ZNK5clang4Decl7hasAttrINS_28SpeculativeLoadHardeningAttrEEEbv.exit.thread1046: ; preds = %bb.ea, %bb.dz, %_ZNK5clang4Decl7hasAttrINS_30NoSpeculativeLoadHardeningAttrEEEbv.exit.thread1044, %bb.eb, %_ZNK5clang4Decl7hasAttrINS_28SpeculativeLoadHardeningAttrEEEbv.exit
  %i.aco = load i32, ptr %i.abl, align 4
  %i.acp = and i32 %i.aco, 256
  %.not.i536 = icmp eq i32 %i.acp, 0
  br i1 %.not.i536, label %_ZNK5clang4Decl7hasAttrINS_16NoSplitStackAttrEEEbv.exit.thread1048, label %bb.ec

bb.ec:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_28SpeculativeLoadHardeningAttrEEEbv.exit.thread1046
  %i.acq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.aa) #27 ; 2 uses
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !74 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  %i.act = load i32, ptr %i.acs, align 8, !tbaa !75 ; 2 uses
  %i.acu = zext i32 %i.act to i64
  %.idx.i.i537 = shl nuw nsw i64 %i.acu, 3
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acr, i64 %.idx.i.i537 ; 2 uses
  %.not.i.i538 = icmp eq i32 %i.act, 0
  br i1 %.not.i.i538, label %_ZNK5clang4Decl7hasAttrINS_16NoSplitStackAttrEEEbv.exit.thread1048, label %.lr.ph.i.i.i.i.i539

.lr.ph.i.i.i.i.i539:                              ; preds = %bb.ec, %bb.ed
  %.sroa.07.1.i.i.i.i540 = phi ptr [ %i.ada, %bb.ed ], [ %i.acr, %bb.ec ] ; 3 uses
  %i.acw = load ptr, ptr %.sroa.07.1.i.i.i.i540, align 8, !tbaa !112
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 36
  %i.acy = load i16, ptr %i.acx, align 4
  %i.acz = icmp eq i16 %i.acy, 302
  br i1 %i.acz, label %_ZNK5clang4Decl7hasAttrINS_16NoSplitStackAttrEEEbv.exit, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i.i.i.i.i539
  %i.ada = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i540, i64 8 ; 2 uses
  %.not.i.i.i.i.i541 = icmp eq ptr %i.ada, %i.acv
  br i1 %.not.i.i.i.i.i541, label %_ZNK5clang4Decl7hasAttrINS_16NoSplitStackAttrEEEbv.exit.thread1048, label %.lr.ph.i.i.i.i.i539, !llvm.loop !1810

_ZNK5clang4Decl7hasAttrINS_16NoSplitStackAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i539
  %.not1140 = icmp eq ptr %.sroa.07.1.i.i.i.i540, %i.acv
  br i1 %.not1140, label %_ZNK5clang4Decl7hasAttrINS_16NoSplitStackAttrEEEbv.exit.thread1048, label %bb.ee

bb.ee:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_16NoSplitStackAttrEEEbv.exit
  %i.adb = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15removeAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr nonnull @.str.11, i64 11) #27 ; 0 uses
  br label %_ZNK5clang4Decl7hasAttrINS_16NoSplitStackAttrEEEbv.exit.thread1048

_ZNK5clang4Decl7hasAttrINS_16NoSplitStackAttrEEEbv.exit.thread1048: ; preds = %bb.ed, %bb.ec, %_ZNK5clang4Decl7hasAttrINS_28SpeculativeLoadHardeningAttrEEEbv.exit.thread1046, %bb.ee, %_ZNK5clang4Decl7hasAttrINS_16NoSplitStackAttrEEEbv.exit
  %i.adc = load i32, ptr %i.abl, align 4
  %i.add = and i32 %i.adc, 256
  %.not.i543 = icmp eq i32 %i.add, 0
  br i1 %.not.i543, label %_ZNK5clang4Decl7hasAttrINS_20ZeroCallUsedRegsAttrEEEbv.exit.thread1050, label %bb.ef

bb.ef:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_16NoSplitStackAttrEEEbv.exit.thread1048
  %i.ade = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.aa) #27 ; 2 uses
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !74 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %i.adh = load i32, ptr %i.adg, align 8, !tbaa !75 ; 2 uses
  %i.adi = zext i32 %i.adh to i64
  %.idx.i.i544 = shl nuw nsw i64 %i.adi, 3
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adf, i64 %.idx.i.i544 ; 2 uses
  %.not.i.i545 = icmp eq i32 %i.adh, 0
  br i1 %.not.i.i545, label %_ZNK5clang4Decl7hasAttrINS_20ZeroCallUsedRegsAttrEEEbv.exit.thread1050, label %.lr.ph.i.i.i.i.i546

.lr.ph.i.i.i.i.i546:                              ; preds = %bb.ef, %bb.eg
  %.sroa.07.1.i.i.i.i547 = phi ptr [ %i.ado, %bb.eg ], [ %i.adf, %bb.ef ] ; 3 uses
  %i.adk = load ptr, ptr %.sroa.07.1.i.i.i.i547, align 8, !tbaa !112
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 36
  %i.adm = load i16, ptr %i.adl, align 4
  %i.adn = icmp eq i16 %i.adm, 432
  br i1 %i.adn, label %_ZNK5clang4Decl7hasAttrINS_20ZeroCallUsedRegsAttrEEEbv.exit, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph.i.i.i.i.i546
  %i.ado = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i547, i64 8 ; 2 uses
  %.not.i.i.i.i.i548 = icmp eq ptr %i.ado, %i.adj
  br i1 %.not.i.i.i.i.i548, label %_ZNK5clang4Decl7hasAttrINS_20ZeroCallUsedRegsAttrEEEbv.exit.thread1050, label %.lr.ph.i.i.i.i.i546, !llvm.loop !1811

_ZNK5clang4Decl7hasAttrINS_20ZeroCallUsedRegsAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i546
  %.not1141 = icmp eq ptr %.sroa.07.1.i.i.i.i547, %i.adj
  br i1 %.not1141, label %_ZNK5clang4Decl7hasAttrINS_20ZeroCallUsedRegsAttrEEEbv.exit.thread1050, label %bb.eh

bb.eh:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_20ZeroCallUsedRegsAttrEEEbv.exit
  %i.adp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.aa) #27
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !74 ; 2 uses
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !112 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 36
  %i.adt = load i16, ptr %i.ads, align 4
  %i.adu = icmp eq i16 %i.adt, 432
  br i1 %i.adu, label %_ZNK5clang4Decl7getAttrINS_20ZeroCallUsedRegsAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i557

.lr.ph.i.i.i.i557:                                ; preds = %bb.eh, %.lr.ph.i.i.i.i557
  %i.adv = phi ptr [ %i.adw, %.lr.ph.i.i.i.i557 ], [ %i.adq, %bb.eh ]
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 8 ; 2 uses
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !112 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 36
  %i.adz = load i16, ptr %i.ady, align 4
  %i.aea = icmp eq i16 %i.adz, 432
  br i1 %i.aea, label %_ZNK5clang4Decl7getAttrINS_20ZeroCallUsedRegsAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i557, !llvm.loop !1812

_ZNK5clang4Decl7getAttrINS_20ZeroCallUsedRegsAttrEEEPT_v.exit: ; preds = %.lr.ph.i.i.i.i557, %bb.eh
  %i.aeb = phi ptr [ %i.adr, %bb.eh ], [ %i.adx, %.lr.ph.i.i.i.i557 ]
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 40
  %i.aed = load i32, ptr %i.aec, align 8, !tbaa !1854
  %i.aee = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15removeAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr nonnull @.str.12, i64 19) #27 ; 0 uses
  %i.aef = call noundef ptr @_ZN5clang20ZeroCallUsedRegsAttr32ConvertZeroCallUsedRegsKindToStrENS0_20ZeroCallUsedRegsKindE(i32 noundef %i.aed) #27 ; 3 uses
  %.not.i558 = icmp eq ptr %i.aef, null
  br i1 %.not.i558, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.ei

bb.ei:                                            ; preds = %_ZNK5clang4Decl7getAttrINS_20ZeroCallUsedRegsAttrEEEPT_v.exit
  %i.aeg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aef) #27
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %_ZNK5clang4Decl7getAttrINS_20ZeroCallUsedRegsAttrEEEPT_v.exit, %bb.ei
  %.sroa.0.0.i = phi i64 [ %i.aeg, %bb.ei ], [ 0, %_ZNK5clang4Decl7getAttrINS_20ZeroCallUsedRegsAttrEEEPT_v.exit ]
  %i.aeh = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(88) %20, ptr nonnull @.str.12, i64 19, ptr %i.aef, i64 %.sroa.0.0.i) #27 ; 0 uses
  br label %_ZNK5clang4Decl7hasAttrINS_20ZeroCallUsedRegsAttrEEEbv.exit.thread1050

_ZNK5clang4Decl7hasAttrINS_20ZeroCallUsedRegsAttrEEEbv.exit.thread1050: ; preds = %bb.eg, %bb.ef, %_ZNK5clang4Decl7hasAttrINS_16NoSplitStackAttrEEEbv.exit.thread1048, %_ZN4llvm9StringRefC2EPKc.exit, %_ZNK5clang4Decl7hasAttrINS_20ZeroCallUsedRegsAttrEEEbv.exit
  %i.aei = load ptr, ptr %i.aaz, align 8, !tbaa !1359, !nonnull !59, !align !60
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 128
  %i.aek = load i64, ptr %i.aej, align 8
  %i.ael = and i64 %i.aek, 68719476736
  %.not273 = icmp eq i64 %i.ael, 0
  br i1 %.not273, label %bb.em, label %bb.ej

bb.ej:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_20ZeroCallUsedRegsAttrEEEbv.exit.thread1050
  %i.aem = load i32, ptr %i.abl, align 4
end_hunk_2

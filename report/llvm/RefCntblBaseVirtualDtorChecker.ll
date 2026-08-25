Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RefCntblBaseVirtualDtorChecker?download=true
inline.NumInlined: 2123
inline.NumDeleted: 1260
begin_hunk_0_@_ZNK5clang13CXXRecordDecl13hasDefinitionEv:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !346  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8 ; 3 uses
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 1
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.g, i64 %i.h, i64 0 ; 3 uses
  %i.i = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %spec.select.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = and i64 %spec.select.i.i.i.i.i.i.i.i.i, -4
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl7dataPtrEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 18624
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !347  ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2632 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !350  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = add i64 %i.q, 24                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2640
  %i.t = load i64, ptr %i.s, align 8, !tbaa !361
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %bb.g, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.v = inttoptr i64 %i.r to ptr
  store ptr %i.v, ptr %i.o, align 8, !tbaa !350
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.w to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.q, %bb.f ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %bb.g ], [ %i.p, %bb.f ] ; 3 uses
  store ptr %i.n, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !362
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.x, align 8, !tbaa !364
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.d, ptr %i.y, align 8, !tbaa !365
  %i.z = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.d to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.i ], [ %i.z, %bb.h ]
  %i.ab = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  store i64 %i.ab, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i, %bb.b
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = phi i64 [ %i.ab, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.ac = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  %i.ad = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  %.not.not.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl7dataPtrEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !364
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !362 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !366 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq i32 %i.ag, %i.aj
  br i1 %.not12.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl7dataPtrEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.aj, ptr %i.af, align 8, !tbaa !364
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.al = getelementptr i8, ptr %i.ak, i64 152, !nosanitize !47
  %i.am = load ptr, ptr %i.al, align 8, !nosanitize !47
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull %i.d) #17, !inline_history !369
  br label %_ZNK5clang13CXXRecordDecl7dataPtrEv.exit

_ZNK5clang13CXXRecordDecl7dataPtrEv.exit:         ; preds = %bb.c, %bb.j, %bb.k, %bb.l
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !125
  %i.ao = icmp ne ptr %i.an, null
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5clang13CXXRecordDecl7dataPtrEv.exit, %bb.a
  %i.ap = phi i1 [ true, %bb.a ], [ %i.ao, %_ZNK5clang13CXXRecordDecl7dataPtrEv.exit ]
  ret i1 %i.ap
}

declare void @_ZNK5clang8QualType11getAsStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5clang11safeGetNameINS_11DeclContextEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_11DeclContextEEEDaPT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 124
  %i.e = add nsw i16 %i.d, -20
  %i.f = icmp ult i16 %i.e, 64
  br i1 %i.f, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_11DeclContextEEEDaPT0_.exit, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_11DeclContextEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_11DeclContextEEEDaPT0_.exit: ; preds = %bb.b
  %i.g = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull %1) #17 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_11DeclContextEEEDaPT0_.exit.thread, label %bb.c

_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_11DeclContextEEEDaPT0_.exit.thread: ; preds = %bb.b, %bb.a, %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_11DeclContextEEEDaPT0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !35
  store i8 0, ptr %i.h, align 8, !tbaa !34
  br label %bb.i

bb.c:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_11DeclContextEEEDaPT0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8, !tbaa !30 ; 3 uses
  %i.k = and i64 %.sroa.0.0.copyload.i, 7
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !35
  store i8 0, ptr %i.m, align 8, !tbaa !34
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %.not2.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not2.i, label %._crit_edge.i.i.i.thread, label %bb.e

._crit_edge.i.i.i.thread:                         ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %0, align 8, !tbaa !27, !alias.scope !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !370
  store i64 0, ptr %i.a, align 8, !tbaa !30, !noalias !370
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !373  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !376  ; 2 uses
  %i.u = and i64 %i.t, 4294967295                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !27, !alias.scope !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !378
  store i64 %i.u, ptr %i.a, align 8, !tbaa !30, !noalias !378
  %i.w = icmp samesign ugt i64 %i.u, 15
  br i1 %i.w, label %bb.f, label %._crit_edge.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !32, !alias.scope !378
  %i.y = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !378
  store i64 %i.y, ptr %i.v, align 8, !tbaa !34, !alias.scope !378
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.z = phi ptr [ %i.x, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %trunc = trunc i64 %i.t to i32
  switch i32 %trunc, label %bb.h [
    i32 1, label %bb.g
    i32 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.s, align 8, !tbaa !34
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !34
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 8 %i.s, i64 %i.u, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h, %._crit_edge.i.i.i.thread
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !378 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !35, !alias.scope !378
  %i.ad = load ptr, ptr %0, align 8, !tbaa !32, !alias.scope !378
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !378
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit, %._crit_edge.i.i4, %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_11DeclContextEEEDaPT0_.exit.thread
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #17 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !108  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !229
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !108
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !108
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !108
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #17 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !108 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !229
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !106
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !108
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !108
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !361
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !350
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !108
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !106
  %i.g = load i32, ptr %i.a, align 8, !tbaa !108
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !108
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !108
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !108
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !106
  %i.g = load i32, ptr %i.a, align 8, !tbaa !108
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !108
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang13CXXRecordDeclELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !108
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !106
  %i.g = load i32, ptr %i.a, align 8, !tbaa !108
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !108
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang13CXXRecordDecl11bases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 4 uses
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !347  ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !59 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !59 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !408

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !112
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !59
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !409

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !410

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !109
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !402
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !402
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare { ptr, i8 } @_ZN5clang21hasPublicMethodInBaseEPKNS_16CXXBaseSpecifierEN4llvm9StringRefE(ptr noundef, ptr, i64) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK5clang13CXXRecordDecl13lookupInBasesEN4llvm12function_refIFbPKNS_16CXXBaseSpecifierERNS_11CXXBasePathEEEERNS_12CXXBasePathsEb(ptr noundef nonnull align 8 dereferenceable(144), ptr, i64, ptr noundef nonnull align 8 dereferenceable(371), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i16 0, 512) i16 @_ZN12_GLOBAL__N_130RefCntblBaseVirtualDtorChecker28isClassWithSpecializedDeleteEPKN5clang13CXXRecordDeclES4_(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.(anonymous namespace)::DerefFuncDeleteExprVisitor", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.(anonymous namespace)::DerefFuncDeleteExprVisitor", align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 127
  %i.h = add nsw i32 %i.g, -61
  %i.i = icmp ult i32 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.i, label %bb.b, label %.critedge29.thread

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @_ZNK5clang11DeclContext11decls_beginEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j) #17 ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not1.i.i.i.i, label %.critedge29, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 28
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 124
  %i.o = icmp eq i32 %i.n, 36
  br i1 %i.o, label %.lr.ph118, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %.critedge29, label %.lr.ph.i.i.i.i, !llvm.loop !411

.lr.ph118:                                        ; preds = %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 36
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph118, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit
  %.sroa.091.0117 = phi ptr [ %.sroa.0.0.i.i, %.lr.ph118 ], [ %.sroa.091.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.091.0117, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8, !tbaa !30, !noalias !412 ; 3 uses
  %i.z = and i64 %.sroa.0.0.copyload.i.i, 7
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.r

bb.e:                                             ; preds = %bb.d
  %.not2.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not2.i.i, label %._crit_edge.i.i.i.thread.i, label %bb.f

._crit_edge.i.i.i.thread.i:                       ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  store ptr %i.s, ptr %2, align 8, !tbaa !27, !alias.scope !418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17, !noalias !418
  store i64 0, ptr %i.d, align 8, !tbaa !30, !noalias !418
  br label %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = inttoptr i64 %.sroa.0.0.copyload.i.i to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !373, !noalias !412 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !376, !noalias !412 ; 2 uses
  %i.ag = and i64 %i.af, 4294967295               ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  store ptr %i.s, ptr %2, align 8, !tbaa !27, !alias.scope !421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17, !noalias !421
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !30, !noalias !421
  %i.ah = icmp samesign ugt i64 %i.ag, 15
  br i1 %i.ah, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #17 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !32, !alias.scope !421
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !30, !noalias !421
  store i64 %i.aj, ptr %i.s, align 8, !tbaa !34, !alias.scope !421
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.ak = phi ptr [ %i.ai, %bb.g ], [ %i.s, %bb.f ] ; 2 uses
  %trunc.i = trunc i64 %i.af to i32
  switch i32 %trunc.i, label %bb.i [
    i32 1, label %bb.h
    i32 0, label %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = load i8, ptr %i.ae, align 8, !tbaa !34
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !34
  br label %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false)
  br label %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit

_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit: ; preds = %._crit_edge.i.i.i.thread.i, %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.am = load i64, ptr %i.d, align 8, !tbaa !30, !noalias !421 ; 2 uses
  store i64 %i.am, ptr %i.t, align 8, !tbaa !35, !alias.scope !421
  %i.an = load ptr, ptr %2, align 8, !tbaa !32, !alias.scope !421
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 0, ptr %i.ao, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17, !noalias !421
  %.pre121 = load i64, ptr %i.t, align 8, !tbaa !35
  %.pre122.pre = load ptr, ptr %2, align 8, !tbaa !32 ; 4 uses
  %i.ap = icmp eq i64 %.pre121, 5
  br i1 %i.ap, label %bb.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.j:                                             ; preds = %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit
  %i.aq = load i32, ptr %.pre122.pre, align 1
  %i.ar = xor i32 %i.aq, 1701995876
  %i.as = getelementptr i8, ptr %.pre122.pre, i64 4
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = xor i32 %i.au, 102
  %i.aw = or i32 %i.ar, %i.av
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit, %bb.j
  %i.ba = phi i1 [ false, %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit ], [ %i.az, %bb.j ] ; 2 uses
  %i.bb = icmp eq ptr %.pre122.pre, %i.s
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %i.ba, label %bb.k, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bc = load i64, ptr %i.s, align 8, !tbaa !34
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %.pre122.pre, i64 noundef %i.bd) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %i.ba, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.be = load ptr, ptr %i.u, align 8, !tbaa !325
  store ptr %i.be, ptr %3, align 8, !tbaa !422
  store ptr %1, ptr %i.v, align 8, !tbaa !428
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.bf = load ptr, ptr %.sroa.091.0117, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.091.0117) #17, !inline_history !429 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.bi, ptr %i.c, align 8, !tbaa !430
  %i.bj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !431, !inline_history !438
  %.fca.1.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.bj, 1
  %i.bk = trunc nuw i8 %.fca.1.extract.i.i.i.i.i to i1
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !430
  %i.bm = call fastcc noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_126DerefFuncDeleteExprVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.bl), !inline_history !438
  %i.bn = zext i1 %i.bm to i16
  %i.bo = or disjoint i16 %i.bn, 256
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i.i = phi i16 [ 256, %bb.l ], [ %i.bo, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor20HasSpecializedDeleteEPN5clang13CXXMethodDeclE.exit

bb.o:                                             ; preds = %bb.k
  %i.bp = call noundef ptr @_ZNK5clang12FunctionDecl31getTemplateInstantiationPatternEb(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.091.0117, i1 noundef zeroext true) #17
  %.not6.i = icmp eq ptr %i.bp, null
  %i.bq = select i1 %.not6.i, i16 256, i16 0
  br label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor20HasSpecializedDeleteEPN5clang13CXXMethodDeclE.exit

_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor20HasSpecializedDeleteEPN5clang13CXXMethodDeclE.exit: ; preds = %bb.n, %bb.o
  %.sroa.3.1.i = phi i16 [ %i.bq, %bb.o ], [ %.1.i.i, %bb.n ] ; 3 uses
  %.sroa.7.0.extract.shift = lshr i16 %.sroa.3.1.i, 8 ; 2 uses
  %i.br = trunc nuw i16 %.sroa.7.0.extract.shift to i1
  %.not = xor i1 %i.br, true
  %i.bs = trunc i16 %.sroa.3.1.i to i1
  %or.cond = or i1 %i.bs, %.not
  %.val40 = load i32, ptr %i.x, align 4, !tbaa !439 ; 3 uses
  %i.bt = icmp eq i32 %.val40, 0                  ; 2 uses
  br i1 %or.cond, label %.critedge27, label %.critedge

.critedge:                                        ; preds = %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor20HasSpecializedDeleteEPN5clang13CXXMethodDeclE.exit
  br i1 %i.bt, label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.critedge
  %.val35 = load ptr, ptr %i.w, align 8
  %i.bu = zext i32 %.val40 to i64                 ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bu, 31
  %i.bx = lshr i64 %i.bw, 3
  %i.by = and i64 %i.bx, 1073741820
  %i.bz = add nuw nsw i64 %i.by, %i.bv
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val35, i64 noundef %i.bz, i64 noundef 8) #17
  br label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit

_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit: ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.r

.critedge27:                                      ; preds = %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor20HasSpecializedDeleteEPN5clang13CXXMethodDeclE.exit
  br i1 %i.bt, label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit43, label %bb.q

bb.q:                                             ; preds = %.critedge27
  %.val39 = load ptr, ptr %i.w, align 8
  %i.ca = zext i32 %.val40 to i64                 ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.ca, 31
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = and i64 %i.cd, 1073741820
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val39, i64 noundef %i.cf, i64 noundef 8) #17
  br label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit43

_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit43: ; preds = %.critedge27, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.critedge29

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.091.0117, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cg, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %.not1.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not1.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %bb.s
  %.sroa.091.1 = phi ptr [ %i.cp, %bb.s ], [ %i.ci, %bb.r ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.091.1, i64 28
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = and i32 %i.ck, 124
  %i.cm = icmp eq i32 %i.cl, 36
  br i1 %i.cm, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.091.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cn, align 8
  %i.co = and i64 %.0.copyload.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %.not.i.i = icmp eq i64 %i.co, 0
  br i1 %.not.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit, label %.lr.ph.i.i, !llvm.loop !411

_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit: ; preds = %.lr.ph.i.i, %bb.s, %bb.r
  %.sroa.091.2 = phi ptr [ %i.ci, %bb.r ], [ %i.cp, %bb.s ], [ %.sroa.091.1, %.lr.ph.i.i ] ; 2 uses
  %.not110 = icmp eq ptr %.sroa.091.2, null
  br i1 %.not110, label %.critedge29, label %bb.d

.critedge29.thread:                               ; preds = %bb.a
  %i.cq = tail call ptr @_ZNK5clang11DeclContext11decls_beginEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j) #17 ; 2 uses
  %.not1.i.i.i.i44 = icmp eq ptr %i.cq, null
  br i1 %.not1.i.i.i.i44, label %.critedge29, label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %.critedge29.thread, %bb.t
  %.sroa.0.0.i.i46 = phi ptr [ %i.cx, %bb.t ], [ %i.cq, %.critedge29.thread ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i46, i64 28
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = and i32 %i.cs, 124
  %i.cu = icmp eq i32 %i.ct, 36
  br i1 %i.cu, label %.lr.ph, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i45
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i46, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i47 = load i64, ptr %i.cv, align 8
  %i.cw = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i47, -8 ; 2 uses
  %i.cx = inttoptr i64 %i.cw to ptr
  %.not.i.i.i.i48 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i48, label %.critedge29, label %.lr.ph.i.i.i.i45, !llvm.loop !411

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i45
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 36
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit85
  %.sroa.086.0115 = phi ptr [ %.sroa.0.0.i.i46, %.lr.ph ], [ %.sroa.086.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit85 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.086.0115, i64 40
  %.sroa.0.0.copyload.i.i58 = load i64, ptr %i.dd, align 8, !tbaa !30, !noalias !440 ; 3 uses
  %i.de = and i64 %.sroa.0.0.copyload.i.i58, 7
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.thread: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ai

bb.v:                                             ; preds = %bb.u
  %.not2.i.i60 = icmp eq i64 %.sroa.0.0.copyload.i.i58, 0
  br i1 %.not2.i.i60, label %._crit_edge.i.i.i.thread.i64, label %bb.w

._crit_edge.i.i.i.thread.i64:                     ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  store ptr %i.cy, ptr %4, align 8, !tbaa !27, !alias.scope !446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !446
  store i64 0, ptr %i.b, align 8, !tbaa !30, !noalias !446
  br label %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit66

bb.w:                                             ; preds = %bb.v
  %i.dg = inttoptr i64 %.sroa.0.0.copyload.i.i58 to ptr
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !373, !noalias !440 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !376, !noalias !440 ; 2 uses
  %i.dl = and i64 %i.dk, 4294967295               ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  store ptr %i.cy, ptr %4, align 8, !tbaa !27, !alias.scope !449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !449
  store i64 %i.dl, ptr %i.b, align 8, !tbaa !30, !noalias !449
  %i.dm = icmp samesign ugt i64 %i.dl, 15
  br i1 %i.dm, label %bb.x, label %._crit_edge.i.i.i.i61

bb.x:                                             ; preds = %bb.w
  %i.dn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #17 ; 2 uses
  store ptr %i.dn, ptr %4, align 8, !tbaa !32, !alias.scope !449
  %i.do = load i64, ptr %i.b, align 8, !tbaa !30, !noalias !449
  store i64 %i.do, ptr %i.cy, align 8, !tbaa !34, !alias.scope !449
  br label %._crit_edge.i.i.i.i61

._crit_edge.i.i.i.i61:                            ; preds = %bb.x, %bb.w
  %i.dp = phi ptr [ %i.dn, %bb.x ], [ %i.cy, %bb.w ] ; 2 uses
  %trunc.i62 = trunc i64 %i.dk to i32
  switch i32 %trunc.i62, label %bb.z [
    i32 1, label %bb.y
    i32 0, label %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit66
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i61
  %i.dq = load i8, ptr %i.dj, align 8, !tbaa !34
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !34
  br label %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit66

bb.z:                                             ; preds = %._crit_edge.i.i.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr nonnull align 8 %i.dj, i64 %i.dl, i1 false)
  br label %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit66

_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit66: ; preds = %._crit_edge.i.i.i.thread.i64, %._crit_edge.i.i.i.i61, %bb.y, %bb.z
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !30, !noalias !449 ; 2 uses
  store i64 %i.dr, ptr %i.cz, align 8, !tbaa !35, !alias.scope !449
  %i.ds = load ptr, ptr %4, align 8, !tbaa !32, !alias.scope !449
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dr
  store i8 0, ptr %i.dt, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !449
  %.pre = load i64, ptr %i.cz, align 8, !tbaa !35
  %.pre120.pre = load ptr, ptr %4, align 8, !tbaa !32 ; 4 uses
  %i.du = icmp eq i64 %.pre, 5
  br i1 %i.du, label %bb.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68

bb.aa:                                            ; preds = %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit66
  %i.dv = load i32, ptr %.pre120.pre, align 1
  %i.dw = xor i32 %i.dv, 1701995876
  %i.dx = getelementptr i8, ptr %.pre120.pre, i64 4
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = zext i8 %i.dy to i32
  %i.ea = xor i32 %i.dz, 102
  %i.eb = or i32 %i.dw, %i.ea
  %i.ec = icmp ne i32 %i.eb, 0
  %i.ed = zext i1 %i.ec to i32
  %i.ee = icmp eq i32 %i.ed, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68: ; preds = %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit66, %bb.aa
  %i.ef = phi i1 [ false, %_ZN5clang11safeGetNameINS_13CXXMethodDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit66 ], [ %i.ee, %bb.aa ] ; 2 uses
  %i.eg = icmp eq ptr %.pre120.pre, %i.cy
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %i.ef, label %bb.ab, label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68
  %i.eh = load i64, ptr %i.cy, align 8, !tbaa !34
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %.pre120.pre, i64 noundef %i.ei) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %i.ef, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr null, ptr %5, align 8, !tbaa !422
  store ptr %1, ptr %i.da, align 8, !tbaa !428
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  %i.ej = load ptr, ptr %.sroa.086.0115, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call noundef ptr %i.el(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.086.0115) #17, !inline_history !429 ; 2 uses
  %.not.not.i72 = icmp eq ptr %i.em, null
  br i1 %.not.not.i72, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.em, ptr %i.a, align 8, !tbaa !430
  %i.en = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !450, !inline_history !438
  %.fca.1.extract.i.i.i.i.i73 = extractvalue { ptr, i8 } %i.en, 1
  %i.eo = trunc nuw i8 %.fca.1.extract.i.i.i.i.i73 to i1
  br i1 %i.eo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ep = load ptr, ptr %i.a, align 8, !tbaa !430
  %i.eq = call fastcc noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_126DerefFuncDeleteExprVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %i.ep), !inline_history !438
  %i.er = zext i1 %i.eq to i16
  %i.es = or disjoint i16 %i.er, 256
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.i.i74 = phi i16 [ 256, %bb.ac ], [ %i.es, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor20HasSpecializedDeleteEPN5clang13CXXMethodDeclE.exit77

bb.af:                                            ; preds = %bb.ab
  %i.et = call noundef ptr @_ZNK5clang12FunctionDecl31getTemplateInstantiationPatternEb(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.086.0115, i1 noundef zeroext true) #17
  %.not6.i76 = icmp eq ptr %i.et, null
  %i.eu = select i1 %.not6.i76, i16 256, i16 0
  br label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor20HasSpecializedDeleteEPN5clang13CXXMethodDeclE.exit77

_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor20HasSpecializedDeleteEPN5clang13CXXMethodDeclE.exit77: ; preds = %bb.ae, %bb.af
  %.sroa.3.1.i75 = phi i16 [ %i.eu, %bb.af ], [ %.1.i.i74, %bb.ae ] ; 3 uses
  %.sroa.7.0.extract.shift98 = lshr i16 %.sroa.3.1.i75, 8 ; 2 uses
  %i.ev = trunc nuw i16 %.sroa.7.0.extract.shift98 to i1
  %.not108 = xor i1 %i.ev, true
  %i.ew = trunc i16 %.sroa.3.1.i75 to i1
  %or.cond109 = or i1 %i.ew, %.not108
  %.val38 = load i32, ptr %i.dc, align 4, !tbaa !439 ; 3 uses
  %i.ex = icmp eq i32 %.val38, 0                  ; 2 uses
  br i1 %or.cond109, label %.critedge33, label %.critedge31

.critedge31:                                      ; preds = %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor20HasSpecializedDeleteEPN5clang13CXXMethodDeclE.exit77
  br i1 %i.ex, label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit78, label %bb.ag

bb.ag:                                            ; preds = %.critedge31
  %.val = load ptr, ptr %i.db, align 8
  %i.ey = zext i32 %.val38 to i64                 ; 2 uses
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = add nuw nsw i64 %i.ey, 31
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = and i64 %i.fb, 1073741820
  %i.fd = add nuw nsw i64 %i.fc, %i.ez
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val, i64 noundef %i.fd, i64 noundef 8) #17
  br label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit78

_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit78: ; preds = %.critedge31, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ai

.critedge33:                                      ; preds = %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor20HasSpecializedDeleteEPN5clang13CXXMethodDeclE.exit77
  br i1 %i.ex, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %.critedge33
  %.val37 = load ptr, ptr %i.db, align 8
  %i.fe = zext i32 %.val38 to i64                 ; 2 uses
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = add nuw nsw i64 %i.fe, 31
  %i.fh = lshr i64 %i.fg, 3
  %i.fi = and i64 %i.fh, 1073741820
  %i.fj = add nuw nsw i64 %i.fi, %i.ff
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val37, i64 noundef %i.fj, i64 noundef 8) #17
  br label %bb.ak

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70, %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.086.0115, i64 8
  %.0.copyload.i.i.i.i.i.i80 = load i64, ptr %i.fk, align 8
  %i.fl = and i64 %.0.copyload.i.i.i.i.i.i80, -8  ; 2 uses
  %i.fm = inttoptr i64 %i.fl to ptr               ; 2 uses
  %.not1.i.i81 = icmp eq i64 %i.fl, 0
  br i1 %.not1.i.i81, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit85, label %.lr.ph.i.i82

.lr.ph.i.i82:                                     ; preds = %bb.ai, %bb.aj
  %.sroa.086.1 = phi ptr [ %i.ft, %bb.aj ], [ %i.fm, %bb.ai ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.086.1, i64 28
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = and i32 %i.fo, 124
  %i.fq = icmp eq i32 %i.fp, 36
  br i1 %i.fq, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit85, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i82
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.086.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i83 = load i64, ptr %i.fr, align 8
  %i.fs = and i64 %.0.copyload.i.i.i.i.i.i.i83, -8 ; 2 uses
  %i.ft = inttoptr i64 %i.fs to ptr               ; 2 uses
  %.not.i.i84 = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i84, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit85, label %.lr.ph.i.i82, !llvm.loop !411

_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit85: ; preds = %.lr.ph.i.i82, %bb.aj, %bb.ai
  %.sroa.086.2 = phi ptr [ %i.fm, %bb.ai ], [ %i.ft, %bb.aj ], [ %.sroa.086.1, %.lr.ph.i.i82 ] ; 2 uses
  %.not111 = icmp eq ptr %.sroa.086.2, null
  br i1 %.not111, label %.critedge29, label %bb.u

bb.ak:                                            ; preds = %bb.ah, %.critedge33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.critedge29

.critedge29:                                      ; preds = %bb.t, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit85, %bb.c, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit, %.critedge29.thread, %bb.b, %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit43, %bb.ak
  %.sroa.094.4 = phi i16 [ 0, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit ], [ %.sroa.3.1.i75, %bb.ak ], [ %.sroa.3.1.i, %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit43 ], [ 0, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit85 ], [ 0, %bb.b ], [ 0, %.critedge29.thread ], [ 0, %bb.c ], [ 0, %bb.t ]
  %.sroa.7.4 = phi i16 [ 1, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit ], [ %.sroa.7.0.extract.shift98, %bb.ak ], [ %.sroa.7.0.extract.shift, %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitorD2Ev.exit43 ], [ 1, %_ZN5clang11DeclContext22specific_decl_iteratorINS_13CXXMethodDeclEEppEv.exit85 ], [ 1, %bb.b ], [ 1, %.critedge29.thread ], [ 1, %bb.c ], [ 1, %bb.t ]
  %.sroa.7.0.insert.ext = shl nuw nsw i16 %.sroa.7.4, 8
  %.sroa.094.0.insert.ext = and i16 %.sroa.094.4, 255
  %.sroa.094.0.insert.insert = or disjoint i16 %.sroa.7.0.insert.ext, %.sroa.094.0.insert.ext
  ret i16 %.sroa.094.0.insert.insert
}

declare noundef ptr @_ZNK5clang13CXXRecordDecl13getDestructorEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #5

declare noundef i32 @_ZNK5clang13SourceManager21getFileCharacteristicENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776), i32) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang13CXXRecordDecl11bases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 4 uses
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !347  ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !350  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !474
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !439  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !474  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !468
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !439
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !430  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !59 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !59 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !483

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !430
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !59
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !484

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !485

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !439
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !477
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !477
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !439
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor13VisitCallExprEPKN5clang8CallExprE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430
  %i.e = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #17 ; 7 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  br label %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(33) %i.e) #17
  br i1 %i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.k = load i32, ptr %i.j, align 4, !noalias !486
  %i.l = and i32 %i.k, 124
  %i.m = add nsw i32 %i.l, -20
  %i.n = icmp ult i32 %i.m, 64
  br i1 %i.n, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.i, label %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.o, align 8, !tbaa !30, !noalias !486 ; 3 uses
  %i.p = and i64 %.sroa.0.0.copyload.i.i, 7
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread

bb.d:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.i
  %.not2.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not2.i.i, label %._crit_edge.i.i.i.thread.i, label %bb.e

._crit_edge.i.i.i.thread.i:                       ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.r, ptr %2, align 8, !tbaa !27, !alias.scope !492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !492
  store i64 0, ptr %i.b, align 8, !tbaa !30, !noalias !492
  br label %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit

bb.e:                                             ; preds = %bb.d
  %i.s = inttoptr i64 %.sroa.0.0.copyload.i.i to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !373, !noalias !486 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !376, !noalias !486 ; 2 uses
  %i.x = and i64 %i.w, 4294967295                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !27, !alias.scope !495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !495
  store i64 %i.x, ptr %i.b, align 8, !tbaa !30, !noalias !495
  %i.z = icmp samesign ugt i64 %i.x, 15
  br i1 %i.z, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #17 ; 2 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !32, !alias.scope !495
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !30, !noalias !495
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !34, !alias.scope !495
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.ac = phi ptr [ %i.aa, %bb.f ], [ %i.y, %bb.e ] ; 2 uses
  %trunc.i = trunc i64 %i.w to i32
  switch i32 %trunc.i, label %bb.h [
    i32 1, label %bb.g
    i32 0, label %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = load i8, ptr %i.v, align 8, !tbaa !34
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !34
  br label %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 8 %i.v, i64 %i.x, i1 false)
  br label %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit

bb.i:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(33) %i.e) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !430
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !496, !inline_history !438
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.aj, 1
  %i.ak = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.ak, label %bb.k, label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !430
  %i.am = call fastcc noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_126DerefFuncDeleteExprVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.al), !inline_history !438
  br label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit

_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit: ; preds = %bb.j, %bb.k, %bb.i
  %.1.i = phi i1 [ false, %bb.i ], [ %i.am, %bb.k ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.i, %bb.c, %.split
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.an, ptr %2, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !35
  store i8 0, ptr %i.an, align 8, !tbaa !34
  br label %.critedge

_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit: ; preds = %._crit_edge.i.i.i.thread.i, %._crit_edge.i.i.i.i, %bb.g, %bb.h
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !30, !noalias !495 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !35, !alias.scope !495
  %i.ar = load ptr, ptr %2, align 8, !tbaa !32, !alias.scope !495
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !495
  %.pre = load i64, ptr %i.aq, align 8, !tbaa !35
  switch i64 %.pre, label %.critedge [
    i64 18, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 19, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit
  %i.at = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  %i.au = load i128, ptr %i.at, align 1
  %i.av = xor i128 %i.au, 134846065476084652274169747105566125669
  %i.aw = getelementptr i8, ptr %i.at, i64 16
  %i.ax = load i16, ptr %i.aw, align 1
  %i.ay = zext i16 %i.ax to i128
  %i.az = xor i128 %i.ay, 25697
  %i.ba = or i128 %i.av, %i.az
  %i.bb = icmp ne i128 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25: ; preds = %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit
  %i.be = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  %i.bf = load i128, ptr %i.be, align 1
  %i.bg = xor i128 %i.bf, 101594859906896138584247284740419448421
  %i.bh = getelementptr i8, ptr %i.be, i64 3
  %i.bi = load i128, ptr %i.bh, align 1
  %i.bj = xor i128 %i.bi, 149452137882199484723529739273196892789
  %i.bk = or i128 %i.bg, %i.bj
  %i.bl = icmp ne i128 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !503
  %.not2328.not = icmp eq i32 %i.bp, 0
  br i1 %.not2328.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = load i32, ptr %i.bo, align 8, !tbaa !503
  %i.bs = zext i32 %i.br to i64
  %.not23 = icmp samesign ult i64 %indvars.iv.next, %i.bs
  br i1 %.not23, label %bb.m, label %.critedge, !llvm.loop !505

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.bt = load i32, ptr %1, align 8
  %i.bu = lshr i32 %i.bt, 19
  %i.bv = and i32 %i.bu, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !506
  %i.ca = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor19VisitLambdaArgumentEPKN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.bz) ; 3 uses
  br i1 %i.ca, label %.critedge, label %bb.l

.critedge:                                        ; preds = %bb.m, %bb.l, %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25
  %not.cond = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25 ], [ false, %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ false, %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread ], [ %i.ca, %bb.l ], [ %i.ca, %bb.m ]
  %i.cb = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !34
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit
  %.5 = phi i1 [ %.1.i, %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit ], [ %not.cond, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor18VisitCXXDeleteExprEPKN5clang13CXXDeleteExprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree readonly captures(address) %.24.val) unnamed_addr #0 align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not30 = icmp eq ptr %.24.val, null
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.critedge76.jt0
  %.04431 = phi ptr [ %.347.jt0, %.critedge76.jt0 ], [ %.24.val, %.preheader ] ; 4 uses
  %i.b = load i16, ptr %.04431, align 8
  %i.c = and i16 %i.b, 511                        ; 2 uses
  %.not13 = icmp eq i16 %i.c, 20
  br i1 %.not13, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.04431, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !508
  br label %.critedge76.jt0

bb.b:                                             ; preds = %.lr.ph
  %i.f = add nsw i16 %i.c, -91
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.f, -10
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.04431, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !510  ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.04431, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !34
  %i.j = and i64 %.sroa.0.0.copyload.i, -16
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !186 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 16
  %i.o = icmp ne i8 %i.n, 40
  %.not6515 = icmp eq ptr %i.l, null
  %.not65 = or i1 %.not6515, %i.o
  br i1 %.not65, label %.critedge76.jt0, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.0.0.copyload.i78 = load i64, ptr %i.p, align 16, !tbaa !34
  %i.q = and i64 %.sroa.0.0.copyload.i78, -16
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !186 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.u = load i8, ptr %i.t, align 16              ; 3 uses
  %i.v = icmp ne i8 %i.u, 51
  %.not6616 = icmp eq ptr %i.s, null              ; 3 uses
  %.not66 = or i1 %.not6616, %i.v
  br i1 %.not66, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !422    ; 2 uses
  %.not70 = icmp eq ptr %i.w, null
  br i1 %.not70, label %.critedge76.jt0, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.t, align 16
  %i.y = lshr i64 %i.x, 48
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !34
  %i.ac = and i64 %i.ab, -16
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !186
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.af, align 8, !tbaa !34
  %i.ag = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !186 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i8, ptr %i.aj, align 16            ; 3 uses
  %i.al = add i8 %i.ak, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.al, 3
  %.not.i7.i = icmp ne ptr %i.ai, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.am = and i8 %i.ak, 62
  %spec.select.i.i.i81 = icmp eq i8 %i.am, 48
  %or.cond.i = and i1 %spec.select.i.i.i81, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.g, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !191 ; 3 uses
  %i.ap = icmp eq i8 %i.ak, 49
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, 127
  %i.at = add nsw i32 %i.as, -60
  %i.au = icmp ult i32 %i.at, 3
  br i1 %i.au, label %bb.i, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.ao) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.av, null
  %spec.select.i.i82 = select i1 %.not.not.i.i, ptr %i.ao, ptr %i.av
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.f, %bb.h, %bb.i
  %.1.i = phi ptr [ null, %bb.h ], [ null, %bb.f ], [ %spec.select.i.i82, %bb.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !428
  %.not71 = icmp eq ptr %.1.i, %i.aw
  br i1 %.not71, label %.loopexit, label %.critedge76.jt0

bb.j:                                             ; preds = %bb.d
  %i.ax = icmp ne i8 %i.u, 49
  %.not67 = or i1 %.not6616, %i.ax
  br i1 %.not67, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !191 ; 4 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !428 ; 4 uses
  %i.bb = icmp ne ptr %i.az, null
  %i.bc = icmp ne ptr %i.ba, null
  %or.cond.i85 = and i1 %i.bb, %i.bc
  br i1 %or.cond.i85, label %bb.l, label %.critedge76.jt0

bb.l:                                             ; preds = %bb.k
  %i.bd = icmp eq ptr %i.az, %i.ba
  br i1 %i.bd, label %.loopexit, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit

_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit: ; preds = %bb.l
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef ptr %i.bg(ptr noundef nonnull align 8 dereferenceable(33) %i.az) #17, !inline_history !512
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(33) %i.ba) #17, !inline_history !512
  %i.bm = icmp eq ptr %i.bh, %i.bl
  br i1 %i.bm, label %.loopexit, label %.critedge76.jt0

bb.m:                                             ; preds = %bb.j
  %i.bn = icmp ne i8 %i.u, 46
  %.not68 = or i1 %.not6616, %i.bn
  br i1 %.not68, label %.critedge76.jt0, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load i64, ptr %i.t, align 16
  %i.bp = and i64 %i.bo, 524288
  %.not.i = icmp eq i64 %i.bp, 0
  %.sroa.0.0.in.v.i = select i1 %.not.i, i64 8, i64 48
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !tbaa !34
  %i.bq = and i64 %.sroa.0.0.i, -16
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !186 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i8, ptr %i.bt, align 16
  %i.bv = icmp ne i8 %i.bu, 49
  %.not6919 = icmp eq ptr %i.bs, null
  %.not69 = or i1 %.not6919, %i.bv
  br i1 %.not69, label %.critedge76.jt0, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !191 ; 4 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !428 ; 4 uses
  %i.bz = icmp ne ptr %i.bx, null
  %i.ca = icmp ne ptr %i.by, null
  %or.cond.i90 = and i1 %i.bz, %i.ca
  br i1 %or.cond.i90, label %bb.p, label %.critedge76.jt0

bb.p:                                             ; preds = %bb.o
  %i.cb = icmp eq ptr %i.bx, %i.by
  br i1 %i.cb, label %.loopexit, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit92

_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit92: ; preds = %bb.p
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call noundef ptr %i.ce(ptr noundef nonnull align 8 dereferenceable(33) %i.bx) #17, !inline_history !512
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call noundef ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(33) %i.by) #17, !inline_history !512
  %i.ck = icmp eq ptr %i.cf, %i.cj
  br i1 %i.ck, label %.loopexit, label %.critedge76.jt0

.critedge76.jt0:                                  ; preds = %bb.o, %bb.c, %bb.n, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit92, %bb.k, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit, %bb.m, %bb.e, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %bb.a
  %.347.jt0 = phi ptr [ %i.e, %bb.a ], [ %i.h, %bb.c ], [ %i.h, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit ], [ %i.h, %bb.e ], [ %i.h, %bb.m ], [ %i.h, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit ], [ %i.h, %bb.o ], [ %i.h, %bb.k ], [ %i.h, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit92 ], [ %i.h, %bb.n ] ; 2 uses
  %.not = icmp eq ptr %.347.jt0, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.b, %.critedge76.jt0, %bb.p, %bb.l, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit92, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %.preheader
  %.14 = phi i1 [ false, %.preheader ], [ false, %bb.b ], [ true, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit ], [ true, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit ], [ true, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit92 ], [ true, %bb.l ], [ false, %.critedge76.jt0 ], [ true, %bb.p ]
  ret i1 %.14
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor13VisitChildrenEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range.1211", align 8 ; 6 uses
  %3 = alloca %"struct.clang::ConstStmtIterator", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !513
  call void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.1211") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #17, !noalias !513
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.412.24.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.6.24.copyload = load i64, ptr %.sroa.6.24..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !513
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.d = icmp ne ptr %i.c, %.sroa.412.24.copyload
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp ne i64 %i.e, %.sroa.6.24.copyload
  %.not3.i16 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %.not3.i16, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit
  %i.g = phi i64 [ %i.u, %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit ], [ %i.e, %bb.a ]
  %i.h = phi ptr [ %i.s, %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit ], [ %i.c, %bb.a ]
  %i.i = and i64 %i.g, 3
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEdeEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  br label %_ZNK5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEdeEv.exit: ; preds = %.lr.ph, %bb.b
  %.in.i = phi ptr [ %i.k, %bb.b ], [ %i.h, %.lr.ph ]
  %i.l = load ptr, ptr %.in.i, align 8, !tbaa !430 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEdeEv.exit
  %i.m = call fastcc noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_126DerefFuncDeleteExprVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.l)
  br i1 %i.m, label %._crit_edge, label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNK5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEdeEv.exit
  %i.n = load i64, ptr %i.b, align 8, !tbaa !516  ; 2 uses
  %i.o = and i64 %i.n, 3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.q = load ptr, ptr %3, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.r, ptr %3, align 8, !tbaa !34
  br label %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit

bb.e:                                             ; preds = %.critedge
  %.not.i = icmp ult i64 %i.n, 4
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  br label %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true) #17
  br label %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit

_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.s = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.t = icmp ne ptr %i.s, %.sroa.412.24.copyload
  %i.u = load i64, ptr %i.b, align 8              ; 2 uses
  %i.v = icmp ne i64 %i.u, %.sroa.6.24.copyload
  %.not3.i = select i1 %i.t, i1 true, i1 %i.v
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit, %bb.c, %bb.a
  %.not3.i15 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i1 %.not3.i15
}

declare void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.1211") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor19VisitLambdaArgumentEPKN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.f, %bb.a
  %.tr68 = phi ptr [ %1, %bb.a ], [ %i.q, %bb.f ]
  %i.b = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %.tr68) #20 ; 3 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 511
  %.not = icmp eq i16 %i.d, 120
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !519
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %tailrecurse
  %.028 = phi ptr [ %i.f, %bb.b ], [ %i.b, %tailrecurse ]
  %i.g = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %.028) #20 ; 8 uses
  %i.h = load i16, ptr %i.g, align 8
  %i.i = and i16 %i.h, 511
  switch i16 %i.i, label %.loopexit [
    i16 73, label %bb.d
    i16 53, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !522  ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.thread54, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 127
  %i.o = add nsw i32 %i.n, -41
  %i.p = icmp ult i32 %i.o, 7
  br i1 %i.p, label %bb.f, label %.thread54

bb.f:                                             ; preds = %bb.e
  %i.q = tail call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.k) #17
  br label %tailrecurse

bb.g:                                             ; preds = %bb.c
  %i.r = tail call noundef ptr @_ZNK5clang10LambdaExpr7getBodyEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8, !tbaa !430
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !526, !inline_history !438
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.t, 1
  %i.u = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.u, label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit, label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit.thread

_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit.thread: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit: ; preds = %bb.h
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !430
  %i.w = call fastcc noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_126DerefFuncDeleteExprVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.v), !inline_history !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.w, label %.thread54, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit, %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit.thread
  %i.x = load i16, ptr %i.g, align 8
  %i.y = and i16 %i.x, 511
  %i.z = add nsw i16 %i.y, -119
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.z, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %.thread54, label %.preheader

.preheader:                                       ; preds = %.loopexit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !533
  %.not4371.not = icmp eq i32 %i.ab, 0
  br i1 %.not4371.not, label %.thread54, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !533
  %i.ae = zext i32 %i.ad to i64
  %.not43 = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %.not43, label %bb.j, label %.thread54, !llvm.loop !536

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.af = load i16, ptr %i.g, align 8
  %i.ag = and i16 %i.af, 511
  %.not.i.i.i.i = icmp eq i16 %i.ag, 118          ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.g, ptr null
  %i.ah = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.ah, ptr %i.ac
end_hunk_2

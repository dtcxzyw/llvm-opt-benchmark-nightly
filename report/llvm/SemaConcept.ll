Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaConcept?download=true
inline.NumInlined: 43754
inline.NumDeleted: 19584
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN12_GLOBAL__N_120HashParameterMapping20TraverseTemplateNameEN5clang12TemplateNameE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = and i32 %i.g, 1048575                    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1209, !nonnull !769, !align !770 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !84   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.n = load i32, ptr %i.m, align 8, !tbaa !855  ; 3 uses
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = icmp ult i32 %i.h, %i.o
  br i1 %i.p, label %bb.c, label %_ZN4llvm19dyn_cast_if_presentIN5clang24TemplateTemplateParmDeclENS1_12TemplateDeclEEEDaPT0_.exit.thread

bb.c:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang24TemplateTemplateParmDeclENS1_12TemplateDeclEEEDaPT0_.exit
  %i.q = icmp ult i32 %i.h, %i.n
  br i1 %i.q, label %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i32 %i.g, 20
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = xor i32 %i.h, -1                         ; 2 uses
  %i.u = add i32 %i.o, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !85   ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1036
  %.not.i10 = icmp ugt i64 %i.z, %i.s
  br i1 %.not.i10, label %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit, label %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit.thread

_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1035
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, 2147483647
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.af = add nsw i32 %i.n, %i.t
  %i.ag = add i32 %i.af, %i.l
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1035
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.s ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !835
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.an = load i8, ptr %i.am, align 8
  %i.ao = and i8 %i.an, 16
  %.not22 = icmp eq i8 %i.ao, 0
  %.pre25 = load ptr, ptr %0, align 8, !tbaa !1210 ; 3 uses
  br i1 %.not22, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre25, i64 13800
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !1205 ; 2 uses
  %.not23 = icmp eq i32 %i.aq, 0
  br i1 %.not23, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78, !noalias !2629
  %i.at = add i32 %i.aq, -1
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !835, !noalias !2629
  %i.aw = call noundef zeroext i1 @_ZNK5clang16TemplateArgument15isPackExpansionEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #25, !noalias !2629
  br i1 %i.aw, label %bb.h, label %_ZNK5clang4Sema34getPackSubstitutedTemplateArgumentENS_16TemplateArgumentE.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !2629
  call void @_ZNK5clang16TemplateArgument23getPackExpansionPatternEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::TemplateArgument") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #25, !noalias !2629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !835, !noalias !2629
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !2629
  br label %_ZNK5clang4Sema34getPackSubstitutedTemplateArgumentENS_16TemplateArgumentE.exit

_ZNK5clang4Sema34getPackSubstitutedTemplateArgumentENS_16TemplateArgumentE.exit: ; preds = %bb.g, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre = load ptr, ptr %0, align 8, !tbaa !1210
  br label %bb.i

bb.i:                                             ; preds = %_ZNK5clang4Sema34getPackSubstitutedTemplateArgumentENS_16TemplateArgumentE.exit, %bb.f, %bb.e
  %i.ax = phi ptr [ %.pre, %_ZNK5clang4Sema34getPackSubstitutedTemplateArgumentENS_16TemplateArgumentE.exit ], [ %.pre25, %bb.f ], [ %.pre25, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 232
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !771, !nonnull !769, !align !770
  call void @_ZNK5clang10ASTContext28getCanonicalTemplateArgumentERKNS_16TemplateArgumentE(ptr dead_on_unwind nonnull writable sret(%"class.clang::TemplateArgument") align 8 %7, ptr noundef nonnull align 8 dereferenceable(23904) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %6) #25
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !84 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !814
  %.not.i12 = icmp ult i32 %i.bc, %i.be
  br i1 %.not.i12, label %bb.k, label %bb.j, !prof !815

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE9push_backERKS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.bf = zext i32 %i.bc to i64
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !85
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.bi = load i32, ptr %i.bb, align 8, !tbaa !84
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bb, align 8, !tbaa !84
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE9push_backERKS2_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZN4llvm19dyn_cast_if_presentIN5clang24TemplateTemplateParmDeclENS1_12TemplateDeclEEEDaPT0_.exit.thread

_ZN4llvm19dyn_cast_if_presentIN5clang24TemplateTemplateParmDeclENS1_12TemplateDeclEEEDaPT0_.exit.thread: ; preds = %bb.a, %bb.b, %_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE9push_backERKS2_.exit, %_ZN4llvm19dyn_cast_if_presentIN5clang24TemplateTemplateParmDeclENS1_12TemplateDeclEEEDaPT0_.exit
  %.sroa.0.0.copyload = load i64, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0.copyload, ptr %2, align 8
  %i.bk = call noundef ptr @_ZNK5clang12TemplateName26getAsDependentTemplateNameEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25, !inline_history !2628 ; 2 uses
  %.not.i13 = icmp eq ptr %i.bk, null
  br i1 %.not.i13, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang24TemplateTemplateParmDeclENS1_12TemplateDeclEEEDaPT0_.exit.thread
  %.0.copyload.i.i.i.i15 = load i64, ptr %i.bk, align 8
  %i.bl = and i64 %.0.copyload.i.i.i.i15, -2
  %i.bm = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE27TraverseNestedNameSpecifierENS_19NestedNameSpecifierE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.bl), !inline_history !2628
  br i1 %i.bm, label %.critedge.i, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE20TraverseTemplateNameENS_12TemplateNameE.exit

bb.m:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang24TemplateTemplateParmDeclENS1_12TemplateDeclEEEDaPT0_.exit.thread
  %i.bn = call noundef ptr @_ZNK5clang12TemplateName26getAsQualifiedTemplateNameEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25, !inline_history !2628 ; 2 uses
  %.not12.i = icmp eq ptr %i.bn, null
  br i1 %.not12.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.0.copyload.i.i.i.i14 = load i64, ptr %i.bo, align 8
  %i.bp = and i64 %.0.copyload.i.i.i.i14, -2      ; 2 uses
  %.not24 = icmp eq i64 %i.bp, 0
  br i1 %.not24, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE27TraverseNestedNameSpecifierENS_19NestedNameSpecifierE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.bp), !inline_history !2628
  br i1 %i.bq, label %.critedge.i, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE20TraverseTemplateNameENS_12TemplateNameE.exit

.critedge.i:                                      ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  br label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE20TraverseTemplateNameENS_12TemplateNameE.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE20TraverseTemplateNameENS_12TemplateNameE.exit: ; preds = %bb.l, %bb.o, %.critedge.i
  %.3.i = phi i1 [ true, %.critedge.i ], [ false, %bb.l ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit.thread

_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit.thread: ; preds = %bb.d, %bb.c, %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE20TraverseTemplateNameENS_12TemplateNameE.exit
  %.1 = phi i1 [ %.3.i, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE20TraverseTemplateNameENS_12TemplateNameE.exit ], [ true, %_ZNK5clang30MultiLevelTemplateArgumentList19hasTemplateArgumentEjj.exit ], [ true, %bb.c ], [ true, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.1498", align 8 ; 268 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELb1EE9push_backES9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %_ZN4llvm23SmallVectorTemplateBaseINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELb1EE9push_backES9_.exit23, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, -5                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !814
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !815

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELb1EE15growAndPushBackES9_(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %i.b)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELb1EE9push_backES9_.exit

bb.e:                                             ; preds = %bb.c
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %2, align 8, !tbaa !85
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  store i64 %i.b, ptr %i.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !84
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !84
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELb1EE9push_backES9_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELb1EE9push_backES9_.exit23: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.n, align 4, !tbaa !814
  %i.o = ptrtoint ptr %1 to i64
  %i.p = and i64 %i.o, -5
  store i64 %i.p, ptr %i.l, align 8
  store i32 1, ptr %i.m, align 8, !tbaa !84
  br label %bb.f

thread-pre-split.loopexit:                        ; preds = %.lr.ph.i.i
  %.pr.pre = load i32, ptr %i.m, align 8, !tbaa !84
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.loopexit, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, %bb.g
  %.pr = phi i32 [ %.pr.pre, %thread-pre-split.loopexit ], [ %i.lc, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread ], [ %i.w, %bb.g ] ; 2 uses
  %.not.i24 = icmp eq i32 %.pr, 0
  br i1 %.not.i24, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELb1EE9push_backES9_.exit23, %thread-pre-split
  %4 = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELb1EE9push_backES9_.exit23 ], [ %.pr, %thread-pre-split ] ; 2 uses
  %5 = load ptr, ptr %3, align 8, !tbaa !85
  %i.q = zext i32 %4 to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %i.s, align 8 ; 3 uses
  %i.t = and i64 %.0.copyload.i.i.i, -8
  %i.u = inttoptr i64 %i.t to ptr                 ; 268 uses
  %i.v = and i64 %.0.copyload.i.i.i, 4
  %.not296 = icmp eq i64 %i.v, 0
  br i1 %.not296, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add i32 %4, -1                           ; 2 uses
  store i32 %i.w, ptr %i.m, align 8, !tbaa !84
  br label %thread-pre-split, !llvm.loop !2630

bb.h:                                             ; preds = %bb.f
  %i.x = or disjoint i64 %.0.copyload.i.i.i, 4
  store i64 %i.x, ptr %i.s, align 8
  %i.y = load i32, ptr %i.m, align 8, !tbaa !84   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = load i16, ptr %i.u, align 8
  %i.ab = and i16 %i.aa, 511
  switch i16 %i.ab, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread [
    i16 266, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit
    i16 1, label %.split293
    i16 2, label %.split292
    i16 3, label %.split291
    i16 4, label %.split290
    i16 5, label %.split289
    i16 6, label %.split288
    i16 7, label %.split287
    i16 8, label %.split286
    i16 9, label %.split285
    i16 10, label %.split284
    i16 11, label %.split283
    i16 12, label %.split282
    i16 13, label %.split281
    i16 14, label %.split280
    i16 15, label %.split279
    i16 16, label %.split278
    i16 17, label %.split277
    i16 18, label %.split276
    i16 19, label %.split275
    i16 20, label %.split274
    i16 21, label %.split273
    i16 22, label %.split272
    i16 23, label %.split271
    i16 24, label %.split270
    i16 25, label %.split269
    i16 26, label %.split268
    i16 27, label %.split267
    i16 28, label %.split266
    i16 29, label %.split265
    i16 30, label %.split264
    i16 31, label %.split263
    i16 32, label %.split262
    i16 33, label %.split261
    i16 34, label %.split260
    i16 35, label %.split259
    i16 36, label %.split258
    i16 37, label %.split257
    i16 38, label %.split256
    i16 39, label %.split255
    i16 40, label %.split254
    i16 41, label %.split253
    i16 42, label %.split252
    i16 43, label %.split251
    i16 44, label %.split250
    i16 45, label %.split249
    i16 46, label %.split248
    i16 47, label %.split247
    i16 48, label %.split246
    i16 49, label %.split245
    i16 50, label %.split244
    i16 51, label %.split243
    i16 52, label %.split242
    i16 53, label %.split241
    i16 54, label %.split240
    i16 55, label %.split239
    i16 56, label %.split238
    i16 57, label %.split237
    i16 58, label %.split236
    i16 59, label %.split235
    i16 60, label %.split234
    i16 61, label %.split233
    i16 62, label %.split232
    i16 63, label %.split231
    i16 64, label %.split230
    i16 65, label %.split229
    i16 66, label %.split228
    i16 67, label %.split227
    i16 68, label %.split226
    i16 69, label %.split225
    i16 70, label %.split224
    i16 71, label %.split223
    i16 72, label %.split222
    i16 73, label %.split221
    i16 74, label %.split220
    i16 75, label %.split219
    i16 76, label %.split218
    i16 77, label %.split217
    i16 78, label %.split216
    i16 79, label %.split215
    i16 80, label %.split214
    i16 81, label %.split213
    i16 82, label %.split212
    i16 83, label %.split211
    i16 84, label %.split210
    i16 85, label %.split209
    i16 86, label %.split208
    i16 87, label %.split207
    i16 88, label %.split206
    i16 89, label %.split205
    i16 90, label %.split204
    i16 91, label %bb.i
    i16 92, label %.split202
    i16 93, label %.split201
    i16 94, label %.split200
    i16 95, label %.split199
    i16 96, label %.split198
    i16 97, label %.split197
    i16 98, label %.split196
    i16 99, label %.split195
    i16 100, label %.split194
    i16 101, label %.split193
    i16 102, label %.split192
    i16 103, label %.split191
    i16 104, label %.split190
    i16 105, label %.split189
    i16 106, label %.split188
    i16 107, label %.split187
    i16 108, label %.split186
    i16 109, label %.split185
    i16 110, label %.split184
    i16 111, label %.split183
    i16 112, label %.split182
    i16 113, label %.split181
    i16 114, label %.split180
    i16 115, label %.split179
    i16 116, label %.split178
    i16 117, label %.split177
    i16 118, label %.split176
    i16 119, label %.split175
    i16 120, label %.split174
    i16 121, label %.split173
    i16 122, label %.split172
    i16 123, label %.split171
    i16 124, label %.split170
    i16 125, label %.split169
    i16 126, label %.split168
    i16 127, label %.split167
    i16 128, label %.split166
    i16 129, label %.split165
    i16 130, label %.split164
    i16 131, label %.split163
    i16 132, label %.split162
    i16 133, label %.split161
    i16 134, label %.split160
    i16 135, label %.split159
    i16 136, label %.split158
    i16 137, label %.split157
    i16 138, label %.split156
    i16 139, label %.split155
    i16 140, label %.split154
    i16 141, label %.split153
    i16 142, label %.split152
    i16 143, label %.split151
    i16 144, label %.split150
    i16 145, label %.split149
    i16 146, label %.split148
    i16 147, label %.split147
    i16 148, label %.split146
    i16 149, label %.split145
    i16 150, label %.split144
    i16 151, label %.split143
    i16 152, label %.split142
    i16 153, label %.split141
    i16 154, label %.split140
    i16 155, label %.split139
    i16 156, label %.split138
    i16 157, label %.split137
    i16 158, label %.split136
    i16 159, label %.split135
    i16 160, label %.split134
    i16 161, label %.split133
    i16 162, label %.split132
    i16 163, label %.split131
    i16 164, label %.split130
    i16 165, label %.split129
    i16 166, label %.split128
    i16 167, label %.split127
    i16 168, label %.split126
    i16 169, label %.split125
    i16 170, label %.split124
    i16 171, label %.split123
    i16 172, label %.split122
    i16 173, label %.split121
    i16 174, label %.split120
    i16 175, label %.split119
    i16 176, label %.split118
    i16 177, label %.split117
    i16 178, label %.split116
    i16 179, label %.split115
    i16 180, label %.split114
    i16 181, label %.split113
    i16 182, label %.split112
    i16 183, label %.split111
    i16 184, label %.split110
    i16 185, label %.split109
    i16 186, label %.split108
    i16 187, label %.split107
    i16 188, label %.split106
end_hunk_0
begin_hunk_1_@_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE:bb.a

.split75:                                         ; preds = %bb.h
  %i.ja = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE31TraverseOMPGenericLoopDirectiveEPNS_23OMPGenericLoopDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.ja, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split74:                                         ; preds = %bb.h
  %i.jb = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE27TraverseOMPForSimdDirectiveEPNS_19OMPForSimdDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jb, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split73:                                         ; preds = %bb.h
  %i.jc = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE23TraverseOMPForDirectiveEPNS_15OMPForDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jc, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split72:                                         ; preds = %bb.h
  %i.jd = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE34TraverseOMPDistributeSimdDirectiveEPNS_26OMPDistributeSimdDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jd, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split71:                                         ; preds = %bb.h
  %i.je = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE45TraverseOMPDistributeParallelForSimdDirectiveEPNS_37OMPDistributeParallelForSimdDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.je, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split70:                                         ; preds = %bb.h
  %i.jf = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE41TraverseOMPDistributeParallelForDirectiveEPNS_33OMPDistributeParallelForDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jf, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split69:                                         ; preds = %bb.h
  %i.jg = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE30TraverseOMPDistributeDirectiveEPNS_22OMPDistributeDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jg, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split68:                                         ; preds = %bb.h
  %i.jh = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE26TraverseOMPUnrollDirectiveEPNS_18OMPUnrollDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jh, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split67:                                         ; preds = %bb.h
  %i.ji = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE24TraverseOMPTileDirectiveEPNS_16OMPTileDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.ji, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split66:                                         ; preds = %bb.h
  %i.jj = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE26TraverseOMPStripeDirectiveEPNS_18OMPStripeDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jj, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split65:                                         ; preds = %bb.h
  %i.jk = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE25TraverseOMPSplitDirectiveEPNS_17OMPSplitDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jk, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split64:                                         ; preds = %bb.h
  %i.jl = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE27TraverseOMPReverseDirectiveEPNS_19OMPReverseDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jl, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split63:                                         ; preds = %bb.h
  %i.jm = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE31TraverseOMPInterchangeDirectiveEPNS_23OMPInterchangeDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jm, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split62:                                         ; preds = %bb.h
  %i.jn = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE27TraverseOMPInteropDirectiveEPNS_19OMPInteropDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jn, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split61:                                         ; preds = %bb.h
  %i.jo = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE25TraverseOMPFlushDirectiveEPNS_17OMPFlushDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jo, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split60:                                         ; preds = %bb.h
  %i.jp = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE25TraverseOMPErrorDirectiveEPNS_17OMPErrorDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jp, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split59:                                         ; preds = %bb.h
  %i.jq = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE28TraverseOMPDispatchDirectiveEPNS_20OMPDispatchDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jq, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split58:                                         ; preds = %bb.h
  %i.jr = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE26TraverseOMPDepobjDirectiveEPNS_18OMPDepobjDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jr, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split57:                                         ; preds = %bb.h
  %i.js = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE28TraverseOMPCriticalDirectiveEPNS_20OMPCriticalDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.js, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split56:                                         ; preds = %bb.h
  %i.jt = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE24TraverseOMPFuseDirectiveEPNS_16OMPFuseDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jt, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split55:                                         ; preds = %bb.h
  %i.ju = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE37TraverseOMPCancellationPointDirectiveEPNS_29OMPCancellationPointDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.ju, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split54:                                         ; preds = %bb.h
  %i.jv = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE26TraverseOMPCancelDirectiveEPNS_18OMPCancelDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jv, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split53:                                         ; preds = %bb.h
  %i.jw = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE27TraverseOMPBarrierDirectiveEPNS_19OMPBarrierDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jw, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split52:                                         ; preds = %bb.h
  %i.jx = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE26TraverseOMPAtomicDirectiveEPNS_18OMPAtomicDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jx, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split51:                                         ; preds = %bb.h
  %i.jy = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE26TraverseOMPAssumeDirectiveEPNS_18OMPAssumeDirectiveEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.jy, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split50:                                         ; preds = %bb.h
  %i.jz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !1067
  %i.kb = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ka, ptr noundef null), !inline_history !2639
  br i1 %i.kb, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split49:                                         ; preds = %bb.h
  %i.kc = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16TraverseNullStmtEPNS_8NullStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.kc, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split48:                                         ; preds = %bb.h
  %i.kd = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE29TraverseMSDependentExistsStmtEPNS_21MSDependentExistsStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.kd, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split47:                                         ; preds = %bb.h
  %i.ke = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE20TraverseContinueStmtEPNS_12ContinueStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.ke, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split46:                                         ; preds = %bb.h
  %i.kf = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE17TraverseBreakStmtEPNS_9BreakStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.kf, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split45:                                         ; preds = %bb.h
  %i.kg = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE24TraverseIndirectGotoStmtEPNS_16IndirectGotoStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.kg, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split44:                                         ; preds = %bb.h
  %i.kh = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE14TraverseIfStmtEPNS_6IfStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.kh, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split43:                                         ; preds = %bb.h
  %i.ki = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16TraverseGotoStmtEPNS_8GotoStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.ki, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split42:                                         ; preds = %bb.h
  %i.kj = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE15TraverseForStmtEPNS_7ForStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.kj, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split41:                                         ; preds = %bb.h
  %i.kk = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE14TraverseDoStmtEPNS_6DoStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.kk, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split40:                                         ; preds = %bb.h
  %i.kl = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE17TraverseDeferStmtEPNS_9DeferStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.kl, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split39:                                         ; preds = %bb.h
  %i.km = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16TraverseDeclStmtEPNS_8DeclStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u)
  br i1 %i.km, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split38:                                         ; preds = %bb.h
  %i.kn = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !1067
  %i.kp = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ko, ptr noundef nonnull %3), !inline_history !2640
  br i1 %i.kp, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split37:                                         ; preds = %bb.h
  %i.kq = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !1067
  %i.ks = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.kr, ptr noundef nonnull %3), !inline_history !2641
  br i1 %i.ks, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split36:                                         ; preds = %bb.h
  %i.kt = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE20TraverseCompoundStmtEPNS_12CompoundStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.kt, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split35:                                         ; preds = %bb.h
  %i.ku = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE20TraverseCapturedStmtEPNS_12CapturedStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.ku, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split34:                                         ; preds = %bb.h
  %i.kv = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE18TraverseCXXTryStmtEPNS_10CXXTryStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.kv, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split33:                                         ; preds = %bb.h
  %i.kw = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE23TraverseCXXForRangeStmtEPNS_15CXXForRangeStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.kw, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split32:                                         ; preds = %bb.h
  %i.kx = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE31TraverseCXXExpansionStmtPatternEPNS_23CXXExpansionStmtPatternEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.kx, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split31:                                         ; preds = %bb.h
  %i.ky = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE37TraverseCXXExpansionStmtInstantiationEPNS_29CXXExpansionStmtInstantiationEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.ky, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split203:                                        ; preds = %bb.h
  %i.kz = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE20TraverseCXXCatchStmtEPNS_12CXXCatchStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.kz, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

.split:                                           ; preds = %bb.h
  %i.la = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE17TraverseMSAsmStmtEPNS_9MSAsmStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.la, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit: ; preds = %bb.h
  %i.lb = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE18TraverseGCCAsmStmtEPNS_10GCCAsmStmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIPNS_4StmtELj1EbNS6_21PointerLikeTypeTraitsISA_EENS6_18PointerIntPairInfoISA_Lj1ESC_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %3), !inline_history !2631
  br i1 %i.lb, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread, label %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread: ; preds = %bb.h, %bb.i, %.split293, %.split292, %.split291, %.split290, %.split289, %.split288, %.split287, %.split286, %.split285, %.split284, %.split283, %.split282, %.split281, %.split280, %.split279, %.split278, %.split277, %.split276, %.split275, %.split274, %.split273, %.split272, %.split271, %.split270, %.split269, %.split268, %.split267, %.split266, %.split265, %.split264, %.split263, %.split262, %.split261, %.split260, %.split259, %.split258, %.split257, %.split256, %.split255, %.split254, %.split253, %.split252, %.split251, %.split250, %.split249, %.split248, %.split247, %.split246, %.split245, %.split244, %.split243, %.split242, %.split241, %.split240, %.split239, %.split238, %.split237, %.split236, %.split235, %.split234, %.split233, %.split232, %.split231, %.split230, %.split229, %.split228, %.split227, %.split226, %.split225, %.split224, %.split223, %.split222, %.split221, %.split220, %.split219, %.split218, %.split217, %.split216, %.split215, %.split214, %.split213, %.split212, %.split211, %.split210, %.split209, %.split208, %.split207, %.split206, %.split205, %.split204, %.split203, %.split202, %.split201, %.split200, %.split199, %.split198, %.split197, %.split196, %.split195, %.split194, %.split193, %.split192, %.split191, %.split190, %.split189, %.split188, %.split187, %.split186, %.split185, %.split184, %.split183, %.split182, %.split181, %.split180, %.split179, %.split178, %.split177, %.split176, %.split175, %.split174, %.split173, %.split172, %.split171, %.split170, %.split169, %.split168, %.split167, %.split166, %.split165, %.split164, %.split163, %.split162, %.split161, %.split160, %.split159, %.split158, %.split157, %.split156, %.split155, %.split154, %.split153, %.split152, %.split151, %.split150, %.split149, %.split148, %.split147, %.split146, %.split145, %.split144, %.split143, %.split142, %.split141, %.split140, %.split139, %.split138, %.split137, %.split136, %.split135, %.split134, %.split133, %.split132, %.split131, %.split130, %.split129, %.split128, %.split127, %.split126, %.split125, %.split124, %.split123, %.split122, %.split121, %.split120, %.split119, %.split118, %.split117, %.split116, %.split115, %.split114, %.split113, %.split112, %.split111, %.split110, %.split109, %.split108, %.split107, %.split106, %.split105, %.split104, %.split103, %.split102, %.split101, %.split100, %.split99, %.split98, %.split97, %.split96, %.split95, %.split94, %.split93, %.split92, %.split91, %.split90, %.split89, %.split88, %.split87, %.split86, %.split85, %.split84, %.split83, %.split82, %.split81, %.split80, %.split79, %.split78, %.split77, %.split76, %.split75, %.split74, %.split73, %.split72, %.split71, %.split70, %.split69, %.split68, %.split67, %.split66, %.split65, %.split64, %.split63, %.split62, %.split61, %.split60, %.split59, %.split58, %.split57, %.split56, %.split55, %.split54, %.split53, %.split52, %.split51, %.split50, %.split49, %.split48, %.split47, %.split46, %.split45, %.split44, %.split43, %.split42, %.split41, %.split40, %.split39, %.split38, %.split37, %.split36, %.split35, %.split34, %.split33, %.split32, %.split31, %.split, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit
  %.idx = shl nuw nsw i64 %i.z, 3                 ; 2 uses
  %i.lc = load i32, ptr %i.m, align 8, !tbaa !84  ; 3 uses
  %i.ld = zext i32 %i.lc to i64
  %.idx297 = shl nuw nsw i64 %i.ld, 3
  %i.le = icmp ne i32 %i.y, %i.lc
  %i.lf = add nsw i64 %.idx297, -8                ; 2 uses
  %i.lg = icmp slt i64 %.idx, %i.lf
  %or.cond.i.i = select i1 %i.le, i1 %i.lg, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %thread-pre-split

.lr.ph.i.i.preheader:                             ; preds = %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit.thread
  %6 = load ptr, ptr %3, align 8, !tbaa !85       ; 2 uses
  %.012.i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 %.idx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.012.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.lj, %.lr.ph.i.i ], [ %i.lh, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.0913.i.i, align 8, !tbaa !78
  %i.li = load i64, ptr %.014.i.i, align 8, !tbaa !78
  store i64 %i.li, ptr %.0913.i.i, align 8, !tbaa !78
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %.014.i.i, align 8, !tbaa !78
  %i.lj = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 8 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -8 ; 2 uses
  %i.lk = icmp ult ptr %i.lj, %.0.i.i
  br i1 %i.lk, label %.lr.ph.i.i, label %thread-pre-split.loopexit, !llvm.loop !2642

_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread: ; preds = %.split292, %.split291, %.split290, %.split289, %.split288, %.split287, %.split286, %.split285, %.split284, %.split283, %.split282, %.split281, %.split280, %.split279, %.split278, %.split277, %.split276, %.split275, %.split274, %.split273, %.split272, %.split271, %.split270, %.split269, %.split268, %.split267, %.split266, %.split265, %.split264, %.split263, %.split262, %.split261, %.split260, %.split259, %.split258, %.split257, %.split256, %.split255, %.split254, %.split253, %.split252, %.split251, %.split250, %.split249, %.split248, %.split247, %.split246, %.split245, %.split244, %.split243, %.split242, %.split241, %.split240, %.split239, %.split238, %.split237, %.split236, %.split235, %.split234, %.split233, %.split232, %.split231, %.split230, %.split229, %.split228, %.split227, %.split226, %.split225, %.split224, %.split223, %.split222, %.split221, %.split220, %.split219, %.split218, %.split217, %.split216, %.split215, %.split214, %.split213, %.split212, %.split211, %.split210, %.split209, %.split208, %.split207, %.split206, %.split205, %.split204, %.split203, %.split202, %.split201, %.split200, %.split199, %.split198, %.split197, %.split196, %.split195, %.split194, %.split193, %.split192, %.split191, %.split190, %.split189, %.split188, %.split187, %.split186, %.split185, %.split184, %.split183, %.split182, %.split181, %.split180, %.split179, %.split178, %.split177, %.split176, %.split175, %.split174, %.split173, %.split172, %.split171, %.split170, %.split169, %.split168, %.split167, %.split166, %.split165, %.split164, %.split163, %.split162, %.split161, %.split160, %.split159, %.split158, %.split157, %.split156, %.split155, %.split154, %.split153, %.split152, %.split151, %.split150, %.split149, %.split148, %.split147, %.split146, %.split145, %.split144, %.split143, %.split142, %.split141, %.split140, %.split139, %.split138, %.split137, %.split136, %.split135, %.split134, %.split133, %.split132, %.split131, %.split130, %.split129, %.split128, %.split127, %.split126, %.split125, %.split124, %.split123, %.split122, %.split121, %.split120, %.split119, %.split118, %.split117, %.split116, %.split115, %.split114, %.split113, %.split112, %.split111, %.split110, %.split109, %.split108, %.split107, %.split106, %.split105, %.split104, %.split103, %.split102, %.split101, %.split100, %.split99, %.split98, %.split97, %.split96, %.split95, %.split94, %.split93, %.split92, %.split91, %.split90, %.split89, %.split88, %.split87, %.split86, %.split85, %.split84, %.split83, %.split82, %.split81, %.split80, %.split79, %.split78, %.split77, %.split76, %.split75, %.split74, %.split73, %.split72, %.split71, %.split70, %.split69, %.split68, %.split67, %.split66, %.split65, %.split64, %.split63, %.split62, %.split61, %.split60, %.split59, %.split58, %.split57, %.split56, %.split55, %.split54, %.split53, %.split52, %.split51, %.split50, %.split49, %.split48, %.split47, %.split46, %.split45, %.split44, %.split43, %.split42, %.split41, %.split40, %.split39, %.split38, %.split37, %.split36, %.split35, %.split34, %.split33, %.split32, %.split31, %.split, %.split293, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit, %thread-pre-split
  %.not.i24.lcssa = phi i1 [ false, %.split292 ], [ false, %.split291 ], [ false, %.split290 ], [ false, %.split289 ], [ false, %.split288 ], [ false, %.split287 ], [ false, %.split286 ], [ false, %.split285 ], [ false, %.split284 ], [ false, %.split283 ], [ false, %.split282 ], [ false, %.split281 ], [ false, %.split280 ], [ false, %.split279 ], [ false, %.split278 ], [ false, %.split277 ], [ false, %.split276 ], [ false, %.split275 ], [ false, %.split274 ], [ false, %.split273 ], [ false, %.split272 ], [ false, %.split271 ], [ false, %.split270 ], [ false, %.split269 ], [ false, %.split268 ], [ false, %.split267 ], [ false, %.split266 ], [ false, %.split265 ], [ false, %.split264 ], [ false, %.split263 ], [ false, %.split262 ], [ false, %.split261 ], [ false, %.split260 ], [ false, %.split259 ], [ false, %.split258 ], [ false, %.split257 ], [ false, %.split256 ], [ false, %.split255 ], [ false, %.split254 ], [ false, %.split253 ], [ false, %.split252 ], [ false, %.split251 ], [ false, %.split250 ], [ false, %.split249 ], [ false, %.split248 ], [ false, %.split247 ], [ false, %.split246 ], [ false, %.split245 ], [ false, %.split244 ], [ false, %.split243 ], [ false, %.split242 ], [ false, %.split241 ], [ false, %.split240 ], [ false, %.split239 ], [ false, %.split238 ], [ false, %.split237 ], [ false, %.split236 ], [ false, %.split235 ], [ false, %.split234 ], [ false, %.split233 ], [ false, %.split232 ], [ false, %.split231 ], [ false, %.split230 ], [ false, %.split229 ], [ false, %.split228 ], [ false, %.split227 ], [ false, %.split226 ], [ false, %.split225 ], [ false, %.split224 ], [ false, %.split223 ], [ false, %.split222 ], [ false, %.split221 ], [ false, %.split220 ], [ false, %.split219 ], [ false, %.split218 ], [ false, %.split217 ], [ false, %.split216 ], [ false, %.split215 ], [ false, %.split214 ], [ false, %.split213 ], [ false, %.split212 ], [ false, %.split211 ], [ false, %.split210 ], [ false, %.split209 ], [ false, %.split208 ], [ false, %.split207 ], [ false, %.split206 ], [ false, %.split205 ], [ false, %.split204 ], [ false, %.split203 ], [ false, %.split202 ], [ false, %.split201 ], [ false, %.split200 ], [ false, %.split199 ], [ false, %.split198 ], [ false, %.split197 ], [ false, %.split196 ], [ false, %.split195 ], [ false, %.split194 ], [ false, %.split193 ], [ false, %.split192 ], [ false, %.split191 ], [ false, %.split190 ], [ false, %.split189 ], [ false, %.split188 ], [ false, %.split187 ], [ false, %.split186 ], [ false, %.split185 ], [ false, %.split184 ], [ false, %.split183 ], [ false, %.split182 ], [ false, %.split181 ], [ false, %.split180 ], [ false, %.split179 ], [ false, %.split178 ], [ false, %.split177 ], [ false, %.split176 ], [ false, %.split175 ], [ false, %.split174 ], [ false, %.split173 ], [ false, %.split172 ], [ false, %.split171 ], [ false, %.split170 ], [ false, %.split169 ], [ false, %.split168 ], [ false, %.split167 ], [ false, %.split166 ], [ false, %.split165 ], [ false, %.split164 ], [ false, %.split163 ], [ false, %.split162 ], [ false, %.split161 ], [ false, %.split160 ], [ false, %.split159 ], [ false, %.split158 ], [ false, %.split157 ], [ false, %.split156 ], [ false, %.split155 ], [ false, %.split154 ], [ false, %.split153 ], [ false, %.split152 ], [ false, %.split151 ], [ false, %.split150 ], [ false, %.split149 ], [ false, %.split148 ], [ false, %.split147 ], [ false, %.split146 ], [ false, %.split145 ], [ false, %.split144 ], [ false, %.split143 ], [ false, %.split142 ], [ false, %.split141 ], [ false, %.split140 ], [ false, %.split139 ], [ false, %.split138 ], [ false, %.split137 ], [ false, %.split136 ], [ false, %.split135 ], [ false, %.split134 ], [ false, %.split133 ], [ false, %.split132 ], [ false, %.split131 ], [ false, %.split130 ], [ false, %.split129 ], [ false, %.split128 ], [ false, %.split127 ], [ false, %.split126 ], [ false, %.split125 ], [ false, %.split124 ], [ false, %.split123 ], [ false, %.split122 ], [ false, %.split121 ], [ false, %.split120 ], [ false, %.split119 ], [ false, %.split118 ], [ false, %.split117 ], [ false, %.split116 ], [ false, %.split115 ], [ false, %.split114 ], [ false, %.split113 ], [ false, %.split112 ], [ false, %.split111 ], [ false, %.split110 ], [ false, %.split109 ], [ false, %.split108 ], [ false, %.split107 ], [ false, %.split106 ], [ false, %.split105 ], [ false, %.split104 ], [ false, %.split103 ], [ false, %.split102 ], [ false, %.split101 ], [ false, %.split100 ], [ false, %.split99 ], [ false, %.split98 ], [ false, %.split97 ], [ false, %.split96 ], [ false, %.split95 ], [ false, %.split94 ], [ false, %.split93 ], [ false, %.split92 ], [ false, %.split91 ], [ false, %.split90 ], [ false, %.split89 ], [ false, %.split88 ], [ false, %.split87 ], [ false, %.split86 ], [ false, %.split85 ], [ false, %.split84 ], [ false, %.split83 ], [ false, %.split82 ], [ false, %.split81 ], [ false, %.split80 ], [ false, %.split79 ], [ false, %.split78 ], [ false, %.split77 ], [ false, %.split76 ], [ false, %.split75 ], [ false, %.split74 ], [ false, %.split73 ], [ false, %.split72 ], [ false, %.split71 ], [ false, %.split70 ], [ false, %.split69 ], [ false, %.split68 ], [ false, %.split67 ], [ false, %.split66 ], [ false, %.split65 ], [ false, %.split64 ], [ false, %.split63 ], [ false, %.split62 ], [ false, %.split61 ], [ false, %.split60 ], [ false, %.split59 ], [ false, %.split58 ], [ false, %.split57 ], [ false, %.split56 ], [ false, %.split55 ], [ false, %.split54 ], [ false, %.split53 ], [ false, %.split52 ], [ false, %.split51 ], [ false, %.split50 ], [ false, %.split49 ], [ false, %.split48 ], [ false, %.split47 ], [ false, %.split46 ], [ false, %.split45 ], [ false, %.split44 ], [ false, %.split43 ], [ false, %.split42 ], [ false, %.split41 ], [ false, %.split40 ], [ false, %.split39 ], [ false, %.split38 ], [ false, %.split37 ], [ false, %.split36 ], [ false, %.split35 ], [ false, %.split34 ], [ false, %.split33 ], [ false, %.split32 ], [ false, %.split31 ], [ false, %.split ], [ false, %.split293 ], [ false, %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16dataTraverseNodeEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE.exit ], [ true, %thread-pre-split ]
  %i.ll = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.l
  br i1 %i.lm, label %_ZN4llvm11SmallVectorINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELj8EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread
  call void @free(ptr noundef %i.ll) #25
  br label %_ZN4llvm11SmallVectorINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELj8EED2Ev.exit: ; preds = %_ZSt7reverseIPN4llvm14PointerIntPairIPN5clang4StmtELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEEvT_SB_.exit.thread, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELb1EE9push_backES9_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELb1EE9push_backES9_.exit: ; preds = %bb.e, %bb.d, %bb.a, %_ZN4llvm11SmallVectorINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELj8EED2Ev.exit
  %.5 = phi i1 [ true, %bb.a ], [ %.not.i24.lcssa, %_ZN4llvm11SmallVectorINS_14PointerIntPairIPN5clang4StmtELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELj8EED2Ev.exit ], [ true, %bb.d ], [ true, %bb.e ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE25TraverseConstantArrayTypeEPNS_17ConstantArrayTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 16, !tbaa !78
  %i.b = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseTypeENS_8QualTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext true)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 16
  %i.e = and i32 %i.d, 33554432
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit

_ZNK5clang17ConstantArrayType11getSizeExprEv.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1223 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit8

_ZNK5clang17ConstantArrayType11getSizeExprEv.exit8: ; preds = %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit
  %i.j = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.i, ptr noundef null)
  br i1 %i.j, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread, label %bb.c

_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread: ; preds = %bb.b, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit8, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit8, %bb.a, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread
  %.0 = phi i1 [ true, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread ], [ false, %bb.a ], [ false, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit8 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE26TraverseArrayParameterTypeEPNS_18ArrayParameterTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 16, !tbaa !78
  %i.b = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseTypeENS_8QualTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext true)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 16
  %i.e = and i32 %i.d, 33554432
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit

_ZNK5clang17ConstantArrayType11getSizeExprEv.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1223 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit8

_ZNK5clang17ConstantArrayType11getSizeExprEv.exit8: ; preds = %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit
  %i.j = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.i, ptr noundef null)
  br i1 %i.j, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread, label %bb.c

_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread: ; preds = %bb.b, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit8, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit8, %bb.a, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread
  %.0 = phi i1 [ true, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit.thread ], [ false, %bb.a ], [ false, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit8 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE31TraverseDependentSizedArrayTypeEPNS_23DependentSizedArrayTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 16, !tbaa !78
  %i.b = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseTypeENS_8QualTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext true)
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1226 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.d, ptr noundef null)
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE25TraverseVariableArrayTypeEPNS_17VariableArrayTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 16, !tbaa !78
  %i.b = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseTypeENS_8QualTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext true)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1228
  %i.e = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.d, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE27TraverseCountAttributedTypeEPNS_19CountAttributedTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1233 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseStmtEPNS_4StmtEPN4llvm15SmallVectorImplINS6_14PointerIntPairIS5_Lj1EbNS6_21PointerLikeTypeTraitsIS5_EENS6_18PointerIntPairInfoIS5_Lj1ESA_EEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.b, ptr noundef null)
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 16, !tbaa !78
  %i.e = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseTypeENS_8QualTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE16TraverseAutoTypeEPNS_8AutoTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !78
  %i.b = tail call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE12TraverseTypeENS_8QualTypeEb(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext true)
  br i1 %i.b, label %bb.b, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE25TraverseTemplateArgumentsEN4llvm8ArrayRefINS_16TemplateArgumentEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1236
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE25TraverseTemplateArgumentsEN4llvm8ArrayRefINS_16TemplateArgumentEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !78   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx = mul nuw nsw i64 %i.h, 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not.i10 = icmp eq i32 %i.g, 0
  br i1 %.not.i10, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_120HashParameterMappingEE25TraverseTemplateArgumentsEN4llvm8ArrayRefINS_16TemplateArgumentEEE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  br label %.lr.ph

bb.d:                                             ; preds = %.split, %_ZN12_GLOBAL__N_120HashParameterMapping24TraverseTemplateArgumentERKN5clang16TemplateArgumentE.exit
end_hunk_1

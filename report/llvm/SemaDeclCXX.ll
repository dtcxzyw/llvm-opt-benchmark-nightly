Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDeclCXX?download=true
inline.NumInlined: 22648
inline.NumDeleted: 9795
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5clang4Sema39ActOnStartFunctionDeclarationDeclaratorERNS_10DeclaratorEj:bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.g = load i32, ptr %i.f, align 4, !tbaa !112
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN4llvm23SmallVectorTemplateBaseIN5clang29InventedTemplateParameterInfoELb0EE18growAndEmplaceBackIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  br label %_ZN4llvm15SmallVectorImplIN5clang29InventedTemplateParameterInfoEE12emplace_backIJEEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = zext i32 %i.e to i64
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %i.i ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i8 0, i64 56, i1 false)
  store ptr %i.m, ptr %i.l, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 4, ptr %i.n, align 4, !tbaa !112
  %i.o = load i32, ptr %i.d, align 8, !tbaa !101
  %i.p = add i32 %i.o, 1                          ; 2 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !101
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -56
  br label %_ZN4llvm15SmallVectorImplIN5clang29InventedTemplateParameterInfoEE12emplace_backIJEEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplIN5clang29InventedTemplateParameterInfoEE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %i.t, %bb.c ] ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 840
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1284 ; 2 uses
  %i.u = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.u, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIN5clang29InventedTemplateParameterInfoEE12emplace_backIJEEERS2_DpOT_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 832
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8, !tbaa !2181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.w, align 8, !tbaa !116
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.x, align 8, !tbaa !116
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.0.0.copyload.i, ptr %3, align 8, !tbaa !2181
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1284
  %i.z = call noundef ptr @_ZN5clang4Sema39MatchTemplateParametersToScopeSpecifierENS_14SourceLocationES1_RKNS_12CXXScopeSpecEPNS_20TemplateIdAnnotationEN4llvm8ArrayRefIPNS_21TemplateParameterListEEEbRbSC_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i.i, i32 %.sroa.0.0.copyload.i16, ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1117") align 8 %3, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, i1 noundef zeroext true) #26 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 536870911
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef i32 @_ZNK5clang21TemplateParameterList8getDepthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z) #26
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !3131
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !100
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !101
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.aa, align 4
  %i.ao = and i32 %i.an, 536870911
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap
  %i.ar = call noundef ptr @_ZN4llvm15SmallVectorImplIPN5clang9NamedDeclEE6insertIPS3_vEES6_S6_T_S7_(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %i.aq) ; 0 uses
  %i.as = load i32, ptr %i.aa, align 4
  %i.at = and i32 %i.as, 536870911
  br label %bb.g

.thread:                                          ; preds = %_ZN4llvm15SmallVectorImplIN5clang29InventedTemplateParameterInfoEE12emplace_backIJEEERS2_DpOT_.exit, %bb.e, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %2, ptr %i.au, align 4, !tbaa !3131
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %storemerge = phi i32 [ %i.at, %bb.f ], [ 0, %.thread ]
  store i32 %storemerge, ptr %.0.i, align 8, !tbaa !2185
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema40ActOnFinishFunctionDeclarationDeclaratorERNS_10DeclaratorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(18640) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2664) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3656 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3664 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !101
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -56
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -48 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !101  ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = load i32, ptr %i.g, align 8, !tbaa !2185 ; 2 uses
  %i.m = icmp ugt i32 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 832
  %.sroa.0.0.copyload.i = load ptr, ptr %i.n, align 8, !tbaa !2181
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 840
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1284
  %i.o = getelementptr [8 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1311 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.t, align 8, !tbaa !116
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.u, align 4, !tbaa !116
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.w, align 8, !tbaa !116
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = and i32 %i.y, 1073741824
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %_ZN5clang21TemplateParameterList17getRequiresClauseEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ab = and i32 %i.y, 536870911
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !115
  br label %_ZN5clang21TemplateParameterList17getRequiresClauseEv.exit

_ZN5clang21TemplateParameterList17getRequiresClauseEv.exit: ; preds = %bb.c, %bb.d
  %i.af = phi ptr [ %i.ae, %bb.d ], [ null, %bb.c ]
  %i.ag = tail call noundef ptr @_ZN5clang21TemplateParameterList6CreateERKNS_10ASTContextENS_14SourceLocationES4_N4llvm8ArrayRefIPNS_9NamedDeclEEES4_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904) %i.s, i32 %.sroa.0.0.copyload.i19, i32 %.sroa.0.0.copyload.i20, ptr %i.v, i64 %i.k, i32 %.sroa.0.0.copyload.i21, ptr noundef %i.af) #26
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aj, align 8, !tbaa !116
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.0.0.copyload.i.i22 = load i32, ptr %i.al, align 4, !tbaa !116
  %i.am = tail call noundef ptr @_ZN5clang21TemplateParameterList6CreateERKNS_10ASTContextENS_14SourceLocationES4_N4llvm8ArrayRefIPNS_9NamedDeclEEES4_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ai, i32 %.sroa.0.0.copyload.i.i, i32 0, ptr %i.ak, i64 %i.k, i32 %.sroa.0.0.copyload.i.i22, ptr noundef null) #26
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %_ZN5clang21TemplateParameterList17getRequiresClauseEv.exit
  %.sink = phi ptr [ %i.ag, %_ZN5clang21TemplateParameterList17getRequiresClauseEv.exit ], [ %i.am, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 848
  store ptr %.sink, ptr %i.an, align 8, !tbaa !3132
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !101
  %i.ap = add i32 %i.ao, -1                       ; 2 uses
  store i32 %i.ap, ptr %i.c, align 8, !tbaa !101
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang29InventedTemplateParameterInfoELb0EE8pop_backEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.au) #26
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang29InventedTemplateParameterInfoELb0EE8pop_backEv.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang29InventedTemplateParameterInfoELb0EE8pop_backEv.exit: ; preds = %bb.f, %bb.g
  ret void
}

declare noundef ptr @_ZN5clang21TemplateParameterList6CreateERKNS_10ASTContextENS_14SourceLocationES4_N4llvm8ArrayRefIPNS_9NamedDeclEEES4_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904), i32, i32, ptr, i64, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema27BuildCtorClosureDefaultArgsENS_14SourceLocationEPNS_18CXXConstructorDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZNK5clang18CXXConstructorDecl25getCtorClosureDefaultArgsEv(ptr noundef nonnull align 8 dereferenceable(176) %2) #26
  %i.b = extractvalue { ptr, i64 } %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26 ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %i.d to i64                     ; 3 uses
  %i.g = shl nuw nsw i64 %i.f, 3                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !790, !nonnull !107, !align !791 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2632 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1289 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.g, %i.l                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2640
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1290
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.e, !prof !113

bb.d:                                             ; preds = %bb.c
  %i.q = inttoptr i64 %i.m to ptr
  store ptr %i.q, ptr %i.j, align 8, !tbaa !1289
  br label %_ZnamRKN5clang10ASTContextEm.exit

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 noundef %i.g, i64 noundef %i.g, i8 3)
  br label %_ZnamRKN5clang10ASTContextEm.exit

_ZnamRKN5clang10ASTContextEm.exit:                ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.k, %bb.d ], [ %i.r, %bb.e ] ; 3 uses
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZnamRKN5clang10ASTContextEm.exit
  store ptr null, ptr %.0.i.i.i.i, align 8, !tbaa !3135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZnamRKN5clang10ASTContextEm.exit
  %i.s = zext i1 %3 to i32
  %.not.not32 = icmp eq i32 %i.d, %i.s
  br i1 %.not.not32, label %.critedge28, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.u = zext i1 %3 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !1282
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1167
  %i.y = tail call i64 @_ZN5clang4Sema22BuildCXXDefaultArgExprENS_14SourceLocationEPNS_12FunctionDeclEPNS_11ParmVarDeclEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull %2, ptr noundef %i.x, ptr noundef null) #26 ; 2 uses
  tail call void @_ZN5clang4Sema21CleanupVarDeclMarkingEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = and i64 %i.y, -2
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !3135
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %.not.not, label %.critedge28, label %bb.h, !llvm.loop !3133

.critedge28:                                      ; preds = %bb.i, %bb.g
  tail call void @_ZN5clang18CXXConstructorDecl25setCtorClosureDefaultArgsEN4llvm8ArrayRefIPNS_17CXXDefaultArgExprEEE(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr %.0.i.i.i.i, i64 %i.f) #26
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.b, %.critedge28, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %.critedge28 ], [ true, %bb.h ]
  ret i1 %.5
}

declare { ptr, i64 } @_ZNK5clang18CXXConstructorDecl25getCtorClosureDefaultArgsEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema22BuildCXXDefaultArgExprENS_14SourceLocationEPNS_12FunctionDeclEPNS_11ParmVarDeclEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN5clang4Sema21CleanupVarDeclMarkingEv(ptr noundef nonnull align 8 dereferenceable(18640)) local_unnamed_addr #2

declare void @_ZN5clang18CXXConstructorDecl25setCtorClosureDefaultArgsEN4llvm8ArrayRefIPNS_17CXXDefaultArgExprEEE(ptr noundef nonnull align 8 dereferenceable(176), ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm19SmallPtrSetImplBase5clearEv(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !105, !range !106, !noundef !107
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !108
  %i.f = shl i32 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !109  ; 3 uses
  %i.i = icmp ult i32 %i.f, %i.h
  %i.j = icmp ugt i32 %i.h, 32
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17) %0) #26
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !110
  %i.l = zext i32 %i.h to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 -1, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !108
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  ret void
}

declare void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang4Sema19RequireCompleteTypeENS_14SourceLocationENS_8QualTypeENS0_16CompleteTypeKindEj(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @_ZNK5clang10ASTContext27getVariableArrayDecayedTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang4Sema16isAcceptableSlowEPKNS_9NamedDeclENS0_14AcceptableKindE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1181   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit, label %bb.b

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1182
  %i.e = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.d) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !1181
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit, %bb.a
  %i.f = phi ptr [ %i.e, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.f, align 8, !tbaa !1309
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  store i8 0, ptr %i.j, align 1, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !1314
  %i.l = icmp eq ptr %1, null
  %i.m = icmp ne i64 %2, 0
  %or.cond.i.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.39) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %2, ptr %i.a, align 8, !tbaa !1284
  %i.n = icmp ugt i64 %2, 15
  br i1 %i.n, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !1319
  %i.p = load i64, ptr %i.a, align 8, !tbaa !1284
  store i64 %i.p, ptr %i.k, align 8, !tbaa !92
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.o, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %2, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = load i8, ptr %1, align 1, !tbaa !92
  store i8 %i.r, ptr %i.q, align 1, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.s = load i64, ptr %i.a, align 8, !tbaa !1284 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !1315
  %i.u = load ptr, ptr %3, align 8, !tbaa !1319
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.w = load ptr, ptr %0, align 8, !tbaa !1181   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load i8, ptr %i.w, align 8, !tbaa !1309  ; 2 uses
  %i.z = add i8 %i.y, 1
  store i8 %i.z, ptr %i.w, align 8, !tbaa !1309
  %i.aa = zext i8 %i.y to i64
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aa ; 9 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1319 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 4 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  %i.af = load ptr, ptr %3, align 8, !tbaa !1319  ; 6 uses
  %i.ag = icmp eq ptr %i.af, %i.k                 ; 2 uses
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  br i1 %i.ag, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  br i1 %i.ag, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ah = load i64, ptr %i.t, align 8, !tbaa !1315 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %.not21.i = icmp eq ptr %3, %i.ab
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.i, !prof !1599

bb.i:                                             ; preds = %bb.h
  switch i64 %i.ah, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !92
  store i8 %i.aj, ptr %i.ac, align 1, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !1315 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !1315
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !1319
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !92
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !1319
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !1319
  %i.ap = load i64, ptr %i.t, align 8, !tbaa !1315
end_hunk_0

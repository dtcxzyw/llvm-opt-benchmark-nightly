Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTContext?download=true
inline.NumInlined: 31049
inline.NumDeleted: 11167
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN5clang10ASTContext29tryMergeOverflowBehaviorTypesENS_8QualTypeES1_bbbb:bb.a
  %i.af = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.x) #28
  br label %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45

_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45: ; preds = %bb.d, %bb.e
  %.1.i44 = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ] ; 3 uses
  %i.ag = icmp ne ptr %.1.i81, null               ; 2 uses
  %i.ah = icmp ne ptr %.1.i44, null               ; 2 uses
  %or.cond = or i1 %i.ag, %i.ah
  br i1 %or.cond, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45
  br i1 %i.ag, label %bb.g, label %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45.thread.thread

bb.g:                                             ; preds = %bb.f
  br i1 %i.ah, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45.thread, %bb.g
  %.1.i44757789 = phi ptr [ %.1.i44, %bb.g ], [ %i.p, %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45.thread ] ; 3 uses
  %.1.i8288 = phi ptr [ %.1.i81, %bb.g ], [ %.1.i, %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45.thread ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i8288, i64 40 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1162
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.i44757789, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1162
  %.not = icmp eq i32 %i.aj, %i.al
  br i1 %.not, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.thread
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i8288, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.am, align 16, !tbaa !716
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i44757789, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i46 = load i64, ptr %i.an, align 16, !tbaa !716
  %i.ao = tail call i64 @_ZN5clang10ASTContext10mergeTypesENS_8QualTypeES1_bbbb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i46, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  br i1 %i.ap, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i8288, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aq, align 8, !tbaa !716
  %i.ar = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !719
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i44757789, i64 8
  %.sroa.0.0.copyload.i.i47 = load i64, ptr %i.au, align 8, !tbaa !716
  %i.av = and i64 %.sroa.0.0.copyload.i.i47, -16
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !719
  %i.ay = icmp eq ptr %i.at, %i.ax
  br i1 %i.ay, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.am, align 16, !tbaa !716 ; 3 uses
  %.sroa.0.0.copyload.i49 = load i64, ptr %i.an, align 16, !tbaa !716
  %i.az = icmp eq i64 %.sroa.0.0.copyload.i48, %.sroa.0.0.copyload.i49
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = tail call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %1, i64 %2, i1 noundef zeroext false)
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bb = load i32, ptr %i.ai, align 8, !tbaa !1162
  %i.bc = and i64 %.sroa.0.0.copyload.i48, -16
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !716
  %i.bg = and i64 %.sroa.0.0.copyload.i48, 7
  %i.bh = or i64 %i.bf, %i.bg
  %i.bi = tail call i64 @_ZNK5clang10ASTContext23getOverflowBehaviorTypeENS_20OverflowBehaviorType20OverflowBehaviorKindENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %i.bb, i64 %i.bh)
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.bj = load i32, ptr %i.ai, align 8, !tbaa !1162
  %i.bk = tail call i64 @_ZNK5clang10ASTContext23getOverflowBehaviorTypeENS_20OverflowBehaviorType20OverflowBehaviorKindENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %i.bj, i64 %i.ao)
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i81, i64 32
  %.sroa.0.0.copyload.i53 = load i64, ptr %i.bl, align 16, !tbaa !716
  %i.bm = tail call i64 @_ZN5clang10ASTContext10mergeTypesENS_8QualTypeES1_bbbb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i53, i64 %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6)
  br label %bb.o

_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45.thread.thread: ; preds = %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit.thread, %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45.thread, %bb.f
  %.1.i447578 = phi ptr [ %i.p, %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45.thread ], [ %.1.i44, %bb.f ], [ %i.u, %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit.thread ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i447578, i64 32
  %.sroa.0.0.copyload.i54 = load i64, ptr %i.bn, align 16, !tbaa !716
  %i.bo = tail call i64 @_ZN5clang10ASTContext10mergeTypesENS_8QualTypeES1_bbbb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %1, i64 %.sroa.0.0.copyload.i54, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6)
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.h, %.thread, %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45, %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45.thread.thread, %bb.n
  %.sroa.072.1 = phi i64 [ 0, %.thread ], [ undef, %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45 ], [ %i.bm, %bb.n ], [ %i.bo, %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45.thread.thread ], [ %i.bk, %bb.m ], [ %i.ba, %bb.k ], [ %i.bi, %bb.l ], [ 0, %bb.h ]
  %.sroa.8.1 = phi i8 [ 1, %.thread ], [ 0, %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45 ], [ 1, %bb.n ], [ 1, %_ZNK5clang4Type5getAsINS_20OverflowBehaviorTypeEEEPKT_v.exit45.thread.thread ], [ 1, %bb.m ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.h ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.072.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.8.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.1756", align 8 ; 11 uses
  %5 = alloca %"class.llvm::ArrayRef.929", align 8 ; 6 uses
  %6 = alloca %"class.llvm::SmallVector.1756", align 8 ; 9 uses
  %7 = alloca %"class.llvm::ArrayRef.929", align 8 ; 5 uses
  %8 = alloca %"class.llvm::ArrayRef.874", align 8 ; 6 uses
  %9 = alloca %"class.llvm::APSInt", align 8      ; 8 uses
  %10 = alloca %"class.std::optional.1685", align 8 ; 6 uses
  %11 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %12 = alloca %"class.std::optional.1685", align 8 ; 6 uses
  %13 = alloca %"class.llvm::ArrayRef.874", align 8 ; 6 uses
  %14 = alloca %"class.llvm::SmallVector.1756", align 8 ; 9 uses
  %15 = alloca %"class.llvm::ArrayRef.929", align 8 ; 5 uses
  %16 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %17 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %18 = alloca %"class.clang::FunctionType::ExtInfo", align 2 ; 4 uses
  %19 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 6 uses
  %20 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 5 uses
  %21 = alloca %"class.llvm::SmallVector.978", align 8 ; 7 uses
  %22 = alloca %"class.llvm::SmallVector.978", align 8 ; 8 uses
  %23 = alloca %"struct.clang::FunctionProtoType::ExceptionSpecInfo", align 8 ; 4 uses
  %24 = alloca %"class.llvm::SmallVector.978", align 8 ; 7 uses
  %25 = alloca %"class.llvm::SmallVector.1756", align 8 ; 9 uses
  %26 = alloca %"class.llvm::ArrayRef.929", align 8 ; 4 uses
  %27 = alloca %"class.clang::Qualifiers", align 8 ; 20 uses
  %28 = alloca %"class.clang::Qualifiers", align 8 ; 20 uses
  %29 = alloca %"class.llvm::SmallVector.1278", align 8 ; 11 uses
  %30 = alloca %"class.llvm::SmallVector.1278", align 8 ; 11 uses
  %i.a = icmp eq i64 %1, %2
  br i1 %i.a, label %bb.hx, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pre468 = and i64 %1, -16
  %.pre469 = inttoptr i64 %.pre468 to ptr         ; 4 uses
  br i1 %3, label %._crit_edge467, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %.pre469, align 16, !tbaa !719 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = ptrtoint ptr %i.b to i64
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %.0.copyload.i.i.i.i.i.i, %i.d
  br i1 %i.e, label %bb.hx, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %2, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !719 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = ptrtoint ptr %i.h to i64
  %.0.copyload.i.i.i.i.i.i24 = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %.0.copyload.i.i.i.i.i.i24, %i.j
  br i1 %i.k, label %bb.hx, label %._crit_edge467

._crit_edge467:                                   ; preds = %bb.b, %bb.d
  %i.l = and i64 %1, 8
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge467
  %i.m = and i64 %1, 7
  br label %_ZNK5clang8QualType5splitEv.exit

bb.f:                                             ; preds = %._crit_edge467
  %i.n = getelementptr inbounds nuw i8, ptr %.pre469, i64 24
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.n, align 8, !tbaa !656
  %i.o = and i64 %1, 7
  %i.p = or i64 %.sroa.0.0.copyload.i.i, %i.o
  %i.q = load ptr, ptr %.pre469, align 16, !tbaa !719
  br label %_ZNK5clang8QualType5splitEv.exit

_ZNK5clang8QualType5splitEv.exit:                 ; preds = %bb.e, %bb.f
  %.sroa.09.0.i = phi ptr [ %i.q, %bb.f ], [ %.pre469, %bb.e ] ; 4 uses
  %.sroa.3.0.i = phi i64 [ %i.p, %bb.f ], [ %i.m, %bb.e ] ; 3 uses
  %i.r = and i64 %2, 8
  %.not.i27 = icmp eq i64 %i.r, 0
  %i.s = and i64 %2, -16
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  br i1 %.not.i27, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK5clang8QualType5splitEv.exit
  %i.u = and i64 %2, 7
  br label %_ZNK5clang8QualType5splitEv.exit33

bb.h:                                             ; preds = %_ZNK5clang8QualType5splitEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.0.0.copyload.i.i28 = load i64, ptr %i.v, align 8, !tbaa !656
  %i.w = and i64 %2, 7
  %i.x = or i64 %.sroa.0.0.copyload.i.i28, %i.w
  %i.y = load ptr, ptr %i.t, align 16, !tbaa !719
  br label %_ZNK5clang8QualType5splitEv.exit33

_ZNK5clang8QualType5splitEv.exit33:               ; preds = %bb.g, %bb.h
  %.sroa.09.0.i29 = phi ptr [ %i.y, %bb.h ], [ %i.t, %bb.g ] ; 4 uses
  %.sroa.3.0.i30 = phi i64 [ %i.x, %bb.h ], [ %i.u, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  store i64 0, ptr %28, align 8, !tbaa !1130
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  %i.z = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  store ptr %i.z, ptr %29, align 8, !tbaa !655, !alias.scope !3323
  %i.aa = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 10 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !657, !alias.scope !3323
  %i.ab = getelementptr inbounds nuw i8, ptr %29, i64 12 ; 2 uses
  store i32 8, ptr %i.ab, align 4, !tbaa !662, !alias.scope !3323
  store i64 %.sroa.3.0.i, ptr %27, align 8, !tbaa !1130, !noalias !3323
  %i.ac = call i64 @_ZNK5clang4Type44getLocallyUnqualifiedSingleStepDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.09.0.i) #28 ; 2 uses
  %i.ad = ptrtoint ptr %.sroa.09.0.i to i64
  %i.ae = and i64 %i.ad, -8
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5clang8QualType5splitEv.exit33, %bb.m
  %.sroa.18.3 = phi i64 [ %.sroa.3.0.i.i, %bb.m ], [ %.sroa.3.0.i, %_ZNK5clang8QualType5splitEv.exit33 ] ; 2 uses
  %i.ag = phi ptr [ %.sroa.09.0.i.i, %bb.m ], [ %.sroa.09.0.i, %_ZNK5clang8QualType5splitEv.exit33 ] ; 2 uses
  %i.ah = phi i64 [ %i.az, %bb.m ], [ %i.ac, %_ZNK5clang8QualType5splitEv.exit33 ] ; 4 uses
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !657, !alias.scope !3323 ; 2 uses
  %i.aj = load i32, ptr %i.ab, align 4, !tbaa !662, !alias.scope !3323
  %.not.i.i = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i.i, label %bb.j, label %bb.i, !prof !671

bb.i:                                             ; preds = %.lr.ph.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang13SplitQualTypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr nonnull %i.ag, i64 %.sroa.18.3)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang13SplitQualTypeELb1EE9push_backES2_.exit.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.ak = zext i32 %i.ai to i64
  %i.al = load ptr, ptr %29, align 8, !tbaa !655, !alias.scope !3323
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  store ptr %i.ag, ptr %i.am, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.18.3, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.an = load i32, ptr %i.aa, align 8, !tbaa !657, !alias.scope !3323
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.aa, align 8, !tbaa !657, !alias.scope !3323
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang13SplitQualTypeELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang13SplitQualTypeELb1EE9push_backES2_.exit.i: ; preds = %bb.j, %bb.i
  %i.ap = and i64 %i.ah, 8
  %.not.i9.i = icmp eq i64 %i.ap, 0
  %i.aq = and i64 %i.ah, -16
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  br i1 %.not.i9.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang13SplitQualTypeELb1EE9push_backES2_.exit.i
  %i.as = and i64 %i.ah, 7
  br label %bb.m

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang13SplitQualTypeELb1EE9push_backES2_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.at, align 8, !tbaa !656
  %i.au = and i64 %i.ah, 7
  %i.av = or i64 %.sroa.0.0.copyload.i.i.i, %i.au
  %i.aw = load ptr, ptr %i.ar, align 16, !tbaa !719
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.09.0.i.i = phi ptr [ %i.aw, %bb.l ], [ %i.ar, %bb.k ] ; 4 uses
  %.sroa.3.0.i.i = phi i64 [ %i.av, %bb.l ], [ %i.as, %bb.k ] ; 3 uses
  %i.ax = load i64, ptr %27, align 8, !tbaa !1130, !noalias !3323
  %i.ay = or i64 %i.ax, %.sroa.3.0.i.i
  store i64 %i.ay, ptr %27, align 8, !tbaa !1130, !noalias !3323
  %i.az = call i64 @_ZNK5clang4Type44getLocallyUnqualifiedSingleStepDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.09.0.i.i) #28 ; 2 uses
  %i.ba = ptrtoint ptr %.sroa.09.0.i.i to i64
  %i.bb = and i64 %i.ba, -8
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit.loopexit, label %.lr.ph.i

_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit.loopexit: ; preds = %bb.m
  %.pre = load i64, ptr %28, align 8, !tbaa !1130, !noalias !3324
  %i.bd = or i64 %.pre, %.sroa.3.0.i30
  br label %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit

_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit: ; preds = %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit.loopexit, %_ZNK5clang8QualType5splitEv.exit33
  %i.be = phi i64 [ %.sroa.3.0.i30, %_ZNK5clang8QualType5splitEv.exit33 ], [ %i.bd, %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit.loopexit ] ; 2 uses
  %.sroa.18.4 = phi i64 [ %.sroa.3.0.i, %_ZNK5clang8QualType5splitEv.exit33 ], [ %.sroa.3.0.i.i, %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit.loopexit ] ; 5 uses
  %.sroa.0340.5 = phi ptr [ %.sroa.09.0.i, %_ZNK5clang8QualType5splitEv.exit33 ], [ %.sroa.09.0.i.i, %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit.loopexit ] ; 77 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  %i.bf = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  store ptr %i.bf, ptr %30, align 8, !tbaa !655, !alias.scope !3324
  %i.bg = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 9 uses
  store i32 0, ptr %i.bg, align 8, !tbaa !657, !alias.scope !3324
  %i.bh = getelementptr inbounds nuw i8, ptr %30, i64 12 ; 2 uses
  store i32 8, ptr %i.bh, align 4, !tbaa !662, !alias.scope !3324
  store i64 %i.be, ptr %28, align 8, !tbaa !1130, !noalias !3324
  %i.bi = call i64 @_ZNK5clang4Type44getLocallyUnqualifiedSingleStepDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.09.0.i29) #28 ; 2 uses
  %i.bj = ptrtoint ptr %.sroa.09.0.i29 to i64
  %i.bk = and i64 %i.bj, -8
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit44, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit, %bb.r
  %.sroa.11.3 = phi i64 [ %.sroa.3.0.i.i42, %bb.r ], [ %.sroa.3.0.i30, %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit ] ; 2 uses
  %i.bm = phi ptr [ %.sroa.09.0.i.i41, %bb.r ], [ %.sroa.09.0.i29, %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit ] ; 2 uses
  %i.bn = phi i64 [ %i.cf, %bb.r ], [ %i.bi, %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit ] ; 4 uses
  %i.bo = load i32, ptr %i.bg, align 8, !tbaa !657, !alias.scope !3324 ; 2 uses
  %i.bp = load i32, ptr %i.bh, align 4, !tbaa !662, !alias.scope !3324
  %.not.i.i37 = icmp ult i32 %i.bo, %i.bp
  br i1 %.not.i.i37, label %bb.o, label %bb.n, !prof !671

bb.n:                                             ; preds = %.lr.ph.i35
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang13SplitQualTypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr nonnull %i.bm, i64 %.sroa.11.3)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang13SplitQualTypeELb1EE9push_backES2_.exit.i38

bb.o:                                             ; preds = %.lr.ph.i35
  %i.bq = zext i32 %i.bo to i64
  %i.br = load ptr, ptr %30, align 8, !tbaa !655, !alias.scope !3324
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bq ; 2 uses
  store ptr %i.bm, ptr %i.bs, align 1
  %.sroa.3.0..sroa_idx.i.i43 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %.sroa.11.3, ptr %.sroa.3.0..sroa_idx.i.i43, align 1
  %i.bt = load i32, ptr %i.bg, align 8, !tbaa !657, !alias.scope !3324
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bg, align 8, !tbaa !657, !alias.scope !3324
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang13SplitQualTypeELb1EE9push_backES2_.exit.i38

_ZN4llvm23SmallVectorTemplateBaseIN5clang13SplitQualTypeELb1EE9push_backES2_.exit.i38: ; preds = %bb.o, %bb.n
  %i.bv = and i64 %i.bn, 8
  %.not.i9.i39 = icmp eq i64 %i.bv, 0
  %i.bw = and i64 %i.bn, -16
  %i.bx = inttoptr i64 %i.bw to ptr               ; 3 uses
  br i1 %.not.i9.i39, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang13SplitQualTypeELb1EE9push_backES2_.exit.i38
  %i.by = and i64 %i.bn, 7
  br label %bb.r

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang13SplitQualTypeELb1EE9push_backES2_.exit.i38
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.sroa.0.0.copyload.i.i.i40 = load i64, ptr %i.bz, align 8, !tbaa !656
  %i.ca = and i64 %i.bn, 7
  %i.cb = or i64 %.sroa.0.0.copyload.i.i.i40, %i.ca
  %i.cc = load ptr, ptr %i.bx, align 16, !tbaa !719
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.09.0.i.i41 = phi ptr [ %i.cc, %bb.q ], [ %i.bx, %bb.p ] ; 4 uses
  %.sroa.3.0.i.i42 = phi i64 [ %i.cb, %bb.q ], [ %i.by, %bb.p ] ; 3 uses
  %i.cd = load i64, ptr %28, align 8, !tbaa !1130, !noalias !3324
  %i.ce = or i64 %i.cd, %.sroa.3.0.i.i42          ; 2 uses
  store i64 %i.ce, ptr %28, align 8, !tbaa !1130, !noalias !3324
  %i.cf = call i64 @_ZNK5clang4Type44getLocallyUnqualifiedSingleStepDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.09.0.i.i41) #28 ; 2 uses
  %i.cg = ptrtoint ptr %.sroa.09.0.i.i41 to i64
  %i.ch = and i64 %i.cg, -8
  %i.ci = icmp eq i64 %i.cf, %i.ch
  br i1 %i.ci, label %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit44, label %.lr.ph.i35

_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit44: ; preds = %bb.r, %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit
  %.promoted419 = phi i64 [ %i.be, %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit ], [ %i.ce, %bb.r ] ; 4 uses
  %.sroa.11.4 = phi i64 [ %.sroa.3.0.i30, %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit ], [ %.sroa.3.0.i.i42, %bb.r ] ; 5 uses
  %.sroa.0326.0 = phi ptr [ %.sroa.09.0.i29, %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit ], [ %.sroa.09.0.i.i41, %bb.r ] ; 55 uses
  br i1 %3, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit44
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 16
  %i.ck = load i8, ptr %i.cj, align 16            ; 2 uses
  %i.cl = add i8 %i.ck, -2
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.cl, 5
  %i.cm = icmp eq i8 %i.ck, 35
  %spec.select.i = or i1 %i.cm, %switch.i.i.i.i.i.i.i.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit44
  %i.cn = phi i1 [ true, %_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE.exit44 ], [ %spec.select.i, %bb.s ]
  %.not = icmp eq ptr %.sroa.0340.5, %.sroa.0326.0
  br i1 %.not, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.t
  %.promoted = load i32, ptr %i.aa, align 8, !tbaa !657 ; 2 uses
  %.promoted418 = load i64, ptr %27, align 8      ; 4 uses
  %.not.i47421 = icmp eq i32 %.promoted, 0
  br i1 %.not.i47421, label %.critedge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted417 = load i32, ptr %i.bg, align 8    ; 2 uses
  %i.co = load ptr, ptr %29, align 8              ; 3 uses
  %i.cp = load ptr, ptr %30, align 8              ; 3 uses
  %.not.i48557 = icmp eq i32 %.promoted417, 0
  br i1 %.not.i48557, label %.critedge.loopexit, label %.lr.ph562.a

.lr.ph562.a:                                      ; preds = %.lr.ph
  %i.cq = zext i32 %.promoted to i64              ; 2 uses
  %31 = zext i32 %.promoted417 to i64             ; 2 uses
  %32 = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cq
  %33 = getelementptr inbounds i8, ptr %32, i64 -16
  %34 = load ptr, ptr %33, align 8, !tbaa !3326   ; 2 uses
  %35 = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %31
  %36 = getelementptr inbounds i8, ptr %35, i64 -16
  %37 = load ptr, ptr %36, align 8, !tbaa !3326
  %38 = icmp eq ptr %34, %37
  br i1 %38, label %bb.co, label %.critedge.loopexit

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 16 ; 21 uses
  %i.cs = load i8, ptr %i.cr, align 16
  switch i8 %i.cs, label %bb.cm [
    i8 51, label %bb.cl
    i8 39, label %bb.ck
    i8 36, label %bb.cj
    i8 55, label %bb.ci
    i8 35, label %bb.ch
    i8 20, label %bb.cc
    i8 37, label %bb.cb
    i8 15, label %bb.ca
    i8 50, label %bb.bu
    i8 48, label %bb.bp
    i8 49, label %bb.bp
    i8 47, label %bb.bp
    i8 22, label %bb.bo
    i8 21, label %bb.bn
    i8 59, label %bb.bm
    i8 58, label %bb.bl
    i8 29, label %bb.bk
    i8 28, label %bb.bj
    i8 32, label %bb.bf
    i8 24, label %bb.bc
    i8 23, label %bb.bb
    i8 18, label %bb.ba
    i8 43, label %bb.az
    i8 42, label %bb.aw
    i8 30, label %bb.av
    i8 16, label %bb.v
    i8 5, label %bb.aa
    i8 4, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.aj
    i8 7, label %bb.aq
    i8 14, label %bb.ar
    i8 40, label %bb.as
    i8 11, label %bb.at
    i8 31, label %bb.au
  ]

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !799
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !799
  %i.cx = call fastcc noundef ptr @_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_(ptr noundef %i.cu, ptr noundef %i.cw), !inline_history !3292 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.cy, ptr %14, align 8, !tbaa !655
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i32 0, ptr %i.cz, align 8, !tbaa !657
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 8, ptr %i.da, align 4, !tbaa !662
  %.not.i45 = icmp eq ptr %i.cx, null
  br i1 %.not.i45, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !716
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 20
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !716
  %i.di = zext i32 %i.dh to i64
  %i.dj = call fastcc noundef zeroext i1 @_ZL26getCommonTemplateArgumentsRKN5clang10ASTContextERN4llvm15SmallVectorImplINS_16TemplateArgumentEEENS3_8ArrayRefIS5_EES9_(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr nonnull %i.db, i64 %i.de, ptr nonnull %i.df, i64 %i.di), !inline_history !3292
  br i1 %i.dj, label %bb.x, label %._crit_edge

._crit_edge:                                      ; preds = %bb.w
  %.pre463 = load i32, ptr %i.cz, align 8, !tbaa !657
  %i.dk = zext i32 %.pre463 to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cz, align 8, !tbaa !657
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.x, %bb.v
  %i.dl = phi i64 [ 0, %bb.x ], [ %i.dk, %._crit_edge ], [ 0, %bb.v ]
  %.0.i = phi ptr [ null, %bb.x ], [ %i.cx, %._crit_edge ], [ null, %bb.v ]
  %i.dm = load i32, ptr %i.cr, align 16           ; 2 uses
  %i.dn = lshr i32 %i.dm, 27
  %i.do = and i32 %i.dn, 3
  %i.dp = lshr i32 %i.dm, 21
  %i.dq = and i32 %i.dp, 3
  %i.dr = load ptr, ptr %14, align 8, !tbaa !655
  store ptr %i.dr, ptr %15, align 8, !tbaa !1241
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.dl, ptr %i.ds, align 8, !tbaa !1240
  %i.dt = call i64 @_ZNK5clang10ASTContext11getAutoTypeENS_11DeducedKindENS_8QualTypeENS_15AutoTypeKeywordEPNS_12TemplateDeclEN4llvm8ArrayRefINS_16TemplateArgumentEEE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %i.do, i64 0, i32 noundef %i.dq, ptr noundef %.0.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef.929") align 8 %15), !inline_history !3292
  %i.du = load ptr, ptr %14, align 8, !tbaa !655  ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.cy
  br i1 %i.dv, label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit206, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef %i.du) #28
  br label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit206

_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit206: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.aa:                                            ; preds = %bb.u
  %i.dw = getelementptr i8, ptr %.sroa.0340.5, i64 32
  %.val321 = load i64, ptr %i.dw, align 16, !tbaa !716
  %i.dx = getelementptr i8, ptr %.sroa.0326.0, i64 32
  %.val322 = load i64, ptr %i.dx, align 16, !tbaa !716
  %i.dy = call fastcc i64 @_ZL25getCommonArrayElementTypeIN5clang19IncompleteArrayTypeEENS0_8QualTypeERKNS0_10ASTContextEPKT_RNS0_10QualifiersES8_SA_(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.val321, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 %.val322, ptr noundef nonnull align 8 dereferenceable(8) %28)
  %.val388.i = load i32, ptr %i.cr, align 16      ; 2 uses
  %i.dz = lshr i32 %.val388.i, 22
  %i.ea = and i32 %i.dz, 7
  %i.eb = lshr i32 %.val388.i, 19
  %i.ec = and i32 %i.eb, 7
  %i.ed = call i64 @_ZNK5clang10ASTContext22getIncompleteArrayTypeENS_8QualTypeENS_17ArraySizeModifierEj(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.dy, i32 noundef %i.ea, i32 noundef %i.ec), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.ab:                                            ; preds = %bb.u
  %i.ee = getelementptr i8, ptr %.sroa.0340.5, i64 32
  %.val319 = load i64, ptr %i.ee, align 16, !tbaa !716
  %i.ef = getelementptr i8, ptr %.sroa.0326.0, i64 32
  %.val320 = load i64, ptr %i.ef, align 16, !tbaa !716
  %i.eg = call fastcc i64 @_ZL25getCommonArrayElementTypeIN5clang23DependentSizedArrayTypeEENS0_8QualTypeERKNS0_10ASTContextEPKT_RNS0_10QualifiersES8_SA_(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.val319, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 %.val320, ptr noundef nonnull align 8 dereferenceable(8) %28)
  %i.eh = getelementptr i8, ptr %.sroa.0340.5, i64 40
  %.val393.i = load ptr, ptr %i.eh, align 8, !tbaa !1092
  %.val387.i = load i32, ptr %i.cr, align 16      ; 2 uses
  %i.ei = lshr i32 %.val387.i, 22
  %i.ej = and i32 %i.ei, 7
  %i.ek = lshr i32 %.val387.i, 19
  %i.el = and i32 %i.ek, 7
  %i.em = call i64 @_ZNK5clang10ASTContext26getDependentSizedArrayTypeENS_8QualTypeEPNS_4ExprENS_17ArraySizeModifierEj(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.eg, ptr noundef %.val393.i, i32 noundef %i.ej, i32 noundef %i.el), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.ac:                                            ; preds = %bb.u
  %i.en = load i32, ptr %i.cr, align 16
  %i.eo = and i32 %i.en, 33554432
  %.not.i204 = icmp eq i32 %i.eo, 0
  br i1 %.not.i204, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit205, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !716
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !1088
  br label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit205

_ZNK5clang17ConstantArrayType11getSizeExprEv.exit205: ; preds = %bb.ac, %bb.ad
  %i.et = phi ptr [ %i.es, %bb.ad ], [ null, %bb.ac ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 16
  %i.ev = load i32, ptr %i.eu, align 16
  %i.ew = and i32 %i.ev, 33554432
  %.not.i202 = icmp eq i32 %i.ew, 0
  br i1 %.not.i202, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit203, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit205
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !716
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1088
  br label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit203

_ZNK5clang17ConstantArrayType11getSizeExprEv.exit203: ; preds = %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit205, %bb.ae
  %i.fb = phi ptr [ %i.fa, %bb.ae ], [ null, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit205 ]
  %i.fc = call noundef zeroext i1 @_ZNK5clang10ASTContext11hasSameExprEPKNS_4ExprES3_(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %i.et, ptr noundef %i.fb), !inline_history !3292
  br i1 %i.fc, label %bb.af, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit201

bb.af:                                            ; preds = %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit203
  %i.fd = load i32, ptr %i.cr, align 16
  %i.fe = and i32 %i.fd, 33554432
  %.not.i200 = icmp eq i32 %i.fe, 0
  br i1 %.not.i200, label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit201, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !716
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1088
  br label %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit201

_ZNK5clang17ConstantArrayType11getSizeExprEv.exit201: ; preds = %bb.ag, %bb.af, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit203
  %i.fj = phi ptr [ null, %_ZNK5clang17ConstantArrayType11getSizeExprEv.exit203 ], [ %i.fi, %bb.ag ], [ null, %bb.af ]
  %i.fk = getelementptr i8, ptr %.sroa.0340.5, i64 32
  %.val317 = load i64, ptr %i.fk, align 16, !tbaa !716
  %i.fl = getelementptr i8, ptr %.sroa.0326.0, i64 32
  %.val318 = load i64, ptr %i.fl, align 16, !tbaa !716
  %i.fm = call fastcc i64 @_ZL25getCommonArrayElementTypeIN5clang17ConstantArrayTypeEENS0_8QualTypeERKNS0_10ASTContextEPKT_RNS0_10QualifiersES8_SA_(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.val317, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 %.val318, ptr noundef nonnull align 8 dereferenceable(8) %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZNK5clang17ConstantArrayType7getSizeEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %16, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0340.5), !inline_history !3292
  %.val386.i = load i32, ptr %i.cr, align 16      ; 2 uses
  %i.fn = lshr i32 %.val386.i, 22
  %i.fo = and i32 %i.fn, 7
  %i.fp = lshr i32 %.val386.i, 19
  %i.fq = and i32 %i.fp, 7
  %i.fr = call i64 @_ZNK5clang10ASTContext20getConstantArrayTypeENS_8QualTypeERKN4llvm5APIntEPKNS_4ExprENS_17ArraySizeModifierEj(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.fm, ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef %i.fj, i32 noundef %i.fo, i32 noundef %i.fq), !inline_history !3292
  %i.fs = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !1050
  %i.fu = icmp ugt i32 %i.ft, 64
end_hunk_0
begin_hunk_1_@_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b:bb.a
bb.bf:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 48 ; 2 uses
  %i.kr = load i32, ptr %i.cr, align 16
  %i.ks = lshr i32 %i.kr, 19
  %i.kt = and i32 %i.ks, 127
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 48
  call fastcc void @_ZL14getCommonTypesRKN5clang10ASTContextEN4llvm8ArrayRefINS_8QualTypeEEES6_b(ptr dead_on_unwind noalias writable align 8 %24, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr nonnull %i.kq, i64 %i.ku, ptr nonnull %i.kv, i1 noundef zeroext false)
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 24
  %.sroa.0.0.copyload.i164 = load i64, ptr %i.kw, align 8, !tbaa !716
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 24
  %.sroa.0.0.copyload.i163 = load i64, ptr %i.kx, align 8, !tbaa !716
  %i.ky = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i164, i64 %.sroa.0.0.copyload.i163, i1 noundef zeroext false), !inline_history !3292
  %i.kz = load ptr, ptr %24, align 8, !tbaa !655
  %i.la = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !657
  %i.lc = zext i32 %i.lb to i64
  %i.ld = load i32, ptr %i.cr, align 16           ; 2 uses
  %i.le = lshr i32 %i.ld, 19
  %i.lf = and i32 %i.le, 127
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.lg
  %i.li = lshr i32 %i.ld, 26
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 20
  %i.ll = load i8, ptr %i.lk, align 4
  %i.lm = trunc i8 %i.ll to i1
  br i1 %i.lm, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 20
  %i.lo = load i8, ptr %i.ln, align 4
  %i.lp = trunc i8 %i.lo to i1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.lq = phi i1 [ false, %bb.bf ], [ %i.lp, %bb.bg ]
  %i.lr = call i64 @_ZNK5clang10ASTContext17getObjCObjectTypeENS_8QualTypeEN4llvm8ArrayRefIS1_EENS3_IPNS_16ObjCProtocolDeclEEEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.ky, ptr %i.kz, i64 %i.lc, ptr nonnull %i.lh, i64 %i.lj, i1 noundef zeroext %i.lq), !inline_history !3292
  %i.ls = load ptr, ptr %24, align 8, !tbaa !655  ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj8EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @free(ptr noundef %i.ls) #28
  br label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj8EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang8QualTypeELj8EED2Ev.exit: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.bj:                                            ; preds = %bb.u
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 32
  %.sroa.0.0.copyload.i.i159 = load i64, ptr %i.lv, align 16, !tbaa !716
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 32
  %.sroa.0.0.copyload.i5.i160 = load i64, ptr %i.lw, align 16, !tbaa !716
  %i.lx = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i.i159, i64 %.sroa.0.0.copyload.i5.i160, i1 noundef zeroext false), !inline_history !3298
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 40
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !1055
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 44
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !1056
  %i.mc = call i64 @_ZNK5clang10ASTContext21getConstantMatrixTypeENS_8QualTypeEjj(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.lx, i32 noundef %i.lz, i32 noundef %i.mb), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.bk:                                            ; preds = %bb.u
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 32
  %.sroa.0.0.copyload.i.i157 = load i64, ptr %i.md, align 16, !tbaa !716
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 32
  %.sroa.0.0.copyload.i5.i158 = load i64, ptr %i.me, align 16, !tbaa !716
  %i.mf = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i.i157, i64 %.sroa.0.0.copyload.i5.i158, i1 noundef zeroext false), !inline_history !3299
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 40
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !1205
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 48
  %i.mj = load ptr, ptr %i.mi, align 16, !tbaa !1343
  %i.mk = getelementptr i8, ptr %.sroa.0340.5, i64 56
  %.val396.i = load i32, ptr %i.mk, align 8, !tbaa !517 ; 2 uses
  %i.ml = getelementptr i8, ptr %.sroa.0326.0, i64 56
  %.val397.i = load i32, ptr %i.ml, align 8, !tbaa !517
  %i.mm = icmp eq i32 %.val396.i, %.val397.i
  %spec.select.i156 = select i1 %i.mm, i32 %.val396.i, i32 0
  %i.mn = call i64 @_ZNK5clang10ASTContext27getDependentSizedMatrixTypeENS_8QualTypeEPNS_4ExprES3_NS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.mf, ptr noundef %i.mh, ptr noundef %i.mj, i32 %spec.select.i156), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.bl:                                            ; preds = %bb.u
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 32
  %.sroa.0.0.copyload.i.i154 = load i64, ptr %i.mo, align 16, !tbaa !716
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 32
  %.sroa.0.0.copyload.i5.i155 = load i64, ptr %i.mp, align 16, !tbaa !716
  %i.mq = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i.i154, i64 %.sroa.0.0.copyload.i5.i155, i1 noundef zeroext false), !inline_history !3300
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 20
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !716
  %i.mt = load i32, ptr %i.cr, align 16
  %i.mu = lshr i32 %i.mt, 19
  %i.mv = and i32 %i.mu, 15
  %i.mw = call i64 @_ZNK5clang10ASTContext13getVectorTypeENS_8QualTypeEjNS_10VectorKindE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.mq, i32 noundef %i.ms, i32 noundef %i.mv), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.bm:                                            ; preds = %bb.u
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 32
  %.sroa.0.0.copyload.i.i152 = load i64, ptr %i.mx, align 16, !tbaa !716
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 32
  %.sroa.0.0.copyload.i5.i153 = load i64, ptr %i.my, align 16, !tbaa !716
  %i.mz = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i.i152, i64 %.sroa.0.0.copyload.i5.i153, i1 noundef zeroext false), !inline_history !3301
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 20
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !716
  %i.nc = call i64 @_ZNK5clang10ASTContext16getExtVectorTypeENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.mz, i32 noundef %i.nb), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.bn:                                            ; preds = %bb.u
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 40
  %.sroa.0.0.copyload.i.i150 = load i64, ptr %i.nd, align 8, !tbaa !716
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 40
  %.sroa.0.0.copyload.i5.i151 = load i64, ptr %i.ne, align 8, !tbaa !716
  %i.nf = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i.i150, i64 %.sroa.0.0.copyload.i5.i151, i1 noundef zeroext false), !inline_history !3302
  %i.ng = getelementptr i8, ptr %.sroa.0340.5, i64 32
  %.val398.i = load ptr, ptr %i.ng, align 16, !tbaa !1345
  %i.nh = getelementptr i8, ptr %.sroa.0340.5, i64 48
  %.val399.i = load i32, ptr %i.nh, align 16, !tbaa !517 ; 2 uses
  %i.ni = getelementptr i8, ptr %.sroa.0326.0, i64 48
  %.val400.i = load i32, ptr %i.ni, align 16, !tbaa !517
  %i.nj = icmp eq i32 %.val399.i, %.val400.i
  %spec.select.i149 = select i1 %i.nj, i32 %.val399.i, i32 0
  %i.nk = call i64 @_ZNK5clang10ASTContext30getDependentSizedExtVectorTypeENS_8QualTypeEPNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.nf, ptr noundef %.val398.i, i32 %spec.select.i149), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.bo:                                            ; preds = %bb.u
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 32
  %.sroa.0.0.copyload.i.i147 = load i64, ptr %i.nl, align 16, !tbaa !716
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 32
  %.sroa.0.0.copyload.i5.i148 = load i64, ptr %i.nm, align 16, !tbaa !716
  %i.nn = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i.i147, i64 %.sroa.0.0.copyload.i5.i148, i1 noundef zeroext false), !inline_history !3303
  %i.no = getelementptr i8, ptr %.sroa.0340.5, i64 40
  %.val401.i = load ptr, ptr %i.no, align 8, !tbaa !1347
  %i.np = getelementptr i8, ptr %.sroa.0340.5, i64 48
  %.val402.i = load i32, ptr %i.np, align 16, !tbaa !517 ; 2 uses
  %i.nq = getelementptr i8, ptr %.sroa.0326.0, i64 48
  %.val403.i = load i32, ptr %i.nq, align 16, !tbaa !517
  %i.nr = icmp eq i32 %.val402.i, %.val403.i
  %spec.select.i146 = select i1 %i.nr, i32 %.val402.i, i32 0
  %i.ns = load i32, ptr %i.cr, align 16
  %i.nt = lshr i32 %i.ns, 19
  %i.nu = and i32 %i.nt, 15
  %i.nv = call i64 @_ZNK5clang10ASTContext22getDependentVectorTypeENS_8QualTypeEPNS_4ExprENS_14SourceLocationENS_10VectorKindE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.nn, ptr noundef %.val401.i, i32 %spec.select.i146, i32 noundef %i.nu), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.bp:                                            ; preds = %bb.u, %bb.u, %bb.u
  %.val404.i = load i32, ptr %i.cr, align 16
  %i.nw = getelementptr i8, ptr %.sroa.0326.0, i64 16
  %.val405.i = load i32, ptr %i.nw, align 16
  %i.nx = lshr i32 %.val404.i, 19                 ; 2 uses
  %i.ny = and i32 %i.nx, 255                      ; 7 uses
  %i.nz = lshr i32 %.val405.i, 19
  %i.oa = and i32 %i.nz, 255
  %i.ob = icmp eq i32 %i.ny, %i.oa
  br i1 %i.ob, label %_ZL20getCommonTypeKeywordIN5clang7TagTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %trunc.i144 = trunc i32 %i.nx to i8
  switch i8 %trunc.i144, label %bb.bt [
    i8 6, label %_ZL20getCommonTypeKeywordIN5clang7TagTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 0, label %_ZL20getCommonTypeKeywordIN5clang7TagTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 2, label %_ZL20getCommonTypeKeywordIN5clang7TagTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 4, label %_ZL20getCommonTypeKeywordIN5clang7TagTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 1, label %_ZL20getCommonTypeKeywordIN5clang7TagTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 5, label %bb.br
    i8 3, label %bb.bs
  ]

bb.br:                                            ; preds = %bb.bq
  br label %_ZL20getCommonTypeKeywordIN5clang7TagTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit

bb.bs:                                            ; preds = %bb.bq
  br label %_ZL20getCommonTypeKeywordIN5clang7TagTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit

bb.bt:                                            ; preds = %bb.bq
  unreachable

_ZL20getCommonTypeKeywordIN5clang7TagTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit: ; preds = %bb.bp, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.br, %bb.bs
  %.0.i145 = phi i32 [ %i.ny, %bb.bp ], [ 0, %bb.bs ], [ 6, %bb.br ], [ %i.ny, %bb.bq ], [ %i.ny, %bb.bq ], [ %i.ny, %bb.bq ], [ %i.ny, %bb.bq ], [ %i.ny, %bb.bq ]
  %i.oc = call fastcc i64 @_ZL18getCommonQualifierIN5clang7TagTypeEENS0_19NestedNameSpecifierERKNS0_10ASTContextEPKT_S8_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.5, ptr noundef nonnull %.sroa.0326.0)
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 24
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !724
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 24
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !724
  %i.oh = call fastcc noundef ptr @_ZL20getCommonDeclCheckedIN5clang7TagDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_(ptr noundef %i.oe, ptr noundef %i.og), !inline_history !3292
  %i.oi = call i64 @_ZNK5clang10ASTContext10getTagTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_7TagDeclEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %.0.i145, i64 %i.oc, ptr noundef %i.oh, i1 noundef zeroext false), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.bu:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 48
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 20
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !716
  %i.om = zext i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 48
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 20
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !716
  %i.oq = zext i32 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %i.or, ptr %25, align 8, !tbaa !655, !alias.scope !3327
  %i.os = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store i32 0, ptr %i.os, align 8, !tbaa !657, !alias.scope !3327
  %i.ot = getelementptr inbounds nuw i8, ptr %25, i64 12
  store i32 8, ptr %i.ot, align 4, !tbaa !662, !alias.scope !3327
  %i.ou = call fastcc noundef zeroext i1 @_ZL26getCommonTemplateArgumentsRKN5clang10ASTContextERN4llvm15SmallVectorImplINS_16TemplateArgumentEEENS3_8ArrayRefIS5_EES9_(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr nonnull %i.oj, i64 %i.om, ptr nonnull %i.on, i64 %i.oq), !inline_history !3306 ; 0 uses
  %.val406.i = load i32, ptr %i.cr, align 16
  %i.ov = getelementptr i8, ptr %.sroa.0326.0, i64 16
  %.val407.i = load i32, ptr %i.ov, align 16
  %i.ow = lshr i32 %.val406.i, 19                 ; 2 uses
  %i.ox = and i32 %i.ow, 255                      ; 7 uses
  %i.oy = lshr i32 %.val407.i, 19
  %i.oz = and i32 %i.oy, 255
  %i.pa = icmp eq i32 %i.ox, %i.oz
  br i1 %i.pa, label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %trunc.i138 = trunc i32 %i.ow to i8
  switch i8 %trunc.i138, label %bb.by [
    i8 6, label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 0, label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 2, label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 4, label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 1, label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 5, label %bb.bw
    i8 3, label %bb.bx
  ]

bb.bw:                                            ; preds = %bb.bv
  br label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit

bb.bx:                                            ; preds = %bb.bv
  br label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit

bb.by:                                            ; preds = %bb.bv
  unreachable

_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit: ; preds = %bb.bu, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bw, %bb.bx
  %.0.i139 = phi i32 [ %i.ox, %bb.bu ], [ 0, %bb.bx ], [ 6, %bb.bw ], [ %i.ox, %bb.bv ], [ %i.ox, %bb.bv ], [ %i.ox, %bb.bv ], [ %i.ox, %bb.bv ], [ %i.ox, %bb.bv ]
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 32
  %.sroa.0.0.copyload.i137 = load i64, ptr %i.pb, align 16
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 32
  %.sroa.0.0.copyload.i136 = load i64, ptr %i.pc, align 16
  %i.pd = call fastcc i64 @_ZL28getCommonTemplateNameCheckedRKN5clang10ASTContextENS_12TemplateNameES3_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i137, i64 %.sroa.0.0.copyload.i136)
  %i.pe = load ptr, ptr %25, align 8, !tbaa !655
  %i.pf = load i32, ptr %i.os, align 8, !tbaa !657
  %i.pg = zext i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i135 = load i64, ptr %i.ph, align 8, !tbaa !716
  %i.pi = call i64 @_ZNK5clang10ASTContext29getTemplateSpecializationTypeENS_21ElaboratedTypeKeywordENS_12TemplateNameEN4llvm8ArrayRefINS_16TemplateArgumentEEES6_NS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %.0.i139, i64 %i.pd, ptr %i.pe, i64 %i.pg, ptr noundef nonnull byval(%"class.llvm::ArrayRef.929") align 8 %26, i64 %.sroa.0.0.copyload.i135), !inline_history !3292
  %i.pj = load ptr, ptr %25, align 8, !tbaa !655  ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.or
  br i1 %i.pk, label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
  call void @free(ptr noundef %i.pj) #28
  br label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit: ; preds = %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.ca:                                            ; preds = %bb.u
  %i.pl = ptrtoint ptr %.sroa.0340.5 to i64
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.cb:                                            ; preds = %bb.u
  %i.pm = ptrtoint ptr %.sroa.0340.5 to i64
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.cc:                                            ; preds = %bb.u
  %.val408.i = load i32, ptr %i.cr, align 16
  %i.pn = getelementptr i8, ptr %.sroa.0326.0, i64 16
  %.val409.i = load i32, ptr %i.pn, align 16
  %i.po = lshr i32 %.val408.i, 19                 ; 2 uses
  %i.pp = and i32 %i.po, 255                      ; 7 uses
  %i.pq = lshr i32 %.val409.i, 19
  %i.pr = and i32 %i.pq, 255
  %i.ps = icmp eq i32 %i.pp, %i.pr
  br i1 %i.ps, label %_ZL20getCommonTypeKeywordIN5clang17DependentNameTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %trunc.i = trunc i32 %i.po to i8
  switch i8 %trunc.i, label %bb.cg [
    i8 6, label %_ZL20getCommonTypeKeywordIN5clang17DependentNameTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 0, label %_ZL20getCommonTypeKeywordIN5clang17DependentNameTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 2, label %_ZL20getCommonTypeKeywordIN5clang17DependentNameTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 4, label %_ZL20getCommonTypeKeywordIN5clang17DependentNameTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 1, label %_ZL20getCommonTypeKeywordIN5clang17DependentNameTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 5, label %bb.ce
    i8 3, label %bb.cf
  ]

bb.ce:                                            ; preds = %bb.cd
  br label %_ZL20getCommonTypeKeywordIN5clang17DependentNameTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit

bb.cf:                                            ; preds = %bb.cd
  br label %_ZL20getCommonTypeKeywordIN5clang17DependentNameTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit

bb.cg:                                            ; preds = %bb.cd
  unreachable

_ZL20getCommonTypeKeywordIN5clang17DependentNameTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit: ; preds = %bb.cc, %bb.cd, %bb.cd, %bb.cd, %bb.cd, %bb.cd, %bb.ce, %bb.cf
  %.0.i134 = phi i32 [ %i.pp, %bb.cc ], [ 0, %bb.cf ], [ 6, %bb.ce ], [ %i.pp, %bb.cd ], [ %i.pp, %bb.cd ], [ %i.pp, %bb.cd ], [ %i.pp, %bb.cd ], [ %i.pp, %bb.cd ]
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 32
  %.sroa.0.0.copyload.i.i132 = load i64, ptr %i.pt, align 16, !tbaa !656
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 32
  %.sroa.0.0.copyload.i5.i133 = load i64, ptr %i.pu, align 16, !tbaa !656
  %i.pv = call fastcc i64 @_ZL12getCommonNNSRKN5clang10ASTContextENS_19NestedNameSpecifierES3_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i.i132, i64 %.sroa.0.0.copyload.i5.i133)
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 40
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !1243
  %i.py = call i64 @_ZNK5clang10ASTContext20getDependentNameTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %.0.i134, i64 %i.pv, ptr noundef %i.px), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.ch:                                            ; preds = %bb.u
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 40
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !1162
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 32
  %.sroa.0.0.copyload.i131 = load i64, ptr %i.qb, align 16, !tbaa !716
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 32
  %.sroa.0.0.copyload.i130 = load i64, ptr %i.qc, align 16, !tbaa !716
  %i.qd = call fastcc i64 @_ZL33getCommonTypeWithQualifierLiftingRKN5clang10ASTContextENS_8QualTypeES3_RNS_10QualifiersES5_(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i131, i64 %.sroa.0.0.copyload.i130, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %28), !inline_history !3292
  %i.qe = call i64 @_ZNK5clang10ASTContext23getOverflowBehaviorTypeENS_20OverflowBehaviorType20OverflowBehaviorKindENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %i.qa, i64 %i.qd), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.ci:                                            ; preds = %bb.u
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 32
  %.sroa.0.0.copyload.i129 = load i64, ptr %i.qf, align 16, !tbaa !716
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 32
  %.sroa.0.0.copyload.i128 = load i64, ptr %i.qg, align 16, !tbaa !716
  %i.qh = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i129, i64 %.sroa.0.0.copyload.i128, i1 noundef zeroext false), !inline_history !3292
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 40
  %.sroa.0.0.copyload.i127 = load i64, ptr %i.qi, align 8, !tbaa !716
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 40
  %.sroa.0.0.copyload.i126 = load i64, ptr %i.qj, align 8, !tbaa !716
  %i.qk = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i127, i64 %.sroa.0.0.copyload.i126, i1 noundef zeroext false), !inline_history !3292
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 48
  %i.qm = load i32, ptr %i.ql, align 16, !tbaa !1350
  %i.qn = call i64 @_ZNK5clang10ASTContext21getUnaryTransformTypeENS_8QualTypeES1_NS_18UnaryTransformType7UTTKindE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.qh, i64 %i.qk, i32 noundef %i.qm), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.cj:                                            ; preds = %bb.u
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 32
  %.sroa.0.0.copyload.i125 = load i64, ptr %i.qo, align 16, !tbaa !716
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 32
  %.sroa.0.0.copyload.i124 = load i64, ptr %i.qp, align 16, !tbaa !716
  %i.qq = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i125, i64 %.sroa.0.0.copyload.i124, i1 noundef zeroext false), !inline_history !3292
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 20
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !716
  %i.qt = call i64 @_ZNK5clang10ASTContext20getPackExpansionTypeENS_8QualTypeENS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.qq, i32 %i.qs, i1 zeroext poison), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.ck:                                            ; preds = %bb.u
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 40
  %i.qv = load i8, ptr %i.qu, align 8, !tbaa !1216, !range !563, !noundef !510
  %i.qw = trunc nuw i8 %i.qv to i1
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 32
  %.sroa.0.0.copyload.i.i123 = load i64, ptr %i.qx, align 16, !tbaa !716
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 32
  %.sroa.0.0.copyload.i5.i = load i64, ptr %i.qy, align 16, !tbaa !716
  %i.qz = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i.i123, i64 %.sroa.0.0.copyload.i5.i, i1 noundef zeroext false), !inline_history !3307 ; 2 uses
  br i1 %i.qw, label %call.1, label %call.0

call.0:                                           ; preds = %bb.ck
  %39 = call range(i64 0, -7) i64 @_ZNK5clang10ASTContext11getPipeTypeENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.qz, i1 noundef zeroext false)
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

call.1:                                           ; preds = %bb.ck
  %40 = call range(i64 0, -7) i64 @_ZNK5clang10ASTContext11getPipeTypeENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.qz, i1 noundef zeroext true)
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.cl:                                            ; preds = %bb.u
  %i.ra = load i64, ptr %i.cr, align 16           ; 3 uses
  %i.rb = lshr i64 %i.ra, 32
  %i.rc = trunc nuw i64 %i.rb to i32
  %i.rd = and i32 %i.rc, 32767
  %i.re = lshr i64 %i.ra, 48
  %i.rf = trunc nuw nsw i64 %i.re to i32
  %i.rg = and i64 %i.ra, 140737488355328
  %i.rh = icmp ne i64 %i.rg, 0
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.0340.5, i64 32
  %i.rj = load ptr, ptr %i.ri, align 16, !tbaa !1237
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.0326.0, i64 32
  %i.rl = load ptr, ptr %i.rk, align 16, !tbaa !1237
  %i.rm = call fastcc noundef ptr @_ZL13getCommonDeclIN5clang20TemplateTypeParmDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_(ptr noundef %i.rj, ptr noundef %i.rl), !inline_history !3292
  %i.rn = call i64 @_ZNK5clang10ASTContext23getTemplateTypeParmTypeEiibPNS_20TemplateTypeParmDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %i.rd, i32 noundef %i.rf, i1 noundef zeroext %i.rh, ptr noundef %i.rm), !inline_history !3292
  br label %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit

bb.cm:                                            ; preds = %bb.u
  unreachable

_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit: ; preds = %call.0, %call.1, %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit206, %bb.aa, %bb.ab, %_ZN4llvm5APIntD2Ev.exit199, %_ZN4llvm5APIntD2Ev.exit, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.ay, %bb.az, %bb.ba, %bb.bb, %_ZN4llvm11SmallVectorIN5clang8QualTypeELj8EED2Ev.exit169, %_ZN4llvm11SmallVectorIN5clang8QualTypeELj8EED2Ev.exit, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %_ZL20getCommonTypeKeywordIN5clang7TagTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit, %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit, %bb.ca, %bb.cb, %_ZL20getCommonTypeKeywordIN5clang17DependentNameTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit, %bb.ch, %bb.ci, %bb.cj, %bb.cl
  %.sroa.0371.0 = phi i64 [ %i.rn, %bb.cl ], [ %i.ib, %bb.au ], [ %i.qt, %bb.cj ], [ %i.qn, %bb.ci ], [ %i.qe, %bb.ch ], [ %i.py, %_ZL20getCommonTypeKeywordIN5clang17DependentNameTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit ], [ %i.pm, %bb.cb ], [ %i.pl, %bb.ca ], [ %i.pi, %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit ], [ %i.oi, %_ZL20getCommonTypeKeywordIN5clang7TagTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit ], [ %i.nv, %bb.bo ], [ %i.nk, %bb.bn ], [ %i.nc, %bb.bm ], [ %i.mw, %bb.bl ], [ %i.mn, %bb.bk ], [ %i.mc, %bb.bj ], [ %i.lr, %_ZN4llvm11SmallVectorIN5clang8QualTypeELj8EED2Ev.exit ], [ %i.kk, %_ZN4llvm11SmallVectorIN5clang8QualTypeELj8EED2Ev.exit169 ], [ %i.jl, %bb.bb ], [ %i.jd, %bb.ba ], [ %i.iu, %bb.az ], [ %i.is, %bb.ay ], [ %i.ij, %bb.av ], [ %i.dt, %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit206 ], [ %i.ed, %bb.aa ], [ %i.em, %bb.ab ], [ %i.fr, %_ZN4llvm5APIntD2Ev.exit199 ], [ %i.hh, %_ZN4llvm5APIntD2Ev.exit ], [ %i.hl, %bb.aq ], [ %i.hp, %bb.ar ], [ %i.ht, %bb.as ], [ %i.hx, %bb.at ], [ %39, %call.0 ], [ %40, %call.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  %i.ro = and i64 %.sroa.0371.0, -16
  %i.rp = inttoptr i64 %i.ro to ptr
  %i.rq = load ptr, ptr %i.rp, align 16, !tbaa !719
  br label %.critedge

bb.cn:                                            ; preds = %_ZN5clang10QualifiersmIES0_.exit58
  %i.rr = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %indvars.iv.next
  %i.rs = getelementptr inbounds i8, ptr %i.rr, i64 -16
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !3326 ; 2 uses
  %i.ru = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv.next588
  %i.rv = getelementptr inbounds i8, ptr %i.ru, i64 -16
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !3326
  %i.rx = icmp eq ptr %i.rt, %i.rw
  br i1 %i.rx, label %bb.co, label %_ZN5clang10QualifiersmIES0_.exit58..critedge.loopexit.loopexit_crit_edge, !llvm.loop !3308

bb.co:                                            ; preds = %.lr.ph562.a, %bb.cn
  %41 = phi ptr [ %i.rt, %bb.cn ], [ %34, %.lr.ph562.a ] ; 2 uses
  %indvars.iv558683 = phi i64 [ %indvars.iv.next, %bb.cn ], [ %i.cq, %.lr.ph562.a ] ; 2 uses
  %.sroa.11.0424559682 = phi i64 [ %.sroa.2.0.copyload.i64, %bb.cn ], [ %.sroa.11.4, %.lr.ph562.a ] ; 7 uses
  %.sroa.18.0422561681 = phi i64 [ %.sroa.2.0.copyload.i59, %bb.cn ], [ %.sroa.18.4, %.lr.ph562.a ] ; 7 uses
  %42 = phi i64 [ %i.sq, %bb.cn ], [ %.promoted418, %.lr.ph562.a ] ; 3 uses
  %43 = phi i64 [ %i.tj, %bb.cn ], [ %.promoted419, %.lr.ph562.a ] ; 3 uses
  %indvars.iv680 = phi i64 [ %indvars.iv.next588, %bb.cn ], [ %31, %.lr.ph562.a ] ; 2 uses
  %.not.i.i49 = icmp ult i64 %.sroa.18.0422561681, 8
  br i1 %.not.i.i49, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ry = xor i64 %.sroa.18.0422561681, -1
  %i.rz = and i64 %42, %i.ry
  br label %_ZN5clang10QualifiersmIES0_.exit

bb.cq:                                            ; preds = %bb.co
  %i.sa = and i64 %.sroa.18.0422561681, 7
  %i.sb = xor i64 %i.sa, -1
  %i.sc = and i64 %42, %i.sb                      ; 2 uses
  %i.sd = xor i64 %42, %.sroa.18.0422561681
  %i.se = and i64 %i.sd, 48
  %i.sf = icmp eq i64 %i.se, 0
  %i.sg = and i64 %i.sc, -49
  %spec.select.i.i = select i1 %i.sf, i64 %i.sg, i64 %i.sc ; 3 uses
  %i.sh = xor i64 %spec.select.i.i, %.sroa.18.0422561681
  %i.si = and i64 %i.sh, 448
  %i.sj = icmp eq i64 %i.si, 0
  %i.sk = and i64 %spec.select.i.i, -449
  %storemerge5.i.i = select i1 %i.sj, i64 %i.sk, i64 %spec.select.i.i ; 3 uses
  %.unshifted6.i.i = xor i64 %storemerge5.i.i, %.sroa.18.0422561681
  %i.sl = and i64 %.unshifted6.i.i, 4294966784
  %i.sm = icmp eq i64 %i.sl, 0
  %i.sn = and i64 %storemerge5.i.i, -4294966785
  %storemerge7.i.i = select i1 %i.sm, i64 %i.sn, i64 %storemerge5.i.i ; 3 uses
  %.unshifted.i.i = xor i64 %storemerge7.i.i, %.sroa.18.0422561681
  %i.so = icmp ult i64 %.unshifted.i.i, 4294967296
  %i.sp = and i64 %storemerge7.i.i, 4294967295
  %spec.select = select i1 %i.so, i64 %i.sp, i64 %storemerge7.i.i
  br label %_ZN5clang10QualifiersmIES0_.exit

_ZN5clang10QualifiersmIES0_.exit:                 ; preds = %bb.cq, %bb.cp
  %i.sq = phi i64 [ %spec.select, %bb.cq ], [ %i.rz, %bb.cp ] ; 3 uses
  %.not.i.i50 = icmp ult i64 %.sroa.11.0424559682, 8
  br i1 %.not.i.i50, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_ZN5clang10QualifiersmIES0_.exit
  %i.sr = xor i64 %.sroa.11.0424559682, -1
  %i.ss = and i64 %43, %i.sr
  br label %_ZN5clang10QualifiersmIES0_.exit58

bb.cs:                                            ; preds = %_ZN5clang10QualifiersmIES0_.exit
  %i.st = and i64 %.sroa.11.0424559682, 7
  %i.su = xor i64 %i.st, -1
  %i.sv = and i64 %43, %i.su                      ; 2 uses
  %i.sw = xor i64 %43, %.sroa.11.0424559682
  %i.sx = and i64 %i.sw, 48
  %i.sy = icmp eq i64 %i.sx, 0
  %i.sz = and i64 %i.sv, -49
  %spec.select.i.i51 = select i1 %i.sy, i64 %i.sz, i64 %i.sv ; 3 uses
  %i.ta = xor i64 %spec.select.i.i51, %.sroa.11.0424559682
  %i.tb = and i64 %i.ta, 448
  %i.tc = icmp eq i64 %i.tb, 0
  %i.td = and i64 %spec.select.i.i51, -449
  %storemerge5.i.i52 = select i1 %i.tc, i64 %i.td, i64 %spec.select.i.i51 ; 3 uses
  %.unshifted6.i.i53 = xor i64 %storemerge5.i.i52, %.sroa.11.0424559682
  %i.te = and i64 %.unshifted6.i.i53, 4294966784
  %i.tf = icmp eq i64 %i.te, 0
  %i.tg = and i64 %storemerge5.i.i52, -4294966785
  %storemerge7.i.i54 = select i1 %i.tf, i64 %i.tg, i64 %storemerge5.i.i52 ; 3 uses
  %.unshifted.i.i55 = xor i64 %storemerge7.i.i54, %.sroa.11.0424559682
  %i.th = icmp ult i64 %.unshifted.i.i55, 4294967296
  %i.ti = and i64 %storemerge7.i.i54, 4294967295
  %spec.select456 = select i1 %i.th, i64 %i.ti, i64 %storemerge7.i.i54
  br label %_ZN5clang10QualifiersmIES0_.exit58

_ZN5clang10QualifiersmIES0_.exit58:               ; preds = %bb.cs, %bb.cr
  %i.tj = phi i64 [ %spec.select456, %bb.cs ], [ %i.ss, %bb.cr ] ; 3 uses
  %44 = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv680
  %45 = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %indvars.iv558683
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %45, i64 -8
  %.sroa.2.0.copyload.i59 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !656 ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv558683, -1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 3 uses
  %.sroa.2.0..sroa_idx.i63 = getelementptr inbounds i8, ptr %44, i64 -8
  %.sroa.2.0.copyload.i64 = load i64, ptr %.sroa.2.0..sroa_idx.i63, align 8, !tbaa !656 ; 3 uses
  %indvars.iv.next588 = add nsw i64 %indvars.iv680, -1 ; 3 uses
  %indvars589 = trunc i64 %indvars.iv.next588 to i32 ; 3 uses
  %.not.i47 = icmp eq i32 %indvars, 0
  %.not.i47.a = icmp eq i32 %indvars589, 0
  %or.cond694 = select i1 %.not.i47, i1 true, i1 %.not.i47.a
  br i1 %or.cond694, label %..critedge.loopexit.loopexit_crit_edge, label %bb.cn, !llvm.loop !3308

..critedge.loopexit.loopexit_crit_edge:           ; preds = %_ZN5clang10QualifiersmIES0_.exit58
  store i32 %indvars, ptr %i.aa, align 8, !tbaa !657
  store i32 %indvars589, ptr %i.bg, align 8, !tbaa !657
  br label %.critedge.loopexit, !llvm.loop !3308

_ZN5clang10QualifiersmIES0_.exit58..critedge.loopexit.loopexit_crit_edge: ; preds = %bb.cn
  store i32 %indvars, ptr %i.aa, align 8, !tbaa !657
  store i32 %indvars589, ptr %i.bg, align 8, !tbaa !657
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %_ZN5clang10QualifiersmIES0_.exit58..critedge.loopexit.loopexit_crit_edge, %.lr.ph562.a, %..critedge.loopexit.loopexit_crit_edge, %.lr.ph, %.preheader
  %.lcssa420 = phi i64 [ %.promoted419, %.preheader ], [ %.promoted419, %.lr.ph ], [ %i.tj, %..critedge.loopexit.loopexit_crit_edge ], [ %.promoted419, %.lr.ph562.a ], [ %i.tj, %_ZN5clang10QualifiersmIES0_.exit58..critedge.loopexit.loopexit_crit_edge ]
  %.lcssa = phi i64 [ %.promoted418, %.preheader ], [ %.promoted418, %.lr.ph ], [ %i.sq, %..critedge.loopexit.loopexit_crit_edge ], [ %.promoted418, %.lr.ph562.a ], [ %i.sq, %_ZN5clang10QualifiersmIES0_.exit58..critedge.loopexit.loopexit_crit_edge ]
  %.sroa.18.0.lcssa = phi i64 [ %.sroa.18.4, %.preheader ], [ %.sroa.18.4, %.lr.ph ], [ %.sroa.2.0.copyload.i59, %..critedge.loopexit.loopexit_crit_edge ], [ %.sroa.18.4, %.lr.ph562.a ], [ %.sroa.2.0.copyload.i59, %_ZN5clang10QualifiersmIES0_.exit58..critedge.loopexit.loopexit_crit_edge ]
  %.sroa.0340.0.lcssa = phi ptr [ %.sroa.0340.5, %.preheader ], [ %.sroa.0340.5, %.lr.ph ], [ %41, %..critedge.loopexit.loopexit_crit_edge ], [ %.sroa.0340.5, %.lr.ph562.a ], [ %41, %_ZN5clang10QualifiersmIES0_.exit58..critedge.loopexit.loopexit_crit_edge ]
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.11.4, %.preheader ], [ %.sroa.11.4, %.lr.ph ], [ %.sroa.2.0.copyload.i64, %..critedge.loopexit.loopexit_crit_edge ], [ %.sroa.11.4, %.lr.ph562.a ], [ %.sroa.2.0.copyload.i64, %_ZN5clang10QualifiersmIES0_.exit58..critedge.loopexit.loopexit_crit_edge ]
  store i64 %.lcssa, ptr %27, align 8
  store i64 %.lcssa420, ptr %28, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit
  %.sroa.18.1 = phi i64 [ %.sroa.18.4, %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit ], [ %.sroa.18.0.lcssa, %.critedge.loopexit ]
  %.sroa.0340.1 = phi ptr [ %i.rq, %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit ], [ %.sroa.0340.0.lcssa, %.critedge.loopexit ] ; 2 uses
  %.sroa.11.1 = phi i64 [ %.sroa.11.4, %_ZL25getCommonNonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeERNS_10QualifiersES5_S7_.exit ], [ %.sroa.11.0.lcssa, %.critedge.loopexit ]
  br i1 %i.cn, label %bb.ct, label %bb.dd

bb.ct:                                            ; preds = %.critedge
  %i.tk = load i64, ptr %27, align 8, !tbaa !1130 ; 7 uses
  %i.tl = lshr i64 %i.tk, 32                      ; 2 uses
  %.not47.i = icmp eq i64 %i.tl, 0
  br i1 %.not47.i, label %thread-pre-splitthread-pre-split.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.tm = and i64 %i.tk, 281200098803712
  %.not.i67 = icmp eq i64 %i.tm, 281200098803712
  %.pre58.i = load i64, ptr %28, align 8, !tbaa !1130 ; 4 uses
  br i1 %.not.i67, label %thread-pre-split.thread.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tn = lshr i64 %.pre58.i, 32
  %i.to = icmp eq i64 %i.tl, %i.tn
  br i1 %i.to, label %bb.cw, label %thread-pre-split.i

bb.cw:                                            ; preds = %bb.cv
  %i.tp = and i64 %i.tk, -4294967296
  %i.tq = and i64 %i.tk, 4294967295
  %i.tr = and i64 %.pre58.i, 4294967295
  br label %thread-pre-split.i

thread-pre-splitthread-pre-split.i:               ; preds = %bb.ct
  %.pre.pr.i = load i64, ptr %28, align 8, !tbaa !1130
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %thread-pre-splitthread-pre-split.i, %bb.cw, %bb.cv
  %.pre.i = phi i64 [ %.pre.pr.i, %thread-pre-splitthread-pre-split.i ], [ %i.tr, %bb.cw ], [ %.pre58.i, %bb.cv ] ; 4 uses
  %i.ts = phi i64 [ %i.tk, %thread-pre-splitthread-pre-split.i ], [ %i.tq, %bb.cw ], [ %i.tk, %bb.cv ] ; 3 uses
  %.sroa.041.0.i = phi i64 [ 0, %thread-pre-splitthread-pre-split.i ], [ %i.tp, %bb.cw ], [ 0, %bb.cv ]
  %.not35.i = icmp ult i64 %i.ts, 8
  %.not36.i = icmp ult i64 %.pre.i, 8
  %or.cond.i = select i1 %.not35.i, i1 %.not36.i, i1 false
  br i1 %or.cond.i, label %bb.cx, label %thread-pre-split.thread.i

bb.cx:                                            ; preds = %thread-pre-split.i
  %i.tt = and i64 %i.ts, %.pre.i                  ; 2 uses
  %i.tu = xor i64 %i.tt, -1
  br label %.sink.split.i

thread-pre-split.thread.i:                        ; preds = %thread-pre-split.i, %bb.cu
  %i.tv = phi i64 [ %.pre.i, %thread-pre-split.i ], [ %.pre58.i, %bb.cu ] ; 3 uses
  %.sroa.041.059.i = phi i64 [ %.sroa.041.0.i, %thread-pre-split.i ], [ 0, %bb.cu ]
  %i.tw = phi i64 [ %i.ts, %thread-pre-split.i ], [ %i.tk, %bb.cu ] ; 4 uses
  %i.tx = and i64 %i.tv, 7
  %i.ty = and i64 %i.tx, %i.tw                    ; 3 uses
  %i.tz = or i64 %i.ty, %.sroa.041.059.i          ; 2 uses
  %i.ua = xor i64 %i.ty, %i.tw                    ; 2 uses
  %i.ub = xor i64 %i.ty, %i.tv                    ; 3 uses
  store i64 %i.ub, ptr %28, align 8, !tbaa !1130
  %i.uc = trunc i64 %i.ua to i32                  ; 2 uses
  %i.ud = lshr i32 %i.uc, 4
  %i.ue = and i32 %i.ud, 3                        ; 2 uses
  %i.uf = trunc i64 %i.tv to i32
  %i.ug = lshr i32 %i.uf, 4
  %i.uh = and i32 %i.ug, 3
  %i.ui = icmp eq i32 %i.ue, %i.uh
  br i1 %i.ui, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %thread-pre-split.thread.i
  %i.uj = and i64 %i.tz, -49
  %i.uk = shl nuw nsw i32 %i.ue, 4
  %i.ul = zext nneg i32 %i.uk to i64
  %i.um = or disjoint i64 %i.uj, %i.ul
  %i.un = and i64 %i.ub, -49                      ; 2 uses
  store i64 %i.un, ptr %28, align 8, !tbaa !1130
  %.pre52.i = trunc i64 %i.ua to i32
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %thread-pre-split.thread.i
  %.pre-phi.i = phi i32 [ %.pre52.i, %bb.cy ], [ %i.uc, %thread-pre-split.thread.i ]
  %i.uo = phi i64 [ %i.un, %bb.cy ], [ %i.ub, %thread-pre-split.thread.i ] ; 3 uses
  %.sroa.041.1.i = phi i64 [ %i.um, %bb.cy ], [ %i.tz, %thread-pre-split.thread.i ] ; 2 uses
  %i.up = lshr i32 %.pre-phi.i, 6
  %i.uq = and i32 %i.up, 7                        ; 2 uses
  %i.ur = trunc i64 %i.uo to i32
  %i.us = lshr i32 %i.ur, 6
  %i.ut = and i32 %i.us, 7
  %i.uu = icmp eq i32 %i.uq, %i.ut
  br i1 %i.uu, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.uv = and i64 %.sroa.041.1.i, -449
  %i.uw = shl nuw nsw i32 %i.uq, 6
  %i.ux = zext nneg i32 %i.uw to i64
  %i.uy = or disjoint i64 %i.uv, %i.ux
  %i.uz = and i64 %i.uo, -449                     ; 2 uses
  store i64 %i.uz, ptr %28, align 8, !tbaa !1130
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.va = phi i64 [ %i.uz, %bb.da ], [ %i.uo, %bb.cz ] ; 2 uses
  %.sroa.041.2.i = phi i64 [ %i.uy, %bb.da ], [ %.sroa.041.1.i, %bb.cz ] ; 2 uses
  %.unshifted48.i = xor i64 %i.tw, %i.va
  %i.vb = and i64 %.unshifted48.i, 4294966784
  %i.vc = icmp eq i64 %i.vb, 0
  br i1 %i.vc, label %bb.dc, label %_ZN5clang10Qualifiers22removeCommonQualifiersERS0_S1_.exit

bb.dc:                                            ; preds = %bb.db
  %i.vd = and i64 %.sroa.041.2.i, -4294966785
  %i.ve = and i64 %i.tw, 4294966784
  %i.vf = or disjoint i64 %i.vd, %i.ve
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.dc, %bb.cx
  %i.vg = phi i64 [ %i.va, %bb.dc ], [ %.pre.i, %bb.cx ]
  %.sink62.i = phi i64 [ -4294966785, %bb.dc ], [ %i.tu, %bb.cx ]
  %.sroa.041.3.ph.i = phi i64 [ %i.vf, %bb.dc ], [ %i.tt, %bb.cx ]
  %i.vh = and i64 %.sink62.i, %i.vg
  store i64 %i.vh, ptr %28, align 8, !tbaa !1130
  br label %_ZN5clang10Qualifiers22removeCommonQualifiersERS0_S1_.exit

_ZN5clang10Qualifiers22removeCommonQualifiersERS0_S1_.exit: ; preds = %bb.db, %.sink.split.i
  %.sroa.041.3.i = phi i64 [ %.sroa.041.2.i, %bb.db ], [ %.sroa.041.3.ph.i, %.sink.split.i ]
  store i64 %.sroa.041.3.i, ptr %27, align 8, !tbaa !656
  br label %bb.dd

bb.dd:                                            ; preds = %.critedge, %_ZN5clang10Qualifiers22removeCommonQualifiersERS0_S1_.exit
  %i.vi = load i32, ptr %i.aa, align 8, !tbaa !657 ; 2 uses
  %.not.i68446 = icmp eq i32 %i.vi, 0
  br i1 %.not.i68446, label %.critedge2, label %.lr.ph450

.lr.ph450:                                        ; preds = %bb.dd
  %i.vj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 6 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.vv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.vy = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.vz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.wc = getelementptr inbounds nuw i8, ptr %12, i64 12
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph450, %_ZN5clang10QualifiersmIES0_.exit121
  %i.wd = phi i32 [ %i.vi, %.lr.ph450 ], [ %i.ash, %_ZN5clang10QualifiersmIES0_.exit121 ] ; 2 uses
  %.sroa.11.2449 = phi i64 [ %.sroa.11.1, %.lr.ph450 ], [ %.sroa.2.0.copyload.i105, %_ZN5clang10QualifiersmIES0_.exit121 ] ; 5 uses
  %.sroa.0340.2448 = phi ptr [ %.sroa.0340.1, %.lr.ph450 ], [ %i.arm, %_ZN5clang10QualifiersmIES0_.exit121 ] ; 34 uses
  %.sroa.18.2447 = phi i64 [ %.sroa.18.1, %.lr.ph450 ], [ %.sroa.2.0.copyload.i100, %_ZN5clang10QualifiersmIES0_.exit121 ] ; 7 uses
  %i.we = load i32, ptr %i.bg, align 8, !tbaa !657 ; 3 uses
  %.not.i69 = icmp eq i32 %i.we, 0
  br i1 %.not.i69, label %.critedge2, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.wf = lshr i64 %.sroa.18.2447, 32             ; 2 uses
  %.not47.i70 = icmp eq i64 %i.wf, 0
  br i1 %.not47.i70, label %thread-pre-split.i73, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.wg = and i64 %.sroa.18.2447, 281200098803712
  %.not.i71 = icmp eq i64 %i.wg, 281200098803712
  br i1 %.not.i71, label %thread-pre-split.thread.i79, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.wh = lshr i64 %.sroa.11.2449, 32
  %i.wi = icmp eq i64 %i.wf, %i.wh
  br i1 %i.wi, label %bb.di, label %thread-pre-split.i73

bb.di:                                            ; preds = %bb.dh
  %i.wj = and i64 %.sroa.18.2447, -4294967296
  %i.wk = and i64 %.sroa.18.2447, 4294967295
  %i.wl = and i64 %.sroa.11.2449, 4294967295
  br label %thread-pre-split.i73

thread-pre-split.i73:                             ; preds = %bb.df, %bb.di, %bb.dh
  %.sroa.11.5 = phi i64 [ %.sroa.11.2449, %bb.dh ], [ %i.wl, %bb.di ], [ %.sroa.11.2449, %bb.df ] ; 3 uses
  %i.wm = phi i64 [ %.sroa.18.2447, %bb.dh ], [ %i.wk, %bb.di ], [ %.sroa.18.2447, %bb.df ] ; 3 uses
  %.sroa.041.0.i75 = phi i64 [ 0, %bb.dh ], [ %i.wj, %bb.di ], [ 0, %bb.df ]
  %.not35.i76 = icmp ult i64 %i.wm, 8
  %.not36.i77 = icmp ult i64 %.sroa.11.5, 8
  %or.cond.i78 = select i1 %.not35.i76, i1 %.not36.i77, i1 false
  br i1 %or.cond.i78, label %bb.dj, label %thread-pre-split.thread.i79

bb.dj:                                            ; preds = %thread-pre-split.i73
  %i.wn = and i64 %i.wm, %.sroa.11.5
  br label %_ZN5clang10Qualifiers22removeCommonQualifiersERS0_S1_.exit97

thread-pre-split.thread.i79:                      ; preds = %thread-pre-split.i73, %bb.dg
  %.sroa.11.6 = phi i64 [ %.sroa.11.5, %thread-pre-split.i73 ], [ %.sroa.11.2449, %bb.dg ] ; 3 uses
  %.sroa.041.059.i81 = phi i64 [ %.sroa.041.0.i75, %thread-pre-split.i73 ], [ 0, %bb.dg ]
  %i.wo = phi i64 [ %i.wm, %thread-pre-split.i73 ], [ %.sroa.18.2447, %bb.dg ] ; 5 uses
  %i.wp = and i64 %.sroa.11.6, 7
  %i.wq = and i64 %i.wp, %i.wo                    ; 2 uses
  %i.wr = or i64 %i.wq, %.sroa.041.059.i81        ; 2 uses
  %i.ws = xor i64 %i.wq, %i.wo
  %i.wt = trunc i64 %i.ws to i32                  ; 2 uses
  %i.wu = lshr i32 %i.wt, 4
  %i.wv = and i32 %i.wu, 3                        ; 2 uses
  %i.ww = trunc i64 %.sroa.11.6 to i32            ; 2 uses
  %i.wx = lshr i32 %i.ww, 4
  %i.wy = and i32 %i.wx, 3
  %i.wz = icmp eq i32 %i.wv, %i.wy                ; 2 uses
  %i.xa = and i64 %i.wr, -49
  %i.xb = shl nuw nsw i32 %i.wv, 4
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = or disjoint i64 %i.xa, %i.xc
  %.pre52.i93 = trunc i64 %i.wo to i32
  %.pre-phi.i82 = select i1 %i.wz, i32 %.pre52.i93, i32 %i.wt
  %.sroa.041.1.i83 = select i1 %i.wz, i64 %i.xd, i64 %i.wr ; 2 uses
  %i.xe = lshr i32 %.pre-phi.i82, 6
  %i.xf = and i32 %i.xe, 7                        ; 2 uses
  %i.xg = lshr i32 %i.ww, 6
  %i.xh = and i32 %i.xg, 7
  %i.xi = icmp eq i32 %i.xf, %i.xh
  %i.xj = and i64 %.sroa.041.1.i83, -449
  %i.xk = shl nuw nsw i32 %i.xf, 6
  %i.xl = zext nneg i32 %i.xk to i64
  %i.xm = or disjoint i64 %i.xj, %i.xl
  %.sroa.041.2.i84 = select i1 %i.xi, i64 %i.xm, i64 %.sroa.041.1.i83 ; 2 uses
  %.unshifted48.i85 = xor i64 %i.wo, %.sroa.11.6
  %i.xn = and i64 %.unshifted48.i85, 4294966784
  %i.xo = icmp eq i64 %i.xn, 0
  br i1 %i.xo, label %bb.dk, label %_ZN5clang10Qualifiers22removeCommonQualifiersERS0_S1_.exit97

bb.dk:                                            ; preds = %thread-pre-split.thread.i79
  %i.xp = and i64 %.sroa.041.2.i84, -4294966785
  %i.xq = and i64 %i.wo, 4294966784
  %i.xr = or disjoint i64 %i.xp, %i.xq
  br label %_ZN5clang10Qualifiers22removeCommonQualifiersERS0_S1_.exit97

_ZN5clang10Qualifiers22removeCommonQualifiersERS0_S1_.exit97: ; preds = %bb.dj, %bb.dk, %thread-pre-split.thread.i79
  %.sroa.041.3.i86 = phi i64 [ %.sroa.041.2.i84, %thread-pre-split.thread.i79 ], [ %i.xr, %bb.dk ], [ %i.wn, %bb.dj ] ; 52 uses
  %i.xs = load ptr, ptr %29, align 8, !tbaa !655
  %i.xt = zext i32 %i.wd to i64
  %i.xu = getelementptr inbounds nuw [16 x i8], ptr %i.xs, i64 %i.xt ; 2 uses
  %i.xv = getelementptr inbounds i8, ptr %i.xu, i64 -16
  %.sroa.0.0.copyload.i98 = load ptr, ptr %i.xv, align 8, !tbaa !956 ; 26 uses
  %.sroa.2.0..sroa_idx.i99 = getelementptr inbounds i8, ptr %i.xu, i64 -8
  %.sroa.2.0.copyload.i100 = load i64, ptr %.sroa.2.0..sroa_idx.i99, align 8, !tbaa !656
  %i.xw = add i32 %i.wd, -1
  store i32 %i.xw, ptr %i.aa, align 8, !tbaa !657
  %i.xx = load ptr, ptr %30, align 8, !tbaa !655
  %i.xy = zext i32 %i.we to i64
  %i.xz = getelementptr inbounds nuw [16 x i8], ptr %i.xx, i64 %i.xy ; 2 uses
  %i.ya = getelementptr inbounds i8, ptr %i.xz, i64 -16
  %.sroa.0.0.copyload.i103 = load ptr, ptr %i.ya, align 8, !tbaa !956 ; 22 uses
  %.sroa.2.0..sroa_idx.i104 = getelementptr inbounds i8, ptr %i.xz, i64 -8
  %.sroa.2.0.copyload.i105 = load i64, ptr %.sroa.2.0..sroa_idx.i104, align 8, !tbaa !656
  %i.yb = add i32 %i.we, -1
  store i32 %i.yb, ptr %i.bg, align 8, !tbaa !657
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 16 ; 13 uses
  %i.yd = load i8, ptr %i.yc, align 16            ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 16 ; 10 uses
  %i.yf = load i8, ptr %i.ye, align 16
  %.not.i108 = icmp eq i8 %i.yd, %i.yf
  br i1 %.not.i108, label %bb.dl, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.dl:                                            ; preds = %_ZN5clang10Qualifiers22removeCommonQualifiersERS0_S1_.exit97
  switch i8 %i.yd, label %bb.ho [
    i8 41, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread
    i8 12, label %bb.gz
    i8 30, label %bb.gy
    i8 57, label %bb.go
    i8 55, label %bb.gj
    i8 52, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread
    i8 53, label %bb.gc
    i8 54, label %bb.fs
    i8 50, label %bb.fg
    i8 38, label %bb.fd
    i8 34, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread
    i8 46, label %bb.ev
    i8 27, label %bb.el
    i8 17, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread
    i8 15, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread
    i8 37, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread
    i8 16, label %bb.ed
    i8 9, label %bb.dz
    i8 8, label %bb.du
    i8 1, label %bb.dq
    i8 0, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.yg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 32
  %.sroa.0.0.copyload.i313 = load i64, ptr %i.yg, align 16, !tbaa !716 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 32
  %.sroa.0.0.copyload.i312 = load i64, ptr %i.yh, align 16, !tbaa !716 ; 3 uses
  %i.yi = and i64 %.sroa.0.0.copyload.i313, -16
  %i.yj = inttoptr i64 %i.yi to ptr
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.yl = load i64, ptr %i.yk, align 8, !tbaa !716
  %i.ym = and i64 %.sroa.0.0.copyload.i313, 7
  %i.yn = or i64 %i.yl, %i.ym
  %i.yo = and i64 %.sroa.0.0.copyload.i312, -16
  %i.yp = inttoptr i64 %i.yo to ptr
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !716
  %i.ys = and i64 %.sroa.0.0.copyload.i312, 7
  %i.yt = or i64 %i.yr, %i.ys
  %i.yu = icmp eq i64 %i.yn, %i.yt
  br i1 %i.yu, label %bb.dn, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.dn:                                            ; preds = %bb.dm
  %i.yv = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i313, i64 %.sroa.0.0.copyload.i312, i1 noundef zeroext false), !inline_history !3309
  %i.yw = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.yw, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.yx = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.yy = and i64 %i.yx, -8
  %i.yz = or disjoint i64 %.sroa.041.3.i86, %i.yy
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit311

bb.dp:                                            ; preds = %bb.dn
  %i.za = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit311

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit311: ; preds = %bb.do, %bb.dp
  %.sroa.05.0.i.i310 = phi i64 [ %i.za, %bb.dp ], [ %i.yz, %bb.do ]
  %i.zb = call i64 @_ZNK5clang10ASTContext15getAdjustedTypeENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.yv, i64 %.sroa.05.0.i.i310), !inline_history !3309
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.dq:                                            ; preds = %bb.dl
  %i.zc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 32
  %.sroa.0.0.copyload.i309 = load i64, ptr %i.zc, align 16, !tbaa !716 ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 32
  %.sroa.0.0.copyload.i308 = load i64, ptr %i.zd, align 16, !tbaa !716 ; 3 uses
  %i.ze = and i64 %.sroa.0.0.copyload.i309, -16
  %i.zf = inttoptr i64 %i.ze to ptr
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  %i.zh = load i64, ptr %i.zg, align 8, !tbaa !716
  %i.zi = and i64 %.sroa.0.0.copyload.i309, 7
  %i.zj = or i64 %i.zh, %i.zi
  %i.zk = and i64 %.sroa.0.0.copyload.i308, -16
  %i.zl = inttoptr i64 %i.zk to ptr
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.zn = load i64, ptr %i.zm, align 8, !tbaa !716
  %i.zo = and i64 %.sroa.0.0.copyload.i308, 7
  %i.zp = or i64 %i.zn, %i.zo
  %i.zq = icmp eq i64 %i.zj, %i.zp
  br i1 %i.zq, label %bb.dr, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.dr:                                            ; preds = %bb.dq
  %i.zr = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i309, i64 %.sroa.0.0.copyload.i308, i1 noundef zeroext false), !inline_history !3309
  %i.zs = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.zs, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.zt = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.zu = and i64 %i.zt, -8
  %i.zv = or disjoint i64 %.sroa.041.3.i86, %i.zu
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit307

bb.dt:                                            ; preds = %bb.dr
  %i.zw = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit307

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit307: ; preds = %bb.ds, %bb.dt
  %.sroa.05.0.i.i306 = phi i64 [ %i.zw, %bb.dt ], [ %i.zv, %bb.ds ]
  %i.zx = call i64 @_ZNK5clang10ASTContext14getDecayedTypeENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.zr, i64 %.sroa.05.0.i.i306), !inline_history !3309
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.du:                                            ; preds = %bb.dl
  %i.zy = load i32, ptr %i.yc, align 16
  %i.zz = lshr i32 %i.zy, 19                      ; 2 uses
  %i.aaa = load i32, ptr %i.ye, align 16
  %i.aab = lshr i32 %i.aaa, 19
  %.not305.i = icmp eq i32 %i.zz, %i.aab
  br i1 %.not305.i, label %bb.dv, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.dv:                                            ; preds = %bb.du
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 40
  %.sroa.0.0.copyload.i305 = load i64, ptr %i.aac, align 8, !tbaa !716 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 40
  %.sroa.0.0.copyload.i304 = load i64, ptr %i.aad, align 8, !tbaa !716 ; 3 uses
  %i.aae = and i64 %.sroa.0.0.copyload.i305, -16
  %i.aaf = inttoptr i64 %i.aae to ptr
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aah = load i64, ptr %i.aag, align 8, !tbaa !716
  %i.aai = and i64 %.sroa.0.0.copyload.i305, 7
  %i.aaj = or i64 %i.aah, %i.aai
  %i.aak = and i64 %.sroa.0.0.copyload.i304, -16
  %i.aal = inttoptr i64 %i.aak to ptr
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !716
  %i.aao = and i64 %.sroa.0.0.copyload.i304, 7
  %i.aap = or i64 %i.aan, %i.aao
  %i.aaq = icmp eq i64 %i.aaj, %i.aap
  br i1 %i.aaq, label %bb.dw, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.dw:                                            ; preds = %bb.dv
  %i.aar = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i305, i64 %.sroa.0.0.copyload.i304, i1 noundef zeroext false), !inline_history !3309
  %i.aas = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.aas, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aat = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.aau = and i64 %i.aat, -8
  %i.aav = or disjoint i64 %.sroa.041.3.i86, %i.aau
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit303

bb.dy:                                            ; preds = %bb.dw
  %i.aaw = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit303

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit303: ; preds = %bb.dx, %bb.dy
  %.sroa.05.0.i.i302 = phi i64 [ %i.aaw, %bb.dy ], [ %i.aav, %bb.dx ]
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 32
  %i.aay = load ptr, ptr %i.aax, align 16, !tbaa !1156
  %i.aaz = call i64 @_ZNK5clang10ASTContext17getAttributedTypeENS_4attr4KindENS_8QualTypeES3_PKNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %i.zz, i64 %i.aar, i64 %.sroa.05.0.i.i302, ptr noundef %i.aay), !inline_history !3309
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.dz:                                            ; preds = %bb.dl
  %i.aba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 40
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !1159 ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 48
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !3329
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abb, i64 40
  %i.abf = load i32, ptr %i.abe, align 8, !tbaa !3330 ; 3 uses
  %i.abg = zext i32 %i.abf to i64
  %i.abh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 40
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !1159 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 48
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !3329
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abi, i64 40
  %i.abm = load i32, ptr %i.abl, align 8, !tbaa !3330
  %.not.i.i297 = icmp eq i32 %i.abf, %i.abm
  br i1 %.not.i.i297, label %bb.ea, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.ea:                                            ; preds = %bb.dz
  %i.abn = icmp eq i32 %i.abf, 0
  br i1 %i.abn, label %_ZN4llvmneENS_9StringRefES0_.exit.thread379, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.ea
  %bcmp.i.i = call i32 @bcmp(ptr %i.abd, ptr %i.abk, i64 %i.abg)
  %.not406 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not406, label %_ZN4llvmneENS_9StringRefES0_.exit.thread379, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread379:      ; preds = %bb.ea, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.abo = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.abo, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread379
  %i.abp = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.abq = and i64 %i.abp, -8
  %i.abr = or disjoint i64 %.sroa.041.3.i86, %i.abq
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit296

bb.ec:                                            ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread379
  %i.abs = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit296

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit296: ; preds = %bb.eb, %bb.ec
  %.sroa.05.0.i.i295 = phi i64 [ %i.abs, %bb.ec ], [ %i.abr, %bb.eb ]
  %i.abt = call i64 @_ZNK5clang10ASTContext23getBTFTagAttributedTypeEPKNS_14BTFTypeTagAttrENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull %i.abb, i64 %.sroa.05.0.i.i295), !inline_history !3309
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.ed:                                            ; preds = %bb.dl
  %i.abu = load i32, ptr %i.yc, align 16
  %i.abv = load i32, ptr %i.ye, align 16
  %i.abw = xor i32 %i.abv, %i.abu
  %i.abx = and i32 %i.abw, 6291456
  %.not306.i = icmp eq i32 %i.abx, 0
  br i1 %.not306.i, label %bb.ee, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.ee:                                            ; preds = %bb.ed
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 40
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !799 ; 8 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 40
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !799 ; 6 uses
  %i.acc = icmp ne ptr %i.abz, null
  %i.acd = icmp ne ptr %i.acb, null
  %or.cond.i.i.i287 = and i1 %i.acc, %i.acd
  br i1 %or.cond.i.i.i287, label %bb.ef, label %_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread

bb.ef:                                            ; preds = %bb.ee
  %i.ace = icmp eq ptr %i.abz, %i.acb
  br i1 %i.ace, label %_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread383, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i289

_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i289: ; preds = %bb.ef
  %i.acf = load ptr, ptr %i.abz, align 8, !tbaa !660
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 32
  %i.ach = load ptr, ptr %i.acg, align 8
  %i.aci = call noundef ptr %i.ach(ptr noundef nonnull align 8 dereferenceable(33) %i.abz) #28, !inline_history !3310
  %i.acj = load ptr, ptr %i.acb, align 8, !tbaa !660
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 32
  %i.acl = load ptr, ptr %i.ack, align 8
  %i.acm = call noundef ptr %i.acl(ptr noundef nonnull align 8 dereferenceable(33) %i.acb) #28, !inline_history !3310
  %i.acn = icmp eq ptr %i.aci, %i.acm
  br i1 %i.acn, label %.lr.ph.i290, label %_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread

.lr.ph.i290:                                      ; preds = %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i289, %select.unfold.i.i293
  %.sroa.0.030.i2.i291 = phi ptr [ %i.acv, %select.unfold.i.i293 ], [ %i.abz, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i289 ] ; 4 uses
  %i.aco = load ptr, ptr %.sroa.0.030.i2.i291, align 8, !tbaa !660
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 48
  %i.acq = load ptr, ptr %i.acp, align 8
  %i.acr = call noundef ptr %i.acq(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.0.030.i2.i291) #28, !inline_history !3311
  %.not29.i.i292 = icmp eq ptr %i.acr, null
  br i1 %.not29.i.i292, label %_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread383, label %select.unfold.i.i293

select.unfold.i.i293:                             ; preds = %.lr.ph.i290
  %i.acs = load ptr, ptr %.sroa.0.030.i2.i291, align 8, !tbaa !660
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 40
  %i.acu = load ptr, ptr %i.act, align 8
  %i.acv = call noundef ptr %i.acu(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.0.030.i2.i291) #28, !inline_history !3312 ; 4 uses
  %.not.i.i.i294 = icmp ne ptr %i.acv, %i.abz
  call void @llvm.assume(i1 %.not.i.i.i294)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acv) ]
  %i.acw = icmp eq ptr %i.acv, %i.acb
  br i1 %i.acw, label %_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread383, label %.lr.ph.i290

_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread: ; preds = %bb.ee, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i289
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.vj, ptr %4, align 8, !tbaa !655
  store i32 0, ptr %i.vk, align 8, !tbaa !657
  store i32 8, ptr %i.vl, align 4, !tbaa !662
  br label %bb.eh

_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread383: ; preds = %select.unfold.i.i293, %.lr.ph.i290, %bb.ef
  %.3.i.i288386 = phi ptr [ %i.abz, %bb.ef ], [ %i.acb, %.lr.ph.i290 ], [ %i.abz, %select.unfold.i.i293 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.vj, ptr %4, align 8, !tbaa !655
  store i32 0, ptr %i.vk, align 8, !tbaa !657
  store i32 8, ptr %i.vl, align 4, !tbaa !662
  %i.acx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 48
  %i.acy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 20
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !716
  %i.ada = zext i32 %i.acz to i64
  %i.adb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 48
  %i.adc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 20
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !716
  %i.ade = zext i32 %i.add to i64
  %i.adf = call fastcc noundef zeroext i1 @_ZL26getCommonTemplateArgumentsRKN5clang10ASTContextERN4llvm15SmallVectorImplINS_16TemplateArgumentEEENS3_8ArrayRefIS5_EES9_(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.acx, i64 %i.ada, ptr nonnull %i.adb, i64 %i.ade), !inline_history !3309
  br i1 %i.adf, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread383
  store i32 0, ptr %i.vk, align 8, !tbaa !657
  br label %bb.eh

bb.eh:                                            ; preds = %_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread, %bb.eg, %_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread383
  %.0.i109 = phi ptr [ null, %bb.eg ], [ %.3.i.i288386, %_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread383 ], [ null, %_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread ]
  %i.adg = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.adg, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.adh = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.adi = and i64 %i.adh, -8
  %i.adj = or disjoint i64 %.sroa.041.3.i86, %i.adi
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit282

bb.ej:                                            ; preds = %bb.eh
  %i.adk = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit282

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit282: ; preds = %bb.ei, %bb.ej
  %.sroa.05.0.i.i281 = phi i64 [ %i.adk, %bb.ej ], [ %i.adj, %bb.ei ]
  %i.adl = load i32, ptr %i.yc, align 16
  %i.adm = lshr i32 %i.adl, 21
  %i.adn = and i32 %i.adm, 3
  %i.ado = load ptr, ptr %4, align 8, !tbaa !655
  store ptr %i.ado, ptr %5, align 8, !tbaa !1241
  %i.adp = load i32, ptr %i.vk, align 8, !tbaa !657
  %i.adq = zext i32 %i.adp to i64
  store i64 %i.adq, ptr %i.vm, align 8, !tbaa !1240
  %i.adr = call i64 @_ZNK5clang10ASTContext11getAutoTypeENS_11DeducedKindENS_8QualTypeENS_15AutoTypeKeywordEPNS_12TemplateDeclEN4llvm8ArrayRefINS_16TemplateArgumentEEE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef 1, i64 %.sroa.05.0.i.i281, i32 noundef %i.adn, ptr noundef %.0.i109, ptr noundef nonnull byval(%"class.llvm::ArrayRef.929") align 8 %5), !inline_history !3309
  %i.ads = load ptr, ptr %4, align 8, !tbaa !655  ; 2 uses
  %i.adt = icmp eq ptr %i.ads, %i.vj
  br i1 %i.adt, label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit280, label %bb.ek

bb.ek:                                            ; preds = %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit282
  call void @free(ptr noundef %i.ads) #28
  br label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit280

_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit280: ; preds = %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit282, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.el:                                            ; preds = %bb.dl
  %i.adu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 32
  %i.adv = load ptr, ptr %i.adu, align 16, !tbaa !1164 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 32
  %i.adx = load ptr, ptr %i.adw, align 16, !tbaa !1164
  %.not308.i = icmp eq ptr %i.adv, %i.adx
  br i1 %.not308.i, label %bb.em, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.em:                                            ; preds = %bb.el
  %i.ady = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.ady, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.adz = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.aea = and i64 %i.adz, -8
  %i.aeb = or disjoint i64 %.sroa.041.3.i86, %i.aea
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit279

bb.eo:                                            ; preds = %bb.em
  %i.aec = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit279

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit279: ; preds = %bb.en, %bb.eo
  %.sroa.05.0.i.i278 = phi i64 [ %i.aec, %bb.eo ], [ %i.aeb, %bb.en ] ; 4 uses
  %i.aed = and i64 %.sroa.05.0.i.i278, -16
  %i.aee = inttoptr i64 %i.aed to ptr             ; 3 uses
  %i.aef = load ptr, ptr %i.aee, align 16, !tbaa !719 ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  %i.aeh = ptrtoint ptr %i.aef to i64
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.aeg, align 8
  %i.aei = icmp eq i64 %.0.copyload.i.i.i.i.i.i.i, %i.aeh
  br i1 %i.aei, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit279
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.aek = load i64, ptr %i.aej, align 8, !tbaa !716
  %i.ael = and i64 %.sroa.05.0.i.i278, 7
  %i.aem = or i64 %i.aek, %i.ael
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit279
  %.sroa.09.0.i273 = phi i64 [ %.sroa.05.0.i.i278, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit279 ], [ %i.aem, %bb.ep ] ; 2 uses
  %i.aen = load ptr, ptr %i.vn, align 8, !tbaa !680
  %i.aeo = ptrtoint ptr %i.aen to i64
  %i.aep = add i64 %i.aeo, 15
  %i.aeq = and i64 %i.aep, -16                    ; 2 uses
  %i.aer = add i64 %i.aeq, 48                     ; 2 uses
  %i.aes = load i64, ptr %i.vo, align 8, !tbaa !681
  %i.aet = icmp ult i64 %i.aer, %i.aes
  br i1 %i.aet, label %bb.er, label %bb.es, !prof !671

bb.er:                                            ; preds = %bb.eq
  %i.aeu = inttoptr i64 %i.aer to ptr
  store ptr %i.aeu, ptr %i.vn, align 8, !tbaa !680
  %i.aev = inttoptr i64 %i.aeq to ptr
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i275

bb.es:                                            ; preds = %bb.eq
  %i.aew = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.vn, i64 noundef 48, i64 noundef 48, i8 4)
  %.pre.i274 = load ptr, ptr %i.aee, align 16, !tbaa !719
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i275

_ZnwmRKN5clang10ASTContextEm.exit.i275:           ; preds = %bb.es, %bb.er
  %i.aex = phi ptr [ %i.aef, %bb.er ], [ %.pre.i274, %bb.es ]
  %.0.i.i.i.i.i276 = phi ptr [ %i.aev, %bb.er ], [ %i.aew, %bb.es ] ; 10 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 17
  %i.aez = load i16, ptr %i.aey, align 1
  %i.afa = and i16 %i.aez, 31
  %i.afb = icmp ult i64 %.sroa.09.0.i273, 16
  %i.afc = ptrtoint ptr %.0.i.i.i.i.i276 to i64   ; 3 uses
  %.sroa.0.0.i.i.i = select i1 %i.afb, i64 %i.afc, i64 %.sroa.09.0.i273
  store ptr %.0.i.i.i.i.i276, ptr %.0.i.i.i.i.i276, align 8, !tbaa !719
  %i.afd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i276, i64 8
  store i64 %.sroa.0.0.i.i.i, ptr %i.afd, align 8, !tbaa !716
  %i.afe = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i276, i64 16
  store i8 27, ptr %i.afe, align 16
  %i.aff = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i276, i64 17 ; 2 uses
  %i.afg = load i16, ptr %i.aff, align 1
  %i.afh = and i16 %i.afg, -2048
  %i.afi = or disjoint i16 %i.afh, %i.afa
  store i16 %i.afi, ptr %i.aff, align 1
  %i.afj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i276, i64 24
  store i64 %.sroa.05.0.i.i278, ptr %i.afj, align 8, !tbaa !716
  %i.afk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i276, i64 32
  store ptr %i.adv, ptr %i.afk, align 16, !tbaa !1164
  %i.afl = load i32, ptr %i.vq, align 8, !tbaa !657 ; 2 uses
  %i.afm = load i32, ptr %i.vr, align 4, !tbaa !662
  %.not.i.i277 = icmp ult i32 %i.afl, %i.afm
  br i1 %.not.i.i277, label %bb.eu, label %bb.et, !prof !671

bb.et:                                            ; preds = %_ZnwmRKN5clang10ASTContextEm.exit.i275
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4TypeELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.vp, ptr noundef nonnull %.0.i.i.i.i.i276)
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.eu:                                            ; preds = %_ZnwmRKN5clang10ASTContextEm.exit.i275
  %i.afn = zext i32 %i.afl to i64
  %i.afo = load ptr, ptr %i.vp, align 8, !tbaa !655
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %i.afn
  store ptr %.0.i.i.i.i.i276, ptr %i.afp, align 1
  %i.afq = load i32, ptr %i.vq, align 8, !tbaa !657
  %i.afr = add i32 %i.afq, 1
  store i32 %i.afr, ptr %i.vq, align 8, !tbaa !657
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.ev:                                            ; preds = %bb.dl
  %i.afs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 32
  %i.aft = load ptr, ptr %i.afs, align 16, !tbaa !1352 ; 8 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 32
  %i.afv = load ptr, ptr %i.afu, align 16, !tbaa !1352 ; 6 uses
  %i.afw = icmp ne ptr %i.aft, null
  %i.afx = icmp ne ptr %i.afv, null
  %or.cond.i.i271 = and i1 %i.afw, %i.afx
  br i1 %or.cond.i.i271, label %bb.ew, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.ew:                                            ; preds = %bb.ev
  %i.afy = icmp eq ptr %i.aft, %i.afv
  br i1 %i.afy, label %_ZL13getCommonDeclPN5clang4DeclES1_.exit, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i

_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i: ; preds = %bb.ew
  %i.afz = load ptr, ptr %i.aft, align 8, !tbaa !660
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 32
  %i.agb = load ptr, ptr %i.aga, align 8
  %i.agc = call noundef ptr %i.agb(ptr noundef nonnull align 8 dereferenceable(33) %i.aft) #28, !inline_history !3313
  %i.agd = load ptr, ptr %i.afv, align 8, !tbaa !660
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 32
  %i.agf = load ptr, ptr %i.age, align 8
  %i.agg = call noundef ptr %i.agf(ptr noundef nonnull align 8 dereferenceable(33) %i.afv) #28, !inline_history !3313
  %i.agh = icmp eq ptr %i.agc, %i.agg
  br i1 %i.agh, label %.lr.ph442, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

.lr.ph442:                                        ; preds = %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i, %select.unfold.i
  %.sroa.0.030.i441 = phi ptr [ %i.agp, %select.unfold.i ], [ %i.aft, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i ] ; 4 uses
  %i.agi = load ptr, ptr %.sroa.0.030.i441, align 8, !tbaa !660
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 48
  %i.agk = load ptr, ptr %i.agj, align 8
  %i.agl = call noundef ptr %i.agk(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.0.030.i441) #28, !inline_history !3314
  %.not29.i = icmp eq ptr %i.agl, null
  br i1 %.not29.i, label %_ZL13getCommonDeclPN5clang4DeclES1_.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph442
  %i.agm = load ptr, ptr %.sroa.0.030.i441, align 8, !tbaa !660
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 40
  %i.ago = load ptr, ptr %i.agn, align 8
  %i.agp = call noundef ptr %i.ago(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.0.030.i441) #28, !inline_history !3315 ; 4 uses
  %.not.i.i272 = icmp ne ptr %i.agp, %i.aft
  call void @llvm.assume(i1 %.not.i.i272)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.agp) ]
  %i.agq = icmp eq ptr %i.agp, %i.afv
  br i1 %i.agq, label %_ZL13getCommonDeclPN5clang4DeclES1_.exit, label %.lr.ph442

_ZL13getCommonDeclPN5clang4DeclES1_.exit:         ; preds = %select.unfold.i, %.lr.ph442, %bb.ew
  %.3.i = phi ptr [ %i.aft, %bb.ew ], [ %i.afv, %.lr.ph442 ], [ %i.aft, %select.unfold.i ]
  %i.agr = load i64, ptr %i.yc, align 16          ; 3 uses
  %i.ags = lshr i64 %i.agr, 32
  %i.agt = trunc nuw i64 %i.ags to i32
  %i.agu = and i32 %i.agt, 32767                  ; 2 uses
  %i.agv = load i64, ptr %i.ye, align 16          ; 2 uses
  %i.agw = lshr i64 %i.agv, 32
  %i.agx = trunc nuw i64 %i.agw to i32
  %i.agy = and i32 %i.agx, 32767
  %.not310.i = icmp eq i32 %i.agu, %i.agy
  br i1 %.not310.i, label %bb.ex, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.ex:                                            ; preds = %_ZL13getCommonDeclPN5clang4DeclES1_.exit
  %i.agz = lshr i64 %i.agr, 48
  %i.aha = trunc nuw nsw i64 %i.agz to i32
  %i.ahb = and i32 %i.aha, 32767                  ; 3 uses
  %i.ahc = lshr i64 %i.agv, 48
  %i.ahd = trunc nuw nsw i64 %i.ahc to i32
  %i.ahe = and i32 %i.ahd, 32767                  ; 2 uses
  %i.ahf = icmp ne i32 %i.ahb, 0                  ; 2 uses
  %i.ahg = icmp ne i32 %i.ahe, 0                  ; 2 uses
  %or.cond.i.i = select i1 %i.ahf, i1 %i.ahg, i1 false
  br i1 %or.cond.i.i, label %.split, label %_ZN5clangneENS_16OptionalUnsignedIjEES1_.exit

.split:                                           ; preds = %bb.ex
  %.not407 = icmp eq i32 %i.ahb, %i.ahe
  br i1 %.not407, label %bb.ey, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

_ZN5clangneENS_16OptionalUnsignedIjEES1_.exit:    ; preds = %bb.ex
  %i.ahh = xor i1 %i.ahf, %i.ahg
  br i1 %i.ahh, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread, label %bb.ey

bb.ey:                                            ; preds = %.split, %_ZN5clangneENS_16OptionalUnsignedIjEES1_.exit
  %i.ahi = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.ahi, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ahj = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.ahk = and i64 %i.ahj, -8
  %i.ahl = or disjoint i64 %.sroa.041.3.i86, %i.ahk
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit270

bb.fa:                                            ; preds = %bb.ey
  %i.ahm = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  %.pre465 = load i64, ptr %i.yc, align 16
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit270

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit270: ; preds = %bb.ez, %bb.fa
  %i.ahn = phi i64 [ %.pre465, %bb.fa ], [ %i.agr, %bb.ez ]
  %.sroa.05.0.i.i269 = phi i64 [ %i.ahm, %bb.fa ], [ %i.ahl, %bb.ez ]
  %i.aho = and i64 %i.ahn, 140737488355328
  %.not311.i = icmp eq i64 %i.aho, 0
  br i1 %.not311.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit270
  %i.ahp = load i64, ptr %i.ye, align 16
  %i.ahq = and i64 %i.ahp, 140737488355328
  %i.ahr = icmp ne i64 %i.ahq, 0
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit270
  %i.ahs = phi i1 [ false, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit270 ], [ %i.ahr, %bb.fb ]
  %i.aht = call i64 @_ZNK5clang10ASTContext28getSubstTemplateTypeParmTypeENS_8QualTypeEPNS_4DeclEjNS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.05.0.i.i269, ptr noundef nonnull %.3.i, i32 noundef %i.agu, i32 %i.ahb, i1 noundef zeroext %i.ahs), !inline_history !3309
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.fd:                                            ; preds = %bb.dl
  %i.ahu = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.ahu, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ahv = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.ahw = and i64 %i.ahv, -8
  %i.ahx = or disjoint i64 %.sroa.041.3.i86, %i.ahw
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit268

bb.ff:                                            ; preds = %bb.fd
  %i.ahy = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit268

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit268: ; preds = %bb.fe, %bb.ff
  %.sroa.05.0.i.i267 = phi i64 [ %i.ahy, %bb.ff ], [ %i.ahx, %bb.fe ]
  %i.ahz = call i64 @_ZNK5clang10ASTContext12getParenTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.05.0.i.i267), !inline_history !3309
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.fg:                                            ; preds = %bb.dl
  %i.aia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 32
  %.sroa.0.0.copyload.i266 = load i64, ptr %i.aia, align 16 ; 3 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 32
  %.sroa.0.0.copyload.i265 = load i64, ptr %i.aib, align 16 ; 2 uses
  %i.aic = icmp eq i64 %.sroa.0.0.copyload.i266, %.sroa.0.0.copyload.i265
  br i1 %i.aic, label %_ZL21getCommonTemplateNameRKN5clang10ASTContextENS_12TemplateNameES3_b.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aid = call i64 @_ZNK5clang10ASTContext24getCanonicalTemplateNameENS_12TemplateNameEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i266, i1 noundef zeroext true) ; 2 uses
  %i.aie = call i64 @_ZNK5clang10ASTContext24getCanonicalTemplateNameENS_12TemplateNameEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i265, i1 noundef zeroext false)
  %.not.i263 = icmp eq i64 %i.aid, %i.aie
  br i1 %.not.i263, label %_ZL21getCommonTemplateNameRKN5clang10ASTContextENS_12TemplateNameES3_b.exit, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

_ZL21getCommonTemplateNameRKN5clang10ASTContextENS_12TemplateNameES3_b.exit: ; preds = %bb.fh, %bb.fg
  %.sroa.013.1.i = phi i64 [ %.sroa.0.0.copyload.i266, %bb.fg ], [ %i.aid, %bb.fh ] ; 2 uses
  %.not312.i = icmp eq i64 %.sroa.013.1.i, 0
  br i1 %.not312.i, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread, label %bb.fi

bb.fi:                                            ; preds = %_ZL21getCommonTemplateNameRKN5clang10ASTContextENS_12TemplateNameES3_b.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.vs, ptr %6, align 8, !tbaa !655
  store i32 0, ptr %i.vt, align 8, !tbaa !657
  store i32 8, ptr %i.vu, align 4, !tbaa !662
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 48
  %i.aig = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 20
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !716
  %i.aii = zext i32 %i.aih to i64
  %i.aij = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 48
  %i.aik = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 20
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !716
  %i.aim = zext i32 %i.ail to i64
  %i.ain = call fastcc noundef zeroext i1 @_ZL26getCommonTemplateArgumentsRKN5clang10ASTContextERN4llvm15SmallVectorImplINS_16TemplateArgumentEEENS3_8ArrayRefIS5_EES9_(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %i.aif, i64 %i.aii, ptr nonnull %i.aij, i64 %i.aim), !inline_history !3309
  br i1 %i.ain, label %bb.fq, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %.val.i110 = load i32, ptr %i.yc, align 16
  %.val318.i = load i32, ptr %i.ye, align 16
  %i.aio = lshr i32 %.val.i110, 19                ; 2 uses
  %i.aip = and i32 %i.aio, 255                    ; 7 uses
  %i.aiq = lshr i32 %.val318.i, 19
  %i.air = and i32 %i.aiq, 255
  %i.ais = icmp eq i32 %i.aip, %i.air
  br i1 %i.ais, label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit258, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %trunc.i256 = trunc i32 %i.aio to i8
  switch i8 %trunc.i256, label %bb.fn [
    i8 6, label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit258
    i8 0, label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit258
    i8 2, label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit258
    i8 4, label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit258
    i8 1, label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit258
    i8 5, label %bb.fl
    i8 3, label %bb.fm
  ]

bb.fl:                                            ; preds = %bb.fk
  br label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit258

bb.fm:                                            ; preds = %bb.fk
  br label %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit258

bb.fn:                                            ; preds = %bb.fk
  unreachable

_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit258: ; preds = %bb.fj, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fk, %bb.fl, %bb.fm
  %.0.i257 = phi i32 [ %i.aip, %bb.fj ], [ 0, %bb.fm ], [ 6, %bb.fl ], [ %i.aip, %bb.fk ], [ %i.aip, %bb.fk ], [ %i.aip, %bb.fk ], [ %i.aip, %bb.fk ], [ %i.aip, %bb.fk ]
  %i.ait = load ptr, ptr %6, align 8, !tbaa !655
  %i.aiu = load i32, ptr %i.vt, align 8, !tbaa !657
  %i.aiv = zext i32 %i.aiu to i64
  %i.aiw = icmp ugt i64 %.sroa.041.3.i86, 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br i1 %i.aiw, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit258
  %i.aix = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.aiy = and i64 %i.aix, -8
  %i.aiz = or disjoint i64 %.sroa.041.3.i86, %i.aiy
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit255

bb.fp:                                            ; preds = %_ZL20getCommonTypeKeywordIN5clang26TemplateSpecializationTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit258
  %i.aja = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit255

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit255: ; preds = %bb.fo, %bb.fp
  %.sroa.05.0.i.i254 = phi i64 [ %i.aja, %bb.fp ], [ %i.aiz, %bb.fo ]
  %i.ajb = call i64 @_ZNK5clang10ASTContext29getTemplateSpecializationTypeENS_21ElaboratedTypeKeywordENS_12TemplateNameEN4llvm8ArrayRefINS_16TemplateArgumentEEES6_NS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %.0.i257, i64 %.sroa.013.1.i, ptr %i.ait, i64 %i.aiv, ptr noundef nonnull byval(%"class.llvm::ArrayRef.929") align 8 %7, i64 %.sroa.05.0.i.i254), !inline_history !3309
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fi, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit255
  %.sroa.0377.0 = phi i64 [ %i.ajb, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit255 ], [ 0, %bb.fi ]
  %i.ajc = load ptr, ptr %6, align 8, !tbaa !655  ; 2 uses
  %i.ajd = icmp eq ptr %i.ajc, %i.vs
  br i1 %i.ajd, label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit253, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @free(ptr noundef %i.ajc) #28
  br label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit253

_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit253: ; preds = %bb.fq, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.fs:                                            ; preds = %bb.dl
  %i.aje = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 24
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !1070 ; 8 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 24
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !1070 ; 6 uses
  %i.aji = icmp ne ptr %i.ajf, null
  %i.ajj = icmp ne ptr %i.ajh, null
  %or.cond.i.i.i245 = and i1 %i.aji, %i.ajj
  br i1 %or.cond.i.i.i245, label %bb.ft, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.ft:                                            ; preds = %bb.fs
  %i.ajk = icmp eq ptr %i.ajf, %i.ajh
  br i1 %i.ajk, label %_ZL13getCommonDeclIN5clang15TypedefNameDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread391, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i247

_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i247: ; preds = %bb.ft
  %i.ajl = load ptr, ptr %i.ajf, align 8, !tbaa !660
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 32
  %i.ajn = load ptr, ptr %i.ajm, align 8
  %i.ajo = call noundef ptr %i.ajn(ptr noundef nonnull align 8 dereferenceable(33) %i.ajf) #28, !inline_history !3316
  %i.ajp = load ptr, ptr %i.ajh, align 8, !tbaa !660
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 32
  %i.ajr = load ptr, ptr %i.ajq, align 8
  %i.ajs = call noundef ptr %i.ajr(ptr noundef nonnull align 8 dereferenceable(33) %i.ajh) #28, !inline_history !3316
  %i.ajt = icmp eq ptr %i.ajo, %i.ajs
  br i1 %i.ajt, label %.lr.ph.i248, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

.lr.ph.i248:                                      ; preds = %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i247, %select.unfold.i.i251
  %.sroa.0.030.i2.i249 = phi ptr [ %i.akb, %select.unfold.i.i251 ], [ %i.ajf, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i247 ] ; 4 uses
  %i.aju = load ptr, ptr %.sroa.0.030.i2.i249, align 8, !tbaa !660
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 48
  %i.ajw = load ptr, ptr %i.ajv, align 8
  %i.ajx = call noundef ptr %i.ajw(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.0.030.i2.i249) #28, !inline_history !3317
  %.not29.i.i250 = icmp eq ptr %i.ajx, null
  br i1 %.not29.i.i250, label %_ZL13getCommonDeclIN5clang15TypedefNameDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread391, label %select.unfold.i.i251

select.unfold.i.i251:                             ; preds = %.lr.ph.i248
  %i.ajy = load ptr, ptr %.sroa.0.030.i2.i249, align 8, !tbaa !660
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 40
  %i.aka = load ptr, ptr %i.ajz, align 8
  %i.akb = call noundef ptr %i.aka(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.0.030.i2.i249) #28, !inline_history !3318 ; 4 uses
  %.not.i.i.i252 = icmp ne ptr %i.akb, %i.ajf
  call void @llvm.assume(i1 %.not.i.i.i252)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.akb) ]
  %i.akc = icmp eq ptr %i.akb, %i.ajh
  br i1 %i.akc, label %_ZL13getCommonDeclIN5clang15TypedefNameDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread391, label %.lr.ph.i248

_ZL13getCommonDeclIN5clang15TypedefNameDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread391: ; preds = %select.unfold.i.i251, %.lr.ph.i248, %bb.ft
  %.3.i.i246394 = phi ptr [ %i.ajf, %bb.ft ], [ %i.ajf, %select.unfold.i.i251 ], [ %i.ajh, %.lr.ph.i248 ]
  %.val319.i = load i32, ptr %i.yc, align 16      ; 2 uses
  %.val320.i = load i32, ptr %i.ye, align 16      ; 2 uses
  %i.akd = lshr i32 %.val319.i, 19                ; 2 uses
  %i.ake = and i32 %i.akd, 255                    ; 7 uses
  %i.akf = lshr i32 %.val320.i, 19
  %i.akg = and i32 %i.akf, 255
  %i.akh = icmp eq i32 %i.ake, %i.akg
  br i1 %i.akh, label %_ZL20getCommonTypeKeywordIN5clang11TypedefTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit, label %bb.fu

bb.fu:                                            ; preds = %_ZL13getCommonDeclIN5clang15TypedefNameDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread391
  %trunc.i243 = trunc i32 %i.akd to i8
  switch i8 %trunc.i243, label %bb.fx [
    i8 6, label %_ZL20getCommonTypeKeywordIN5clang11TypedefTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 0, label %_ZL20getCommonTypeKeywordIN5clang11TypedefTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 2, label %_ZL20getCommonTypeKeywordIN5clang11TypedefTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 4, label %_ZL20getCommonTypeKeywordIN5clang11TypedefTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 1, label %_ZL20getCommonTypeKeywordIN5clang11TypedefTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 5, label %bb.fv
    i8 3, label %bb.fw
  ]

bb.fv:                                            ; preds = %bb.fu
  br label %_ZL20getCommonTypeKeywordIN5clang11TypedefTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit

bb.fw:                                            ; preds = %bb.fu
  br label %_ZL20getCommonTypeKeywordIN5clang11TypedefTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit

bb.fx:                                            ; preds = %bb.fu
  unreachable

_ZL20getCommonTypeKeywordIN5clang11TypedefTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit: ; preds = %_ZL13getCommonDeclIN5clang15TypedefNameDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread391, %bb.fu, %bb.fu, %bb.fu, %bb.fu, %bb.fu, %bb.fv, %bb.fw
  %.0.i244 = phi i32 [ %i.ake, %_ZL13getCommonDeclIN5clang15TypedefNameDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread391 ], [ 0, %bb.fw ], [ 6, %bb.fv ], [ %i.ake, %bb.fu ], [ %i.ake, %bb.fu ], [ %i.ake, %bb.fu ], [ %i.ake, %bb.fu ], [ %i.ake, %bb.fu ]
  %i.aki = and i32 %.val319.i, 134217728
  %.not.i.i239 = icmp eq i32 %i.aki, 0
  br i1 %.not.i.i239, label %_ZNK5clang11TypedefType12getQualifierEv.exit.i, label %bb.fy

bb.fy:                                            ; preds = %_ZL20getCommonTypeKeywordIN5clang11TypedefTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
  %i.akj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 40
  %i.akk = load i64, ptr %i.akj, align 8, !tbaa !656
  br label %_ZNK5clang11TypedefType12getQualifierEv.exit.i

_ZNK5clang11TypedefType12getQualifierEv.exit.i:   ; preds = %bb.fy, %_ZL20getCommonTypeKeywordIN5clang11TypedefTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
  %.sroa.0.0.i.i240 = phi i64 [ %i.akk, %bb.fy ], [ 0, %_ZL20getCommonTypeKeywordIN5clang11TypedefTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit ]
  %i.akl = and i32 %.val320.i, 134217728
  %.not.i5.i241 = icmp eq i32 %i.akl, 0
  br i1 %.not.i5.i241, label %_ZL18getCommonQualifierIN5clang11TypedefTypeEENS0_19NestedNameSpecifierERKNS0_10ASTContextEPKT_S8_b.exit, label %bb.fz

bb.fz:                                            ; preds = %_ZNK5clang11TypedefType12getQualifierEv.exit.i
  %i.akm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 40
  %i.akn = load i64, ptr %i.akm, align 8, !tbaa !656
  br label %_ZL18getCommonQualifierIN5clang11TypedefTypeEENS0_19NestedNameSpecifierERKNS0_10ASTContextEPKT_S8_b.exit

_ZL18getCommonQualifierIN5clang11TypedefTypeEENS0_19NestedNameSpecifierERKNS0_10ASTContextEPKT_S8_b.exit: ; preds = %_ZNK5clang11TypedefType12getQualifierEv.exit.i, %bb.fz
  %.sroa.0.0.i6.i242 = phi i64 [ %i.akn, %bb.fz ], [ 0, %_ZNK5clang11TypedefType12getQualifierEv.exit.i ]
  %i.ako = call fastcc i64 @_ZL12getCommonNNSRKN5clang10ASTContextENS_19NestedNameSpecifierES3_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.i.i240, i64 %.sroa.0.0.i6.i242)
  %i.akp = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.akp, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZL18getCommonQualifierIN5clang11TypedefTypeEENS0_19NestedNameSpecifierERKNS0_10ASTContextEPKT_S8_b.exit
  %i.akq = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.akr = and i64 %i.akq, -8
  %i.aks = or disjoint i64 %.sroa.041.3.i86, %i.akr
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit238

bb.gb:                                            ; preds = %_ZL18getCommonQualifierIN5clang11TypedefTypeEENS0_19NestedNameSpecifierERKNS0_10ASTContextEPKT_S8_b.exit
  %i.akt = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit238

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit238: ; preds = %bb.ga, %bb.gb
  %.sroa.05.0.i.i237 = phi i64 [ %i.akt, %bb.gb ], [ %i.aks, %bb.ga ]
  %i.aku = call i64 @_ZNK5clang10ASTContext14getTypedefTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_15TypedefNameDeclENS_8QualTypeESt8optionalIbE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %.0.i244, i64 %i.ako, ptr noundef nonnull %.3.i.i246394, i64 %.sroa.05.0.i.i237, i16 0), !inline_history !3309
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.gc:                                            ; preds = %bb.dl
  %i.akv = load i24, ptr %i.yc, align 16          ; 2 uses
  %i.akw = load i24, ptr %i.ye, align 16
  %i.akx = xor i24 %i.akw, %i.akv
  %i.aky = and i24 %i.akx, 524288
  %i.akz = icmp eq i24 %i.aky, 0
  %i.ala = lshr i24 %i.akv, 19
  %i.alb = trunc nuw nsw i24 %i.ala to i8
  %spec.select.i111 = and i8 %i.alb, 1
  %.0295.i = select i1 %i.akz, i8 %spec.select.i111, i8 0
  %i.alc = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.alc, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ald = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.ale = and i64 %i.ald, -8
  %i.alf = or disjoint i64 %.sroa.041.3.i86, %i.ale
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit236

bb.ge:                                            ; preds = %bb.gc
  %i.alg = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit236

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit236: ; preds = %bb.gd, %bb.ge
  %.sroa.05.0.i.i235 = phi i64 [ %i.alg, %bb.ge ], [ %i.alf, %bb.gd ] ; 3 uses
  %i.alh = and i64 %.sroa.05.0.i.i235, -16
  %i.ali = inttoptr i64 %i.alh to ptr
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %i.alk = load i64, ptr %i.alj, align 8, !tbaa !716
  %i.all = and i64 %.sroa.05.0.i.i235, 7
  %i.alm = or i64 %i.alk, %i.all
  %i.aln = load ptr, ptr %i.vn, align 8, !tbaa !680
  %i.alo = ptrtoint ptr %i.aln to i64
  %i.alp = add i64 %i.alo, 15
  %i.alq = and i64 %i.alp, -16                    ; 2 uses
  %i.alr = add i64 %i.alq, 48                     ; 2 uses
  %i.als = load i64, ptr %i.vo, align 8, !tbaa !681
  %i.alt = icmp ult i64 %i.alr, %i.als
  br i1 %i.alt, label %bb.gf, label %bb.gg, !prof !671

bb.gf:                                            ; preds = %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit236
  %i.alu = inttoptr i64 %i.alr to ptr
  store ptr %i.alu, ptr %i.vn, align 8, !tbaa !680
  %i.alv = inttoptr i64 %i.alq to ptr
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i

bb.gg:                                            ; preds = %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit236
  %i.alw = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.vn, i64 noundef 48, i64 noundef 48, i8 4)
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i

_ZnwmRKN5clang10ASTContextEm.exit.i:              ; preds = %bb.gg, %bb.gf
  %.0.i.i.i.i.i = phi ptr [ %i.alv, %bb.gf ], [ %i.alw, %bb.gg ] ; 4 uses
  call void @_ZN5clang10TypeOfTypeC1ERKNS_10ASTContextENS_8QualTypeES4_NS_10TypeOfKindE(ptr noundef nonnull align 16 dereferenceable(40) %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.05.0.i.i235, i64 %i.alm, i8 noundef zeroext %.0295.i) #28
  %i.alx = load i32, ptr %i.vq, align 8, !tbaa !657 ; 2 uses
  %i.aly = load i32, ptr %i.vr, align 4, !tbaa !662
  %.not.i.i234 = icmp ult i32 %i.alx, %i.aly
  br i1 %.not.i.i234, label %bb.gi, label %bb.gh, !prof !671

bb.gh:                                            ; preds = %_ZnwmRKN5clang10ASTContextEm.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4TypeELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.vp, ptr noundef nonnull %.0.i.i.i.i.i)
  br label %_ZNK5clang10ASTContext13getTypeOfTypeENS_8QualTypeENS_10TypeOfKindE.exit

bb.gi:                                            ; preds = %_ZnwmRKN5clang10ASTContextEm.exit.i
  %i.alz = zext i32 %i.alx to i64
  %i.ama = load ptr, ptr %i.vp, align 8, !tbaa !655
  %i.amb = getelementptr inbounds nuw [8 x i8], ptr %i.ama, i64 %i.alz
  store ptr %.0.i.i.i.i.i, ptr %i.amb, align 1
  %i.amc = load i32, ptr %i.vq, align 8, !tbaa !657
  %i.amd = add i32 %i.amc, 1
  store i32 %i.amd, ptr %i.vq, align 8, !tbaa !657
  br label %_ZNK5clang10ASTContext13getTypeOfTypeENS_8QualTypeENS_10TypeOfKindE.exit

_ZNK5clang10ASTContext13getTypeOfTypeENS_8QualTypeENS_10TypeOfKindE.exit: ; preds = %bb.gh, %bb.gi
  %i.ame = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.amf = and i64 %i.ame, -8
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.gj:                                            ; preds = %bb.dl
  %i.amg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 48
  %i.amh = load i32, ptr %i.amg, align 16, !tbaa !1350 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 48
  %i.amj = load i32, ptr %i.ami, align 16, !tbaa !1350
  %.not314.i = icmp eq i32 %i.amh, %i.amj
  br i1 %.not314.i, label %bb.gk, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.gk:                                            ; preds = %bb.gj
  %i.amk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 32
  %.sroa.0.0.copyload.i233 = load i64, ptr %i.amk, align 16, !tbaa !716 ; 3 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 32
  %.sroa.0.0.copyload.i232 = load i64, ptr %i.aml, align 16, !tbaa !716 ; 3 uses
  %i.amm = and i64 %.sroa.0.0.copyload.i233, -16
  %i.amn = inttoptr i64 %i.amm to ptr
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %i.amp = load i64, ptr %i.amo, align 8, !tbaa !716
  %i.amq = and i64 %.sroa.0.0.copyload.i233, 7
  %i.amr = or i64 %i.amp, %i.amq
  %i.ams = and i64 %.sroa.0.0.copyload.i232, -16
  %i.amt = inttoptr i64 %i.ams to ptr
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  %i.amv = load i64, ptr %i.amu, align 8, !tbaa !716
  %i.amw = and i64 %.sroa.0.0.copyload.i232, 7
  %i.amx = or i64 %i.amv, %i.amw
  %i.amy = icmp eq i64 %i.amr, %i.amx
  br i1 %i.amy, label %bb.gl, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.gl:                                            ; preds = %bb.gk
  %i.amz = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i233, i64 %.sroa.0.0.copyload.i232, i1 noundef zeroext false), !inline_history !3309
  %i.ana = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.ana, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.anb = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.anc = and i64 %i.anb, -8
  %i.and = or disjoint i64 %.sroa.041.3.i86, %i.anc
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit231

bb.gn:                                            ; preds = %bb.gl
  %i.ane = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit231

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit231: ; preds = %bb.gm, %bb.gn
  %.sroa.05.0.i.i230 = phi i64 [ %i.ane, %bb.gn ], [ %i.and, %bb.gm ]
  %i.anf = call i64 @_ZNK5clang10ASTContext21getUnaryTransformTypeENS_8QualTypeES1_NS_18UnaryTransformType7UTTKindE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.amz, i64 %.sroa.05.0.i.i230, i32 noundef %i.amh), !inline_history !3309
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.go:                                            ; preds = %bb.dl
  %i.ang = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 32
  %i.anh = load ptr, ptr %i.ang, align 16, !tbaa !1354 ; 8 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 32
  %i.anj = load ptr, ptr %i.ani, align 16, !tbaa !1354 ; 6 uses
  %i.ank = icmp ne ptr %i.anh, null
  %i.anl = icmp ne ptr %i.anj, null
  %or.cond.i.i.i228 = and i1 %i.ank, %i.anl
  br i1 %or.cond.i.i.i228, label %bb.gp, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.gp:                                            ; preds = %bb.go
  %i.anm = icmp eq ptr %i.anh, %i.anj
  br i1 %i.anm, label %_ZL13getCommonDeclIN5clang15UsingShadowDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread397, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i

_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i: ; preds = %bb.gp
  %i.ann = load ptr, ptr %i.anh, align 8, !tbaa !660
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 32
  %i.anp = load ptr, ptr %i.ano, align 8
  %i.anq = call noundef ptr %i.anp(ptr noundef nonnull align 8 dereferenceable(33) %i.anh) #28, !inline_history !3319
  %i.anr = load ptr, ptr %i.anj, align 8, !tbaa !660
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 32
  %i.ant = load ptr, ptr %i.ans, align 8
  %i.anu = call noundef ptr %i.ant(ptr noundef nonnull align 8 dereferenceable(33) %i.anj) #28, !inline_history !3319
  %i.anv = icmp eq ptr %i.anq, %i.anu
  br i1 %i.anv, label %.lr.ph.i229, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

.lr.ph.i229:                                      ; preds = %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i, %select.unfold.i.i
  %.sroa.0.030.i2.i = phi ptr [ %i.aod, %select.unfold.i.i ], [ %i.anh, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i ] ; 4 uses
  %i.anw = load ptr, ptr %.sroa.0.030.i2.i, align 8, !tbaa !660
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 48
  %i.any = load ptr, ptr %i.anx, align 8
  %i.anz = call noundef ptr %i.any(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.0.030.i2.i) #28, !inline_history !3320
  %.not29.i.i = icmp eq ptr %i.anz, null
  br i1 %.not29.i.i, label %_ZL13getCommonDeclIN5clang15UsingShadowDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread397, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %.lr.ph.i229
  %i.aoa = load ptr, ptr %.sroa.0.030.i2.i, align 8, !tbaa !660
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 40
  %i.aoc = load ptr, ptr %i.aob, align 8
  %i.aod = call noundef ptr %i.aoc(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.0.030.i2.i) #28, !inline_history !3321 ; 4 uses
  %.not.i.i.i = icmp ne ptr %i.aod, %i.anh
  call void @llvm.assume(i1 %.not.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aod) ]
  %i.aoe = icmp eq ptr %i.aod, %i.anj
  br i1 %i.aoe, label %_ZL13getCommonDeclIN5clang15UsingShadowDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread397, label %.lr.ph.i229

_ZL13getCommonDeclIN5clang15UsingShadowDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread397: ; preds = %select.unfold.i.i, %.lr.ph.i229, %bb.gp
  %.3.i.i400 = phi ptr [ %i.anh, %bb.gp ], [ %i.anh, %select.unfold.i.i ], [ %i.anj, %.lr.ph.i229 ]
  %.val321.i = load i32, ptr %i.yc, align 16      ; 2 uses
  %.val322.i = load i32, ptr %i.ye, align 16      ; 2 uses
  %i.aof = lshr i32 %.val321.i, 19                ; 2 uses
  %i.aog = and i32 %i.aof, 255                    ; 7 uses
  %i.aoh = lshr i32 %.val322.i, 19
  %i.aoi = and i32 %i.aoh, 255
  %i.aoj = icmp eq i32 %i.aog, %i.aoi
  br i1 %i.aoj, label %_ZL20getCommonTypeKeywordIN5clang9UsingTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit, label %bb.gq

bb.gq:                                            ; preds = %_ZL13getCommonDeclIN5clang15UsingShadowDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread397
  %trunc.i226 = trunc i32 %i.aof to i8
  switch i8 %trunc.i226, label %bb.gt [
    i8 6, label %_ZL20getCommonTypeKeywordIN5clang9UsingTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 0, label %_ZL20getCommonTypeKeywordIN5clang9UsingTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 2, label %_ZL20getCommonTypeKeywordIN5clang9UsingTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 4, label %_ZL20getCommonTypeKeywordIN5clang9UsingTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 1, label %_ZL20getCommonTypeKeywordIN5clang9UsingTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
    i8 5, label %bb.gr
    i8 3, label %bb.gs
  ]

bb.gr:                                            ; preds = %bb.gq
  br label %_ZL20getCommonTypeKeywordIN5clang9UsingTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit

bb.gs:                                            ; preds = %bb.gq
  br label %_ZL20getCommonTypeKeywordIN5clang9UsingTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit

bb.gt:                                            ; preds = %bb.gq
  unreachable

_ZL20getCommonTypeKeywordIN5clang9UsingTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit: ; preds = %_ZL13getCommonDeclIN5clang15UsingShadowDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread397, %bb.gq, %bb.gq, %bb.gq, %bb.gq, %bb.gq, %bb.gr, %bb.gs
  %.0.i227 = phi i32 [ %i.aog, %_ZL13getCommonDeclIN5clang15UsingShadowDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_.exit.thread397 ], [ 0, %bb.gs ], [ 6, %bb.gr ], [ %i.aog, %bb.gq ], [ %i.aog, %bb.gq ], [ %i.aog, %bb.gq ], [ %i.aog, %bb.gq ], [ %i.aog, %bb.gq ]
  %i.aok = and i32 %.val321.i, 134217728
  %.not.i.i225 = icmp eq i32 %i.aok, 0
  br i1 %.not.i.i225, label %_ZNK5clang9UsingType12getQualifierEv.exit.i, label %bb.gu

bb.gu:                                            ; preds = %_ZL20getCommonTypeKeywordIN5clang9UsingTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
  %i.aol = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 48
  %i.aom = load i64, ptr %i.aol, align 16, !tbaa !656
  br label %_ZNK5clang9UsingType12getQualifierEv.exit.i

_ZNK5clang9UsingType12getQualifierEv.exit.i:      ; preds = %bb.gu, %_ZL20getCommonTypeKeywordIN5clang9UsingTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit
  %.sroa.0.0.i.i = phi i64 [ %i.aom, %bb.gu ], [ 0, %_ZL20getCommonTypeKeywordIN5clang9UsingTypeEENS0_21ElaboratedTypeKeywordEPKT_S5_b.exit ]
  %i.aon = and i32 %.val322.i, 134217728
  %.not.i5.i = icmp eq i32 %i.aon, 0
  br i1 %.not.i5.i, label %_ZL18getCommonQualifierIN5clang9UsingTypeEENS0_19NestedNameSpecifierERKNS0_10ASTContextEPKT_S8_b.exit, label %bb.gv

bb.gv:                                            ; preds = %_ZNK5clang9UsingType12getQualifierEv.exit.i
  %i.aoo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 48
  %i.aop = load i64, ptr %i.aoo, align 16, !tbaa !656
  br label %_ZL18getCommonQualifierIN5clang9UsingTypeEENS0_19NestedNameSpecifierERKNS0_10ASTContextEPKT_S8_b.exit

_ZL18getCommonQualifierIN5clang9UsingTypeEENS0_19NestedNameSpecifierERKNS0_10ASTContextEPKT_S8_b.exit: ; preds = %_ZNK5clang9UsingType12getQualifierEv.exit.i, %bb.gv
  %.sroa.0.0.i6.i = phi i64 [ %i.aop, %bb.gv ], [ 0, %_ZNK5clang9UsingType12getQualifierEv.exit.i ]
  %i.aoq = call fastcc i64 @_ZL12getCommonNNSRKN5clang10ASTContextENS_19NestedNameSpecifierES3_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.i.i, i64 %.sroa.0.0.i6.i)
  %i.aor = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.aor, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %_ZL18getCommonQualifierIN5clang9UsingTypeEENS0_19NestedNameSpecifierERKNS0_10ASTContextEPKT_S8_b.exit
  %i.aos = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.aot = and i64 %i.aos, -8
  %i.aou = or disjoint i64 %.sroa.041.3.i86, %i.aot
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit224

bb.gx:                                            ; preds = %_ZL18getCommonQualifierIN5clang9UsingTypeEENS0_19NestedNameSpecifierERKNS0_10ASTContextEPKT_S8_b.exit
  %i.aov = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit224

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit224: ; preds = %bb.gw, %bb.gx
  %.sroa.05.0.i.i223 = phi i64 [ %i.aov, %bb.gx ], [ %i.aou, %bb.gw ]
  %i.aow = call i64 @_ZNK5clang10ASTContext12getUsingTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_15UsingShadowDeclENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %.0.i227, i64 %i.aoq, ptr noundef nonnull %.3.i.i400, i64 %.sroa.05.0.i.i223), !inline_history !3309
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.gy:                                            ; preds = %bb.dl
  %i.aox = call noundef ptr @_ZNK5clang17MemberPointerType26getMostRecentCXXRecordDeclEv(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.0.copyload.i98) #28, !inline_history !3309
  %i.aoy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 32
  %.sroa.0.0.copyload.i.i221 = load i64, ptr %i.aoy, align 16, !tbaa !716
  %i.aoz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 32
  %.sroa.0.0.copyload.i5.i222 = load i64, ptr %i.aoz, align 16, !tbaa !716
  %i.apa = call i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i.i221, i64 %.sroa.0.0.copyload.i5.i222, i1 noundef zeroext false), !inline_history !3322
  %i.apb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 40
  %.sroa.0.0.copyload.i.i219 = load i64, ptr %i.apb, align 8, !tbaa !656
  %i.apc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 40
  %.sroa.0.0.copyload.i5.i220 = load i64, ptr %i.apc, align 8, !tbaa !656
  %i.apd = call fastcc i64 @_ZL12getCommonNNSRKN5clang10ASTContextENS_19NestedNameSpecifierES3_b(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i.i219, i64 %.sroa.0.0.copyload.i5.i220)
  %i.ape = call i64 @_ZNK5clang10ASTContext20getMemberPointerTypeENS_8QualTypeENS_19NestedNameSpecifierEPKNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.apa, i64 %i.apd, ptr noundef %i.aox), !inline_history !3309
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.gz:                                            ; preds = %bb.dl
  %i.apf = load i32, ptr %i.yc, align 16
  %i.apg = load i32, ptr %i.ye, align 16
  %i.aph = xor i32 %i.apg, %i.apf
  %i.api = and i32 %i.aph, 25165824
  %or.cond = icmp eq i32 %i.api, 0
  br i1 %or.cond, label %bb.ha, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.ha:                                            ; preds = %bb.gz
  %i.apj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 56
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !1357 ; 5 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i103, i64 56
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !1357 ; 3 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 40
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !3331 ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i98, i64 48
  %i.apq = load i64, ptr %i.app, align 16, !tbaa !1154 ; 2 uses
  %i.apr = call noundef zeroext i1 @_ZNK5clang10ASTContext11hasSameExprEPKNS_4ExprES3_(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %i.apk, ptr noundef %i.apm), !inline_history !3309
  br i1 %i.apr, label %bb.hb, label %bb.he

bb.hb:                                            ; preds = %bb.ha
  %i.aps = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.aps, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.apt = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.apu = and i64 %i.apt, -8
  %i.apv = or disjoint i64 %.sroa.041.3.i86, %i.apu
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit216

bb.hd:                                            ; preds = %bb.hb
  %i.apw = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit216

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit216: ; preds = %bb.hc, %bb.hd
  %.sroa.05.0.i.i215 = phi i64 [ %i.apw, %bb.hd ], [ %i.apv, %bb.hc ]
  %i.apx = load i32, ptr %i.yc, align 16          ; 2 uses
  %i.apy = and i32 %i.apx, 8388608
  %i.apz = icmp ne i32 %i.apy, 0
  %i.aqa = and i32 %i.apx, 16777216
  %i.aqb = icmp ne i32 %i.aqa, 0
  store ptr %i.apo, ptr %8, align 8, !tbaa !3332
  store i64 %i.apq, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !656
  %i.aqc = call i64 @_ZNK5clang10ASTContext22getCountAttributedTypeENS_8QualTypeEPNS_4ExprEbbN4llvm8ArrayRefINS_22TypeCoupledDeclRefInfoEEE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.05.0.i.i215, ptr noundef %i.apk, i1 noundef zeroext %i.apz, i1 noundef zeroext %i.aqb, ptr noundef nonnull byval(%"class.llvm::ArrayRef.874") align 8 %8), !inline_history !3309
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.he:                                            ; preds = %bb.ha
  %i.aqd = call noundef zeroext i1 @_ZNK5clang4Expr21isIntegerConstantExprERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16) %i.apk, ptr noundef nonnull align 8 dereferenceable(23904) %0) #28, !inline_history !3309
  br i1 %i.aqd, label %bb.hf, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

bb.hf:                                            ; preds = %bb.he
  %i.aqe = call noundef zeroext i1 @_ZNK5clang4Expr21isIntegerConstantExprERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16) %i.apm, ptr noundef nonnull align 8 dereferenceable(23904) %0) #28, !inline_history !3309
  br i1 %i.aqe, label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit, label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread

_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit: ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @_ZNK5clang4Expr22getIntegerConstantExprERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1685") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.apk, ptr noundef nonnull align 8 dereferenceable(23904) %0) #28, !inline_history !3309
  %i.aqf = load i32, ptr %i.vw, align 8, !tbaa !1050
  store i32 %i.aqf, ptr %i.vv, align 8, !tbaa !1050
  %i.aqg = load i64, ptr %10, align 8
  store i64 %i.aqg, ptr %9, align 8
  store i32 0, ptr %i.vw, align 8, !tbaa !1050
  %i.aqh = load i8, ptr %i.vy, align 4, !tbaa !1224, !range !563, !noundef !510
  store i8 %i.aqh, ptr %i.vx, align 4, !tbaa !1224
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @_ZNK5clang4Expr22getIntegerConstantExprERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1685") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %i.apm, ptr noundef nonnull align 8 dereferenceable(23904) %0) #28, !inline_history !3309
  %i.aqi = load i32, ptr %i.wa, align 8, !tbaa !1050 ; 3 uses
  store i32 %i.aqi, ptr %i.vz, align 8, !tbaa !1050
  %i.aqj = load i64, ptr %12, align 8             ; 2 uses
  store i64 %i.aqj, ptr %11, align 8
  store i32 0, ptr %i.wa, align 8, !tbaa !1050
  %i.aqk = load i8, ptr %i.wc, align 4, !tbaa !1224, !range !563, !noundef !510
  store i8 %i.aqk, ptr %i.wb, align 4, !tbaa !1224
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.aql = load i32, ptr %i.vv, align 8, !tbaa !1050
  %i.aqm = icmp ult i32 %i.aql, 65
  br i1 %i.aqm, label %.split544, label %_ZNK4llvm6APSIntneERKS0_.exit

.split544:                                        ; preds = %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit
  %i.aqn = load i64, ptr %9, align 8, !tbaa !716
  %i.aqo = icmp eq i64 %i.aqn, %i.aqj
  br i1 %i.aqo, label %bb.hg, label %bb.hj

_ZNK4llvm6APSIntneERKS0_.exit:                    ; preds = %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit
  %i.aqp = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %9, ptr noundef nonnull align 8 dereferenceable(13) %11) #29
  br i1 %i.aqp, label %bb.hg, label %bb.hj

bb.hg:                                            ; preds = %.split544, %_ZNK4llvm6APSIntneERKS0_.exit
  %i.aqq = icmp ugt i64 %.sroa.041.3.i86, 7
  br i1 %i.aqq, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aqr = ptrtoint ptr %.sroa.0340.2448 to i64
  %i.aqs = and i64 %i.aqr, -8
  %i.aqt = or disjoint i64 %.sroa.041.3.i86, %i.aqs
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit

bb.hi:                                            ; preds = %bb.hg
  %i.aqu = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2448, i64 %.sroa.041.3.i86)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit

_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit: ; preds = %bb.hh, %bb.hi
  %.sroa.05.0.i.i = phi i64 [ %i.aqu, %bb.hi ], [ %i.aqt, %bb.hh ]
  %i.aqv = load i32, ptr %i.yc, align 16          ; 2 uses
  %i.aqw = and i32 %i.aqv, 8388608
  %i.aqx = icmp ne i32 %i.aqw, 0
  %i.aqy = and i32 %i.aqv, 16777216
  %i.aqz = icmp ne i32 %i.aqy, 0
  store ptr %i.apo, ptr %13, align 8, !tbaa !3332
  store i64 %i.apq, ptr %.sroa.5.0..sroa_idx7.i, align 8, !tbaa !656
  %i.ara = call i64 @_ZNK5clang10ASTContext22getCountAttributedTypeENS_8QualTypeEPNS_4ExprEbbN4llvm8ArrayRefINS_22TypeCoupledDeclRefInfoEEE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.05.0.i.i, ptr noundef nonnull %i.apk, i1 noundef zeroext %i.aqx, i1 noundef zeroext %i.aqz, ptr noundef nonnull byval(%"class.llvm::ArrayRef.874") align 8 %13), !inline_history !3309
  %.pre466 = load i32, ptr %i.vz, align 8, !tbaa !1050
  br label %bb.hj

bb.hj:                                            ; preds = %.split544, %_ZNK4llvm6APSIntneERKS0_.exit, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit
  %i.arb = phi i32 [ %.pre466, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit ], [ %i.aqi, %_ZNK4llvm6APSIntneERKS0_.exit ], [ %i.aqi, %.split544 ]
  %.sroa.0377.2 = phi i64 [ %i.ara, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit ], [ 0, %_ZNK4llvm6APSIntneERKS0_.exit ], [ 0, %.split544 ]
  %i.arc = icmp ugt i32 %i.arb, 64
  br i1 %i.arc, label %bb.hk, label %_ZN4llvm5APIntD2Ev.exit212

bb.hk:                                            ; preds = %bb.hj
  %i.ard = load ptr, ptr %11, align 8, !tbaa !716 ; 2 uses
  %i.are = icmp eq ptr %i.ard, null
  br i1 %i.are, label %_ZN4llvm5APIntD2Ev.exit212, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @_ZdaPv(ptr noundef nonnull %i.ard) #31
  br label %_ZN4llvm5APIntD2Ev.exit212

_ZN4llvm5APIntD2Ev.exit212:                       ; preds = %bb.hj, %bb.hk, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.arf = load i32, ptr %i.vv, align 8, !tbaa !1050
  %i.arg = icmp ugt i32 %i.arf, 64
  br i1 %i.arg, label %bb.hm, label %_ZN4llvm5APIntD2Ev.exit211

bb.hm:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit212
  %i.arh = load ptr, ptr %9, align 8, !tbaa !716  ; 2 uses
  %i.ari = icmp eq ptr %i.arh, null
  br i1 %i.ari, label %_ZN4llvm5APIntD2Ev.exit211, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @_ZdaPv(ptr noundef nonnull %i.arh) #31
  br label %_ZN4llvm5APIntD2Ev.exit211

_ZN4llvm5APIntD2Ev.exit211:                       ; preds = %_ZN4llvm5APIntD2Ev.exit212, %bb.hm, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit

bb.ho:                                            ; preds = %bb.dl
  unreachable

_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread: ; preds = %bb.fh, %bb.he, %bb.gz, %bb.gk, %bb.gj, %bb.dl, %bb.dl, %bb.dl, %bb.dl, %bb.dl, %bb.dl, %_ZL21getCommonTemplateNameRKN5clang10ASTContextENS_12TemplateNameES3_b.exit, %_ZN5clangneENS_16OptionalUnsignedIjEES1_.exit, %bb.el, %_ZL13getCommonDeclPN5clang4DeclES1_.exit, %bb.ed, %_ZN4llvmneENS_9StringRefES0_.exit, %bb.dv, %bb.du, %bb.dq, %bb.dm, %_ZN5clang10Qualifiers22removeCommonQualifiersERS0_S1_.exit97, %.split, %bb.hf, %bb.dz, %bb.ev, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i, %bb.fs, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i247, %bb.go, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %.critedge2

_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit: ; preds = %bb.eu, %bb.et, %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit253, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit311, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit307, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit303, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit296, %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit280, %bb.fc, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit268, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit238, %_ZNK5clang10ASTContext13getTypeOfTypeENS_8QualTypeENS_10TypeOfKindE.exit, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit231, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit224, %bb.gy, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit216, %_ZN4llvm5APIntD2Ev.exit211
  %.sroa.0377.3 = phi i64 [ %i.aaz, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit303 ], [ %i.ahz, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit268 ], [ %.sroa.0377.0, %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit253 ], [ %i.aqc, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit216 ], [ %.sroa.0377.2, %_ZN4llvm5APIntD2Ev.exit211 ], [ %i.adr, %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj8EED2Ev.exit280 ], [ %i.ape, %bb.gy ], [ %i.zb, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit311 ], [ %i.aow, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit224 ], [ %i.anf, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit231 ], [ %i.aht, %bb.fc ], [ %i.zx, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit307 ], [ %i.aku, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit238 ], [ %i.amf, %_ZNK5clang10ASTContext13getTypeOfTypeENS_8QualTypeENS_10TypeOfKindE.exit ], [ %i.abt, %_ZNK5clang10ASTContext16getQualifiedTypeENS_13SplitQualTypeE.exit296 ], [ %i.afc, %bb.et ], [ %i.afc, %bb.eu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.arj = icmp ult i64 %.sroa.0377.3, 16
  br i1 %i.arj, label %.critedge2, label %_ZNK5clang8QualType16getTypePtrOrNullEv.exit

_ZNK5clang8QualType16getTypePtrOrNullEv.exit:     ; preds = %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit
  %i.ark = and i64 %.sroa.0377.3, -16
  %i.arl = inttoptr i64 %i.ark to ptr
  %i.arm = load ptr, ptr %i.arl, align 16, !tbaa !719 ; 3 uses
  %.not22 = icmp eq ptr %i.arm, null
  br i1 %.not22, label %.critedge2, label %bb.hp

bb.hp:                                            ; preds = %_ZNK5clang8QualType16getTypePtrOrNullEv.exit
  %.not.i.i113 = icmp ult i64 %.sroa.041.3.i86, 8
  br i1 %.not.i.i113, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.arn = xor i64 %.sroa.041.3.i86, -1
  %i.aro = load i64, ptr %27, align 8, !tbaa !1130
  %i.arp = and i64 %i.aro, %i.arn
  br label %.sink.split.i.i119

bb.hr:                                            ; preds = %bb.hp
  %i.arq = and i64 %.sroa.041.3.i86, 7
  %i.arr = xor i64 %i.arq, -1
  %i.ars = load i64, ptr %27, align 8, !tbaa !1130 ; 2 uses
  %i.art = and i64 %i.ars, %i.arr                 ; 2 uses
  %i.aru = xor i64 %i.ars, %.sroa.041.3.i86
  %i.arv = and i64 %i.aru, 48
  %i.arw = icmp eq i64 %i.arv, 0
  %i.arx = and i64 %i.art, -49
  %spec.select.i.i114 = select i1 %i.arw, i64 %i.arx, i64 %i.art ; 3 uses
  %i.ary = xor i64 %spec.select.i.i114, %.sroa.041.3.i86
  %i.arz = and i64 %i.ary, 448
  %i.asa = icmp eq i64 %i.arz, 0
  %i.asb = and i64 %spec.select.i.i114, -449
  %storemerge5.i.i115 = select i1 %i.asa, i64 %i.asb, i64 %spec.select.i.i114 ; 3 uses
  %.unshifted6.i.i116 = xor i64 %storemerge5.i.i115, %.sroa.041.3.i86
  %i.asc = and i64 %.unshifted6.i.i116, 4294966784
  %i.asd = icmp eq i64 %i.asc, 0
  %i.ase = and i64 %storemerge5.i.i115, -4294966785
  %storemerge7.i.i117 = select i1 %i.asd, i64 %i.ase, i64 %storemerge5.i.i115 ; 3 uses
  store i64 %storemerge7.i.i117, ptr %27, align 8, !tbaa !1130
  %.unshifted.i.i118 = xor i64 %storemerge7.i.i117, %.sroa.041.3.i86
  %i.asf = icmp ult i64 %.unshifted.i.i118, 4294967296
  br i1 %i.asf, label %bb.hs, label %_ZN5clang10QualifiersmIES0_.exit121

bb.hs:                                            ; preds = %bb.hr
  %i.asg = and i64 %storemerge7.i.i117, 4294967295
  br label %.sink.split.i.i119

.sink.split.i.i119:                               ; preds = %bb.hs, %bb.hq
  %.sink.i.i120 = phi i64 [ %i.asg, %bb.hs ], [ %i.arp, %bb.hq ]
  store i64 %.sink.i.i120, ptr %27, align 8, !tbaa !1130
  br label %_ZN5clang10QualifiersmIES0_.exit121

_ZN5clang10QualifiersmIES0_.exit121:              ; preds = %.sink.split.i.i119, %bb.hr
  %i.ash = load i32, ptr %i.aa, align 8, !tbaa !657 ; 2 uses
  %.not.i68 = icmp eq i32 %i.ash, 0
  br i1 %.not.i68, label %.critedge2, label %bb.de

.critedge2:                                       ; preds = %bb.de, %_ZN5clang10QualifiersmIES0_.exit121, %_ZNK5clang8QualType16getTypePtrOrNullEv.exit, %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit, %bb.dd, %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread
  %.sroa.0340.2416 = phi ptr [ %.sroa.0340.2448, %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit.thread ], [ %.sroa.0340.1, %bb.dd ], [ %.sroa.0340.2448, %_ZL22getCommonSugarTypeNodeRKN5clang10ASTContextEPKNS_4TypeES5_NS_13SplitQualTypeE.exit ], [ %.sroa.0340.2448, %_ZNK5clang8QualType16getTypePtrOrNullEv.exit ], [ %i.arm, %_ZN5clang10QualifiersmIES0_.exit121 ], [ %.sroa.0340.2448, %bb.de ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %27, align 8, !tbaa !656 ; 3 uses
  %i.asi = icmp ugt i64 %.sroa.0.0.copyload, 7
  br i1 %i.asi, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %.critedge2
  %i.asj = ptrtoint ptr %.sroa.0340.2416 to i64
  %i.ask = and i64 %i.asj, -8
  %i.asl = or disjoint i64 %i.ask, %.sroa.0.0.copyload
  br label %_ZNK5clang10ASTContext16getQualifiedTypeEPKNS_4TypeENS_10QualifiersE.exit

bb.hu:                                            ; preds = %.critedge2
  %i.asm = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %.sroa.0340.2416, i64 %.sroa.0.0.copyload)
  br label %_ZNK5clang10ASTContext16getQualifiedTypeEPKNS_4TypeENS_10QualifiersE.exit

_ZNK5clang10ASTContext16getQualifiedTypeEPKNS_4TypeENS_10QualifiersE.exit: ; preds = %bb.ht, %bb.hu
  %.sroa.05.0.i = phi i64 [ %i.asm, %bb.hu ], [ %i.asl, %bb.ht ]
  %i.asn = load ptr, ptr %30, align 8, !tbaa !655 ; 2 uses
  %i.aso = icmp eq ptr %i.asn, %i.bf
  br i1 %i.aso, label %_ZN4llvm11SmallVectorIN5clang13SplitQualTypeELj8EED2Ev.exit, label %bb.hv

bb.hv:                                            ; preds = %_ZNK5clang10ASTContext16getQualifiedTypeEPKNS_4TypeENS_10QualifiersE.exit
  call void @free(ptr noundef %i.asn) #28
  br label %_ZN4llvm11SmallVectorIN5clang13SplitQualTypeELj8EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang13SplitQualTypeELj8EED2Ev.exit: ; preds = %_ZNK5clang10ASTContext16getQualifiedTypeEPKNS_4TypeENS_10QualifiersE.exit, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  %i.asp = load ptr, ptr %29, align 8, !tbaa !655 ; 2 uses
  %i.asq = icmp eq ptr %i.asp, %i.z
  br i1 %i.asq, label %_ZN4llvm11SmallVectorIN5clang13SplitQualTypeELj8EED2Ev.exit122, label %bb.hw

bb.hw:                                            ; preds = %_ZN4llvm11SmallVectorIN5clang13SplitQualTypeELj8EED2Ev.exit
  call void @free(ptr noundef %i.asp) #28
  br label %_ZN4llvm11SmallVectorIN5clang13SplitQualTypeELj8EED2Ev.exit122

_ZN4llvm11SmallVectorIN5clang13SplitQualTypeELj8EED2Ev.exit122: ; preds = %_ZN4llvm11SmallVectorIN5clang13SplitQualTypeELj8EED2Ev.exit, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.hx

bb.hx:                                            ; preds = %bb.d, %bb.c, %bb.a, %_ZN4llvm11SmallVectorIN5clang13SplitQualTypeELj8EED2Ev.exit122
  %.sroa.019.0 = phi i64 [ %1, %bb.c ], [ %.sroa.05.0.i, %_ZN4llvm11SmallVectorIN5clang13SplitQualTypeELj8EED2Ev.exit122 ], [ %1, %bb.a ], [ %2, %bb.d ]
  ret i64 %.sroa.019.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZL20mergeEnumWithIntegerRN5clang10ASTContextEPKNS_8EnumTypeENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr nonnull %.24.val, i64 %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %.24.val) #28 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.c, null
  %spec.select.i.i = select i1 %.not.not.i.i, ptr %.24.val, ptr %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 128
  %.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8 ; 4 uses
  %i.e = icmp ugt i64 %.0.copyload.i.i.i.i, 7
  br i1 %i.e, label %bb.b, label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %.0.copyload.i.i.i.i, 4
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %.0.copyload.i.i.i.i, -5
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !716 ; 2 uses
  %i.i = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !719 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i5.i = load i64, ptr %i.l, align 8, !tbaa !716
  %i.m = and i64 %.sroa.0.0.copyload.i.i5.i, 15
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i) #28
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.03.0.in.in.i.i = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ]
  %.sroa.03.0.in.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i to i64
  br label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit

_ZNK5clang8EnumDecl14getIntegerTypeEv.exit:       ; preds = %bb.b, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i
  %.sroa.06.1.i.in = phi i64 [ %.sroa.03.0.in.i.i, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i ], [ %.0.copyload.i.i.i.i, %bb.b ] ; 2 uses
  %i.p = icmp ult i64 %.sroa.06.1.i.in, 16
  br i1 %i.p, label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit
  %i.q = and i64 %.sroa.06.1.i.in, -16
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !716
  %i.u = and i64 %1, -16
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !716
  %i.y = and i64 %1, 7
  %i.z = or i64 %i.x, %i.y
  %i.aa = icmp eq i64 %i.t, %i.z
  br i1 %i.aa, label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %2, label %bb.g, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.v, align 16, !tbaa !719
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0.0.copyload.i.i.i38.i = load i64, ptr %i.ac, align 8, !tbaa !716 ; 2 uses
  %i.ad = and i64 %.sroa.0.0.copyload.i.i.i38.i, -16
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !719 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 16            ; 2 uses
  %i.ai = icmp ne i8 %i.ah, 13
  %.not.not3039.i = icmp eq ptr %i.af, null
  %.not.not40.i = or i1 %.not.not3039.i, %i.ai
  br i1 %.not.not40.i, label %.lr.ph.i.preheader, label %tailrecurse._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.g
  %.not.i820 = icmp eq i8 %i.ah, 47
  br i1 %.not.i820, label %.lr.ph.i._crit_edge, label %.lr.ph

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.g
  %.lcssa.i = phi ptr [ %i.af, %bb.g ], [ %i.bk, %tailrecurse.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.ak = load i32, ptr %i.aj, align 16
  %i.al = lshr i32 %i.ak, 19
  %i.am = and i32 %i.al, 1023
  %i.an = add nsw i32 %i.am, -453
  %spec.select.i.i7 = icmp ult i32 %i.an, 20
  br i1 %spec.select.i.i7, label %bb.h, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %.not.i8 = icmp eq i8 %i.bm, 47
  br i1 %.not.i8, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa14 = phi ptr [ %i.af, %.lr.ph.i.preheader ], [ %i.bk, %.lr.ph.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa14, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !724 ; 2 uses
  %i.aq = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.ap) #28, !inline_history !1325 ; 2 uses
  %.not.not.i.i10 = icmp eq ptr %i.aq, null
  %..i.i = select i1 %.not.not.i.i10, ptr %i.ap, ptr %i.aq ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.as = load i8, ptr %i.ar, align 2
  %i.at = trunc i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.au, align 8
  %i.av = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, 7
  %i.aw = select i1 %i.at, i1 true, i1 %i.av
  br i1 %i.aw, label %_ZNK5clang4Type13isIntegerTypeEv.exit, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i21 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i38.i, %.lr.ph.i.preheader ]
  %i.ax = and i64 %.sroa.0.0.copyload.i.i.i.i.i21, -16
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !719 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.ba, align 16            ; 2 uses
  %i.bc = icmp ne i8 %i.bb, 35
  %.not18.not32.i = icmp eq ptr %i.az, null
  %.not18.not.i = or i1 %.not18.not32.i, %i.bc
  br i1 %.not18.not.i, label %.split, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.sroa.0.0.copyload.i.i9 = load i64, ptr %i.bd, align 16, !tbaa !716
  %i.be = and i64 %.sroa.0.0.copyload.i.i9, -16
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !719
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bh, align 8, !tbaa !716 ; 2 uses
  %i.bi = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load ptr, ptr %i.bj, align 16, !tbaa !719 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i8, ptr %i.bl, align 16            ; 2 uses
  %i.bn = icmp ne i8 %i.bm, 13
  %.not.not30.i = icmp eq ptr %i.bk, null
  %.not.not.i = or i1 %.not.not30.i, %i.bn
  br i1 %.not.not.i, label %.lr.ph.i, label %tailrecurse._crit_edge.i

.split:                                           ; preds = %.lr.ph
  %i.bo = icmp eq i8 %i.bb, 10
  br i1 %i.bo, label %bb.h, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

_ZNK5clang4Type13isIntegerTypeEv.exit:            ; preds = %.lr.ph.i._crit_edge
  %i.bp = load ptr, ptr %i.ao, align 8, !tbaa !724
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.br = load i40, ptr %i.bq, align 8
  %i.bs = icmp sgt i40 %i.br, -1
  br i1 %i.bs, label %bb.h, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

bb.h:                                             ; preds = %tailrecurse._crit_edge.i, %.split, %_ZNK5clang4Type13isIntegerTypeEv.exit
  %i.bt = load ptr, ptr %i.r, align 16, !tbaa !719 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bt, ptr %i.b, align 8, !tbaa !956
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !933, !noalias !3349 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1045, !noalias !3349 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !932, !noalias !3349 ; 5 uses
  %i.ca = icmp eq i32 %i.bz, 0
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v8i64
!3125 = distinct !{!3125, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_"}
!3126 = distinct !{!3126, !3125, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_: argument 0"}
!3127 = distinct !{!3127, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_"}
!3128 = distinct !{!3128, !3127, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_: argument 0"}
!3129 = distinct !{null, ptr @_ZN5clang15IdentifierTable3getEN4llvm9StringRefE}
!3130 = distinct !{null}
!3131 = distinct !{!3131, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv"}
!3132 = distinct !{!3132, !3131, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv: argument 0"}
!3133 = distinct !{!3133, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv"}
!3134 = distinct !{!3134, !3133, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv: argument 0"}
!3135 = distinct !{null, ptr @_ZN5clang15IdentifierTable3getEN4llvm9StringRefE}
!3136 = distinct !{null}
!3137 = !{!3099, !3097, !3095, !3093}
!3138 = !{!3095, !3093}
!3139 = !{!3105, !3103}
!3140 = !{!3111, !3109, !3105, !3103}
!3141 = !{!3118, !3116}
!3142 = !{!3124, !3122, !3118, !3116}
!3143 = !{!3128, !3126}
!3144 = !{!3134, !3132, !3128, !3126}
!3145 = !{ptr @_ZNK5clang10ASTContext20getBuiltinVaListDeclEv}
!3146 = !{!508, !278, i64 1640}
!3147 = distinct !{!3147, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_"}
!3148 = distinct !{!3148, !3147, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_: argument 0"}
!3149 = distinct !{!3149, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_"}
!3150 = distinct !{!3150, !3149, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_: argument 0"}
!3151 = distinct !{!3151, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv"}
!3152 = distinct !{!3152, !3151, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv: argument 0"}
!3153 = distinct !{!3153, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv"}
!3154 = distinct !{!3154, !3153, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv: argument 0"}
!3155 = !{!508, !278, i64 1648}
!3156 = !{!3154, !3152, !3150, !3148}
!3157 = !{!3150, !3148}
!3158 = distinct !{!3158, !519}
!3159 = !{!"_ZTSN5clang27UncommonTemplateNameStorageE", !102, i64 0}
!3160 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang4DeclEPNS3_27UncommonTemplateNameStorageEPNS3_21QualifiedTemplateNameEPNS3_21DependentTemplateNameEEEELi4EJEEE", !673, i64 0}
!3161 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang4DeclEPNS3_27UncommonTemplateNameStorageEPNS3_21QualifiedTemplateNameEPNS3_21DependentTemplateNameEEEELi3EJSB_EEE", !3160, i64 0}
!3162 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang4DeclEPNS3_27UncommonTemplateNameStorageEPNS3_21QualifiedTemplateNameEPNS3_21DependentTemplateNameEEEELi2EJS9_SB_EEE", !3161, i64 0}
!3163 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang4DeclEPNS3_27UncommonTemplateNameStorageEPNS3_21QualifiedTemplateNameEPNS3_21DependentTemplateNameEEEELi1EJS7_S9_SB_EEE", !3162, i64 0}
!3164 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang4DeclEPNS3_27UncommonTemplateNameStorageEPNS3_21QualifiedTemplateNameEPNS3_21DependentTemplateNameEEEELi0EJS5_S7_S9_SB_EEE", !3163, i64 0}
!3165 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang4DeclEPNS1_27UncommonTemplateNameStorageEPNS1_21QualifiedTemplateNameEPNS1_21DependentTemplateNameEEEE", !3164, i64 0}
!3166 = !{!"_ZTSN5clang12TemplateNameE", !3165, i64 0}
!3167 = !{!"_ZTSN5clang32SubstTemplateTemplateParmStorageE", !3159, i64 0, !796, i64 8, !3166, i64 16, !441, i64 24}
!3168 = !{!3167, !441, i64 24}
!3169 = distinct !{!3169, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_"}
!3170 = distinct !{!3170, !3169, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_: argument 0"}
!3171 = distinct !{!3171, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_"}
!3172 = distinct !{!3172, !3171, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_: argument 0"}
!3173 = distinct !{!3173, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv"}
!3174 = distinct !{!3174, !3173, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv: argument 0"}
!3175 = distinct !{!3175, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv"}
!3176 = distinct !{!3176, !3175, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv: argument 0"}
!3177 = distinct !{!3177, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_"}
!3178 = distinct !{!3178, !3177, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_: argument 0"}
!3179 = distinct !{!3179, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_"}
!3180 = distinct !{!3180, !3179, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_: argument 0"}
!3181 = distinct !{!3181, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv"}
!3182 = distinct !{!3182, !3181, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv: argument 0"}
!3183 = distinct !{!3183, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv"}
!3184 = distinct !{!3184, !3183, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv: argument 0"}
!3185 = !{!3176, !3174, !3172, !3170}
!3186 = !{!3172, !3170}
!3187 = !{!3184, !3182, !3180, !3178}
!3188 = !{!3180, !3178}
!3189 = distinct !{!3189, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_"}
!3190 = distinct !{!3190, !3189, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_: argument 0"}
!3191 = distinct !{!3191, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_"}
!3192 = distinct !{!3192, !3191, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_: argument 0"}
!3193 = distinct !{!3193, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv"}
!3194 = distinct !{!3194, !3193, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv: argument 0"}
!3195 = distinct !{!3195, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv"}
!3196 = distinct !{!3196, !3195, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv: argument 0"}
!3197 = !{!3196, !3194, !3192, !3190}
!3198 = !{!3192, !3190}
!3199 = !{!1330, !1330, i64 0}
!3200 = !{ptr @"_ZZN5clang10ASTContext23canAssignObjCInterfacesEPKNS_21ObjCObjectPointerTypeES3_ENK3$_0clEb"}
!3201 = !{!1332, !1330, i64 0}
!3202 = !{!1332, !1331, i64 16}
!3203 = !{!1332, !1331, i64 24}
!3204 = distinct !{ptr @_ZNK5clang17ObjCInterfaceDecl14isSuperClassOfEPKS0_, null, null}
!3205 = distinct !{!3205, !519}
!3206 = !{!1335, !1335, i64 0}
!3207 = !{ptr @"_ZZN5clang10ASTContext37canAssignObjCInterfacesInBlockPointerEPKNS_21ObjCObjectPointerTypeES3_bENK3$_0clEb"}
!3208 = !{!1336, !1335, i64 0}
!3209 = !{!1336, !1331, i64 8}
!3210 = !{!1336, !1331, i64 16}
!3211 = distinct !{!3211, i1 true, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang17ObjCInterfaceDeclEPKNS2_14ObjCObjectTypeELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_"}
!3212 = distinct !{!3212, !3211, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang17ObjCInterfaceDeclEPKNS2_14ObjCObjectTypeELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_: argument 0"}
!3213 = distinct !{!3213, i1 true, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang17ObjCInterfaceDeclEPKNS2_14ObjCObjectTypeELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E7find_asIS5_EENS_16DenseMapIteratorIS5_S8_SA_SD_Lb0EEERKT_"}
!3214 = distinct !{!3214, !3213, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang17ObjCInterfaceDeclEPKNS2_14ObjCObjectTypeELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E7find_asIS5_EENS_16DenseMapIteratorIS5_S8_SA_SD_Lb0EEERKT_: argument 0"}
!3215 = distinct !{!3215, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang17ObjCInterfaceDeclEPKNS2_14ObjCObjectTypeELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6getRepEv"}
!3216 = distinct !{!3216, !3215, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang17ObjCInterfaceDeclEPKNS2_14ObjCObjectTypeELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6getRepEv: argument 0"}
!3217 = distinct !{!3217, i1 true, !"_ZNK4llvm13SmallDenseMapIPKN5clang17ObjCInterfaceDeclEPKNS1_14ObjCObjectTypeELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE6getRepEv"}
!3218 = distinct !{!3218, !3217, !"_ZNK4llvm13SmallDenseMapIPKN5clang17ObjCInterfaceDeclEPKNS1_14ObjCObjectTypeELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE6getRepEv: argument 0"}
!3219 = !{!3218, !3216, !3214, !3212}
!3220 = !{!3214, !3212}
!3221 = !{!"_ZTSSt4pairIPKN5clang17ObjCInterfaceDeclEPKNS0_14ObjCObjectTypeEE", !279, i64 0, !1328, i64 8}
!3222 = !{!3221, !1328, i64 8}
!3223 = distinct !{!3223, !519}
!3224 = !{!1249, !1249, i64 0}
!3225 = distinct !{!3225, !519}
!3226 = distinct !{!3226, !519}
!3227 = distinct !{!3227, !519, !3228}
!3228 = !{!"llvm.loop.unswitch.partial.disable"}
!3229 = distinct !{!3229, !519}
!3230 = distinct !{null, null, null, null, null}
!3231 = distinct !{!3231, !519}
!3232 = distinct !{!3232, i1 true, !"_ZNK5clang17FunctionEffectSetcvNS_18FunctionEffectsRefEEv"}
!3233 = distinct !{!3233, !3232, !"_ZNK5clang17FunctionEffectSetcvNS_18FunctionEffectsRefEEv: argument 0"}
!3234 = distinct !{!3234, i1 true, !"_ZNK5clang17FunctionEffectSetcvNS_18FunctionEffectsRefEEv"}
!3235 = distinct !{!3235, !3234, !"_ZNK5clang17FunctionEffectSetcvNS_18FunctionEffectsRefEEv: argument 0"}
!3236 = distinct !{!3236, !519}
!3237 = distinct !{!3237, i1 true, !"_ZNK5clang17FunctionEffectSetcvNS_18FunctionEffectsRefEEv"}
!3238 = distinct !{!3238, !3237, !"_ZNK5clang17FunctionEffectSetcvNS_18FunctionEffectsRefEEv: argument 0"}
!3239 = distinct !{!3239, !519}
!3240 = distinct !{!3240, i1 true, !"_ZNK5clang17FunctionEffectSetcvNS_18FunctionEffectsRefEEv"}
!3241 = distinct !{!3241, !3240, !"_ZNK5clang17FunctionEffectSetcvNS_18FunctionEffectsRefEEv: argument 0"}
!3242 = !{!3233}
!3243 = !{!3235}
!3244 = !{!3238}
!3245 = !{!3241}
!3246 = distinct !{!3246, !519}
!3247 = distinct !{!3247, !519}
!3248 = !{!"_ZTSN5clang19EffectConditionExprE", !1086, i64 0}
!3249 = !{!3248, !1086, i64 0}
!3250 = distinct !{!3250, !519}
!3251 = !{!"_ZTSN5clang12FunctionType16ExtParameterInfoE", !102, i64 0}
!3252 = !{!3251, !102, i64 0}
!3253 = distinct !{!3253, !519}
!3254 = !{!"p2 _ZTSSt4pairIPN5clang4DeclES2_E", !113, i64 0}
!3255 = !{!"p1 _ZTSSt4pairIPN5clang4DeclES2_E", !107, i64 0}
!3256 = !{!"_ZTSSt15_Deque_iteratorISt4pairIPN5clang4DeclES3_ERS4_PS4_E", !3255, i64 0, !3255, i64 8, !3255, i64 16, !3254, i64 24}
!3257 = !{!"_ZTSNSt11_Deque_baseISt4pairIPN5clang4DeclES3_ESaIS4_EE16_Deque_impl_dataE", !3254, i64 0, !274, i64 8, !3256, i64 16, !3256, i64 48}
!3258 = !{!3257, !274, i64 8}
!3259 = !{!3257, !3254, i64 0}
!3260 = !{!3255, !3255, i64 0}
!3261 = !{!3256, !3254, i64 24}
!3262 = !{!3256, !3255, i64 8}
!3263 = !{!3256, !3255, i64 16}
!3264 = !{!3257, !3255, i64 16}
!3265 = !{!3257, !3255, i64 48}
!3266 = !{!"p1 _ZTSN4llvm8DenseSetISt5tupleIJPN5clang4DeclES4_iEENS_12DenseMapInfoIS5_vEEEE", !107, i64 0}
!3267 = !{!3266, !3266, i64 0}
!3268 = !{!"_ZTSNSt11_Deque_baseISt4pairIPN5clang4DeclES3_ESaIS4_EE11_Deque_implE", !3257, i64 0}
!3269 = !{!"_ZTSSt11_Deque_baseISt4pairIPN5clang4DeclES3_ESaIS4_EE", !3268, i64 0}
!3270 = !{!"_ZTSSt5dequeISt4pairIPN5clang4DeclES3_ESaIS4_EE", !3269, i64 0}
!3271 = !{!"_ZTSSt5queueISt4pairIPN5clang4DeclES3_ESt5dequeIS4_SaIS4_EEE", !3270, i64 0}
!3272 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairISt4pairIPN5clang4DeclES5_EEE", !107, i64 0}
!3273 = !{!"_ZTSN4llvm8DenseMapISt4pairIPN5clang4DeclES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEE", !3272, i64 0, !198, i64 8, !103, i64 16, !103, i64 20}
!3274 = !{!"_ZTSN4llvm6detail12DenseSetImplISt4pairIPN5clang4DeclES5_ENS_8DenseMapIS6_NS0_13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS0_12DenseSetPairIS6_EEEEEE", !3273, i64 0}
!3275 = !{!"_ZTSN4llvm8DenseSetISt4pairIPN5clang4DeclES4_ENS_12DenseMapInfoIS5_vEEEE", !3274, i64 0}
!3276 = !{!"_ZTSN5clang25StructuralEquivalenceKindE", !102, i64 0}
!3277 = !{!"_ZTSN5clang28StructuralEquivalenceContextE", !348, i64 0, !132, i64 8, !132, i64 16, !3271, i64 24, !3275, i64 104, !3266, i64 128, !3276, i64 136, !388, i64 140, !388, i64 141, !388, i64 142, !388, i64 143, !388, i64 144}
!3278 = !{!3277, !3276, i64 136}
!3279 = !{!3277, !388, i64 144}
!3280 = !{!3273, !103, i64 20}
!3281 = !{!3273, !3272, i64 0}
!3282 = !{!3257, !3254, i64 40}
!3283 = !{!3257, !3254, i64 72}
!3284 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairISt5tupleIJPN5clang4DeclES5_iEEEE", !107, i64 0}
!3285 = !{!"_ZTSN4llvm8DenseMapISt5tupleIJPN5clang4DeclES4_iEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEE", !3284, i64 0, !198, i64 8, !103, i64 16, !103, i64 20}
!3286 = !{!3285, !103, i64 20}
!3287 = !{!3285, !3284, i64 0}
!3288 = distinct !{!3288, i1 true, !"_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE"}
!3289 = distinct !{!3289, !3288, !"_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE: argument 0"}
!3290 = distinct !{!3290, i1 true, !"_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE"}
!3291 = distinct !{!3291, !3290, !"_ZL11unwrapSugarRN5clang13SplitQualTypeERNS_10QualifiersE: argument 0"}
!3292 = distinct !{null}
!3293 = distinct !{null, null}
!3294 = distinct !{null, null}
!3295 = distinct !{null, null}
!3296 = distinct !{null, null}
!3297 = distinct !{null, null}
!3298 = distinct !{null, null}
!3299 = distinct !{null, null}
!3300 = distinct !{null, null}
!3301 = distinct !{null, null}
!3302 = distinct !{null, null}
!3303 = distinct !{null, null}
!3304 = distinct !{!3304, i1 true, !"_ZL26getCommonTemplateArgumentsRKN5clang10ASTContextEN4llvm8ArrayRefINS_16TemplateArgumentEEES6_"}
!3305 = distinct !{!3305, !3304, !"_ZL26getCommonTemplateArgumentsRKN5clang10ASTContextEN4llvm8ArrayRefINS_16TemplateArgumentEEES6_: argument 0"}
!3306 = distinct !{null, null}
!3307 = distinct !{null, null}
!3308 = distinct !{!3308, !519}
!3309 = distinct !{null}
!3310 = distinct !{ptr @_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_, null, null, null, null}
!3311 = distinct !{ptr @_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_, null, null, null, null}
!3312 = distinct !{ptr @_ZL13getCommonDeclIN5clang12TemplateDeclETnNSt9enable_ifIXsr3stdE12is_base_of_vINS0_4DeclET_EEbE4typeELb1EEPS4_S7_S7_, null, null, null}
!3313 = distinct !{null, null, null, null}
!3314 = distinct !{null, null, null, null}
!3315 = distinct !{null, null, null}
!3316 = distinct !{null, null, null, null, null}
!3317 = distinct !{null, null, null, null, null}
!3318 = distinct !{null, null, null, null}
!3319 = distinct !{null, null, null, null, null}
!3320 = distinct !{null, null, null, null, null}
!3321 = distinct !{null, null, null, null}
!3322 = distinct !{null, null}
!3323 = !{!3289}
!3324 = !{!3291}
!3325 = !{!"_ZTSN5clang13SplitQualTypeE", !717, i64 0, !1129, i64 8}
!3326 = !{!3325, !717, i64 0}
!3327 = !{!3305}
!3328 = !{!"_ZTSN5clang14BTFTypeTagAttrE", !1225, i64 0, !103, i64 40, !272, i64 48}
!3329 = !{!3328, !272, i64 48}
!3330 = !{!3328, !103, i64 40}
!3331 = !{!1153, !1152, i64 0}
!3332 = !{!1152, !1152, i64 0}
!3333 = distinct !{!3333, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_"}
!3334 = distinct !{!3334, !3333, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_: argument 0"}
!3335 = distinct !{!3335, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_"}
!3336 = distinct !{!3336, !3335, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_: argument 0"}
!3337 = distinct !{!3337, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv"}
!3338 = distinct !{!3338, !3337, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv: argument 0"}
!3339 = distinct !{!3339, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv"}
!3340 = distinct !{!3340, !3339, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv: argument 0"}
!3341 = distinct !{!3341, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_"}
!3342 = distinct !{!3342, !3341, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_: argument 0"}
!3343 = distinct !{!3343, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_"}
!3344 = distinct !{!3344, !3343, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E7find_asIS5_EENS_16DenseMapIteratorIS5_S6_S8_SB_Lb0EEERKT_: argument 0"}
!3345 = distinct !{!3345, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv"}
!3346 = distinct !{!3346, !3345, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6getRepEv: argument 0"}
!3347 = distinct !{!3347, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv"}
!3348 = distinct !{!3348, !3347, !"_ZNK4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE6getRepEv: argument 0"}
!3349 = !{!3340, !3338, !3336, !3334}
!3350 = !{!3336, !3334}
!3351 = !{!3348, !3346, !3344, !3342}
!3352 = !{!3344, !3342}
!3353 = distinct !{!3353, i1 true, !"_ZSt9make_pairIbRN4llvm6APSIntEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS4_INS5_IT0_E4typeEE6__typeEEOS6_OSB_"}
!3354 = distinct !{!3354, !3353, !"_ZSt9make_pairIbRN4llvm6APSIntEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS4_INS5_IT0_E4typeEE6__typeEEOS6_OSB_: argument 0"}
!3355 = distinct !{!3355, i1 true, !"_ZNK5clang17ConstantArrayType7getSizeEv"}
!3356 = distinct !{!3356, !3355, !"_ZNK5clang17ConstantArrayType7getSizeEv: argument 0"}
!3357 = distinct !{!3357, i1 true, !"_ZSt9make_pairIbN4llvm5APIntEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_"}
!3358 = distinct !{!3358, !3357, !"_ZSt9make_pairIbN4llvm5APIntEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_: argument 0"}
!3359 = distinct !{!3359, i1 true, !"_ZSt9make_pairIbN4llvm5APIntEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_"}
!3360 = distinct !{!3360, !3359, !"_ZSt9make_pairIbN4llvm5APIntEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_: argument 0"}
!3361 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm6APSIntEE", !102, i64 0, !388, i64 16}
!3362 = !{!3361, !388, i64 16}
!3363 = !{!"_ZTSSt4pairIbN4llvm6APSIntEE", !388, i64 0, !1223, i64 8}
!3364 = !{!3363, !388, i64 0}
!3365 = !{!3354}
!3366 = !{!"_ZTSSt4pairIbN4llvm5APIntEE", !388, i64 0, !1049, i64 8}
!3367 = !{!3366, !388, i64 0}
!3368 = !{!3356}
!3369 = !{!3358}
!3370 = !{!3360}
!3371 = distinct !{!3371, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclEPKNS2_15ASTRecordLayoutENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_"}
!3372 = distinct !{!3372, !3371, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclEPKNS2_15ASTRecordLayoutENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_: argument 0"}
!3373 = distinct !{!3373, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclEPKNS2_15ASTRecordLayoutENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E7find_asIS5_EENS_16DenseMapIteratorIS5_S8_SA_SD_Lb0EEERKT_"}
!3374 = distinct !{!3374, !3373, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclEPKNS2_15ASTRecordLayoutENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E7find_asIS5_EENS_16DenseMapIteratorIS5_S8_SA_SD_Lb0EEERKT_: argument 0"}
!3375 = distinct !{!3375, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclEPKNS2_15ASTRecordLayoutENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6getRepEv"}
!3376 = distinct !{!3376, !3375, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclEPKNS2_15ASTRecordLayoutENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6getRepEv: argument 0"}
!3377 = distinct !{!3377, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclEPKNS1_15ASTRecordLayoutENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE6getRepEv"}
!3378 = distinct !{!3378, !3377, !"_ZNK4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclEPKNS1_15ASTRecordLayoutENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE6getRepEv: argument 0"}
!3379 = distinct !{!3379, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclENS_11SmallVectorIS5_Lj4EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6lookupES5_"}
!3380 = distinct !{!3380, !3379, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclENS_11SmallVectorIS5_Lj4EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6lookupES5_: argument 0"}
!3381 = distinct !{!3381, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclENS_11SmallVectorIS5_Lj4EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv"}
!3382 = distinct !{!3382, !3381, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17ObjCInterfaceDeclENS_11SmallVectorIS5_Lj4EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv: argument 0"}
!3383 = distinct !{!3383, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclENS_11SmallVectorIS4_Lj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE6getRepEv"}
!3384 = distinct !{!3384, !3383, !"_ZNK4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclENS_11SmallVectorIS4_Lj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE6getRepEv: argument 0"}
!3385 = !{!3378, !3376, !3374, !3372}
!3386 = !{!3374, !3372}
!3387 = !{!3380}
!3388 = !{!3384, !3382, !3380}
!3389 = distinct !{!3389, !519}
!3390 = distinct !{null, ptr @_ZNK5clang10ASTContext20getBuiltinVaListDeclEv}
!3391 = distinct !{!3391, !519}
!3392 = !{!508, !285, i64 1832}
!3393 = !{!508, !285, i64 1856}
!3394 = !{ptr @_ZNK5clang10ASTContext31getLangASForBuiltinAddressSpaceEj}
!3395 = distinct !{!3395, !519}
!3396 = !{!1166, !987, i64 0}
!3397 = distinct !{!3397, !519}
!3398 = distinct !{!3398, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!3399 = distinct !{!3399, !3398, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!3400 = distinct !{!3400, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang7VarDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!3401 = distinct !{!3401, !3400, !"_ZNK4llvm8DenseMapIPKN5clang7VarDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!3402 = !{ptr @_ZNK5clang10ASTContext17shouldExternalizeEPKNS_4DeclE}
!3403 = !{!3401, !3399}
!3404 = distinct !{null, null, null}
!3405 = distinct !{null, null}
!3406 = distinct !{!3406, !519}
!3407 = distinct !{!3407, !519}
!3408 = distinct !{ptr @_ZNK5clang10ASTContext24GetGVALinkageForFunctionEPKNS_12FunctionDeclE, null}
!3409 = !{ptr @_ZNK5clang10ASTContext24GetGVALinkageForFunctionEPKNS_12FunctionDeclE}
!3410 = distinct !{!3410, !519}
!3411 = distinct !{!3411, !519}
!3412 = distinct !{!3412, !519}
!3413 = distinct !{!3413, !519}
!3414 = distinct !{!3414, i1 true, !"_ZN4llvm6detail12concat_rangeIKPN5clang11BindingDeclEJNS_8ArrayRefIS4_EES7_S7_EE5beginEv"}
!3415 = distinct !{!3415, !3414, !"_ZN4llvm6detail12concat_rangeIKPN5clang11BindingDeclEJNS_8ArrayRefIS4_EES7_S7_EE5beginEv: argument 0"}
!3416 = distinct !{!3416, i1 true, !"_ZN4llvm6detail12concat_rangeIKPN5clang11BindingDeclEJNS_8ArrayRefIS4_EES7_S7_EE10begin_implIJLm0ELm1ELm2EEEENS_15concat_iteratorIS5_JPS5_SB_SB_EEESt16integer_sequenceImJXspT_EEE"}
!3417 = distinct !{!3417, !3416, !"_ZN4llvm6detail12concat_rangeIKPN5clang11BindingDeclEJNS_8ArrayRefIS4_EES7_S7_EE10begin_implIJLm0ELm1ELm2EEEENS_15concat_iteratorIS5_JPS5_SB_SB_EEESt16integer_sequenceImJXspT_EEE: argument 0"}
!3418 = !{!"_ZTSN4llvm8ArrayRefIPN5clang11BindingDeclEEE", !1361, i64 0, !274, i64 8}
!3419 = !{!3418, !1361, i64 0}
!3420 = !{!3417, !3415}
!3421 = !{!3418, !274, i64 8}
!3422 = distinct !{!3422, !519}
!3423 = distinct !{!3423, !519}
!3424 = distinct !{!3424, !519}
!3425 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang4StmtEPNS3_13EvaluatedStmtEEEELi2EJEEE", !673, i64 0}
!3426 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang4StmtEPNS3_13EvaluatedStmtEEEELi1EJS7_EEE", !3425, i64 0}
!3427 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang4StmtEPNS3_13EvaluatedStmtEEEELi0EJS5_S7_EEE", !3426, i64 0}
!3428 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang4StmtEPNS1_13EvaluatedStmtEEEE", !3427, i64 0}
!3429 = !{!"_ZTSN5clang7VarDeclE", !783, i64 0, !1287, i64 72, !3428, i64 88, !102, i64 96}
!3430 = !{!"_ZTSN5clang17DecompositionDeclE", !3429, i64 0, !684, i64 100, !103, i64 104}
!3431 = !{!3430, !103, i64 104}
!3432 = !{!"p1 _ZTSN5clang9ValueDeclE", !107, i64 0}
!3433 = !{!"_ZTSN5clang11BindingDeclE", !778, i64 0, !3432, i64 56, !1086, i64 64}
!3434 = !{!3433, !1086, i64 64}
!3435 = !{!1361, !1361, i64 0}
!3436 = distinct !{null, null, null, null}
!3437 = distinct !{!3437, i1 true, !"_ZN4llvm6detail12DenseSetImplIPKN5clang12FunctionDeclENS_13SmallDenseMapIS5_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertERKS5_"}
!3438 = distinct !{!3438, !3437, !"_ZN4llvm6detail12DenseSetImplIPKN5clang12FunctionDeclENS_13SmallDenseMapIS5_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertERKS5_: argument 0"}
!3439 = distinct !{!3439, i1 true, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbERKS5_DpOT_"}
!3440 = distinct !{!3440, !3439, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbERKS5_DpOT_: argument 0"}
!3441 = distinct !{!3441, i1 true, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIRKS5_JEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_"}
!3442 = distinct !{!3442, !3441, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIRKS5_JEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_: argument 0"}
!3443 = distinct !{null}
!3444 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_12DeclListNodeEEEELi2EJEEE", !673, i64 0}
!3445 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_12DeclListNodeEEEELi1EJS7_EEE", !3444, i64 0}
!3446 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_12DeclListNodeEEEELi0EJS5_S7_EEE", !3445, i64 0}
!3447 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang9NamedDeclEPNS1_12DeclListNodeEEEE", !3446, i64 0}
!3448 = !{!"_ZTSN5clang12DeclListNodeE", !714, i64 0, !3447, i64 8}
!3449 = !{!3448, !714, i64 0}
!3450 = !{!3442, !3440, !3438}
!3451 = distinct !{!3451, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9NamedDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS5_jS7_SA_Lb0EEEbERKS5_DpOT_"}
!3452 = distinct !{!3452, !3451, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9NamedDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS5_jS7_SA_Lb0EEEbERKS5_DpOT_: argument 0"}
!3453 = distinct !{!3453, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9NamedDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E16try_emplace_implIRKS5_JEEESt4pairINS_16DenseMapIteratorIS5_jS7_SA_Lb0EEEbEOT_DpOT0_"}
!3454 = distinct !{!3454, !3453, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9NamedDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E16try_emplace_implIRKS5_JEEESt4pairINS_16DenseMapIteratorIS5_jS7_SA_Lb0EEEbEOT_DpOT0_: argument 0"}
!3455 = distinct !{!3455, i1 true, !"_ZSt16forward_as_tupleIJRKPKN5clang9NamedDeclEEESt5tupleIJDpOT_EES9_"}
!3456 = distinct !{!3456, !3455, !"_ZSt16forward_as_tupleIJRKPKN5clang9NamedDeclEEESt5tupleIJDpOT_EES9_: argument 0"}
!3457 = !{!3454, !3452}
!3458 = !{!3456}
!3459 = !{!1368, !714, i64 0}
!3460 = distinct !{!3460, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9NamedDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_"}
!3461 = distinct !{!3461, !3460, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9NamedDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_: argument 0"}
!3462 = distinct !{!3462, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9NamedDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E7find_asIS5_EENS_16DenseMapIteratorIS5_jS7_SA_Lb1EEERKT_"}
!3463 = distinct !{!3463, !3462, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9NamedDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E7find_asIS5_EENS_16DenseMapIteratorIS5_jS7_SA_Lb1EEERKT_: argument 0"}
!3464 = distinct !{!3464, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9NamedDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E6getRepEv"}
!3465 = distinct !{!3465, !3464, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9NamedDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E6getRepEv: argument 0"}
!3466 = distinct !{!3466, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang9NamedDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE6getRepEv"}
!3467 = distinct !{!3467, !3466, !"_ZNK4llvm8DenseMapIPKN5clang9NamedDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE6getRepEv: argument 0"}
!3468 = !{!3467, !3465, !3463, !3461}
!3469 = !{!3463, !3461}
!3470 = distinct !{!3470, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS5_jS7_SA_Lb0EEEbERKS5_DpOT_"}
!3471 = distinct !{!3471, !3470, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS5_jS7_SA_Lb0EEEbERKS5_DpOT_: argument 0"}
!3472 = distinct !{!3472, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E16try_emplace_implIRKS5_JEEESt4pairINS_16DenseMapIteratorIS5_jS7_SA_Lb0EEEbEOT_DpOT0_"}
!3473 = distinct !{!3473, !3472, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E16try_emplace_implIRKS5_JEEESt4pairINS_16DenseMapIteratorIS5_jS7_SA_Lb0EEEbEOT_DpOT0_: argument 0"}
!3474 = distinct !{!3474, i1 true, !"_ZSt16forward_as_tupleIJRKPKN5clang7VarDeclEEESt5tupleIJDpOT_EES9_"}
!3475 = distinct !{!3475, !3474, !"_ZSt16forward_as_tupleIJRKPKN5clang7VarDeclEEESt5tupleIJDpOT_EES9_: argument 0"}
!3476 = !{!3473, !3471}
!3477 = !{!3475}
!3478 = !{!1372, !1011, i64 0}
!3479 = distinct !{!3479, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_"}
!3480 = distinct !{!3480, !3479, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_: argument 0"}
!3481 = distinct !{!3481, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E7find_asIS5_EENS_16DenseMapIteratorIS5_jS7_SA_Lb1EEERKT_"}
!3482 = distinct !{!3482, !3481, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E7find_asIS5_EENS_16DenseMapIteratorIS5_jS7_SA_Lb1EEERKT_: argument 0"}
!3483 = distinct !{!3483, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E6getRepEv"}
!3484 = distinct !{!3484, !3483, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E6getRepEv: argument 0"}
!3485 = distinct !{!3485, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE6getRepEv"}
!3486 = distinct !{!3486, !3485, !"_ZNK4llvm8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE6getRepEv: argument 0"}
!3487 = !{!3486, !3484, !3482, !3480}
!3488 = !{!3482, !3480}
!3489 = distinct !{!3489, i1 true, !"_ZN4llvm6detail12DenseSetImplIPKN5clang12FunctionDeclENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertEOS5_"}
!3490 = distinct !{!3490, !3489, !"_ZN4llvm6detail12DenseSetImplIPKN5clang12FunctionDeclENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertEOS5_: argument 0"}
!3491 = distinct !{!3491, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOS5_DpOT_"}
!3492 = distinct !{!3492, !3491, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOS5_DpOT_: argument 0"}
!3493 = distinct !{!3493, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIS5_JEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_"}
!3494 = distinct !{!3494, !3493, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIS5_JEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_: argument 0"}
!3495 = !{!3494, !3492, !3490}
!3496 = distinct !{!3496, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!3497 = distinct !{!3497, !3496, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!3498 = distinct !{!3498, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!3499 = distinct !{!3499, !3498, !"_ZNK4llvm8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!3500 = !{!3499, !3497}
!3501 = distinct !{!3501, i1 true, !"_ZN4llvm6detail12DenseSetImplIPKN5clang12FunctionDeclENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertEOS5_"}
!3502 = distinct !{!3502, !3501, !"_ZN4llvm6detail12DenseSetImplIPKN5clang12FunctionDeclENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE6insertEOS5_: argument 0"}
!3503 = distinct !{!3503, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOS5_DpOT_"}
!3504 = distinct !{!3504, !3503, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOS5_DpOT_: argument 0"}
!3505 = distinct !{!3505, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIS5_JEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_"}
!3506 = distinct !{!3506, !3505, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16try_emplace_implIS5_JEEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbEOT_DpOT0_: argument 0"}
!3507 = !{!3506, !3504, !3502}
!3508 = distinct !{!3508, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!3509 = distinct !{!3509, !3508, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!3510 = distinct !{!3510, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!3511 = distinct !{!3511, !3510, !"_ZNK4llvm8DenseMapIPKN5clang12FunctionDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!3512 = !{!3511, !3509}
!3513 = distinct !{!3513, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17CXXDestructorDeclEPNS2_12FunctionDeclENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv"}
!3514 = distinct !{!3514, !3513, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17CXXDestructorDeclEPNS2_12FunctionDeclENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv: argument 0"}
!3515 = distinct !{!3515, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang17CXXDestructorDeclEPNS1_12FunctionDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE6getRepEv"}
!3516 = distinct !{!3516, !3515, !"_ZNK4llvm8DenseMapIPKN5clang17CXXDestructorDeclEPNS1_12FunctionDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE6getRepEv: argument 0"}
!3517 = distinct !{!3517, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17CXXDestructorDeclEPNS2_12FunctionDeclENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv"}
!3518 = distinct !{!3518, !3517, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17CXXDestructorDeclEPNS2_12FunctionDeclENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv: argument 0"}
!3519 = distinct !{!3519, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang17CXXDestructorDeclEPNS1_12FunctionDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE6getRepEv"}
!3520 = distinct !{!3520, !3519, !"_ZNK4llvm8DenseMapIPKN5clang17CXXDestructorDeclEPNS1_12FunctionDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE6getRepEv: argument 0"}
!3521 = distinct !{!3521, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17CXXDestructorDeclEPNS2_12FunctionDeclENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv"}
!3522 = distinct !{!3522, !3521, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17CXXDestructorDeclEPNS2_12FunctionDeclENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv: argument 0"}
!3523 = distinct !{!3523, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang17CXXDestructorDeclEPNS1_12FunctionDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE6getRepEv"}
!3524 = distinct !{!3524, !3523, !"_ZNK4llvm8DenseMapIPKN5clang17CXXDestructorDeclEPNS1_12FunctionDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE6getRepEv: argument 0"}
!3525 = distinct !{!3525, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17CXXDestructorDeclEPNS2_12FunctionDeclENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv"}
!3526 = distinct !{!3526, !3525, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang17CXXDestructorDeclEPNS2_12FunctionDeclENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv: argument 0"}
!3527 = distinct !{!3527, i1 true, !"_ZNK4llvm8DenseMapIPKN5clang17CXXDestructorDeclEPNS1_12FunctionDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE6getRepEv"}
end_hunk_2

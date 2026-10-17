Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTImporter?download=true
inline.NumInlined: 26100
inline.NumDeleted: 9822
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5clang15ASTNodeImporter27VisitCXXScalarValueInitExprEPNS_22CXXScalarValueInitExprE:bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 102) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ba = load i24, ptr %i.at, align 8
  %i.bb = and i24 %i.ba, -523777
  store i24 %i.bb, ptr %i.at, align 8
  store i64 %.sroa.06.08.i1540, ptr %i.az, align 8, !tbaa !118
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %.1.i50, ptr %i.bc, align 8, !tbaa !9305
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %.sroa.06.08.i61, ptr %i.bd, align 4, !tbaa !157
  %i.be = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_22CXXScalarValueInitExprE(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #22
  %i.bf = load i24, ptr %i.at, align 8
  %i.bg = and i8 %i.be, 31
  %i.bh = zext nneg i8 %i.bg to i24
  %i.bi = shl nuw nsw i24 %i.bh, 14
  %i.bj = and i24 %i.bf, -507905
  %i.bk = or disjoint i24 %i.bi, %i.bj
  store i24 %i.bk, ptr %i.at, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8
  %i.bn = and i8 %i.bm, -2
  store i8 %i.bn, ptr %i.bl, align 8
  br label %_ZN4llvm5ErrorD2Ev.exit9

_ZN4llvm5ErrorD2Ev.exit9:                         ; preds = %bb.i, %.thread
  %storemerge = phi ptr [ %i.am, %.thread ], [ %i.at, %bb.i ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang15ASTNodeImporter25VisitCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.822") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Expected.511", align 8 ; 7 uses
  %4 = alloca %"class.llvm::Expected.822", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9323
  %i.c = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9324, !nonnull !161, !align !162
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !9325
  call void @_ZN5clang11ASTImporter6ImportEPNS_4StmtE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.822") align 8 %4, ptr noundef nonnull align 8 dereferenceable(280400) %i.c, ptr noundef %i.b), !noalias !9325, !inline_history !6
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i8, ptr %i.d, align 8, !noalias !9325
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.g = load i64, ptr %4, align 8, !tbaa !165, !noalias !9326
  %i.h = inttoptr i64 %i.g to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !9325
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = or i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 8
  br label %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %4, align 8, !tbaa !191, !noalias !9325
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !9325
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9327
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9330
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !9331
  %i.p = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9331, !nonnull !161, !align !162
  call void @_ZN5clang11ASTImporter6ImportEPNS_4DeclE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.511") align 8 %3, ptr noundef nonnull align 8 dereferenceable(280400) %i.p, ptr noundef %i.o), !noalias !9331, !inline_history !9318
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i8, ptr %i.q, align 8, !noalias !9331
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %_ZN4llvm5ErrorD2Ev.exit10, label %bb.c

_ZN4llvm5ErrorD2Ev.exit10:                        ; preds = %bb.b
  %i.t = load i64, ptr %3, align 8, !tbaa !165, !noalias !9332
  %i.u = inttoptr i64 %i.t to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !9331
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = or i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 8
  br label %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %3, align 8, !tbaa !139, !noalias !9331
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !9331
  %i.z = load ptr, ptr %1, align 8, !tbaa !160, !nonnull !161, !align !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 280136
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !231, !nonnull !161, !align !162 ; 2 uses
  %i.ac = call noundef ptr @_ZN5clang12CXXTemporary6CreateERKNS_10ASTContextEPKNS_17CXXDestructorDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ab, ptr noundef %i.y) #22
  %i.ad = call noundef ptr @_ZN5clang20CXXBindTemporaryExpr6CreateERKNS_10ASTContextEPNS_12CXXTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ab, ptr noundef %i.ac, ptr noundef %i.l) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = and i8 %i.af, -2
  store i8 %i.ag, ptr %i.ae, align 8
  br label %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit

_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit:       ; preds = %_ZN4llvm5ErrorD2Ev.exit10, %bb.c, %_ZN4llvm5ErrorD2Ev.exit
  %.sink = phi ptr [ %i.h, %_ZN4llvm5ErrorD2Ev.exit ], [ %i.u, %_ZN4llvm5ErrorD2Ev.exit10 ], [ %i.ad, %bb.c ]
  store ptr %.sink, ptr %0, align 8, !tbaa !232
  ret void
}

declare noundef ptr @_ZN5clang12CXXTemporary6CreateERKNS_10ASTContextEPKNS_17CXXDestructorDeclE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN5clang20CXXBindTemporaryExpr6CreateERKNS_10ASTContextEPNS_12CXXTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang15ASTNodeImporter27VisitCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.822") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Expected.822", align 8 ; 7 uses
  %4 = alloca %"class.llvm::Expected.500", align 8 ; 7 uses
  %5 = alloca %"class.llvm::Expected.1462", align 8 ; 7 uses
  %6 = alloca %"class.llvm::Expected.511", align 8 ; 7 uses
  %7 = alloca %"class.llvm::Expected.81", align 8 ; 7 uses
  %8 = alloca %"class.llvm::Expected.81", align 8 ; 7 uses
  %9 = alloca %"class.llvm::SmallVector.1158", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1218
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !9372
  %i.c = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9372, !nonnull !161, !align !162
  call void @_ZN5clang11ASTImporter6ImportEPNS_4DeclE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.511") align 8 %6, ptr noundef nonnull align 8 dereferenceable(280400) %i.c, ptr noundef %i.b), !noalias !9372, !inline_history !47
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load i8, ptr %i.d, align 8, !noalias !9372
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit, label %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit.thread

_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit.thread: ; preds = %bb.a
  %i.g = load ptr, ptr %6, align 8, !tbaa !139, !noalias !9372
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !9372
  br label %bb.b

_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit: ; preds = %bb.a
  %i.h = load i64, ptr %6, align 8, !tbaa !165, !noalias !9373 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !9372
  %.not.i37 = icmp eq i64 %i.h, 0
  br i1 %.not.i37, label %bb.b, label %.thread

bb.b:                                             ; preds = %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit.thread, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit
  %i.i = phi ptr [ %i.g, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit.thread ], [ null, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit ]
  %.sroa.0.0.copyload.i69.in = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i69 = load i64, ptr %.sroa.0.0.copyload.i69.in, align 8, !tbaa !118 ; 5 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9374, !nonnull !161, !align !162 ; 2 uses
  %i.k = icmp ult i64 %.sroa.0.0.copyload.i69, 16
  br i1 %i.k, label %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !9375
  %i.l = and i64 %.sroa.0.0.copyload.i69, -16
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !238, !noalias !9375
  call void @_ZN5clang11ASTImporter6ImportEPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.1462") align 8 %5, ptr noundef nonnull align 8 dereferenceable(280400) %i.j, ptr noundef %i.n), !noalias !9375, !inline_history !753
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load i8, ptr %i.o, align 8, !noalias !9375
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 280136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !231, !noalias !9375, !nonnull !161, !align !162
  %i.t = load ptr, ptr %5, align 8, !tbaa !240, !noalias !9375 ; 2 uses
  %i.u = and i64 %.sroa.0.0.copyload.i69, 8
  %.not.i.i.i38 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i38, label %_ZNK5clang8QualType18getLocalQualifiersEv.exit.thread.i.i, label %_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i

_ZNK5clang8QualType18getLocalQualifiersEv.exit.thread.i.i: ; preds = %bb.d
  %i.v = and i64 %.sroa.0.0.copyload.i69, 7
  br label %bb.e

_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !119, !noalias !9375 ; 2 uses
  %i.x = and i64 %.sroa.0.0.copyload.i69, 7
  %i.y = or i64 %.sroa.0.0.copyload.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i, 7
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i, %_ZNK5clang8QualType18getLocalQualifiersEv.exit.thread.i.i
  %i.aa = phi i64 [ %i.v, %_ZNK5clang8QualType18getLocalQualifiersEv.exit.thread.i.i ], [ %i.y, %_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i ]
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = and i64 %i.ab, -8
  %i.ad = or disjoint i64 %i.aa, %i.ac
  br label %_ZN5clang11ASTImporter6ImportENS_8QualTypeE.exit.i.thread72

bb.f:                                             ; preds = %_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i
  %i.ae = tail call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %i.s, ptr noundef %i.t, i64 %i.y) #22, !noalias !9375, !inline_history !753
  br label %_ZN5clang11ASTImporter6ImportENS_8QualTypeE.exit.i.thread72

_ZN5clang11ASTImporter6ImportENS_8QualTypeE.exit.i.thread72: ; preds = %bb.f, %bb.e
  %.sink.i.i39.ph = phi i64 [ %i.ad, %bb.e ], [ %i.ae, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !9375
  br label %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit.thread

_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit: ; preds = %bb.c
  %i.af = load i64, ptr %5, align 8, !tbaa !165, !noalias !9376 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !9375
  %.not.i40 = icmp eq i64 %i.af, 0
  br i1 %.not.i40, label %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit.thread, label %.thread

_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit.thread: ; preds = %bb.b, %_ZN5clang11ASTImporter6ImportENS_8QualTypeE.exit.i.thread72, %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit
  %.sroa.06.1.i81 = phi i64 [ 0, %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit ], [ %.sink.i.i39.ph, %_ZN5clang11ASTImporter6ImportENS_8QualTypeE.exit.i.thread72 ], [ 0, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9378
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !9379
  %i.ai = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9379, !nonnull !161, !align !162
  call void @_ZN5clang11ASTImporter6ImportEPNS_14TypeSourceInfoE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.500") align 8 %4, ptr noundef nonnull align 8 dereferenceable(280400) %i.ai, ptr noundef %i.ah), !noalias !9379, !inline_history !40
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !noalias !9379
  %i.al = trunc i8 %i.ak to i1
  br i1 %i.al, label %_ZN5clang15ASTNodeImporter13importCheckedIPNS_14TypeSourceInfoEEET_RN4llvm5ErrorERKS4_.exit, label %_ZN5clang15ASTNodeImporter13importCheckedIPNS_14TypeSourceInfoEEET_RN4llvm5ErrorERKS4_.exit.thread94

_ZN5clang15ASTNodeImporter13importCheckedIPNS_14TypeSourceInfoEEET_RN4llvm5ErrorERKS4_.exit.thread94: ; preds = %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit.thread
  %i.am = load ptr, ptr %4, align 8, !tbaa !261, !noalias !9379
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !9379
  br label %bb.g

_ZN5clang15ASTNodeImporter13importCheckedIPNS_14TypeSourceInfoEEET_RN4llvm5ErrorERKS4_.exit: ; preds = %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit.thread
  %i.an = load i64, ptr %4, align 8, !tbaa !165, !noalias !9380 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !9379
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZN5clang15ASTNodeImporter13importCheckedIPNS_14TypeSourceInfoEEET_RN4llvm5ErrorERKS4_.exit.thread94, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_14TypeSourceInfoEEET_RN4llvm5ErrorERKS4_.exit
  %.1.i41101 = phi ptr [ %i.am, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_14TypeSourceInfoEEET_RN4llvm5ErrorERKS4_.exit.thread94 ], [ null, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_14TypeSourceInfoEEET_RN4llvm5ErrorERKS4_.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i16 = load i64, ptr %i.ao, align 8, !tbaa !157 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9381, !nonnull !161, !align !162 ; 2 uses
  %.sroa.028.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.copyload.i16 to i32
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i16, 32
  %.sroa.2.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !9382
  call void @_ZN5clang11ASTImporter6ImportENS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.81") align 8 %8, ptr noundef nonnull align 8 dereferenceable(280400) %i.ap, i32 %.sroa.028.0.extract.trunc.i.i.i), !noalias !9382
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !noalias !9382
  %i.as = trunc i8 %i.ar to i1
  br i1 %i.as, label %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.i.i.i, label %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.thread.i.i.i

_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.thread.i.i.i: ; preds = %bb.g
  %i.at = load i32, ptr %8, align 8, !tbaa !157, !noalias !9382
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !9382
  %i.au = zext i32 %i.at to i64
  br label %_ZN4llvm5ErrorD2Ev.exit7.i.i.i

_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.i.i.i: ; preds = %bb.g
  %i.av = load i64, ptr %8, align 8, !tbaa !165, !noalias !9383 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !9382
  %.not.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit7.i.i.i, label %.thread

_ZN4llvm5ErrorD2Ev.exit7.i.i.i:                   ; preds = %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.i.i.i, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.thread.i.i.i
  %.sroa.027.031.i.i.i = phi i64 [ %i.au, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.thread.i.i.i ], [ 0, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !9384
  call void @_ZN5clang11ASTImporter6ImportENS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.81") align 8 %7, ptr noundef nonnull align 8 dereferenceable(280400) %i.ap, i32 %.sroa.2.0.extract.trunc.i.i.i), !noalias !9384
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = load i8, ptr %i.aw, align 8, !noalias !9384
  %i.ay = trunc i8 %i.ax to i1
  br i1 %i.ay, label %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.i.i.i, label %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.thread.i.i.i

_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.thread.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit7.i.i.i
  %i.az = load i32, ptr %7, align 8, !tbaa !157, !noalias !9384
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !9384
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw i64 %i.ba, 32
  %i.bc = or disjoint i64 %i.bb, %.sroa.027.031.i.i.i
  br label %_ZN5clang15ASTNodeImporter13importCheckedINS_11SourceRangeEEET_RN4llvm5ErrorERKS3_.exit

_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit7.i.i.i
  %i.bd = load i64, ptr %7, align 8, !tbaa !165, !noalias !9385 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !9384
  %.not37.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not37.i.i.i, label %_ZN5clang15ASTNodeImporter13importCheckedINS_11SourceRangeEEET_RN4llvm5ErrorERKS3_.exit, label %.thread

.thread:                                          ; preds = %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.i.i.i, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.i.i.i, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit, %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_14TypeSourceInfoEEET_RN4llvm5ErrorERKS4_.exit
  %.in = phi i64 [ %i.an, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_14TypeSourceInfoEEET_RN4llvm5ErrorERKS4_.exit ], [ %i.h, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit ], [ %i.af, %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit ], [ %i.av, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.i.i.i ], [ %i.bd, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.i.i.i ]
  %i.be = inttoptr i64 %.in to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8
  %i.bh = or i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 8
  store ptr %i.be, ptr %0, align 8, !tbaa !165, !alias.scope !9386
  br label %_ZN4llvm5ErrorD2Ev.exit20

_ZN5clang15ASTNodeImporter13importCheckedINS_11SourceRangeEEET_RN4llvm5ErrorERKS3_.exit: ; preds = %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.i.i.i, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.thread.i.i.i
  %.sroa.6.1.i.ph = phi i64 [ %.sroa.027.031.i.i.i, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.i.i.i ], [ %i.bc, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.thread.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1219 ; 5 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bl, ptr %9, align 8, !tbaa !122
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.bm, align 8, !tbaa !123
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 8, ptr %i.bn, align 4, !tbaa !124
  %i.bo = icmp eq i32 %i.bj, 0
  br i1 %i.bo, label %_ZN4llvm5ErrorD2Ev.exit19, label %bb.h

bb.h:                                             ; preds = %_ZN5clang15ASTNodeImporter13importCheckedINS_11SourceRangeEEET_RN4llvm5ErrorERKS3_.exit
  %i.bp = icmp ugt i32 %i.bj, 8
  br i1 %i.bp, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i: ; preds = %bb.h
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.bl, i64 noundef %i.bk, i64 noundef 8) #22
  %.pre.i.i.i = load i32, ptr %i.bm, align 8, !tbaa !123 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bj, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEC2Em.exit, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !122
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.h
  %i.bq = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.bl, %bb.h ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.h ] ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %.pre-phi.i.i3.i
  %i.bs = sub nsw i64 %i.bk, %.pre-phi.i.i3.i
  %i.bt = shl nsw i64 %i.bs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.br, i8 0, i64 %i.bt, i1 false), !tbaa !189
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEC2Em.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEC2Em.exit: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i, %.lr.ph.preheader.i.i.i
  store i32 %i.bj, ptr %i.bm, align 8, !tbaa !123
  %.pre = load i32, ptr %i.bi, align 8, !tbaa !1219 ; 2 uses
  %i.bu = zext i32 %.pre to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = load i16, ptr %2, align 8
  %i.bx = and i16 %i.bw, 511
  %.not.i.i.i17 = icmp eq i16 %i.bx, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i17, i64 48, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.v.i.i.i ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv
  %.not3841.i = icmp eq i32 %.pre, 0
  br i1 %.not3841.i, label %_ZN4llvm5ErrorD2Ev.exit19, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEC2Em.exit
  %.pre30 = load ptr, ptr %9, align 8, !tbaa !122, !noalias !9387
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit.i, %.lr.ph.i
  %.0344.i = phi ptr [ %.pre30, %.lr.ph.i ], [ %i.ch, %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit.i ] ; 2 uses
  %.sroa.019.043.i = phi ptr [ %i.by, %.lr.ph.i ], [ %i.cg, %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit.i ] ; 2 uses
  %i.cb = load ptr, ptr %.sroa.019.043.i, align 8, !tbaa !191, !noalias !9388
  %i.cc = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9389, !nonnull !161, !align !162
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !9390
  call void @_ZN5clang11ASTImporter6ImportEPNS_4StmtE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.822") align 8 %3, ptr noundef nonnull align 8 dereferenceable(280400) %i.cc, ptr noundef %i.cb), !noalias !9390, !inline_history !9369
  %i.cd = load i8, ptr %i.ca, align 8, !noalias !9390
  %i.ce = trunc i8 %i.cd to i1
  br i1 %i.ce, label %_ZN5clang15ASTNodeImporter18ImportArrayCheckedINS_4Stmt12CastIteratorINS_4ExprEPS4_PS2_EEPS5_EEN4llvm5ErrorET_SB_T0_.exit, label %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit.i

_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit.i:     ; preds = %bb.i
  %i.cf = load ptr, ptr %3, align 8, !tbaa !191, !noalias !9390
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !9390
  store ptr %i.cf, ptr %.0344.i, align 8, !tbaa !189, !noalias !9388
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.019.043.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0344.i, i64 8
  %.not38.i = icmp eq ptr %i.cg, %i.bz
  br i1 %.not38.i, label %_ZN4llvm5ErrorD2Ev.exit19, label %bb.i, !llvm.loop !66

_ZN5clang15ASTNodeImporter18ImportArrayCheckedINS_4Stmt12CastIteratorINS_4ExprEPS4_PS2_EEPS5_EEN4llvm5ErrorET_SB_T0_.exit: ; preds = %bb.i
  %i.ci = load i64, ptr %3, align 8, !tbaa !165, !noalias !9391 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !9390
  %.not29 = icmp eq i64 %i.ci, 0
  br i1 %.not29, label %_ZN4llvm5ErrorD2Ev.exit19, label %_ZN4llvm5ErrorD2Ev.exit18

_ZN4llvm5ErrorD2Ev.exit18:                        ; preds = %_ZN5clang15ASTNodeImporter18ImportArrayCheckedINS_4Stmt12CastIteratorINS_4ExprEPS4_PS2_EEPS5_EEN4llvm5ErrorET_SB_T0_.exit
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8
  %i.cm = or i8 %i.cl, 1
  store i8 %i.cm, ptr %i.ck, align 8
  br label %bb.j

_ZN4llvm5ErrorD2Ev.exit19:                        ; preds = %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit.i, %_ZN5clang15ASTNodeImporter13importCheckedINS_11SourceRangeEEET_RN4llvm5ErrorERKS3_.exit, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEC2Em.exit, %_ZN5clang15ASTNodeImporter18ImportArrayCheckedINS_4Stmt12CastIteratorINS_4ExprEPS4_PS2_EEPS5_EEN4llvm5ErrorET_SB_T0_.exit
  %i.cn = load ptr, ptr %1, align 8, !tbaa !160, !nonnull !161, !align !162
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 280136
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !231, !nonnull !161, !align !162
  %i.cq = load ptr, ptr %9, align 8, !tbaa !122
  %i.cr = load i32, ptr %i.bm, align 8, !tbaa !123
  %i.cs = zext i32 %i.cr to i64
  %i.ct = load i32, ptr %2, align 8
  %i.cu = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %i.cv = shufflevector <4 x i32> %i.cu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cw = and <4 x i32> %i.cv, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.cx = icmp ne <4 x i32> %i.cw, zeroinitializer ; 4 uses
  %i.cy = extractelement <4 x i1> %i.cx, i64 0
  %i.cz = extractelement <4 x i1> %i.cx, i64 1
  %i.da = extractelement <4 x i1> %i.cx, i64 2
  %i.db = extractelement <4 x i1> %i.cx, i64 3
  %i.dc = call noundef ptr @_ZN5clang22CXXTemporaryObjectExpr6CreateERKNS_10ASTContextEPNS_18CXXConstructorDeclENS_8QualTypeEPNS_14TypeSourceInfoEN4llvm8ArrayRefIPNS_4ExprEEENS_11SourceRangeEbbbb(ptr noundef nonnull align 8 dereferenceable(23904) %i.cp, ptr noundef %i.i, i64 %.sroa.06.1.i81, ptr noundef %.1.i41101, ptr %i.cq, i64 %i.cs, i64 %.sroa.6.1.i.ph, i1 noundef zeroext %i.db, i1 noundef zeroext %i.da, i1 noundef zeroext %i.cz, i1 noundef zeroext %i.cy) #22
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 8
  %i.df = and i8 %i.de, -2
  store i8 %i.df, ptr %i.dd, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit18, %_ZN4llvm5ErrorD2Ev.exit19
  %.sink = phi ptr [ %i.dc, %_ZN4llvm5ErrorD2Ev.exit19 ], [ %i.cj, %_ZN4llvm5ErrorD2Ev.exit18 ]
  store ptr %.sink, ptr %0, align 8, !tbaa !232
  %i.dg = load ptr, ptr %9, align 8, !tbaa !122   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.bl
  br i1 %i.dh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.dg) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_ZN4llvm5ErrorD2Ev.exit20

_ZN4llvm5ErrorD2Ev.exit20:                        ; preds = %bb.l, %.thread
  ret void
}

declare noundef ptr @_ZN5clang22CXXTemporaryObjectExpr6CreateERKNS_10ASTContextEPNS_18CXXConstructorDeclENS_8QualTypeEPNS_14TypeSourceInfoEN4llvm8ArrayRefIPNS_4ExprEEENS_11SourceRangeEbbbb(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, i64, ptr noundef, ptr, i64, i64, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang15ASTNodeImporter34VisitLifetimeExtendedTemporaryDeclEPNS_29LifetimeExtendedTemporaryDeclE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.511") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Expected.511", align 8 ; 7 uses
  %4 = alloca %"class.llvm::Expected.822", align 8 ; 7 uses
  %5 = alloca %"class.llvm::Expected.733", align 8 ; 7 uses
  %6 = alloca %"class.llvm::Expected.733", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !9412
  %i.e = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9412, !nonnull !161, !align !162
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !9412 ; 3 uses
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !810, !noalias !9412
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i

_ZN5clang4Decl14getDeclContextEv.exit.i:          ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.l, %bb.c ]
  call void @_ZN5clang11ASTImporter13ImportContextEPNS_11DeclContextE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.733") align 8 %5, ptr noundef nonnull align 8 dereferenceable(280400) %i.e, ptr noundef %.0.i.i), !noalias !9412
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i8, ptr %i.m, align 8, !noalias !9412
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i
  %i.p = load ptr, ptr %5, align 8, !tbaa !838, !noalias !9412 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i9.i = load i64, ptr %i.f, align 8, !noalias !9412 ; 2 uses
  %i.q = and i64 %.0.copyload.i.i.i.i.i.i.i9.i, 4
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN5clang15ASTNodeImporter17ImportDeclContextEPNS_4DeclERPNS_11DeclContextES5_.exit.thread, label %_ZN5clang4Decl21getLexicalDeclContextEv.exit.thread.i

_ZN5clang4Decl21getLexicalDeclContextEv.exit.thread.i: ; preds = %bb.d
  %i.s = and i64 %.0.copyload.i.i.i.i.i.i.i9.i, -5
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !810, !noalias !9412
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !839, !noalias !9412 ; 2 uses
  %.not31.i = icmp eq ptr %i.u, %i.w
  br i1 %.not31.i, label %_ZN5clang15ASTNodeImporter17ImportDeclContextEPNS_4DeclERPNS_11DeclContextES5_.exit.thread, label %_ZN5clang4Decl21getLexicalDeclContextEv.exit16.i

_ZN5clang4Decl21getLexicalDeclContextEv.exit16.i: ; preds = %_ZN5clang4Decl21getLexicalDeclContextEv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !9412
  %i.x = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9412, !nonnull !161, !align !162
  call void @_ZN5clang11ASTImporter13ImportContextEPNS_11DeclContextE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.733") align 8 %6, ptr noundef nonnull align 8 dereferenceable(280400) %i.x, ptr noundef %i.w), !noalias !9412
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load i8, ptr %i.y, align 8, !noalias !9412
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %_ZN4llvm8ExpectedIPN5clang11DeclContextEED2Ev.exit.thread.i, label %_ZN4llvm8ExpectedIPN5clang11DeclContextEED2Ev.exit.i

_ZN4llvm8ExpectedIPN5clang11DeclContextEED2Ev.exit.thread.i: ; preds = %_ZN5clang4Decl21getLexicalDeclContextEv.exit16.i
  %i.ab = load i64, ptr %6, align 8, !tbaa !165, !noalias !9413
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !9412
  br label %_ZN5clang15ASTNodeImporter17ImportDeclContextEPNS_4DeclERPNS_11DeclContextES5_.exit

_ZN4llvm8ExpectedIPN5clang11DeclContextEED2Ev.exit.i: ; preds = %_ZN5clang4Decl21getLexicalDeclContextEv.exit16.i
  %i.ac = load ptr, ptr %6, align 8, !tbaa !838, !noalias !9412
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !9412
  br label %_ZN5clang15ASTNodeImporter17ImportDeclContextEPNS_4DeclERPNS_11DeclContextES5_.exit.thread

bb.e:                                             ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i
  %i.ad = load i64, ptr %5, align 8, !tbaa !165, !noalias !9414
  br label %_ZN5clang15ASTNodeImporter17ImportDeclContextEPNS_4DeclERPNS_11DeclContextES5_.exit

_ZN5clang15ASTNodeImporter17ImportDeclContextEPNS_4DeclERPNS_11DeclContextES5_.exit.thread: ; preds = %bb.d, %_ZN5clang4Decl21getLexicalDeclContextEv.exit.thread.i, %_ZN4llvm8ExpectedIPN5clang11DeclContextEED2Ev.exit.i
  %.1.ph = phi ptr [ %i.p, %bb.d ], [ %i.p, %_ZN5clang4Decl21getLexicalDeclContextEv.exit.thread.i ], [ %i.ac, %_ZN4llvm8ExpectedIPN5clang11DeclContextEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !9412
  br label %bb.f

_ZN5clang15ASTNodeImporter17ImportDeclContextEPNS_4DeclERPNS_11DeclContextES5_.exit: ; preds = %_ZN4llvm8ExpectedIPN5clang11DeclContextEED2Ev.exit.thread.i, %bb.e
  %.sroa.018.0.in = phi i64 [ %i.ad, %bb.e ], [ %i.ab, %_ZN4llvm8ExpectedIPN5clang11DeclContextEED2Ev.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !9412
  %.not = icmp eq i64 %.sroa.018.0.in, 0
  br i1 %.not, label %bb.f, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN5clang15ASTNodeImporter17ImportDeclContextEPNS_4DeclERPNS_11DeclContextES5_.exit
  %.sroa.018.0 = inttoptr i64 %.sroa.018.0.in to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = or i8 %i.af, 1
  store i8 %i.ag, ptr %i.ae, align 8
  store ptr %.sroa.018.0, ptr %0, align 8, !tbaa !165, !alias.scope !9415
  br label %bb.k

bb.f:                                             ; preds = %_ZN5clang15ASTNodeImporter17ImportDeclContextEPNS_4DeclERPNS_11DeclContextES5_.exit, %_ZN5clang15ASTNodeImporter17ImportDeclContextEPNS_4DeclERPNS_11DeclContextES5_.exit.thread
  %.126 = phi ptr [ %.1.ph, %_ZN5clang15ASTNodeImporter17ImportDeclContextEPNS_4DeclERPNS_11DeclContextES5_.exit.thread ], [ undef, %_ZN5clang15ASTNodeImporter17ImportDeclContextEPNS_4DeclERPNS_11DeclContextES5_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1221
  %i.aj = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9416, !nonnull !161, !align !162
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !9417
  call void @_ZN5clang11ASTImporter6ImportEPNS_4StmtE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.822") align 8 %4, ptr noundef nonnull align 8 dereferenceable(280400) %i.aj, ptr noundef %i.ai), !noalias !9417, !inline_history !22
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !noalias !9417
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %_ZN5clang15ASTNodeImporter13importCheckedIPNS_4ExprEEET_RN4llvm5ErrorERKS4_.exit, label %_ZN5clang15ASTNodeImporter13importCheckedIPNS_4ExprEEET_RN4llvm5ErrorERKS4_.exit.thread

_ZN5clang15ASTNodeImporter13importCheckedIPNS_4ExprEEET_RN4llvm5ErrorERKS4_.exit.thread: ; preds = %bb.f
  %i.an = load ptr, ptr %4, align 8, !tbaa !191, !noalias !9417
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !9417
  store ptr %i.an, ptr %i.a, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  br label %bb.g

_ZN5clang15ASTNodeImporter13importCheckedIPNS_4ExprEEET_RN4llvm5ErrorERKS4_.exit: ; preds = %bb.f
  %i.ao = load i64, ptr %4, align 8, !tbaa !165, !noalias !9418 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !9417
  store ptr null, ptr %i.a, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %bb.g, label %_ZN5clang15ASTNodeImporter13importCheckedIPNS_9ValueDeclEEET_RN4llvm5ErrorERKS4_.exit.thread

bb.g:                                             ; preds = %_ZN5clang15ASTNodeImporter13importCheckedIPNS_4ExprEEET_RN4llvm5ErrorERKS4_.exit.thread, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_4ExprEEET_RN4llvm5ErrorERKS4_.exit
end_hunk_0
begin_hunk_1_@_ZN5clang15ASTNodeImporter21VisitCXXConstructExprEPNS_16CXXConstructExprE:bb.a
  call void @_ZN5clang11ASTImporter6ImportEPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.1462") align 8 %5, ptr noundef nonnull align 8 dereferenceable(280400) %i.b, ptr noundef %i.f), !noalias !9692, !inline_history !753
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i8, ptr %i.g, align 8, !noalias !9692
  %i.i = trunc i8 %i.h to i1
  br i1 %i.i, label %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 280136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !231, !noalias !9692, !nonnull !161, !align !162
  %i.l = load ptr, ptr %5, align 8, !tbaa !240, !noalias !9692 ; 2 uses
  %i.m = and i64 %.sroa.0.0.copyload.i, 8
  %.not.i.i.i46 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i46, label %_ZNK5clang8QualType18getLocalQualifiersEv.exit.thread.i.i, label %_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i

_ZNK5clang8QualType18getLocalQualifiersEv.exit.thread.i.i: ; preds = %bb.c
  %i.n = and i64 %.sroa.0.0.copyload.i, 7
  br label %bb.d

_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !119, !noalias !9692 ; 2 uses
  %i.p = and i64 %.sroa.0.0.copyload.i, 7
  %i.q = or i64 %.sroa.0.0.copyload.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i, 7
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i, %_ZNK5clang8QualType18getLocalQualifiersEv.exit.thread.i.i
  %i.s = phi i64 [ %i.n, %_ZNK5clang8QualType18getLocalQualifiersEv.exit.thread.i.i ], [ %i.q, %_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i ]
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = and i64 %i.t, -8
  %i.v = or disjoint i64 %i.s, %i.u
  br label %_ZN5clang11ASTImporter6ImportENS_8QualTypeE.exit.i.thread65

bb.e:                                             ; preds = %_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i
  %i.w = tail call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %i.k, ptr noundef %i.l, i64 %i.q) #22, !noalias !9692, !inline_history !753
  br label %_ZN5clang11ASTImporter6ImportENS_8QualTypeE.exit.i.thread65

_ZN5clang11ASTImporter6ImportENS_8QualTypeE.exit.i.thread65: ; preds = %bb.e, %bb.d
  %.sink.i.i.ph = phi i64 [ %i.v, %bb.d ], [ %i.w, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !9692
  br label %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit.thread

_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit: ; preds = %bb.b
  %i.x = load i64, ptr %5, align 8, !tbaa !165, !noalias !9693 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !9692
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit.thread, label %.thread

_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit.thread: ; preds = %bb.a, %_ZN5clang11ASTImporter6ImportENS_8QualTypeE.exit.i.thread65, %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit
  %.sroa.06.08.i4774 = phi i64 [ 0, %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit ], [ %.sink.i.i.ph, %_ZN5clang11ASTImporter6ImportENS_8QualTypeE.exit.i.thread65 ], [ 0, %bb.a ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.y, align 4, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.z = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9694, !nonnull !161, !align !162
  call void @_ZN5clang11ASTImporter6ImportENS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.81") align 8 %8, ptr noundef nonnull align 8 dereferenceable(280400) %i.z, i32 %.sroa.0.0.copyload.i20)
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %_ZN5clang15ASTNodeImporter13importCheckedINS_14SourceLocationEEET_RN4llvm5ErrorERKS3_.exit, label %_ZN5clang15ASTNodeImporter13importCheckedINS_14SourceLocationEEET_RN4llvm5ErrorERKS3_.exit.thread81

_ZN5clang15ASTNodeImporter13importCheckedINS_14SourceLocationEEET_RN4llvm5ErrorERKS3_.exit.thread81: ; preds = %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit.thread
  %i.ad = load i32, ptr %8, align 8, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.f

_ZN5clang15ASTNodeImporter13importCheckedINS_14SourceLocationEEET_RN4llvm5ErrorERKS3_.exit: ; preds = %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit.thread
  %i.ae = load i64, ptr %8, align 8, !tbaa !165, !noalias !9695 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %.not.i48 = icmp eq i64 %i.ae, 0
  br i1 %.not.i48, label %bb.f, label %.thread

bb.f:                                             ; preds = %_ZN5clang15ASTNodeImporter13importCheckedINS_14SourceLocationEEET_RN4llvm5ErrorERKS3_.exit.thread81, %_ZN5clang15ASTNodeImporter13importCheckedINS_14SourceLocationEEET_RN4llvm5ErrorERKS3_.exit
  %.sroa.06.08.i86 = phi i32 [ %i.ad, %_ZN5clang15ASTNodeImporter13importCheckedINS_14SourceLocationEEET_RN4llvm5ErrorERKS3_.exit.thread81 ], [ 0, %_ZN5clang15ASTNodeImporter13importCheckedINS_14SourceLocationEEET_RN4llvm5ErrorERKS3_.exit ]
  %.in = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load ptr, ptr %.in, align 8, !tbaa !1218
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !9696
  %i.ag = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9696, !nonnull !161, !align !162
  call void @_ZN5clang11ASTImporter6ImportEPNS_4DeclE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.511") align 8 %4, ptr noundef nonnull align 8 dereferenceable(280400) %i.ag, ptr noundef %i.af), !noalias !9696, !inline_history !47
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !noalias !9696
  %i.aj = trunc i8 %i.ai to i1
  br i1 %i.aj, label %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit, label %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit.thread95

_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit.thread95: ; preds = %bb.f
  %i.ak = load ptr, ptr %4, align 8, !tbaa !139, !noalias !9696
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !9696
  br label %bb.g

_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit: ; preds = %bb.f
  %i.al = load i64, ptr %4, align 8, !tbaa !165, !noalias !9697 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !9696
  %.not.i22 = icmp eq i64 %i.al, 0
  br i1 %.not.i22, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit.thread95, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit
  %.1.i104 = phi ptr [ %i.ak, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit.thread95 ], [ null, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i21 = load i64, ptr %i.am, align 8, !tbaa !157 ; 2 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9698, !nonnull !161, !align !162 ; 2 uses
  %.sroa.028.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.copyload.i21 to i32
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i21, 32
  %.sroa.2.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !9699
  call void @_ZN5clang11ASTImporter6ImportENS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.81") align 8 %7, ptr noundef nonnull align 8 dereferenceable(280400) %i.an, i32 %.sroa.028.0.extract.trunc.i.i.i), !noalias !9699
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !noalias !9699
  %i.aq = trunc i8 %i.ap to i1
  br i1 %i.aq, label %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.i.i.i, label %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.thread.i.i.i

_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.thread.i.i.i: ; preds = %bb.g
  %i.ar = load i32, ptr %7, align 8, !tbaa !157, !noalias !9699
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !9699
  %i.as = zext i32 %i.ar to i64
  br label %_ZN4llvm5ErrorD2Ev.exit7.i.i.i

_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.i.i.i: ; preds = %bb.g
  %i.at = load i64, ptr %7, align 8, !tbaa !165, !noalias !9700 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !9699
  %.not.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit7.i.i.i, label %.thread

_ZN4llvm5ErrorD2Ev.exit7.i.i.i:                   ; preds = %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.i.i.i, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.thread.i.i.i
  %.sroa.027.031.i.i.i = phi i64 [ %i.as, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.thread.i.i.i ], [ 0, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !9701
  call void @_ZN5clang11ASTImporter6ImportENS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.81") align 8 %6, ptr noundef nonnull align 8 dereferenceable(280400) %i.an, i32 %.sroa.2.0.extract.trunc.i.i.i), !noalias !9701
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = load i8, ptr %i.au, align 8, !noalias !9701
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.i.i.i, label %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.thread.i.i.i

_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.thread.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit7.i.i.i
  %i.ax = load i32, ptr %6, align 8, !tbaa !157, !noalias !9701
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !9701
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw i64 %i.ay, 32
  %i.ba = or disjoint i64 %i.az, %.sroa.027.031.i.i.i
  br label %_ZN5clang15ASTNodeImporter13importCheckedINS_11SourceRangeEEET_RN4llvm5ErrorERKS3_.exit

_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit7.i.i.i
  %i.bb = load i64, ptr %6, align 8, !tbaa !165, !noalias !9702 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !9701
  %.not37.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not37.i.i.i, label %_ZN5clang15ASTNodeImporter13importCheckedINS_11SourceRangeEEET_RN4llvm5ErrorERKS3_.exit, label %.thread

.thread:                                          ; preds = %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.i.i.i, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.i.i.i, %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit, %_ZN5clang15ASTNodeImporter13importCheckedINS_14SourceLocationEEET_RN4llvm5ErrorERKS3_.exit, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit
  %.in107 = phi i64 [ %i.al, %_ZN5clang15ASTNodeImporter13importCheckedIPNS_18CXXConstructorDeclEEET_RN4llvm5ErrorERKS4_.exit ], [ %i.x, %_ZN5clang15ASTNodeImporter13importCheckedINS_8QualTypeEEET_RN4llvm5ErrorERKS3_.exit ], [ %i.ae, %_ZN5clang15ASTNodeImporter13importCheckedINS_14SourceLocationEEET_RN4llvm5ErrorERKS3_.exit ], [ %i.at, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit.i.i.i ], [ %i.bb, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.i.i.i ]
  %i.bc = inttoptr i64 %.in107 to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = or i8 %i.be, 1
  store i8 %i.bf, ptr %i.bd, align 8
  store ptr %i.bc, ptr %0, align 8, !tbaa !165, !alias.scope !9703
  br label %_ZN4llvm5ErrorD2Ev.exit27

_ZN5clang15ASTNodeImporter13importCheckedINS_11SourceRangeEEET_RN4llvm5ErrorERKS3_.exit: ; preds = %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.i.i.i, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.thread.i.i.i
  %.sroa.6.1.i.ph = phi i64 [ %.sroa.027.031.i.i.i, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.i.i.i ], [ %i.ba, %_ZN5clang11ASTImporter10importIntoINS_14SourceLocationEEEN4llvm5ErrorERT_RKS5_.exit13.thread.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1219 ; 5 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bj, ptr %9, align 8, !tbaa !122
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.bk, align 8, !tbaa !123
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 6, ptr %i.bl, align 4, !tbaa !124
  %i.bm = icmp eq i32 %i.bh, 0
  br i1 %i.bm, label %_ZN4llvm5ErrorD2Ev.exit26, label %bb.h

bb.h:                                             ; preds = %_ZN5clang15ASTNodeImporter13importCheckedINS_11SourceRangeEEET_RN4llvm5ErrorERKS3_.exit
  %i.bn = icmp ugt i32 %i.bh, 6
  br i1 %i.bn, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i: ; preds = %bb.h
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.bj, i64 noundef %i.bi, i64 noundef 8) #22
  %.pre.i.i.i = load i32, ptr %i.bk, align 8, !tbaa !123 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bh, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj6EEC2Em.exit, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !122
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.h
  %i.bo = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.bj, %bb.h ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.h ] ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %.pre-phi.i.i3.i
  %i.bq = sub nsw i64 %i.bi, %.pre-phi.i.i3.i
  %i.br = shl nsw i64 %i.bq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bp, i8 0, i64 %i.br, i1 false), !tbaa !189
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj6EEC2Em.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj6EEC2Em.exit: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i, %.lr.ph.preheader.i.i.i
  store i32 %i.bh, ptr %i.bk, align 8, !tbaa !123
  %.pre = load i32, ptr %i.bg, align 8, !tbaa !1219 ; 2 uses
  %i.bs = zext i32 %.pre to i64
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = load i16, ptr %2, align 8
  %i.bv = and i16 %i.bu, 511
  %.not.i.i.i24 = icmp eq i16 %i.bv, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i24, i64 48, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.v.i.i.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bt
  %.not3841.i = icmp eq i32 %.pre, 0
  br i1 %.not3841.i, label %_ZN4llvm5ErrorD2Ev.exit26, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj6EEC2Em.exit
  %.pre38 = load ptr, ptr %9, align 8, !tbaa !122, !noalias !9704
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit.i, %.lr.ph.i
  %.0344.i = phi ptr [ %.pre38, %.lr.ph.i ], [ %i.cf, %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit.i ] ; 2 uses
  %.sroa.019.043.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %i.ce, %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit.i ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.019.043.i, align 8, !tbaa !191, !noalias !9705
  %i.ca = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9706, !nonnull !161, !align !162
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !9707
  call void @_ZN5clang11ASTImporter6ImportEPNS_4StmtE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.822") align 8 %3, ptr noundef nonnull align 8 dereferenceable(280400) %i.ca, ptr noundef %i.bz), !noalias !9707, !inline_history !9688
  %i.cb = load i8, ptr %i.by, align 8, !noalias !9707
  %i.cc = trunc i8 %i.cb to i1
  br i1 %i.cc, label %_ZN5clang15ASTNodeImporter18ImportArrayCheckedINS_4Stmt12CastIteratorINS_4ExprEPS4_PS2_EEPS5_EEN4llvm5ErrorET_SB_T0_.exit, label %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit.i

_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit.i:     ; preds = %bb.i
  %i.cd = load ptr, ptr %3, align 8, !tbaa !191, !noalias !9707
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !9707
  store ptr %i.cd, ptr %.0344.i, align 8, !tbaa !189, !noalias !9705
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.019.043.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0344.i, i64 8
  %.not38.i = icmp eq ptr %i.ce, %i.bx
  br i1 %.not38.i, label %_ZN4llvm5ErrorD2Ev.exit26, label %bb.i, !llvm.loop !66

_ZN5clang15ASTNodeImporter18ImportArrayCheckedINS_4Stmt12CastIteratorINS_4ExprEPS4_PS2_EEPS5_EEN4llvm5ErrorET_SB_T0_.exit: ; preds = %bb.i
  %i.cg = load i64, ptr %3, align 8, !tbaa !165, !noalias !9708 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !9707
  %.not36 = icmp eq i64 %i.cg, 0
  br i1 %.not36, label %_ZN4llvm5ErrorD2Ev.exit26, label %_ZN4llvm5ErrorD2Ev.exit25

_ZN4llvm5ErrorD2Ev.exit25:                        ; preds = %_ZN5clang15ASTNodeImporter18ImportArrayCheckedINS_4Stmt12CastIteratorINS_4ExprEPS4_PS2_EEPS5_EEN4llvm5ErrorET_SB_T0_.exit
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8
  %i.ck = or i8 %i.cj, 1
  store i8 %i.ck, ptr %i.ci, align 8
  br label %bb.j

_ZN4llvm5ErrorD2Ev.exit26:                        ; preds = %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit.i, %_ZN5clang15ASTNodeImporter13importCheckedINS_11SourceRangeEEET_RN4llvm5ErrorERKS3_.exit, %_ZN4llvm11SmallVectorIPN5clang4ExprELj6EEC2Em.exit, %_ZN5clang15ASTNodeImporter18ImportArrayCheckedINS_4Stmt12CastIteratorINS_4ExprEPS4_PS2_EEPS5_EEN4llvm5ErrorET_SB_T0_.exit
  %i.cl = load ptr, ptr %1, align 8, !tbaa !160, !nonnull !161, !align !162
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 280136
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !231, !nonnull !161, !align !162
  %i.co = load i32, ptr %2, align 8               ; 3 uses
  %i.cp = and i32 %i.co, 524288
  %i.cq = icmp ne i32 %i.cp, 0
  %i.cr = load ptr, ptr %9, align 8, !tbaa !122
  store ptr %i.cr, ptr %10, align 8, !tbaa !1200
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ct = load i32, ptr %i.bk, align 8, !tbaa !123
  %i.cu = zext i32 %i.ct to i64
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !1201
  %i.cv = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %i.cw = shufflevector <4 x i32> %i.cv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cx = and <4 x i32> %i.cw, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.cy = icmp ne <4 x i32> %i.cx, zeroinitializer ; 4 uses
  %i.cz = lshr i32 %i.co, 24
  %i.da = and i32 %i.cz, 7
  %i.db = extractelement <4 x i1> %i.cy, i64 0
  %i.dc = extractelement <4 x i1> %i.cy, i64 1
  %i.dd = extractelement <4 x i1> %i.cy, i64 2
  %i.de = extractelement <4 x i1> %i.cy, i64 3
  %i.df = call noundef ptr @_ZN5clang16CXXConstructExpr6CreateERKNS_10ASTContextENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.cn, i64 %.sroa.06.08.i4774, i32 %.sroa.06.08.i86, ptr noundef %.1.i104, i1 noundef zeroext %i.cq, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1160") align 8 %10, i1 noundef zeroext %i.de, i1 noundef zeroext %i.dd, i1 noundef zeroext %i.dc, i1 noundef zeroext %i.db, i32 noundef %i.da, i64 %.sroa.6.1.i.ph) #22 ; 3 uses
  %i.dg = load i32, ptr %2, align 8
  %i.dh = and i32 %i.dg, 134217728
  %i.di = load i32, ptr %i.df, align 8
  %i.dj = and i32 %i.di, -134217729
  %i.dk = or disjoint i32 %i.dj, %i.dh
  store i32 %i.dk, ptr %i.df, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 8
  %i.dn = and i8 %i.dm, -2
  store i8 %i.dn, ptr %i.dl, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit25, %_ZN4llvm5ErrorD2Ev.exit26
  %.sink = phi ptr [ %i.df, %_ZN4llvm5ErrorD2Ev.exit26 ], [ %i.ch, %_ZN4llvm5ErrorD2Ev.exit25 ]
  store ptr %.sink, ptr %0, align 8, !tbaa !232
  %i.do = load ptr, ptr %9, align 8, !tbaa !122   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.bj
  br i1 %i.dp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.do) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_ZN4llvm5ErrorD2Ev.exit27

_ZN4llvm5ErrorD2Ev.exit27:                        ; preds = %bb.l, %.thread
  ret void
}

declare noundef ptr @_ZN5clang16CXXConstructExpr6CreateERKNS_10ASTContextENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(23904), i64, i32, ptr noundef, i1 noundef zeroext, ptr noundef byval(%"class.llvm::ArrayRef.1160") align 8, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang15ASTNodeImporter21VisitExprWithCleanupsEPNS_16ExprWithCleanupsE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.822") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Expected.822", align 8 ; 7 uses
  %4 = alloca %"class.llvm::Expected.822", align 8 ; 7 uses
  %5 = alloca %"class.llvm::SmallVector.1302", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1210
  %i.c = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9735, !nonnull !161, !align !162
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !9736
  call void @_ZN5clang11ASTImporter6ImportEPNS_4StmtE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.822") align 8 %4, ptr noundef nonnull align 8 dereferenceable(280400) %i.c, ptr noundef %i.b), !noalias !9736, !inline_history !6
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i8, ptr %i.d, align 8, !noalias !9736
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %.thread78, label %bb.b

.thread78:                                        ; preds = %bb.a
  %i.g = load i64, ptr %4, align 8, !tbaa !165, !noalias !9737
  %i.h = inttoptr i64 %i.g to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !9736
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = or i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 8
  store ptr %i.h, ptr %0, align 8, !tbaa !165, !alias.scope !9738
  br label %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %4, align 8, !tbaa !191, !noalias !9736
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !9736
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.m = load i32, ptr %2, align 8                ; 3 uses
  %i.n = lshr i32 %i.m, 20                        ; 5 uses
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !122
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.q, align 8, !tbaa !123
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 8, ptr %i.r, align 4, !tbaa !124
  %i.s = icmp eq i32 %i.n, 0
  br i1 %i.s, label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEELj8EEC2Em.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = icmp ugt i32 %i.m, 9437183
  br i1 %i.t, label %_ZN4llvm15SmallVectorImplINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEEE7reserveEm.exit.i.i.i: ; preds = %bb.c
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull %i.p, i64 noundef %i.o, i64 noundef 8) #22
  %.pre.i.i.i = load i32, ptr %i.q, align 8, !tbaa !123 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.n, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEEE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !122
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.c
  %i.u = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.p, %bb.c ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.c ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %.pre-phi.i.i3.i
  %i.w = sub nsw i64 %i.o, %.pre-phi.i.i3.i
  %i.x = shl nsw i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.x, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEEE7reserveEm.exit.i.i.i
  store i32 %i.n, ptr %i.q, align 8, !tbaa !123
  %.pre = load i32, ptr %2, align 8
  %.pre90.pre = load ptr, ptr %5, align 8, !tbaa !122
  br label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEELj8EEC2Em.exit

_ZN4llvm11SmallVectorINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEELj8EEC2Em.exit: ; preds = %bb.b, %.sink.split.i.i.i
  %.pre90 = phi ptr [ %i.p, %bb.b ], [ %.pre90.pre, %.sink.split.i.i.i ] ; 2 uses
  %i.y = phi i32 [ %i.m, %bb.b ], [ %.pre, %.sink.split.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.aa = lshr i32 %i.y, 17
  %i.ab = and i32 %i.aa, 32760                    ; 2 uses
  %.idx = zext nneg i32 %i.ab to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  %.not.i64 = icmp eq i32 %i.ab, 0
  br i1 %.not.i64, label %_ZN4llvm5ErrorD2Ev.exit7, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEELj8EEC2Em.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvm8ExpectedINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEEE9takeErrorEv.exit.i
  %.07.i66 = phi ptr [ %.pre90, %.lr.ph ], [ %i.at, %_ZN4llvm8ExpectedINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEEE9takeErrorEv.exit.i ] ; 2 uses
  %.08.i65 = phi ptr [ %i.z, %.lr.ph ], [ %i.as, %_ZN4llvm8ExpectedINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEEE9takeErrorEv.exit.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.08.i65, align 8, !noalias !9739 ; 2 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.ae, 0
  %i.af = and i64 %.sroa.0.0.copyload.i.i, -5     ; 2 uses
  %.not24.i = icmp eq i64 %i.af, 0
  %.not.i82 = or i1 %.not.i.i.i.i.i, %.not24.i
  br i1 %.not.i82, label %_ZN4llvm5ErrorD2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %1, align 8, !tbaa !160, !noalias !9739, !nonnull !161, !align !162
  %i.ah = inttoptr i64 %i.af to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !9740
  call void @_ZN5clang11ASTImporter6ImportEPNS_4StmtE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.822") align 8 %3, ptr noundef nonnull align 8 dereferenceable(280400) %i.ag, ptr noundef nonnull %i.ah), !noalias !9740, !inline_history !9725
  %i.ai = load i8, ptr %i.ad, align 8, !noalias !9740
  %i.aj = trunc i8 %i.ai to i1
  br i1 %i.aj, label %.critedge.i, label %_ZN4llvm8ExpectedINS_12PointerUnionIJPN5clang9BlockDeclEPNS2_19CompoundLiteralExprEEEEE9takeErrorEv.exit.i

.critedge.i:                                      ; preds = %bb.e
  %i.ak = load i64, ptr %3, align 8, !tbaa !165, !noalias !9741 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !9740
  %.not.i.i5.i = icmp eq i64 %i.ak, 0
end_hunk_1

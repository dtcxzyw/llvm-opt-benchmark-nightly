Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDeclAttr?download=true
inline.NumInlined: 13074
inline.NumDeleted: 6077
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5clanglsImEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_:bb.a
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  store i8 3, ptr %i.n, align 1, !tbaa !69
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !83   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i8, ptr %i.o, align 8, !tbaa !97    ; 2 uses
  %i.r = add i8 %i.q, 1
  store i8 %i.r, ptr %i.o, align 8, !tbaa !97
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.s
  store i64 %i.e, ptr %i.t, align 8, !tbaa !74
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.w = load i8, ptr %i.v, align 4, !tbaa !99, !range !78, !noundef !79
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111 ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(168) %i.aa) #23, !inline_history !0
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.af = phi ptr [ %i.ae, %bb.e ], [ null, %bb.d ]
  store ptr %i.af, ptr %2, align 8, !tbaa !115
  %i.ag = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.ai = load i32, ptr %i.u, align 8, !tbaa !66
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.an = load i64, ptr %1, align 8, !tbaa !74
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsImEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !84
  %i.ar = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.aq) ; 2 uses
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !83
  br label %_ZNK5clang17PartialDiagnosticlsImEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsImEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.as = phi ptr [ %i.ar, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ao, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.as, align 8, !tbaa !97
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  store i8 3, ptr %i.aw, align 1, !tbaa !69
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !83 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ax, align 8, !tbaa !97  ; 2 uses
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ax, align 8, !tbaa !97
  %i.bb = zext i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  store i64 %i.an, ptr %i.bc, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsImEERKS0_RKT_.exit, %_ZN5clanglsImEERKNS_8SemaBase20ImmediateDiagBuilderES4_RKT_.exit
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK5clang4Expr21isIntegerConstantExprERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #4

declare void @_ZN5clang4Decl7addAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZnwmRKN5clang10ASTContextEm(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2632 ; 3 uses
  %i.b = and i64 %2, 4294967295
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 false)
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = sub nsw i8 63, %i.d                      ; 3 uses
  %i.f = add i64 %0, 7
  %i.g = and i64 %i.f, -8                         ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !838
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = zext nneg i8 %i.e to i64
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = icmp ugt i8 %i.e, 3
  %i.m = add i64 %i.k, -1
  %i.n = add i64 %i.m, %i.i
  %i.o = sub i64 0, %i.k
  %i.p = and i64 %i.n, %i.o
  %.011.i.i.i = select i1 %i.l, i64 %i.p, i64 %i.i ; 2 uses
  %i.q = add i64 %.011.i.i.i, %i.g                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2640
  %i.s = load i64, ptr %i.r, align 8, !tbaa !839
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.b, label %bb.c, !prof !840

bb.b:                                             ; preds = %bb.a
  %i.u = inttoptr i64 %i.q to ptr
  store ptr %i.u, ptr %i.a, align 8, !tbaa !838
  %i.v = inttoptr i64 %.011.i.i.i to ptr
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

bb.c:                                             ; preds = %bb.a
  %i.w = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %0, i64 noundef %i.g, i8 %i.e)
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.v, %bb.b ], [ %i.w, %bb.c ]
  ret ptr %.0.i.i.i
}

declare void @_ZN5clang17AssumeAlignedAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoEPNS_4ExprES7_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema17AddAllocAlignAttrEPNS_4DeclERKNS_19AttributeCommonInfoEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %5 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %6 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %7 = alloca %"class.clang::ParamIdx", align 4   ; 7 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %9 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.0.1.in.i = select i1 %.not.not.i, ptr %i.b, ptr %i.c
  %.sroa.0.1.i = load i64, ptr %.sroa.0.1.in.i, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 8, !tbaa !66
  %i.e = tail call noundef zeroext i1 @_ZN5clang4Sema22isValidPointerAttrTypeENS_8QualTypeEb(ptr nonnull align 8 poison, i64 %.sroa.0.1.i, i1 noundef zeroext true)
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 %.sroa.0.0.copyload.i.i, i32 noundef 6784) #23
  %i.g = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_19AttributeCommonInfoEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(36) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.h = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 127                        ; 2 uses
  %i.l = add nsw i32 %i.k, -41
  %i.m = icmp ult i32 %i.l, -6
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i64 @_ZNK5clang12FunctionDecl24getReturnTypeSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #23 ; 2 uses
  %.sroa.5.0.extract.shift.i = and i64 %i.n, -4294967296
  br label %_ZN5clang36getFunctionOrMethodResultSourceRangeEPKNS_4DeclE.exit

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.k, 20
  br i1 %.not, label %bb.e, label %_ZN5clang36getFunctionOrMethodResultSourceRangeEPKNS_4DeclE.exit

bb.e:                                             ; preds = %bb.d
  %i.o = call i64 @_ZNK5clang14ObjCMethodDecl24getReturnTypeSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(136) %1) #23 ; 2 uses
  %.sroa.5.0.extract.shift12.i = and i64 %i.o, -4294967296
  br label %_ZN5clang36getFunctionOrMethodResultSourceRangeEPKNS_4DeclE.exit

_ZN5clang36getFunctionOrMethodResultSourceRangeEPKNS_4DeclE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.5.2.i = phi i64 [ %.sroa.5.0.extract.shift.i, %bb.c ], [ %.sroa.5.0.extract.shift12.i, %bb.e ], [ 0, %bb.d ]
  %.sroa.0.2.i = phi i64 [ %i.n, %bb.c ], [ %i.o, %bb.e ], [ 0, %bb.d ]
  %.sroa.0.0.insert.ext.i = and i64 %.sroa.0.2.i, 4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, %.sroa.5.2.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %6, align 8
  %i.p = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 4 dereferenceable(8) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i32 0, ptr %7, align 4
  %i.q = call noundef zeroext i1 @_ZN5clang4Sema35checkFunctionOrMethodParameterIndexINS_19AttributeCommonInfoEEEbPKNS_4DeclERKT_jPKNS_4ExprERNS_8ParamIdxEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 1, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %7, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.q, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %7, align 4                ; 2 uses
  %i.s = and i32 %i.r, 1073741823
  %10 = add nsw i32 %i.s, -1
  %11 = shl i32 %i.r, 1
  %12 = ashr i32 %11, 31
  %i.t = add nsw i32 %10, %12                     ; 2 uses
  %i.u = call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i22 = icmp eq ptr %i.u, null
  br i1 %.not.not.i22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 127
  %i.ab = icmp eq i32 %i.aa, 9
  %i.ac = zext i32 %i.t to i64                    ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !857
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !859
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !864
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ac
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !859
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit: ; preds = %bb.h, %bb.j, %bb.k
  %.sroa.0.2.in.i = phi ptr [ %i.am, %bb.k ], [ %i.ah, %bb.j ], [ %i.x, %bb.h ]
  %.sroa.0.2.i23 = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !69
  %i.an = and i64 %.sroa.0.2.i23, -16
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !144 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 17
  %i.ar = load i16, ptr %i.aq, align 1
  %i.as = and i16 %i.ar, 4
  %.not28 = icmp eq i16 %i.as, 0
  br i1 %.not28, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !832, !nonnull !79, !align !833
  %i.av = call noundef zeroext i1 @_ZNK5clang4Type14isIntegralTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(23904) %i.au) #23
  br i1 %i.av, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.ao, align 16, !tbaa !144
  %i.ax = call noundef zeroext i1 @_ZNK5clang4Type11isAlignValTEv(ptr noundef nonnull align 16 dereferenceable(24) %i.aw) #23
  br i1 %i.ax, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i32 %i.az, i32 noundef 3196) #23
  %i.ba = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_19AttributeCommonInfoEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 8 dereferenceable(36) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.bb = load i32, ptr %7, align 4               ; 2 uses
  %i.bc = and i32 %i.bb, 1073741823
  %13 = add nsw i32 %i.bc, -1
  %14 = shl i32 %i.bb, 1
  %15 = ashr i32 %14, 31
  %i.bd = add nsw i32 %13, %15
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !885
  %i.bg = zext i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !859 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !113
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(104) %i.bi) #22
  store i64 %i.bm, ptr %9, align 8
  %i.bn = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ba, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.l, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !832, !nonnull !79, !align !833 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2632 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !838 ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = add i64 %i.bs, 48                       ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 2640
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !839
  %i.bw = icmp ult i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.p, label %bb.q, !prof !840

bb.p:                                             ; preds = %bb.o
  %i.bx = inttoptr i64 %i.bt to ptr
  store ptr %i.bx, ptr %i.bq, align 8, !tbaa !838
  br label %_ZnwmRKN5clang10ASTContextEm.exit

bb.q:                                             ; preds = %bb.o
  %i.by = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bq, i64 noundef 48, i64 noundef 48, i8 3)
  %.pre = load ptr, ptr %i.bo, align 8, !tbaa !832
  br label %_ZnwmRKN5clang10ASTContextEm.exit

_ZnwmRKN5clang10ASTContextEm.exit:                ; preds = %bb.p, %bb.q
  %i.bz = phi ptr [ %i.bp, %bb.p ], [ %.pre, %bb.q ]
  %.0.i.i.i.i = phi ptr [ %i.br, %bb.p ], [ %i.by, %bb.q ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %7, align 4, !tbaa !69
  call void @_ZN5clang14AllocAlignAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxE(ptr noundef nonnull align 8 dereferenceable(44) %.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %i.bz, ptr noundef nonnull align 8 dereferenceable(36) %2, i32 %.sroa.0.0.copyload) #23
  call void @_ZN5clang4Decl7addAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull %.0.i.i.i.i) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %_ZnwmRKN5clang10ASTContextEm.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5clang36getFunctionOrMethodResultSourceRangeEPKNS_4DeclE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang4Sema35checkFunctionOrMethodParameterIndexINS_19AttributeCommonInfoEEEbPKNS_4DeclERKT_jPKNS_4ExprERNS_8ParamIdxEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %8 = alloca %"class.std::optional.686", align 8 ; 10 uses
  %9 = alloca %"class.std::optional.686", align 8 ; 10 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %15 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !66
  %i.f = tail call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i8, ptr %i.g, align 16
  %i.i = icmp eq i8 %i.h, 24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = and i32 %i.k, 127                        ; 2 uses
  %i.m = icmp eq i32 %i.l, 20
  %i.n = icmp eq i32 %i.l, 9
  %spec.select.i = or i1 %i.m, %i.n
  br label %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit

_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit:     ; preds = %bb.b, %bb.c
  %i.o = phi i32 [ %.pre, %bb.b ], [ %i.k, %bb.c ]
  %.1.i = phi i1 [ %i.i, %bb.b ], [ %spec.select.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.q = and i32 %i.o, 124
  %i.r = icmp eq i32 %i.q, 36
  br i1 %i.r, label %bb.d, label %_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit

bb.d:                                             ; preds = %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit
  %i.s = tail call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isImplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #23
  br label %_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit

_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit: ; preds = %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit, %bb.d
  %.04.i = phi i1 [ %i.s, %bb.d ], [ false, %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit ] ; 2 uses
  br i1 %.1.i, label %bb.e, label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

bb.e:                                             ; preds = %_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit
  %i.t = tail call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i47 = icmp eq ptr %i.t, null
  br i1 %.not.not.i47, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 16
  %i.w = and i64 %i.v, 2147483648
  %i.x = icmp ne i64 %i.w, 0
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.p, align 4
  %i.z = and i32 %i.y, 127
  %i.aa = icmp eq i32 %i.z, 9
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = and i16 %i.ac, 8192
  %i.ae = icmp ne i16 %i.ad, 0
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load i24, ptr %i.af, align 8
  %i.ah = and i24 %i.ag, 262144
  %i.ai = icmp ne i24 %i.ah, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.2.i = phi i1 [ %i.ai, %bb.i ], [ %i.ae, %bb.h ], [ %i.x, %bb.f ]
  %i.aj = and i1 %7, %.2.i                        ; 3 uses
  %i.ak = tail call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i48 = icmp eq ptr %i.ak, null
  br i1 %.not.not.i48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 16
  %i.an = lshr i64 %i.am, 48
  %i.ao = trunc nuw nsw i64 %i.an to i32
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.p, align 4
  %i.aq = and i32 %i.ap, 127
  %i.ar = icmp eq i32 %i.aq, 9
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = load i32, ptr %i.as, align 8, !tbaa !886
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

bb.n:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = load i32, ptr %i.au, align 8, !tbaa !887
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit: ; preds = %bb.n, %bb.m, %bb.k, %_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit
  %or.cond357 = phi i1 [ false, %_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit ], [ %i.aj, %bb.k ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ]
  %i.aw = phi i32 [ 0, %_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit ], [ %i.ao, %bb.k ], [ %i.at, %bb.m ], [ %i.av, %bb.n ]
  %i.ax = zext i1 %.04.i to i32
  %i.ay = add i32 %i.aw, %i.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store i8 0, ptr %i.az, align 8, !tbaa !157
  %i.ba = load i24, ptr %4, align 8
  %i.bb = and i24 %i.ba, 65536
  %.not = icmp eq i24 %i.bb, 0
  br i1 %.not, label %bb.o, label %.critedge.thread

bb.o:                                             ; preds = %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !832, !nonnull !79, !align !833
  call void @_ZNK5clang4Expr22getIntegerConstantExprERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.686") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bd) #23
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !range !78
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !835 ; 3 uses
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !835
  %i.bk = load i64, ptr %9, align 8               ; 2 uses
  store i64 %i.bk, ptr %8, align 8
end_hunk_0
begin_hunk_1_@_ZL16handleFormatAttrRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrE:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i39 = load i32, ptr %i.aq, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i32 %.sroa.0.0.copyload.i.i39, i32 noundef 3169) #23
  %i.ar = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(80) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 3, ptr %i.b, align 4, !tbaa !66
  %i.as = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.at = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #22
  store i64 %i.at, ptr %8, align 8
  %i.au = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.as, ptr noundef nonnull align 4 dereferenceable(8) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.av = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.aw = load i32, ptr %i.am, align 8, !tbaa !1561
  %i.ax = add i32 %i.aw, 1
  call void @_ZNSt7__cxx119to_stringEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i32 noundef %i.ax) #23
  %i.ay = load ptr, ptr %10, align 8, !tbaa !121
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !132
  call void @_ZN5clang9FixItHint17CreateReplacementENS_15CharSourceRangeEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.clang::FixItHint") align 8 %9, i64 %i.av, i8 1, ptr %i.ay, i64 %i.ba)
  %i.bb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_9FixItHintEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.au, ptr noundef nonnull align 8 dereferenceable(57) %9) ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !121 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZN5clang9FixItHintD2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %bb.i
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !69
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #24
  br label %_ZN5clang9FixItHintD2Ev.exit42

_ZN5clang9FixItHintD2Ev.exit42:                   ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  %i.bi = load ptr, ptr %10, align 8, !tbaa !121  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5clang9FixItHintD2Ev.exit42
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !69
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5clang9FixItHintD2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.n

bb.j:                                             ; preds = %.split45, %.split, %_ZN5clang26isFunctionOrMethodVariadicEPKNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.bo, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i32 %.sroa.0.0.copyload.i, i32 noundef 7170) #23
  %i.bp = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %11, ptr noundef nonnull align 8 dereferenceable(80) %2) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !66  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !1562
  %.not35 = icmp ugt i32 %i.bq, %i.bs
  br i1 %.not35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i43 = load i32, ptr %i.bt, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i32 %.sroa.0.0.copyload.i.i43, i32 noundef 3169) #23
  %i.bu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 8 dereferenceable(80) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 3, ptr %i.c, align 4, !tbaa !66
  %i.bv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.bw = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #22
  store i64 %i.bw, ptr %13, align 8
  %i.bx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bv, ptr noundef nonnull align 4 dereferenceable(8) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.c
  %i.by = phi i32 [ %i.bq, %bb.j ], [ %i.al, %bb.h ], [ 0, %bb.c ]
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1563
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1562
  %i.cd = call noundef ptr @_ZN5clang4Sema15mergeFormatAttrEPNS_4DeclERKNS_19AttributeCommonInfoEPKNS_14IdentifierInfoEii(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.ca, i32 noundef %i.cc, i32 noundef %i.by) ; 2 uses
  %.not37 = icmp eq ptr %i.cd, null
  br i1 %.not37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5clang4Decl7addAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull %i.cd) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.b, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5clang9FixItHintD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL23handleFormatMatchesAttrRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.FormatAttrCommon, align 8   ; 5 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %5 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = call fastcc noundef zeroext i1 @_ZL22handleFormatAttrCommonRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrEP16FormatAttrCommon(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3)
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.sroa.0.0.copyload.i.i, -3
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22 ; 4 uses
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 511
  %.not = icmp eq i16 %i.g, 9
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1563
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.k, align 8, !tbaa !129
  %i.n = and i64 %i.m, 4294967295
  %i.o = call noundef i32 @_ZN5clang4Sema19GetFormatStringTypeEN4llvm9StringRefE(ptr nonnull %i.l, i64 %i.n) #23
  %i.p = call noundef zeroext i1 @_ZN5clang4Sema20ValidateFormatStringENS_16FormatStringTypeEPKNS_13StringLiteralE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef %i.o, ptr noundef nonnull %i.e) #23
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !1563
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1562
  %i.t = call noundef ptr @_ZN5clang4Sema22mergeFormatMatchesAttrEPNS_4DeclERKNS_19AttributeCommonInfoEPKNS_14IdentifierInfoEiPNS_13StringLiteralE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.q, i32 noundef %i.s, ptr noundef nonnull %i.e) ; 2 uses
  %.not22 = icmp eq ptr %i.t, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5clang4Decl7addAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull %i.t) #23
  br label %bb.f

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i23 = load i32, ptr %i.v, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i32 %.sroa.0.0.copyload.i.i23, i32 noundef 3893) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.w = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #22
  store i64 %i.w, ptr %5, align 8
  %i.x = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 4 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %.critedge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL19handleFormatArgAttrRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.clang::ParamIdx", align 4   ; 6 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %5 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %6 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %9 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.sroa.0.0.copyload.i.i, -3
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 0, ptr %3, align 4
  %i.e = call noundef zeroext i1 @_ZN5clang4Sema35checkFunctionOrMethodParameterIndexINS_10ParsedAttrEEEbPKNS_4DeclERKT_jPKNS_4ExprERNS_8ParamIdxEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef 1, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.e, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %3, align 4                ; 2 uses
  %i.g = and i32 %i.f, 1073741823
  %10 = add nsw i32 %i.g, -1
  %11 = shl i32 %i.f, 1
  %12 = ashr i32 %11, 31
  %i.h = add nsw i32 %10, %12                     ; 2 uses
  %i.i = call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i = icmp eq ptr %i.i, null
  br i1 %.not.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 127
  %i.p = icmp eq i32 %i.o, 9
  %i.q = zext i32 %i.h to i64                     ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !857
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !859
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !864
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.q
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !859
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.sroa.0.2.in.i = phi ptr [ %i.aa, %bb.f ], [ %i.v, %bb.e ], [ %i.l, %bb.c ]
  %.sroa.0.2.i = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !69 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1491
  %i.ad = call noundef zeroext i1 @_ZN5clang8SemaObjC14isNSStringTypeENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(328) %i.ac, i64 %.sroa.0.2.i, i1 noundef zeroext false) #23 ; 2 uses
  br i1 %i.ad, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1491
  %i.af = call noundef zeroext i1 @_ZN5clang8SemaObjC14isCFStringTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(328) %i.ae, i64 %.sroa.0.2.i) #23
  br i1 %i.af, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = and i64 %.sroa.0.2.i, -16
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !144 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !69
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !144
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i8, ptr %i.an, align 16
  %i.ap = icmp eq i8 %i.ao, 40
  br i1 %i.ap, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ar = load i8, ptr %i.aq, align 16
  %.not.i = icmp eq i8 %i.ar, 40
  br i1 %.not.i, label %_ZNK5clang4Type6castAsINS_11PointerTypeEEEPKT_v.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ai) #23
  br label %_ZNK5clang4Type6castAsINS_11PointerTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_11PointerTypeEEEPKT_v.exit: ; preds = %bb.i, %bb.j
  %.1.i = phi ptr [ %i.as, %bb.j ], [ %i.ai, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.at, align 16, !tbaa !69
  %i.au = and i64 %.sroa.0.0.copyload.i, -16
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !144
  %i.ax = call noundef zeroext i1 @_ZNK5clang4Type10isCharTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.aw) #23
  br i1 %i.ax, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %bb.h, %_ZNK5clang4Type6castAsINS_11PointerTypeEEEPKT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i51 = load i32, ptr %i.az, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i32 %.sroa.0.0.copyload.i.i51, i32 noundef 3890) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ba = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #22
  store i64 %i.ba, ptr %5, align 8
  %i.bb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = and i32 %i.bd, 127                      ; 2 uses
  %i.bf = add nsw i32 %i.be, -41
  %i.bg = icmp ult i32 %i.bf, -6
  br i1 %i.bg, label %bb.k, label %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i

bb.k:                                             ; preds = %.critedge2
  switch i32 %i.be, label %_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit [
    i32 20, label %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i
    i32 9, label %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i.fold.split
  ]

_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i.fold.split: ; preds = %bb.k
  br label %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i

_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i: ; preds = %bb.k, %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i.fold.split, %.critedge2
  %.sink35.i.i = phi i64 [ 96, %bb.k ], [ 120, %.critedge2 ], [ 72, %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i.fold.split ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.sink35.i.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1371
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !859 ; 3 uses
  %.not.not.i52 = icmp eq ptr %i.bj, null
  br i1 %.not.not.i52, label %_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !113
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(104) %i.bj) #22, !inline_history !1564
  br label %_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit

_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit: ; preds = %bb.k, %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i, %bb.l
  %.sroa.4.1.i = phi i64 [ %i.bn, %bb.l ], [ 0, %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i ], [ 0, %bb.k ]
  store i64 %.sroa.4.1.i, ptr %6, align 8
  %i.bo = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bb, ptr noundef nonnull align 4 dereferenceable(8) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.y

.critedge:                                        ; preds = %bb.g, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit, %_ZNK5clang4Type6castAsINS_11PointerTypeEEEPKT_v.exit
  %i.bp = call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i53 = icmp eq ptr %i.bp, null
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %.sroa.0.1.in.i = select i1 %.not.not.i53, ptr %i.bq, ptr %i.br
  %.sroa.0.1.i = load i64, ptr %.sroa.0.1.in.i, align 8, !tbaa !69 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !832, !nonnull !79, !align !833 ; 2 uses
  %i.bu = call noundef ptr @_ZN5clang10ASTContext23getObjCInstanceTypeDeclEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.bt) #23
  %i.bv = call i64 @_ZNK5clang10ASTContext14getTypedefTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_15TypedefNameDeclENS_8QualTypeESt8optionalIbE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bt, i32 noundef 6, i64 0, ptr noundef %i.bu, i64 0, i16 0) #23
  %i.bw = and i64 %i.bv, -16
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !144
  %i.bz = and i64 %.sroa.0.1.i, -16
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load ptr, ptr %i.ca, align 16, !tbaa !144
  %i.cc = call noundef ptr @_ZNK5clang4Type5getAsINS_11TypedefTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.cb) #23
  %i.cd = icmp eq ptr %i.cc, %i.by
  br i1 %i.cd, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.critedge
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = and i32 %i.cf, 127
  %.not = icmp eq i32 %i.cg, 20
  br i1 %.not, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ch = call noundef ptr @_ZN5clang14ObjCMethodDecl17getClassInterfaceEv(ptr noundef nonnull align 8 dereferenceable(136) %1) #23 ; 2 uses
  %.not48 = icmp eq ptr %i.ch, null
  br i1 %.not48, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !832, !nonnull !79, !align !833
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 104
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1986
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = and i64 %i.cl, -8
  %i.cn = call i64 @_ZNK5clang10ASTContext24getObjCObjectPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ci, i64 %i.cm) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %.critedge
  %.sroa.079.0 = phi i64 [ %.sroa.0.1.i, %bb.m ], [ %.sroa.0.1.i, %bb.n ], [ %i.cn, %bb.o ], [ %.sroa.0.1.i, %.critedge ] ; 3 uses
  %i.co = load ptr, ptr %i.ab, align 8, !tbaa !1491
  %i.cp = call noundef zeroext i1 @_ZN5clang8SemaObjC14isNSStringTypeENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(328) %i.co, i64 %.sroa.079.0, i1 noundef zeroext true) #23
  br i1 %i.cp, label %.critedge4, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr %i.ab, align 8, !tbaa !1491
  %i.cr = call noundef zeroext i1 @_ZN5clang8SemaObjC14isCFStringTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(328) %i.cq, i64 %.sroa.079.0) #23
  br i1 %i.cr, label %.critedge4, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = and i64 %.sroa.079.0, -16
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load ptr, ptr %i.ct, align 16, !tbaa !144 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.0.0.copyload.i.i.i.i56 = load i64, ptr %i.cv, align 8, !tbaa !69
  %i.cw = and i64 %.sroa.0.0.copyload.i.i.i.i56, -16
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load ptr, ptr %i.cx, align 16, !tbaa !144
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load i8, ptr %i.cz, align 16
  %i.db = icmp eq i8 %i.da, 40
  br i1 %i.db, label %bb.s, label %.critedge6

end_hunk_1
begin_hunk_2_@_ZL18handleRestrictAttrRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrE:bb.a
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i90 = load i32, ptr %i.bb, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 %.sroa.0.0.copyload.i.i90, i32 noundef 3258) #23
  %i.bc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(80) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !66
  %i.bd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.critedge84

bb.n:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.0.0.copyload.i.i91 = load i64, ptr %i.be, align 8
  %i.bf = and i64 %.sroa.0.0.copyload.i.i91, -3
  %i.bg = inttoptr i64 %i.bf to ptr               ; 8 uses
  %i.bh = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #22 ; 5 uses
  %i.bi = load i16, ptr %i.bg, align 8
  %i.bj = and i16 %i.bi, 511
  switch i16 %i.bj, label %bb.t [
    i16 73, label %bb.o
    i16 24, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1569 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = and i32 %i.bn, 127
  %i.bp = add nsw i32 %i.bo, -41
  %i.bq = icmp ult i32 %i.bp, -6
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %.sroa.0.0.copyload.i.i93 = load i64, ptr %i.br, align 8, !tbaa !74, !noalias !1993 ; 2 uses
  %.not82129 = icmp eq ptr %i.bl, null
  %.not82 = or i1 %.not82129, %i.bq
  br i1 %.not82, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i32 %i.bh, i32 noundef 3207) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 1, ptr %i.b, align 4, !tbaa !66
  %i.bt = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 %.sroa.0.0.copyload.i.i93, ptr %7, align 8
  %i.bu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.critedge84

bb.q:                                             ; preds = %bb.n
  %i.bv = tail call noundef ptr @_ZN5clang4Sema43ResolveSingleFunctionTemplateSpecializationEPNS_12OverloadExprEbPNS_14DeclAccessPairEPNS_24TemplateSpecCandidateSetEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.bg, i1 noundef zeroext true, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #23 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.0125.0.copyload = load i64, ptr %i.bw, align 8, !tbaa !74 ; 2 uses
  %.not81 = icmp eq ptr %i.bv, null
  br i1 %.not81, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i32 %i.bh, i32 noundef 3207) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 2, ptr %i.c, align 4, !tbaa !66
  %i.by = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i64 %.sroa.0125.0.copyload, ptr %9, align 8
  %i.bz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.0.0.copyload.i97 = load i64, ptr %i.ca, align 8, !tbaa !69
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !832, !nonnull !79, !align !833
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 19344
  %.sroa.0.0.copyload.i98 = load i64, ptr %i.cd, align 8, !tbaa !69
  %i.ce = icmp eq i64 %.sroa.0.0.copyload.i97, %.sroa.0.0.copyload.i98
  br i1 %i.ce, label %bb.s, label %.critedge84

bb.s:                                             ; preds = %bb.r
  call void @_ZN5clang4Sema25NoteAllOverloadCandidatesEPNS_4ExprENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.bg, i64 0, i1 noundef zeroext false) #23
  br label %.critedge84

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i32 %i.bh, i32 noundef 3207) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.cg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.critedge84

bb.u:                                             ; preds = %bb.q, %bb.o
  %.sroa.0125.0 = phi i64 [ %.sroa.0125.0.copyload, %bb.q ], [ %.sroa.0.0.copyload.i.i93, %bb.o ] ; 2 uses
  %.273 = phi ptr [ %i.bv, %bb.q ], [ %i.bl, %bb.o ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i32 0, ptr %11, align 4
  %i.ch = load i32, ptr %i.ac, align 8
  %i.ci = and i32 %i.ch, 65535
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %.273, i64 28 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = and i32 %i.cl, 124
  %.not132 = icmp eq i32 %i.cm, 36
  br i1 %.not132, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cn = tail call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isImplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %.273) #23
  %i.co = select i1 %i.cn, i32 -1073741823, i32 -2147483647
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cp = phi i32 [ -2147483647, %bb.v ], [ %i.co, %bb.w ] ; 2 uses
  store i32 %i.cp, ptr %11, align 4, !tbaa !69
  %i.cq = tail call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %.273, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i100 = icmp eq ptr %i.cq, null
  br i1 %.not.not.i100, label %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit, label %.split

.split:                                           ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i8, ptr %i.cr, align 16
  %i.ct = icmp eq i8 %i.cs, 24
  br i1 %i.ct, label %bb.y, label %.critedge

_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit:     ; preds = %bb.x
  %i.cu = load i32, ptr %i.ck, align 4
  %i.cv = and i32 %i.cu, 127
  switch i32 %i.cv, label %.critedge [
    i32 20, label %bb.y
    i32 9, label %bb.y
  ]

bb.y:                                             ; preds = %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit, %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit, %.split
  %i.cw = tail call noundef i32 @_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE(ptr noundef nonnull %.273)
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = shl i32 %i.cp, 1
  %i.cz = ashr i32 %i.cy, 31
  %i.da = tail call i64 @_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj(ptr noundef nonnull %.273, i32 noundef %i.cz)
  %i.db = and i64 %i.da, -16
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !69
  %i.df = and i64 %i.de, -16
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load ptr, ptr %i.dg, align 16, !tbaa !144
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.0.0.copyload.i.i.i.i104 = load i64, ptr %i.di, align 8, !tbaa !69
  %i.dj = and i64 %.sroa.0.0.copyload.i.i.i.i104, -16
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load ptr, ptr %i.dk, align 16, !tbaa !144
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i8, ptr %i.dm, align 16
  %i.do = icmp eq i8 %i.dn, 40
  br i1 %i.do, label %bb.ah, label %.critedge

.critedge:                                        ; preds = %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit, %bb.y, %.split, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.dp, i32 %i.bh, i32 noundef 3208) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store i64 %.sroa.0125.0, ptr %13, align 8
  %i.dq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ak

bb.aa:                                            ; preds = %bb.u
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.0.0.copyload.i.i106 = load i64, ptr %i.dr, align 8
  %i.ds = and i64 %.sroa.0.0.copyload.i.i106, -3
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = call noundef zeroext i1 @_ZN5clang4Sema35checkFunctionOrMethodParameterIndexINS_10ParsedAttrEEEbPKNS_4DeclERKT_jPKNS_4ExprERNS_8ParamIdxEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.273, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef 2, ptr noundef %i.dt, ptr noundef nonnull align 4 dereferenceable(4) %11, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.du, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.dv = load i32, ptr %11, align 4              ; 2 uses
  %i.dw = and i32 %i.dv, 1073741823
  %18 = add nsw i32 %i.dw, -1
  %19 = shl i32 %i.dv, 1
  %20 = ashr i32 %19, 31
  %i.dx = add nsw i32 %18, %20                    ; 2 uses
  %i.dy = call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %.273, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i107 = icmp eq ptr %i.dy, null
  br i1 %.not.not.i107, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.ea = zext i32 %i.dx to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ea
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %.273, i64 28
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = and i32 %i.ed, 127
  %i.ef = icmp eq i32 %i.ee, 9
  %i.eg = zext i32 %i.dx to i64                   ; 2 uses
  br i1 %i.ef, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %.273, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !857
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eg
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !859
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.af:                                            ; preds = %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %.273, i64 96
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !864
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.eg
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !859
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit: ; preds = %bb.ac, %bb.ae, %bb.af
  %.sroa.0.2.in.i = phi ptr [ %i.eq, %bb.af ], [ %i.el, %bb.ae ], [ %i.eb, %bb.ac ]
  %.sroa.0.2.i108 = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !69 ; 2 uses
  store i64 %.sroa.0.2.i108, ptr %14, align 8
  %i.er = and i64 %.sroa.0.2.i108, -16
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !69
  %i.ev = and i64 %i.eu, -16
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = load ptr, ptr %i.ew, align 16, !tbaa !144
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.0.0.copyload.i.i.i.i111 = load i64, ptr %i.ey, align 8, !tbaa !69
  %i.ez = and i64 %.sroa.0.0.copyload.i.i.i.i111, -16
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = load ptr, ptr %i.fa, align 16, !tbaa !144
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load i8, ptr %i.fc, align 16
  %i.fe = icmp eq i8 %i.fd, 40
  br i1 %i.fe, label %.critedge86, label %bb.ag

bb.ag:                                            ; preds = %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.ff, i32 %i.bh, i32 noundef 3209) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.fg = load i32, ptr %11, align 4
  %i.fh = and i32 %i.fg, 1073741823
  store i32 %i.fh, ptr %i.e, align 4, !tbaa !66
  %i.fi = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %i.fj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.fi, ptr noundef nonnull align 8 dereferenceable(8) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i64 %.sroa.0125.0, ptr %16, align 8
  %i.fk = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.fj, ptr noundef nonnull align 8 dereferenceable(8) %16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ak

.critedge86:                                      ; preds = %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge86, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i113 = load i32, ptr %i.fm, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.fl, i32 %.sroa.0.0.copyload.i.i113, i32 noundef 6761) #23
  %i.fn = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %17, ptr noundef nonnull align 8 dereferenceable(80) %2) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !832, !nonnull !79, !align !833 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 2632 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !838 ; 2 uses
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = add i64 %i.fs, 56                       ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 2640
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !839
  %i.fw = icmp ult i64 %i.ft, %i.fv
  br i1 %i.fw, label %bb.ai, label %bb.aj, !prof !840

bb.ai:                                            ; preds = %bb.ah
  %i.fx = inttoptr i64 %i.ft to ptr
  store ptr %i.fx, ptr %i.fq, align 8, !tbaa !838
  br label %_ZnwmRKN5clang10ASTContextEm.exit115

bb.aj:                                            ; preds = %bb.ah
  %i.fy = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.fq, i64 noundef 56, i64 noundef 56, i8 3)
  %.pre = load ptr, ptr %i.fo, align 8, !tbaa !832
  br label %_ZnwmRKN5clang10ASTContextEm.exit115

_ZnwmRKN5clang10ASTContextEm.exit115:             ; preds = %bb.ai, %bb.aj
  %i.fz = phi ptr [ %i.fp, %bb.ai ], [ %.pre, %bb.aj ]
  %.0.i.i.i.i114 = phi ptr [ %i.fr, %bb.ai ], [ %i.fy, %bb.aj ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %11, align 4, !tbaa !69
  call void @_ZN5clang12RestrictAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoEPNS_4ExprENS_8ParamIdxE(ptr noundef nonnull align 8 dereferenceable(52) %.0.i.i.i.i114, ptr noundef nonnull align 8 dereferenceable(23904) %i.fz, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.bg, i32 %.sroa.0.0.copyload) #23
  call void @_ZN5clang4Decl7addAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull %.0.i.i.i.i114) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %bb.aa, %_ZnwmRKN5clang10ASTContextEm.exit115, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.critedge84

.critedge84:                                      ; preds = %bb.ak, %bb.p, %bb.s, %bb.t, %bb.r, %bb.m, %_ZnwmRKN5clang10ASTContextEm.exit, %_ZN5clang36getFunctionOrMethodResultSourceRangeEPKNS_4DeclE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL20handleMallocSpanAttrRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.clang::QualType", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = tail call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.0.1.in.i = select i1 %.not.not.i, ptr %i.b, ptr %i.c
  %.sroa.0.1.i = load i64, ptr %.sroa.0.1.in.i, align 8, !tbaa !69
  store i64 %.sroa.0.1.i, ptr %3, align 8
  %i.d = call noundef zeroext i1 @_ZN5clang4Sema17CheckSpanLikeTypeERKNS_19AttributeCommonInfoERKNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !832, !nonnull !79, !align !833 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2632 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !838  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = add i64 %i.i, 40                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2640
  %i.l = load i64, ptr %i.k, align 8, !tbaa !839
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d, !prof !840

bb.c:                                             ; preds = %bb.b
  %i.n = inttoptr i64 %i.j to ptr
  store ptr %i.n, ptr %i.g, align 8, !tbaa !838
  br label %_ZnwmRKN5clang10ASTContextEm.exit

bb.d:                                             ; preds = %bb.b
  %i.o = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 40, i64 noundef 40, i8 3)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !832
  br label %_ZnwmRKN5clang10ASTContextEm.exit

_ZnwmRKN5clang10ASTContextEm.exit:                ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.f, %bb.c ], [ %.pre, %bb.d ]
  %.0.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  tail call void @_ZN5clang14MallocSpanAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoE(ptr noundef nonnull align 8 dereferenceable(39) %.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %i.p, ptr noundef nonnull align 8 dereferenceable(36) %2) #23
  tail call void @_ZN5clang4Decl7addAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull %.0.i.i.i.i) #23
  br label %bb.e

bb.e:                                             ; preds = %_ZnwmRKN5clang10ASTContextEm.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL14handleModeAttrRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 65535
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread, label %_ZNK5clang10ParsedAttr10isArgIdentEj.exit

_ZNK5clang10ParsedAttr10isArgIdentEj.exit:        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8 ; 2 uses
  %i.f = and i64 %.sroa.0.0.copyload.i.i, 2
  %.not11 = icmp eq i64 %i.f, 0
  br i1 %.not11, label %_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread, label %bb.b

_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread: ; preds = %bb.a, %_ZNK5clang10ParsedAttr10isArgIdentEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i9 = load i32, ptr %i.h, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 %.sroa.0.0.copyload.i.i9, i32 noundef 3172) #23
  %i.i = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(80) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
end_hunk_2
begin_hunk_3_@_ZL19handleNonStringAttrRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrE:bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ac, align 16, !tbaa !69
  %i.ad = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !144
  br label %.preheader.i

_ZNK5clang4Type28getPointeeOrArrayElementTypeEv.exit: ; preds = %bb.c, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i, %.thread
  %.0.i = phi ptr [ %i.q, %.thread ], [ %.05.i.i, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i.i ], [ %.05.i.i, %bb.c ]
  %i.ag = tail call noundef zeroext i1 @_ZNK5clang4Type18isAnyCharacterTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %.0.i) #23
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang4Type28getPointeeOrArrayElementTypeEv.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %1, align 8, !tbaa !113
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(33) %1) #22, !inline_history !40
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.al to i32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 %.sroa.0.0.extract.trunc.i, i32 noundef 6773) #23
  %i.am = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(80) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = lshr i32 %i.ao, 25
  %i.aq = trunc nuw nsw i32 %i.ap to i8
  %i.ar = and i8 %i.aq, 1
  store i8 %i.ar, ptr %i.a, align 1, !tbaa !137
  %i.as = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.at = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i13 = load i64, ptr %i.au, align 8
  store i64 %.sroa.0.0.copyload.i13, ptr %5, align 8
  %i.av = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.at, ptr noundef nonnull align 4 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.h

bb.e:                                             ; preds = %_ZNK5clang4Type28getPointeeOrArrayElementTypeEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !832, !nonnull !79, !align !833 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2632 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !838 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = add i64 %i.ba, 40                       ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 2640
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !839
  %i.be = icmp ult i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.f, label %bb.g, !prof !840

bb.f:                                             ; preds = %bb.e
  %i.bf = inttoptr i64 %i.bb to ptr
  store ptr %i.bf, ptr %i.ay, align 8, !tbaa !838
  br label %_ZnwmRKN5clang10ASTContextEm.exit

bb.g:                                             ; preds = %bb.e
  %i.bg = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ay, i64 noundef 40, i64 noundef 40, i8 3)
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !832
  br label %_ZnwmRKN5clang10ASTContextEm.exit

_ZnwmRKN5clang10ASTContextEm.exit:                ; preds = %bb.f, %bb.g
  %i.bh = phi ptr [ %i.ax, %bb.f ], [ %.pre, %bb.g ]
  %.0.i.i.i.i = phi ptr [ %i.az, %bb.f ], [ %i.bg, %bb.g ] ; 2 uses
  tail call void @_ZN5clang13NonStringAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoE(ptr noundef nonnull align 8 dereferenceable(39) %.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %i.bh, ptr noundef nonnull align 8 dereferenceable(36) %2) #23
  tail call void @_ZN5clang4Decl7addAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull %.0.i.i.i.i) #23
  br label %bb.h

bb.h:                                             ; preds = %_ZnwmRKN5clang10ASTContextEm.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL26handleNonNullAttrParameterRN5clang4SemaEPNS_11ParmVarDeclERKNS_10ParsedAttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %4 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 65535
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23
  %.not18 = icmp eq ptr %i.d, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL17handleNonNullAttrRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(80) %2)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.f, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 %.sroa.0.0.copyload.i.i, i32 noundef 6775) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.g = load ptr, ptr %1, align 8, !tbaa !113
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i64 %i.i(ptr noundef nonnull align 8 dereferenceable(104) %1) #22
  store i64 %i.j, ptr %4, align 8
  %i.k = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 4 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !69
  %i.m = load ptr, ptr %1, align 8, !tbaa !113
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i64 %i.o(ptr noundef nonnull align 8 dereferenceable(104) %1) #22
  %i.q = tail call fastcc noundef zeroext i1 @_ZL19attrNonNullArgCheckRN5clang4SemaENS_8QualTypeERKNS_10ParsedAttrENS_11SourceRangeES6_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 0, i64 %i.p, i1 noundef zeroext false)
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !832, !nonnull !79, !align !833 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2632 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !838  ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, 56                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 2640
  %i.y = load i64, ptr %i.x, align 8, !tbaa !839
  %i.z = icmp ult i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %bb.h, !prof !840

bb.g:                                             ; preds = %bb.f
  %i.aa = inttoptr i64 %i.w to ptr
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !838
  br label %_ZnwmRKN5clang10ASTContextEm.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef 56, i64 noundef 56, i8 3)
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !832
  br label %_ZnwmRKN5clang10ASTContextEm.exit

_ZnwmRKN5clang10ASTContextEm.exit:                ; preds = %bb.g, %bb.h
  %i.ac = phi ptr [ %i.s, %bb.g ], [ %.pre, %bb.h ]
  %.0.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.ab, %bb.h ] ; 2 uses
  tail call void @_ZN5clang11NonNullAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoEPNS_8ParamIdxEj(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %i.ac, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef null, i32 noundef 0) #23
  tail call void @_ZN5clang4Decl7addAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull %.0.i.i.i.i) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.c, %bb.d, %_ZnwmRKN5clang10ASTContextEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL17handleNonNullAttrRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.1782", align 8 ; 10 uses
  %4 = alloca %"class.clang::ParamIdx", align 4   ; 9 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !153
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 8, ptr %i.c, align 4, !tbaa !841
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 65535
  %.not69.not = icmp eq i32 %i.f, 0
  br i1 %.not69.not, label %.critedge53.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8
  %i.n = and i64 %.sroa.0.0.copyload.i.i, -3
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 0, ptr %4, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.q = call noundef zeroext i1 @_ZN5clang4Sema35checkFunctionOrMethodParameterIndexINS_10ParsedAttrEEEbPKNS_4DeclERKT_jPKNS_4ExprERNS_8ParamIdxEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %i.p, ptr noundef %i.o, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.q, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %4, align 4                ; 2 uses
  %i.s = and i32 %i.r, 1073741823
  %6 = add nsw i32 %i.s, -1
  %7 = shl i32 %i.r, 1
  %8 = ashr i32 %7, 31
  %i.t = add nsw i32 %6, %8
  %i.u = call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i = icmp eq ptr %i.u, null
  br i1 %.not.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 16
  %i.x = lshr i64 %i.w, 48
  %i.y = trunc nuw nsw i64 %i.x to i32
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.h, align 4
  %i.aa = and i32 %i.z, 127
  %i.ab = icmp eq i32 %i.aa, 9
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.j, align 8, !tbaa !886
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.i, align 8, !tbaa !887
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.2.i = phi i32 [ %i.ad, %bb.g ], [ %i.ac, %bb.f ], [ %i.y, %bb.d ]
  %i.ae = icmp ult i32 %i.t, %.2.i
  br i1 %i.ae, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit
  %i.af = load i32, ptr %4, align 4               ; 2 uses
  %i.ag = and i32 %i.af, 1073741823
  %9 = add nsw i32 %i.ag, -1
  %10 = shl i32 %i.af, 1
  %11 = ashr i32 %10, 31
  %i.ah = add nsw i32 %9, %11                     ; 2 uses
  %i.ai = call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i54 = icmp eq ptr %i.ai, null
  br i1 %.not.not.i54, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = zext i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %.pre = load i32, ptr %i.h, align 4
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i32, ptr %i.h, align 4             ; 3 uses
  %i.an = and i32 %i.am, 127
  %i.ao = icmp eq i32 %i.an, 9
  %i.ap = zext i32 %i.ah to i64                   ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !857
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !859
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.l:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !864
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ap
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !859
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit: ; preds = %bb.i, %bb.k, %bb.l
  %i.ay = phi i32 [ %i.am, %bb.l ], [ %i.am, %bb.k ], [ %.pre, %bb.i ]
  %.sroa.0.2.in.i = phi ptr [ %i.ax, %bb.l ], [ %i.at, %bb.k ], [ %i.al, %bb.i ]
  %.sroa.0.2.i = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !69
  %i.az = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #22
  %i.ba = load i32, ptr %4, align 4               ; 2 uses
  %i.bb = and i32 %i.ba, 1073741823
  %12 = add nsw i32 %i.bb, -1
  %13 = shl i32 %i.ba, 1
  %14 = ashr i32 %13, 31
  %i.bc = add nsw i32 %12, %14
  %i.bd = and i32 %i.ay, 127                      ; 2 uses
  %i.be = add nsw i32 %i.bd, -41
  %i.bf = icmp ult i32 %i.be, -6
  br i1 %i.bf, label %bb.m, label %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i

bb.m:                                             ; preds = %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit
  switch i32 %i.bd, label %_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit [
    i32 20, label %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i
    i32 9, label %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i.fold.split
  ]

_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i.fold.split: ; preds = %bb.m
  br label %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i

_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i: ; preds = %bb.m, %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i.fold.split, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit
  %.sink35.i.i = phi i64 [ 96, %bb.m ], [ 120, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit ], [ 72, %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i.fold.split ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.sink35.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1371
  %i.bi = zext i32 %i.bc to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !859 ; 3 uses
  %.not.not.i55 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i55, label %_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !113
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(104) %i.bk) #22, !inline_history !1564
  br label %_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit

_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit: ; preds = %bb.m, %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i, %bb.n
  %.sroa.4.1.i = phi i64 [ %i.bo, %bb.n ], [ 0, %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i ], [ 0, %bb.m ]
  %i.bp = call fastcc noundef zeroext i1 @_ZL19attrNonNullArgCheckRN5clang4SemaENS_8QualTypeERKNS_10ParsedAttrENS_11SourceRangeES6_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.2.i, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 %i.az, i64 %.sroa.4.1.i, i1 noundef zeroext false)
  br i1 %i.bp, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit, %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit
  %.sroa.012.0.copyload = load i32, ptr %4, align 4, !tbaa !69 ; 2 uses
  %i.bq = load i32, ptr %i.b, align 8, !tbaa !153 ; 2 uses
  %i.br = load i32, ptr %i.c, align 4, !tbaa !841
  %.not.i = icmp ult i32 %i.bq, %i.br
  br i1 %.not.i, label %bb.q, label %bb.p, !prof !840

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang8ParamIdxELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %.sroa.012.0.copyload)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bs = zext i32 %i.bq to i64
  %i.bt = load ptr, ptr %3, align 8, !tbaa !152
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bs
  store i32 %.sroa.012.0.copyload, ptr %i.bu, align 1
  %i.bv = load i32, ptr %i.b, align 8, !tbaa !153
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.b, align 8, !tbaa !153
  br label %bb.r

bb.r:                                             ; preds = %_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bx = load i32, ptr %i.d, align 8
  %i.by = and i32 %i.bx, 65535
  %i.bz = zext nneg i32 %i.by to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.bz
  br i1 %.not, label %bb.b, label %.critedge53, !llvm.loop !1994

bb.s:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.am

.critedge53:                                      ; preds = %bb.r
  %.pre78 = load i32, ptr %i.b, align 8, !tbaa !153 ; 2 uses
  %i.ca = icmp eq i32 %.pre78, 0
  br i1 %i.ca, label %.critedge53.thread, label %.critedge

.critedge53.thread:                               ; preds = %bb.a, %.critedge53
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i57 = load i32, ptr %i.cb, align 8, !tbaa !66
  %i.cc = icmp sgt i32 %.sroa.0.0.copyload.i.i57, -1
  br i1 %i.cc, label %bb.t, label %.critedgethread-pre-split

bb.t:                                             ; preds = %.critedge53.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12616
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !153
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 13768
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !1996
  %i.ch = icmp ugt i32 %i.ce, %i.cg
  br i1 %i.ch, label %.critedgethread-pre-split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i58 = icmp eq ptr %i.ci, null
  br i1 %.not.not.i58, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i64, ptr %i.cj, align 16
  %i.cl = and i64 %i.ck, 2147483648
  %i.cm = icmp ne i64 %i.cl, 0
  br label %_ZN5clang26isFunctionOrMethodVariadicEPKNS_4DeclE.exit

bb.w:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = and i32 %i.co, 127
  %i.cq = icmp eq i32 %i.cp, 9
  br i1 %i.cq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cs = load i16, ptr %i.cr, align 8
  %i.ct = and i16 %i.cs, 8192
  %i.cu = icmp ne i16 %i.ct, 0
  br label %_ZN5clang26isFunctionOrMethodVariadicEPKNS_4DeclE.exit

bb.y:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cw = load i24, ptr %i.cv, align 8
  %i.cx = and i24 %i.cw, 262144
  %i.cy = icmp ne i24 %i.cx, 0
  br label %_ZN5clang26isFunctionOrMethodVariadicEPKNS_4DeclE.exit

_ZN5clang26isFunctionOrMethodVariadicEPKNS_4DeclE.exit: ; preds = %bb.v, %bb.x, %bb.y
  %.2.i59 = phi i1 [ %i.cy, %bb.y ], [ %i.cu, %bb.x ], [ %i.cm, %bb.v ] ; 2 uses
  %i.cz = call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i60 = icmp eq ptr %i.cz, null
  br i1 %.not.not.i60, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN5clang26isFunctionOrMethodVariadicEPKNS_4DeclE.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i64, ptr %i.da, align 16
  %i.dc = lshr i64 %i.db, 48
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit62

bb.aa:                                            ; preds = %_ZN5clang26isFunctionOrMethodVariadicEPKNS_4DeclE.exit
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = and i32 %i.df, 127
  %i.dh = icmp eq i32 %i.dg, 9
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !886
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit62

bb.ac:                                            ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !887
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit62

_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit62: ; preds = %bb.z, %bb.ab, %bb.ac
  %.2.i61 = phi i32 [ %i.dl, %bb.ac ], [ %i.dj, %bb.ab ], [ %i.dd, %bb.z ] ; 2 uses
  %i.dm = icmp eq i32 %.2.i61, 0
  %.not5171 = select i1 %i.dm, i1 true, i1 %.2.i59
  br i1 %.not5171, label %._crit_edge, label %.lr.ph74

.lr.ph74:                                         ; preds = %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit62
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dq = zext i32 %.2.i61 to i64
  br label %bb.ad

._crit_edge:                                      ; preds = %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit66, %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit62
  %.047.lcssa = phi i1 [ %.2.i59, %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit62 ], [ %i.ef, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit66 ]
  br i1 %.047.lcssa, label %.critedgethread-pre-split, label %bb.ai

bb.ad:                                            ; preds = %.lr.ph74, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit66
  %indvars.iv76 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next77, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit66 ] ; 4 uses
  %i.dr = call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i63 = icmp eq ptr %i.dr, null
  br i1 %.not.not.i63, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv76
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit66

bb.af:                                            ; preds = %bb.ad
  %i.du = load i32, ptr %i.dn, align 4
  %i.dv = and i32 %i.du, 127
  %i.dw = icmp eq i32 %i.dv, 9
  br i1 %i.dw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !857
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv76
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !859
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit66

bb.ah:                                            ; preds = %bb.af
  %i.eb = load ptr, ptr %i.do, align 8, !tbaa !864
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv76
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !859
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit66

_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit66: ; preds = %bb.ae, %bb.ag, %bb.ah
end_hunk_3
begin_hunk_4_@_ZL19handleOwnershipAttrRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrE:bb.a
  %.0.i.i.i.i.i = phi ptr [ %i.ct, %bb.m ], [ %i.da, %bb.n ] ; 6 uses
  %i.db = load i64, ptr %.0.i.i.i.i.i, align 8
  %i.dc = and i64 %i.db, -17592186044416
  %i.dd = or disjoint i64 %i.dc, 33553413
  store i64 %i.dd, ptr %.0.i.i.i.i.i, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store i64 0, ptr %i.de, align 8
  store ptr %.0.i.i.i.i.i, ptr %i.ck, align 8, !tbaa !1353
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store ptr %i.cj, ptr %i.df, align 8, !tbaa !127
  br label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit: ; preds = %.critedge, %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %_ZNK4llvm9StringRef9ends_withES0_.exit.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i, %bb.k, %bb.i
  %.sroa.0250.0262 = phi ptr [ %i.cd, %bb.k ], [ %i.cd, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i ], [ %i.cd, %bb.i ], [ %i.bp, %_ZNK4llvm9StringRef9ends_withES0_.exit.i ], [ %i.bp, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %i.bp, %.critedge ] ; 3 uses
  %.sroa.9.0260 = phi i64 [ %i.ce, %bb.k ], [ %i.ce, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i ], [ %i.ce, %bb.i ], [ %i.br, %_ZNK4llvm9StringRef9ends_withES0_.exit.i ], [ %i.br, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %i.br, %.critedge ] ; 5 uses
  %.0121 = phi ptr [ %i.cr, %bb.k ], [ %.0.i.i.i.i.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i ], [ %i.cl, %bb.i ], [ %i.bm, %_ZNK4llvm9StringRef9ends_withES0_.exit.i ], [ %i.bm, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %i.bm, %.critedge ]
  br i1 %i.bi, label %bb.o, label %.critedge130

bb.o:                                             ; preds = %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit
  %i.dg = load i32, ptr %i.q, align 8
  %i.dh = and i32 %i.dg, 65535
  %i.di = icmp eq i32 %i.dh, 1
  br i1 %i.di, label %bb.p, label %.critedge130

bb.p:                                             ; preds = %bb.o
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = and i32 %i.dk, 256
  %.not.i.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i.i, label %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit, label %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i

_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i: ; preds = %bb.p
  %i.dm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #23
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !152 ; 2 uses
  %.pre.i = load i32, ptr %i.dj, align 4
  %.pre4.i = and i32 %.pre.i, 256
  %i.do = icmp eq i32 %.pre4.i, 0
  br i1 %i.do, label %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i
  %i.dp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #23 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !152
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !153
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dt
  br label %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit

_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit: ; preds = %bb.p, %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i, %bb.q
  %i.dv = phi ptr [ %i.dn, %bb.q ], [ %i.dn, %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i ], [ null, %bb.p ]
  %i.dw = phi ptr [ %i.du, %bb.q ], [ null, %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i ], [ null, %bb.p ] ; 5 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.x, %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit
  %.sroa.0247.0 = phi ptr [ %i.dv, %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit ], [ %i.fi, %bb.x ] ; 8 uses
  %i.dx = icmp ult ptr %.sroa.0247.0, %i.dw
  br i1 %i.dx, label %.lr.ph.i.i.i, label %bb.t

.lr.ph.i.i.i:                                     ; preds = %bb.r, %bb.s
  %.sroa.07.1.i.i = phi ptr [ %i.ec, %bb.s ], [ %.sroa.0247.0, %bb.r ] ; 3 uses
  %i.dy = load ptr, ptr %.sroa.07.1.i.i, align 8, !tbaa !155
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 36
  %i.ea = load i16, ptr %i.dz, align 4
  %i.eb = icmp eq i16 %i.ea, 345
  br i1 %i.eb, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i, i64 8 ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %i.ec, %i.dw
  br i1 %.not.i.i.i150, label %.critedge130, label %.lr.ph.i.i.i, !llvm.loop !1997

bb.t:                                             ; preds = %bb.r
  %.not2.i3.i.i = icmp eq ptr %i.dw, %.sroa.0247.0
  br i1 %.not2.i3.i.i, label %.critedge130, label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %bb.t, %bb.u
  %.sroa.0.1.i.i = phi ptr [ %i.eh, %bb.u ], [ %i.dw, %bb.t ] ; 3 uses
  %i.ed = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !155
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  %i.ef = load i16, ptr %i.ee, align 4
  %i.eg = icmp eq i16 %i.ef, 345
  br i1 %i.eg, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i4.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 8 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.eh, %.sroa.0247.0
  br i1 %.not.i5.i.i, label %.critedge130, label %.lr.ph.i4.i.i, !llvm.loop !1997

_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit: ; preds = %.lr.ph.i4.i.i, %.lr.ph.i.i.i
  %.sroa.07.0.i.i = phi ptr [ %.sroa.07.1.i.i, %.lr.ph.i.i.i ], [ %.sroa.0247.0, %.lr.ph.i4.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i, %.lr.ph.i4.i.i ]
  %.not280 = icmp eq ptr %.sroa.07.0.i.i, %.sroa.0.0.i.i
  br i1 %.not280, label %.critedge130, label %bb.v

bb.v:                                             ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit
  %i.ei = load ptr, ptr %.sroa.0247.0, align 8, !tbaa !155 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ek = load i16, ptr %i.ej, align 4
  %i.el = icmp eq i16 %i.ek, 345
  br i1 %i.el, label %_ZNK5clang22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.i.i
  %i.em = phi ptr [ %i.en, %.lr.ph.i.i ], [ %.sroa.0247.0, %bb.v ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !155 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.eq = load i16, ptr %i.ep, align 4
  %i.er = icmp eq i16 %i.eq, 345
  br i1 %i.er, label %_ZNK5clang22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit, label %.lr.ph.i.i, !llvm.loop !1998

_ZNK5clang22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit: ; preds = %.lr.ph.i.i, %bb.v
  %.sroa.0247.1 = phi ptr [ %.sroa.0247.0, %bb.v ], [ %i.en, %.lr.ph.i.i ]
  %i.es = phi ptr [ %i.ei, %bb.v ], [ %i.eo, %.lr.ph.i.i ] ; 4 uses
  %i.et = call noundef i32 @_ZNK5clang13OwnershipAttr10getOwnKindEv(ptr noundef nonnull align 8 dereferenceable(64) %i.es)
  %i.eu = icmp eq i32 %i.et, 1
  br i1 %i.eu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK5clang22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !2004
  %.not = icmp eq i32 %i.ew, 0
  br i1 %.not, label %bb.x, label %.critedge128

.critedge128:                                     ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %.sroa.0.0.copyload.i.i151 = load i64, ptr %i.ey, align 8
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i151 to i32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ex, i32 %.sroa.0.0.extract.trunc.i, i32 noundef 4886) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !2005
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = and i32 %i.fb, 1073741823
  store i32 %i.fc, ptr %i.f, align 4, !tbaa !66
  %i.fd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i32 0, ptr %i.g, align 4, !tbaa !66
  %i.fe = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.fd, ptr noundef nonnull align 4 dereferenceable(4) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i152 = load i32, ptr %i.ff, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.ex, i32 %.sroa.0.0.copyload.i.i152, i32 noundef 6428) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i32 0, ptr %i.h, align 4, !tbaa !66
  %i.fg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store i32 1, ptr %i.i, align 4, !tbaa !66
  %i.fh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.fg, ptr noundef nonnull align 4 dereferenceable(4) %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.cg

bb.x:                                             ; preds = %bb.w, %_ZNK5clang22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0247.1, i64 8
  br label %bb.r

.critedge130:                                     ; preds = %bb.t, %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, %bb.u, %bb.s, %bb.o, %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.fj, ptr %12, align 8, !tbaa !152
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store i32 0, ptr %i.fk, align 8, !tbaa !153
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 8, ptr %i.fl, align 4, !tbaa !841
  %i.fm = load i32, ptr %i.q, align 8
  %i.fn = and i32 %i.fm, 65534
  %.not126343.not = icmp eq i32 %i.fn, 0
  br i1 %.not126343.not, label %_ZN4llvm14array_pod_sortIPN5clang8ParamIdxEEEvT_S4_.exit, label %.lr.ph345

.lr.ph345:                                        ; preds = %.critedge130
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fr = icmp eq i32 %i.ac, 2
  %i.fs = icmp eq i64 %.sroa.9.0260, 0
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph345, %_ZN4llvm23SmallVectorTemplateBaseIN5clang8ParamIdxELb1EE9push_backES2_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph345 ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIN5clang8ParamIdxELb1EE9push_backES2_.exit ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i153 = load i64, ptr %i.ft, align 8
  %i.fu = and i64 %.sroa.0.0.copyload.i.i153, -3
  %i.fv = inttoptr i64 %i.fu to ptr               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store i32 0, ptr %13, align 4
  %i.fw = trunc nuw nsw i64 %indvars.iv to i32
  %i.fx = call noundef zeroext i1 @_ZN5clang4Sema35checkFunctionOrMethodParameterIndexINS_10ParsedAttrEEEbPKNS_4DeclERKT_jPKNS_4ExprERNS_8ParamIdxEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %i.fw, ptr noundef %i.fv, ptr noundef nonnull align 4 dereferenceable(4) %13, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.fx, label %bb.z, label %.critedge138

bb.z:                                             ; preds = %bb.y
  %i.fy = load i32, ptr %13, align 4              ; 2 uses
  %i.fz = and i32 %i.fy, 1073741823
  %23 = add nsw i32 %i.fz, -1
  %24 = shl i32 %i.fy, 1
  %25 = ashr i32 %24, 31
  %i.ga = add nsw i32 %23, %25                    ; 2 uses
  %i.gb = call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i154 = icmp eq ptr %i.gb, null
  br i1 %.not.not.i154, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gd = zext i32 %i.ga to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gd
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.ab:                                            ; preds = %bb.z
  %i.gf = load i32, ptr %i.fo, align 4
  %i.gg = and i32 %i.gf, 127
  %i.gh = icmp eq i32 %i.gg, 9
  %i.gi = zext i32 %i.ga to i64                   ; 2 uses
  br i1 %i.gh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gj = load ptr, ptr %i.fq, align 8, !tbaa !857
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gi
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !859
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.ad:                                            ; preds = %bb.ab
  %i.gn = load ptr, ptr %i.fp, align 8, !tbaa !864
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gi
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !859
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit: ; preds = %bb.aa, %bb.ac, %bb.ad
  %.sroa.0.2.in.i = phi ptr [ %i.gq, %bb.ad ], [ %i.gm, %bb.ac ], [ %i.ge, %bb.aa ]
  %.sroa.0.2.i = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !69 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store i32 -1, ptr %i.j, align 4, !tbaa !66
  switch i32 %i.ac, label %.thread269 [
    i32 2, label %bb.ae
    i32 0, label %bb.ae
    i32 1, label %bb.af
  ]

bb.ae:                                            ; preds = %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit
  %i.gr = and i64 %.sroa.0.2.i, -16
  %i.gs = inttoptr i64 %i.gr to ptr
  %i.gt = load ptr, ptr %i.gs, align 16, !tbaa !144
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.gu, align 8, !tbaa !69
  %i.gv = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = load ptr, ptr %i.gw, align 16, !tbaa !144
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load i8, ptr %i.gy, align 16
  switch i8 %i.gz, label %.thread267 [
    i8 40, label %.thread269
    i8 31, label %.thread269
    i8 11, label %.thread269
  ]

bb.af:                                            ; preds = %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit
  %i.ha = and i64 %.sroa.0.2.i, -16
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = load ptr, ptr %i.hb, align 16, !tbaa !144
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.sroa.0.0.copyload.i.i.i38.i = load i64, ptr %i.hd, align 8, !tbaa !69 ; 2 uses
  %i.he = and i64 %.sroa.0.0.copyload.i.i.i38.i, -16
  %i.hf = inttoptr i64 %i.he to ptr
  %i.hg = load ptr, ptr %i.hf, align 16, !tbaa !144 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load i8, ptr %i.hh, align 16            ; 2 uses
  %i.hj = icmp ne i8 %i.hi, 13
  %.not.not3039.i = icmp eq ptr %i.hg, null
  %.not.not40.i = or i1 %.not.not3039.i, %i.hj
  br i1 %.not.not40.i, label %.lr.ph.i.preheader, label %tailrecurse._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.af
  %.not.i160325 = icmp eq i8 %i.hi, 47
  br i1 %.not.i160325, label %.lr.ph.i._crit_edge, label %.lr.ph

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.af
  %.lcssa.i = phi ptr [ %i.hg, %bb.af ], [ %i.il, %tailrecurse.i ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.hl = load i32, ptr %i.hk, align 16
  %i.hm = lshr i32 %i.hl, 19
  %i.hn = and i32 %i.hm, 1023
  %i.ho = add nsw i32 %i.hn, -453
  %spec.select.i.i = icmp ult i32 %i.ho, 20
  br i1 %spec.select.i.i, label %.thread269, label %.thread267

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %.not.i160 = icmp eq i8 %i.in, 47
  br i1 %.not.i160, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %i.hg, %.lr.ph.i.preheader ], [ %i.il, %.lr.ph.i ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !151 ; 2 uses
  %i.hr = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.hq) #23, !inline_history !43 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.hr, null
  %..i.i = select i1 %.not.not.i.i, ptr %i.hq, ptr %i.hr ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.ht = load i8, ptr %i.hs, align 2
  %i.hu = trunc i8 %i.ht to i1
  %i.hv = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.hv, align 8
  %i.hw = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, 7
  %i.hx = select i1 %i.hu, i1 true, i1 %i.hw
  br i1 %i.hx, label %_ZNK5clang4Type13isIntegerTypeEv.exit, label %.thread267

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i159326 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i162, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i38.i, %.lr.ph.i.preheader ]
  %i.hy = and i64 %.sroa.0.0.copyload.i.i.i.i.i159326, -16
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = load ptr, ptr %i.hz, align 16, !tbaa !144 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load i8, ptr %i.ib, align 16            ; 2 uses
  %i.id = icmp ne i8 %i.ic, 35
  %.not18.not32.i = icmp eq ptr %i.ia, null
  %.not18.not.i = or i1 %.not18.not32.i, %i.id
  br i1 %.not18.not.i, label %.split, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %.sroa.0.0.copyload.i.i161 = load i64, ptr %i.ie, align 16, !tbaa !69
  %i.if = and i64 %.sroa.0.0.copyload.i.i161, -16
  %i.ig = inttoptr i64 %i.if to ptr
  %i.ih = load ptr, ptr %i.ig, align 16, !tbaa !144
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %.sroa.0.0.copyload.i.i.i.i162 = load i64, ptr %i.ii, align 8, !tbaa !69 ; 2 uses
  %i.ij = and i64 %.sroa.0.0.copyload.i.i.i.i162, -16
  %i.ik = inttoptr i64 %i.ij to ptr
  %i.il = load ptr, ptr %i.ik, align 16, !tbaa !144 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load i8, ptr %i.im, align 16            ; 2 uses
  %i.io = icmp ne i8 %i.in, 13
  %.not.not30.i = icmp eq ptr %i.il, null
  %.not.not.i163 = or i1 %.not.not30.i, %i.io
  br i1 %.not.not.i163, label %.lr.ph.i, label %tailrecurse._crit_edge.i

.split:                                           ; preds = %.lr.ph
  %i.ip = icmp eq i8 %i.ic, 10
  br i1 %i.ip, label %.thread269, label %.thread267

_ZNK5clang4Type13isIntegerTypeEv.exit:            ; preds = %.lr.ph.i._crit_edge
  %i.iq = load ptr, ptr %i.hp, align 8, !tbaa !151
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 72
  %i.is = load i40, ptr %i.ir, align 8
  %i.it = icmp sgt i40 %i.is, -1
  br i1 %i.it, label %.thread269, label %.thread267

.thread267:                                       ; preds = %_ZNK5clang4Type13isIntegerTypeEv.exit, %.split, %tailrecurse._crit_edge.i, %.lr.ph.i._crit_edge, %bb.ae
  %storemerge = phi i32 [ 0, %bb.ae ], [ 1, %.lr.ph.i._crit_edge ], [ 1, %tailrecurse._crit_edge.i ], [ 1, %.split ], [ 1, %_ZNK5clang4Type13isIntegerTypeEv.exit ]
  store i32 %storemerge, ptr %i.j, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i164 = load i32, ptr %i.iv, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.iu, i32 %.sroa.0.0.copyload.i.i164, i32 noundef 4889) #23
  %i.iw = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %i.ix = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIiEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.iw, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.iy = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fv) #22
  store i64 %i.iy, ptr %15, align 8
  %i.iz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ix, ptr noundef nonnull align 4 dereferenceable(8) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.critedge142

.thread269:                                       ; preds = %_ZNK5clang4Type13isIntegerTypeEv.exit, %.split, %tailrecurse._crit_edge.i, %bb.ae, %bb.ae, %bb.ae, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit
  %i.ja = load i32, ptr %i.fo, align 4
  %i.jb = and i32 %i.ja, 256
  %.not.i.i.i165 = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i.i165, label %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit171, label %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i166

_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i166: ; preds = %.thread269
  %i.jc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #23
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !152 ; 2 uses
  %.pre.i167 = load i32, ptr %i.fo, align 4
  %.pre4.i168 = and i32 %.pre.i167, 256
  %i.je = icmp eq i32 %.pre4.i168, 0
  br i1 %i.je, label %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit171, label %bb.ag

bb.ag:                                            ; preds = %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i166
  %i.jf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #23 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !152
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !153
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jj
  br label %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit171

_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit171: ; preds = %.thread269, %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i166, %bb.ag
  %i.jl = phi ptr [ %i.jd, %bb.ag ], [ %i.jd, %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i166 ], [ null, %.thread269 ]
  %i.jm = phi ptr [ %i.jk, %bb.ag ], [ null, %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i166 ], [ null, %.thread269 ] ; 5 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread276, %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit171
  %.sroa.0241.0 = phi ptr [ %i.jl, %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit171 ], [ %i.sf, %_ZN4llvmneENS_9StringRefES0_.exit.thread276 ] ; 8 uses
  %i.jn = icmp ult ptr %.sroa.0241.0, %i.jm
end_hunk_4
begin_hunk_5_@_ZL23handleTestTypestateAttrRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrE:bb.a
  br i1 %i.r, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.j, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 %.sroa.0.0.copyload.i, i32 noundef 6790) #23
  %i.t = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(80) %2) ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.v = load i8, ptr %i.u, align 8, !tbaa !77, !range !78, !noundef !79
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.x, ptr nonnull %i.o, i64 %i.q)
  br label %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 132
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !99, !range !78, !noundef !79
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.t) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !111 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !113
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(168) %i.ae) #23, !inline_history !6
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i: ; preds = %bb.h, %bb.g
  %i.aj = phi ptr [ %i.ai, %bb.h ], [ null, %bb.g ]
  store ptr %i.aj, ptr %3, align 8, !tbaa !115
  %i.ak = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.am = load i32, ptr %i.y, align 8, !tbaa !66
  %i.an = zext i32 %i.am to i64
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !118
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, ptr nonnull %i.o, i64 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit

_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit: ; preds = %bb.e, %bb.f, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.k

_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread: ; preds = %bb.b, %_ZNK5clang10ParsedAttr10isArgIdentEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i20 = load i32, ptr %i.as, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 %.sroa.0.0.copyload.i.i20, i32 noundef 3172) #23
  %i.at = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(80) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 3, ptr %i.b, align 4, !tbaa !68
  %i.au = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_22AttributeArgumentNTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.k

.critedge:                                        ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !832, !nonnull !79, !align !833 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2632 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !838 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = add i64 %i.az, 48                       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 2640
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !839
  %i.bd = icmp ult i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.j, !prof !840

bb.i:                                             ; preds = %.critedge
  %i.be = inttoptr i64 %i.ba to ptr
  store ptr %i.be, ptr %i.ax, align 8, !tbaa !838
  br label %_ZnwmRKN5clang10ASTContextEm.exit

bb.j:                                             ; preds = %.critedge
  %i.bf = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, i64 noundef 48, i64 noundef 48, i8 3)
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !832
  br label %_ZnwmRKN5clang10ASTContextEm.exit

_ZnwmRKN5clang10ASTContextEm.exit:                ; preds = %bb.i, %bb.j
  %i.bg = phi ptr [ %i.aw, %bb.i ], [ %.pre, %bb.j ]
  %.0.i.i.i.i = phi ptr [ %i.ay, %bb.i ], [ %i.bf, %bb.j ] ; 2 uses
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !2090
  call void @_ZN5clang17TestTypestateAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS0_13ConsumedStateE(ptr noundef nonnull align 8 dereferenceable(44) %.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %i.bg, ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef %i.bh) #23
  call void @_ZN5clang4Decl7addAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull %.0.i.i.i.i) #23
  br label %bb.k

bb.k:                                             ; preds = %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit, %_ZnwmRKN5clang10ASTContextEm.exit, %_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL29handleArgumentWithTypeTagAttrRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.clang::ParamIdx", align 4   ; 6 uses
  %5 = alloca %"class.clang::ParamIdx", align 4   ; 5 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 65535
  %.not42 = icmp eq i32 %i.f, 0
  br i1 %.not42, label %_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread, label %_ZNK5clang10ParsedAttr10isArgIdentEj.exit

_ZNK5clang10ParsedAttr10isArgIdentEj.exit:        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.g, align 8
  %i.h = and i64 %.sroa.0.0.copyload.i.i, 2
  %.not43 = icmp eq i64 %i.h, 0
  br i1 %.not43, label %_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread, label %bb.b

_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread: ; preds = %bb.a, %_ZNK5clang10ParsedAttr10isArgIdentEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i30 = load i32, ptr %i.j, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 %.sroa.0.0.copyload.i.i30, i32 noundef 3168) #23
  %i.k = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(80) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 1, ptr %i.a, align 4, !tbaa !66
  %i.l = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 3, ptr %i.b, align 4, !tbaa !68
  %i.m = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_22AttributeArgumentNTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.r

bb.b:                                             ; preds = %_ZNK5clang10ParsedAttr10isArgIdentEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 0, ptr %4, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.0.0.copyload.i.i31 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.sroa.0.0.copyload.i.i31, -3
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = call noundef zeroext i1 @_ZN5clang4Sema35checkFunctionOrMethodParameterIndexINS_10ParsedAttrEEEbPKNS_4DeclERKT_jPKNS_4ExprERNS_8ParamIdxEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef 2, ptr noundef %i.p, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.q, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 0, ptr %5, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.0.0.copyload.i.i32 = load i64, ptr %i.r, align 8
  %i.s = and i64 %.sroa.0.0.copyload.i.i32, -3
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = call noundef zeroext i1 @_ZN5clang4Sema35checkFunctionOrMethodParameterIndexINS_10ParsedAttrEEEbPKNS_4DeclERKT_jPKNS_4ExprERNS_8ParamIdxEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef 3, ptr noundef %i.t, ptr noundef nonnull align 4 dereferenceable(4) %5, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.u, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %2, align 8, !tbaa !1347
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !127  ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !129
  %i.z = and i64 %i.y, 4294967295
  %.not.i = icmp eq i64 %i.z, 21
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread40

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load i128, ptr %i.aa, align 1
  %i.ac = xor i128 %i.ab, 149504163766309928824175931422577094512
  %i.ad = getelementptr i8, ptr %i.aa, i64 5
  %i.ae = load i128, ptr %i.ad, align 1
  %i.af = xor i128 %i.ae, 137416496678707634874735137634287317605
  %i.ag = or i128 %i.ac, %i.af
  %i.ah = icmp ne i128 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread40

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.ak = load i32, ptr %4, align 4               ; 2 uses
  %i.al = and i32 %i.ak, 1073741823
  %7 = add nsw i32 %i.al, -1
  %8 = shl i32 %i.ak, 1
  %9 = ashr i32 %8, 31
  %i.am = add nsw i32 %7, %9                      ; 3 uses
  %i.an = call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i = icmp eq ptr %i.an, null
  br i1 %.not.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 16
  %i.aq = lshr i64 %i.ap, 48
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

bb.f:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 127
  %i.av = icmp eq i32 %i.au, 9
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !886
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

bb.h:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !887
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit: ; preds = %bb.e, %bb.g, %bb.h
  %.2.i = phi i32 [ %i.az, %bb.h ], [ %i.ax, %bb.g ], [ %i.ar, %bb.e ]
  %.not = icmp ult i32 %i.am, %.2.i
  br i1 %.not, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit
  %i.ba = call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i33 = icmp eq ptr %i.ba, null
  br i1 %.not.not.i33, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = zext i32 %i.am to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bc
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.k:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, 127
  %i.bh = icmp eq i32 %i.bg, 9
  %i.bi = zext i32 %i.am to i64                   ; 2 uses
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !857
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !859
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.m:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !864
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bi
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !859
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.sroa.0.2.in.i = phi ptr [ %i.bs, %bb.m ], [ %i.bn, %bb.l ], [ %i.bd, %bb.j ]
  %.sroa.0.2.i = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !69
  %i.bt = and i64 %.sroa.0.2.i, -16
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !144
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bw, align 8, !tbaa !69
  %i.bx = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !144
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i8, ptr %i.ca, align 16
  %i.cc = icmp eq i8 %i.cb, 40
  br i1 %i.cc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread40, label %.critedge

.critedge:                                        ; preds = %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i34 = load i32, ptr %i.ce, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i32 %.sroa.0.0.copyload.i.i34, i32 noundef 3230) #23
  %i.cf = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(80) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4, !tbaa !66
  %i.cg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cf, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread40

_ZN4llvmeqENS_9StringRefES0_.exit.thread40:       ; preds = %bb.d, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit, %.critedge, %_ZN4llvmeqENS_9StringRefES0_.exit
  %.0.i38 = phi i1 [ true, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit ], [ true, %.critedge ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ false, %bb.d ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !832, !nonnull !79, !align !833 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2632 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !838 ; 2 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = add i64 %i.cl, 64                       ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 2640
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !839
  %i.cp = icmp ult i64 %i.cm, %i.co
  br i1 %i.cp, label %bb.n, label %bb.o, !prof !840

bb.n:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread40
  %i.cq = inttoptr i64 %i.cm to ptr
  store ptr %i.cq, ptr %i.cj, align 8, !tbaa !838
  br label %_ZnwmRKN5clang10ASTContextEm.exit

bb.o:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread40
  %i.cr = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.cj, i64 noundef 64, i64 noundef 64, i8 3)
  %.pre = load ptr, ptr %i.ch, align 8, !tbaa !832
  br label %_ZnwmRKN5clang10ASTContextEm.exit

_ZnwmRKN5clang10ASTContextEm.exit:                ; preds = %bb.n, %bb.o
  %i.cs = phi ptr [ %i.ci, %bb.n ], [ %.pre, %bb.o ]
  %.0.i.i.i.i = phi ptr [ %i.ck, %bb.n ], [ %i.cr, %bb.o ] ; 2 uses
  %.sroa.0.0.copyload.i.i35 = load i64, ptr %i.g, align 8
  %i.ct = and i64 %.sroa.0.0.copyload.i.i35, -3
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !124
  %.sroa.01.0.copyload = load i32, ptr %4, align 4, !tbaa !69
  %.sroa.0.0.copyload = load i32, ptr %5, align 4, !tbaa !69
  call void @_ZN5clang23ArgumentWithTypeTagAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoEPKNS_14IdentifierInfoENS_8ParamIdxES9_b(ptr noundef nonnull align 8 dereferenceable(57) %.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %i.cs, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.cw, i32 %.sroa.01.0.copyload, i32 %.sroa.0.0.copyload, i1 noundef zeroext %.0.i38) #23
  call void @_ZN5clang4Decl7addAttrEPNS_4AttrE(ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull %.0.i.i.i.i) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %_ZnwmRKN5clang10ASTContextEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL28handleTypeTagForDatatypeAttrRN5clang4SemaEPNS_4DeclERKNS_10ParsedAttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 65535
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread, label %_ZNK5clang10ParsedAttr10isArgIdentEj.exit

_ZNK5clang10ParsedAttr10isArgIdentEj.exit:        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 8
  %i.j = and i64 %.sroa.0.0.copyload.i.i, 2
  %.not25 = icmp eq i64 %i.j, 0
  br i1 %.not25, label %_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread, label %bb.b

_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread: ; preds = %bb.a, %_ZNK5clang10ParsedAttr10isArgIdentEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i21 = load i32, ptr %i.l, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 %.sroa.0.0.copyload.i.i21, i32 noundef 3168) #23
  %i.m = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(80) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 1, ptr %i.a, align 4, !tbaa !66
  %i.n = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 3, ptr %i.b, align 4, !tbaa !68
  %i.o = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_22AttributeArgumentNTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.h

bb.b:                                             ; preds = %_ZNK5clang10ParsedAttr10isArgIdentEj.exit
  %i.p = tail call noundef zeroext i1 @_ZNK5clang10ParsedAttr19checkExactlyNumArgsERNS_4SemaEj(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 1) #23
  br i1 %i.p, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 127
  %i.t = add nsw i32 %i.s, -41
  %i.u = icmp ult i32 %i.t, 7
end_hunk_5
begin_hunk_6_@_ZL24checkPositiveIntArgumentIN5clang10ParsedAttrEEbRNS0_4SemaERKT_PKNS0_4ExprERij:bb.a
  store i8 1, ptr %i.i, align 4, !tbaa !837
  %i.j = zext i32 %i.f to i64
  store i64 %i.j, ptr %7, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 %i.l, i32 noundef 4006) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !2142
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !1414, !noalias !2142
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8, !tbaa !1415, !noalias !2142
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 40, ptr %i.o, align 8, !tbaa !1416, !noalias !2142
  call void @_ZNK4llvm5APInt8toStringERNS_15SmallVectorImplIcEEjbbbb(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 10, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #23, !noalias !2142
  call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  %i.p = load ptr, ptr %6, align 8, !tbaa !1414, !noalias !2144 ; 3 uses
  %i.q = load i64, ptr %i.n, align 8, !tbaa !1415, !noalias !2144 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.r, ptr %9, align 8, !tbaa !131, !alias.scope !2144
  %i.s = icmp eq ptr %i.p, null
  %i.t = icmp ne i64 %i.q, 0
  %or.cond.i.i.i = and i1 %i.s, %i.t
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm6APSIntaSEm.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.23) #25
  unreachable

bb.d:                                             ; preds = %_ZN4llvm6APSIntaSEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !2144
  store i64 %i.q, ptr %i.a, align 8, !tbaa !74, !noalias !2144
  %i.u = icmp ugt i64 %i.q, 15
  br i1 %i.u, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.v, ptr %9, align 8, !tbaa !121, !alias.scope !2144
  %i.w = load i64, ptr %i.a, align 8, !tbaa !74, !noalias !2144
  store i64 %i.w, ptr %i.r, align 8, !tbaa !69, !alias.scope !2144
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %i.v, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNK4llvm11SmallStringILj40EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = load i8, ptr %i.p, align 1, !tbaa !69
  store i8 %i.y, ptr %i.x, align 1, !tbaa !69
  br label %_ZNK4llvm11SmallStringILj40EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZNK4llvm11SmallStringILj40EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i

_ZNK4llvm11SmallStringILj40EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !74, !noalias !2144 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !132, !alias.scope !2144
  %i.ab = load ptr, ptr %9, align 8, !tbaa !121, !alias.scope !2144
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !2144
  %i.ad = load ptr, ptr %6, align 8, !tbaa !1414, !noalias !2142 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.m
  br i1 %i.ae, label %_ZN4llvm8toStringB5cxx11ERKNS_5APIntEjbbbb.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm11SmallStringILj40EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i
  call void @free(ptr noundef %i.ad) #23
  br label %_ZN4llvm8toStringB5cxx11ERKNS_5APIntEjbbbb.exit

_ZN4llvm8toStringB5cxx11ERKNS_5APIntEjbbbb.exit:  ; preds = %_ZNK4llvm11SmallStringILj40EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2142
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !77, !range !78, !noundef !79
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm8toStringB5cxx11ERKNS_5APIntEjbbbb.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aj = load ptr, ptr %9, align 8, !tbaa !121
  %i.ak = load i64, ptr %i.aa, align 8, !tbaa !132
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.ai, ptr %i.aj, i64 %i.ak)
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERKS1_OT_.exit

bb.j:                                             ; preds = %_ZN4llvm8toStringB5cxx11ERKNS_5APIntEjbbbb.exit
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 132
  %i.an = load i8, ptr %i.am, align 4, !tbaa !99, !range !78, !noundef !79
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.k, label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERKS1_OT_.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !111 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !113
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(168) %i.ar) #23, !inline_history !5
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i: ; preds = %bb.l, %bb.k
  %i.aw = phi ptr [ %i.av, %bb.l ], [ null, %bb.k ]
  store ptr %i.aw, ptr %5, align 8, !tbaa !115
  %i.ax = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.az = load i32, ptr %i.al, align 8, !tbaa !66
  %i.ba = zext i32 %i.az to i64
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !118
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %9, align 8, !tbaa !121
  %i.bf = load i64, ptr %i.aa, align 8, !tbaa !132
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.bd, ptr %i.be, i64 %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERKS1_OT_.exit

_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERKS1_OT_.exit: ; preds = %bb.i, %bb.j, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 32, ptr %i.c, align 4, !tbaa !66
  %i.bg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.bh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.bi = load ptr, ptr %9, align 8, !tbaa !121   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.r
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERKS1_OT_.exit
  %i.bk = load i64, ptr %i.r, align 8, !tbaa !69
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERKS1_OT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.bm = load i32, ptr %i.h, align 8, !tbaa !835
  %i.bn = icmp ugt i32 %i.bm, 64
  br i1 %i.bn, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZN4llvm5APIntD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #24
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.p

bb.o:                                             ; preds = %bb.b
  store i32 %i.f, ptr %3, align 4, !tbaa !66
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o, %_ZN4llvm5APIntD2Ev.exit
  %.0 = phi i1 [ false, %_ZN4llvm5APIntD2Ev.exit ], [ true, %bb.o ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL23checkParamIsIntegerTypeIN5clang10ParsedAttrEEbRNS0_4SemaEPKNS0_4DeclERKT_j(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.clang::ParamIdx", align 4   ; 6 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.b = zext nneg i32 %3 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.sroa.0.0.copyload.i.i, -3
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 0, ptr %4, align 4
  %i.f = add nuw nsw i32 %3, 1
  %i.g = call noundef zeroext i1 @_ZN5clang4Sema35checkFunctionOrMethodParameterIndexINS_10ParsedAttrEEEbPKNS_4DeclERKT_jPKNS_4ExprERNS_8ParamIdxEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %i.f, ptr noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %4, align 4                ; 2 uses
  %i.i = and i32 %i.h, 1073741823
  %7 = add nsw i32 %i.i, -1
  %8 = shl i32 %i.h, 1
  %9 = ashr i32 %8, 31
  %i.j = add nsw i32 %7, %9                       ; 2 uses
  %i.k = call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i = icmp eq ptr %i.k, null
  br i1 %.not.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = zext i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 127
  %i.r = icmp eq i32 %i.q, 9
  %i.s = zext i32 %i.j to i64                     ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !857
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !859
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !864
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.s
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !859
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  br label %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit

_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.sroa.0.2.in.i = phi ptr [ %i.ac, %bb.f ], [ %i.x, %bb.e ], [ %i.n, %bb.c ]
  %.sroa.0.2.i = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !69
  %i.ad = and i64 %.sroa.0.2.i, -16
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !144
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0.0.copyload.i.i.i38.i = load i64, ptr %i.ag, align 8, !tbaa !69 ; 2 uses
  %i.ah = and i64 %.sroa.0.0.copyload.i.i.i38.i, -16
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !144 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i8, ptr %i.ak, align 16            ; 2 uses
  %i.am = icmp ne i8 %i.al, 13
  %.not.not3039.i = icmp eq ptr %i.aj, null
  %.not.not40.i = or i1 %.not.not3039.i, %i.am
  br i1 %.not.not40.i, label %.lr.ph.i.preheader, label %tailrecurse._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit
  %.not.i25 = icmp eq i8 %i.al, 47
  br i1 %.not.i25, label %.lr.ph.i._crit_edge, label %.lr.ph

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit
  %.lcssa.i = phi ptr [ %i.aj, %_ZN5clang28getFunctionOrMethodParamTypeEPKNS_4DeclEj.exit ], [ %i.bo, %tailrecurse.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.ao = load i32, ptr %i.an, align 16
  %i.ap = lshr i32 %i.ao, 19
  %i.aq = and i32 %i.ap, 1023
  %i.ar = add nsw i32 %i.aq, -453
  %spec.select.i.i = icmp ult i32 %i.ar, 20
  br i1 %spec.select.i.i, label %bb.j, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %.not.i = icmp eq i8 %i.bq, 47
  br i1 %.not.i, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %i.aj, %.lr.ph.i.preheader ], [ %i.bo, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !151 ; 2 uses
  %i.au = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.at) #23, !inline_history !43 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.au, null
  %..i.i = select i1 %.not.not.i.i, ptr %i.at, ptr %i.au ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.aw = load i8, ptr %i.av, align 2
  %i.ax = trunc i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ay, align 8
  %i.az = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, 7
  %i.ba = select i1 %i.ax, i1 true, i1 %i.az
  br i1 %i.ba, label %_ZNK5clang4Type13isIntegerTypeEv.exit, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i26 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i38.i, %.lr.ph.i.preheader ]
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i.i.i26, -16
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !144 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i8, ptr %i.be, align 16            ; 2 uses
  %i.bg = icmp ne i8 %i.bf, 35
  %.not18.not32.i = icmp eq ptr %i.bd, null
  %.not18.not.i = or i1 %.not18.not32.i, %i.bg
  br i1 %.not18.not.i, label %.split, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.sroa.0.0.copyload.i.i13 = load i64, ptr %i.bh, align 16, !tbaa !69
  %i.bi = and i64 %.sroa.0.0.copyload.i.i13, -16
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load ptr, ptr %i.bj, align 16, !tbaa !144
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %i.bm = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load ptr, ptr %i.bn, align 16, !tbaa !144 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i8, ptr %i.bp, align 16            ; 2 uses
  %i.br = icmp ne i8 %i.bq, 13
  %.not.not30.i = icmp eq ptr %i.bo, null
  %.not.not.i14 = or i1 %.not.not30.i, %i.br
  br i1 %.not.not.i14, label %.lr.ph.i, label %tailrecurse._crit_edge.i

.split:                                           ; preds = %.lr.ph
  %i.bs = icmp eq i8 %i.bf, 10
  br i1 %i.bs, label %bb.j, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

_ZNK5clang4Type13isIntegerTypeEv.exit:            ; preds = %.lr.ph.i._crit_edge
  %i.bt = load ptr, ptr %i.as, align 8, !tbaa !151
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load i40, ptr %i.bu, align 8
  %i.bw = icmp sgt i40 %i.bv, -1
  br i1 %i.bw, label %bb.j, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

_ZNK5clang4Type13isIntegerTypeEv.exit.thread:     ; preds = %.lr.ph.i._crit_edge, %tailrecurse._crit_edge.i, %.split, %_ZNK5clang4Type13isIntegerTypeEv.exit
  %i.bx = load ptr, ptr %i.ae, align 16, !tbaa !144
  %i.by = call noundef zeroext i1 @_ZNK5clang4Type10isCharTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bx) #23
  br i1 %i.by, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang4Type13isIntegerTypeEv.exit.thread
  %i.bz = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i32 %i.bz, i32 noundef 3196) #23
  %i.cb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(80) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.cc = load i32, ptr %4, align 4               ; 2 uses
  %i.cd = and i32 %i.cc, 1073741823
  %10 = add nsw i32 %i.cd, -1
  %11 = shl i32 %i.cc, 1
  %12 = ashr i32 %11, 31
  %i.ce = add nsw i32 %10, %12
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = and i32 %i.cg, 127                      ; 2 uses
  %i.ci = add nsw i32 %i.ch, -41
  %i.cj = icmp ult i32 %i.ci, -6
  br i1 %i.cj, label %bb.h, label %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i

bb.h:                                             ; preds = %bb.g
  switch i32 %i.ch, label %_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit [
    i32 20, label %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i
    i32 9, label %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i.fold.split
  ]

_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i.fold.split: ; preds = %bb.h
  br label %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i

_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i: ; preds = %bb.h, %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i.fold.split, %bb.g
  %.sink35.i.i = phi i64 [ 96, %bb.h ], [ 120, %bb.g ], [ 72, %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i.fold.split ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sink35.i.i
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1371
  %i.cm = zext i32 %i.ce to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !859 ; 3 uses
  %.not.not.i17 = icmp eq ptr %i.co, null
  br i1 %.not.not.i17, label %_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !113
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call i64 %i.cr(ptr noundef nonnull align 8 dereferenceable(104) %i.co) #22, !inline_history !1564
  br label %_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit

_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit: ; preds = %bb.h, %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i, %bb.i
  %.sroa.4.1.i = phi i64 [ %i.cs, %bb.i ], [ 0, %_ZN5clang24getFunctionOrMethodParamEPKNS_4DeclEj.exit.i ], [ 0, %bb.h ]
  store i64 %.sroa.4.1.i, ptr %6, align 8
  %i.ct = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cb, ptr noundef nonnull align 4 dereferenceable(8) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.j

bb.j:                                             ; preds = %_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit, %_ZNK5clang4Type13isIntegerTypeEv.exit.thread, %_ZNK5clang4Type13isIntegerTypeEv.exit, %.split, %tailrecurse._crit_edge.i, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN5clang29getFunctionOrMethodParamRangeEPKNS_4DeclEj.exit ], [ true, %_ZNK5clang4Type13isIntegerTypeEv.exit.thread ], [ true, %_ZNK5clang4Type13isIntegerTypeEv.exit ], [ true, %.split ], [ true, %tailrecurse._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang8ParamIdxC2EjPKNS_4DeclE(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = and i32 %1, 1073741823
  %i.b = or disjoint i32 %i.a, -2147483648
  store i32 %i.b, ptr %0, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 124
  %i.f = icmp ne i32 %i.e, 36
  %.not4 = icmp eq ptr %2, null
  %.not = or i1 %.not4, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isImplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #23
  %i.h = load i32, ptr %0, align 4
  %i.i = select i1 %i.g, i32 1073741824, i32 0
  %i.j = and i32 %i.h, -1073741825
  %i.k = or disjoint i32 %i.j, %i.i
  store i32 %i.k, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN5clang13AllocSizeAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxES6_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(36), i32, i32) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang4Sema35checkFunctionOrMethodParameterIndexINS_10ParsedAttrEEEbPKNS_4DeclERKT_jPKNS_4ExprERNS_8ParamIdxEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %8 = alloca %"class.std::optional.686", align 8 ; 10 uses
  %9 = alloca %"class.std::optional.686", align 8 ; 10 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %15 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !66
  %i.f = tail call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i8, ptr %i.g, align 16
  %i.i = icmp eq i8 %i.h, 24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = and i32 %i.k, 127                        ; 2 uses
  %i.m = icmp eq i32 %i.l, 20
  %i.n = icmp eq i32 %i.l, 9
  %spec.select.i = or i1 %i.m, %i.n
  br label %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit

_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit:     ; preds = %bb.b, %bb.c
  %i.o = phi i32 [ %.pre, %bb.b ], [ %i.k, %bb.c ]
  %.1.i = phi i1 [ %i.i, %bb.b ], [ %spec.select.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.q = and i32 %i.o, 124
  %i.r = icmp eq i32 %i.q, 36
  br i1 %i.r, label %bb.d, label %_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit

bb.d:                                             ; preds = %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit
  %i.s = tail call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isImplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #23
  br label %_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit

_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit: ; preds = %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit, %bb.d
  %.04.i = phi i1 [ %i.s, %bb.d ], [ false, %_ZN5clang16hasFunctionProtoEPKNS_4DeclE.exit ] ; 2 uses
  br i1 %.1.i, label %bb.e, label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

bb.e:                                             ; preds = %_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit
  %i.t = tail call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i47 = icmp eq ptr %i.t, null
  br i1 %.not.not.i47, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 16
  %i.w = and i64 %i.v, 2147483648
  %i.x = icmp ne i64 %i.w, 0
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.p, align 4
  %i.z = and i32 %i.y, 127
  %i.aa = icmp eq i32 %i.z, 9
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = and i16 %i.ac, 8192
  %i.ae = icmp ne i16 %i.ad, 0
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load i24, ptr %i.af, align 8
  %i.ah = and i24 %i.ag, 262144
  %i.ai = icmp ne i24 %i.ah, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.2.i = phi i1 [ %i.ai, %bb.i ], [ %i.ae, %bb.h ], [ %i.x, %bb.f ]
  %i.aj = and i1 %7, %.2.i                        ; 3 uses
  %i.ak = tail call noundef ptr @_ZNK5clang4Decl15getFunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(33) %1, i1 noundef zeroext true) #23 ; 2 uses
  %.not.not.i48 = icmp eq ptr %i.ak, null
  br i1 %.not.not.i48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 16
  %i.an = lshr i64 %i.am, 48
  %i.ao = trunc nuw nsw i64 %i.an to i32
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.p, align 4
  %i.aq = and i32 %i.ap, 127
  %i.ar = icmp eq i32 %i.aq, 9
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = load i32, ptr %i.as, align 8, !tbaa !886
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

bb.n:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = load i32, ptr %i.au, align 8, !tbaa !887
  br label %_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit

_ZN5clang28getFunctionOrMethodNumParamsEPKNS_4DeclE.exit: ; preds = %bb.n, %bb.m, %bb.k, %_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit
  %or.cond357 = phi i1 [ false, %_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit ], [ %i.aj, %bb.k ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ]
  %i.aw = phi i32 [ 0, %_ZN5clang26hasImplicitObjectParameterEPKNS_4DeclE.exit ], [ %i.ao, %bb.k ], [ %i.at, %bb.m ], [ %i.av, %bb.n ]
  %i.ax = zext i1 %.04.i to i32
  %i.ay = add i32 %i.aw, %i.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
end_hunk_6

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDecl?download=true
inline.NumInlined: 28668
inline.NumDeleted: 12982
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN5clanglsIPNS_13CXXRecordDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_:bb.a
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !815, !range !816, !noundef !805
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !952
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !820  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZN5clanglsIPNS_13CXXRecordDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !821
  %i.i = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.h) ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !820
  br label %_ZN5clanglsIPNS_13CXXRecordDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit

_ZN5clanglsIPNS_13CXXRecordDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.j, align 8, !tbaa !833
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 10, ptr %i.o, align 1, !tbaa !834
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !820  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.p, align 8, !tbaa !833   ; 2 uses
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %i.p, align 8, !tbaa !833
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  store i64 %i.k, ptr %i.u, align 8, !tbaa !835
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.x = load i8, ptr %i.w, align 4, !tbaa !837, !range !816, !noundef !805
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !847 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !810
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #28, !inline_history !1
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ]
  store ptr %i.ag, ptr %2, align 8, !tbaa !849
  %i.ah = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !813
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !852
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !952
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !820 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIPNS_13CXXRecordDeclEEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !821
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !820
  br label %_ZNK5clang17PartialDiagnosticlsIPNS_13CXXRecordDeclEEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIPNS_13CXXRecordDeclEEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.at, align 8, !tbaa !833
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 10, ptr %i.ay, align 1, !tbaa !834
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !820 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !833 ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !833
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !835
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIPNS_13CXXRecordDeclEEERKS0_RKT_.exit, %_ZN5clanglsIPNS_13CXXRecordDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit
  ret ptr %0
}

declare noundef zeroext i1 @_ZN5clang4Sema24CheckParmsForFunctionDefEN4llvm8ArrayRefIPNS_11ParmVarDeclEEEb(ptr noundef nonnull align 8 dereferenceable(18640), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang12FunctionDecl23isTemplateInstantiationEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare noundef ptr @_ZN5clang4Sema20ResolveExceptionSpecENS_14SourceLocationEPKNS_17FunctionProtoTypeE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema40applyFunctionAttributesBeforeParsingBodyEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::FPOptions", align 4  ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit.thread16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = and i32 %i.b, 128
  %.not18 = icmp eq i32 %i.c, 0
  br i1 %.not18, label %bb.c, label %_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit.thread16

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 127
  %.not20 = icmp eq i32 %i.d, 72
  br i1 %.not20, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1963 ; 3 uses
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit.thread16, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.c
  %i.g = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.b, %bb.c ]
  %.015 = phi ptr [ %i.f, %..thread_crit_edge ], [ %1, %bb.c ]
  %i.h = and i32 %i.g, 256
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit.thread16, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %.015) #28 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !876  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !877  ; 2 uses
  %i.m = zext i32 %i.l to i64
  %.idx.i.i = shl nuw nsw i64 %i.m, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit.thread16, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.s, %bb.f ], [ %i.j, %bb.e ] ; 3 uses
  %i.o = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !1563
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = load i16, ptr %i.p, align 4
  %i.r = icmp eq i16 %i.q, 342
  br i1 %i.r, label %_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit.thread16, label %.lr.ph.i.i.i.i.i, !llvm.loop !3608

_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not21 = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.n
  br i1 %.not21, label %_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit.thread16, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.t, align 8, !tbaa !813
  %i.u = and i32 %.sroa.0.0.copyload.i, -2129412
  %i.v = or disjoint i32 %i.u, 2097153            ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !813
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !853, !nonnull !805, !align !806 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %i.ab = lshr i32 %i.aa, 23
  %i.ac = and i32 %i.ab, 3                        ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 3
  %spec.store.select.i = select i1 %i.ad, i32 2, i32 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = lshr i64 %i.af, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 4                        ; 2 uses
  %i.aj = lshr i32 %i.aa, 19
  %i.ak = and i32 %i.aj, 192
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.am = load i64, ptr %i.al, align 8
  %i.an = lshr i64 %i.am, 36
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 32256
  %i.aq = icmp eq i32 %spec.store.select.i, 1
  %.not3.i.i = icmp ne i32 %i.ai, 0
  %or.cond.not16.i = and i1 %i.aq, %.not3.i.i
  %i.ar = and i32 %i.aa, 100663296
  %i.as = icmp eq i32 %i.ar, 67108864
  %or.cond15.i = select i1 %or.cond.not16.i, i1 %i.as, i1 false
  %masksel.i = select i1 %or.cond15.i, i32 256, i32 0
  %i.at = or disjoint i32 %i.ap, %masksel.i
  %3 = or disjoint i32 %i.ak, %i.at
  %4 = getelementptr inbounds nuw i8, ptr %i.x, i64 208
  %5 = load i64, ptr %4, align 8
  %sh.diff.i = lshr i64 %5, 23
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.au = and i32 %tr.sh.diff.i, 29360128
  %6 = or disjoint i32 %3, %i.au
  %7 = or disjoint i32 %6, %spec.store.select.i
  %8 = or disjoint i32 %7, %i.ai
  %i.av = or disjoint i32 %8, 56                  ; 2 uses
  store i32 %i.av, ptr %2, align 4, !tbaa !1851
  %i.aw = icmp eq i32 %i.v, %i.av
  br i1 %i.aw, label %_ZNK5clang9FPOptions14getChangesFromERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = call i64 @_ZNK5clang9FPOptions14getChangesSlowERKS0_(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %2) #28
  br label %_ZNK5clang9FPOptions14getChangesFromERKS0_.exit

_ZNK5clang9FPOptions14getChangesFromERKS0_.exit:  ; preds = %bb.g, %bb.h
  %.sroa.0.0.insert.insert.i = phi i64 [ %i.ax, %bb.h ], [ 0, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ay, align 8, !tbaa !813
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit.thread16

_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit.thread16: ; preds = %bb.f, %bb.e, %.thread, %bb.a, %bb.b, %_ZNK5clang9FPOptions14getChangesFromERKS0_.exit, %_ZNK5clang4Decl7hasAttrINS_16OptimizeNoneAttrEEEbv.exit, %bb.d
  ret void
}

declare i64 @_ZN5clang8SemaSYCL27BuildSYCLKernelLaunchIdExprEPNS_12FunctionDeclENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema11computeNRVOEPNS_4StmtEPNS_4sema17FunctionScopeInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !876
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.d = load i32, ptr %i.c, align 8, !tbaa !877  ; 2 uses
  %.not16 = icmp eq i32 %i.d, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = zext i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK5clang10ReturnStmt16getNRVOCandidateEv.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK5clang10ReturnStmt16getNRVOCandidateEv.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK5clang10ReturnStmt16getNRVOCandidateEv.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2350 ; 3 uses
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 512
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %_ZNK5clang10ReturnStmt16getNRVOCandidateEv.exit.thread, label %_ZNK5clang10ReturnStmt16getNRVOCandidateEv.exit

_ZNK5clang10ReturnStmt16getNRVOCandidateEv.exit:  ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1605 ; 3 uses
  %.not14 = icmp eq ptr %i.l, null
  br i1 %.not14, label %_ZNK5clang10ReturnStmt16getNRVOCandidateEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang10ReturnStmt16getNRVOCandidateEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 127
  %i.p = icmp ne i32 %i.o, 44
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.r = load i16, ptr %i.q, align 8
  %i.s = and i16 %i.r, 1024
  %i.t = icmp ne i16 %i.s, 0
  %i.u = select i1 %i.p, i1 %i.t, i1 false
  br i1 %i.u, label %_ZNK5clang10ReturnStmt16getNRVOCandidateEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2352
  %i.x = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #30
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 %i.x, i32 noundef 7400) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #28
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !2350
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr null, ptr %i.z, align 8, !tbaa !1605
  br label %_ZNK5clang10ReturnStmt16getNRVOCandidateEv.exit.thread

_ZNK5clang10ReturnStmt16getNRVOCandidateEv.exit.thread: ; preds = %bb.b, %bb.c, %bb.d, %_ZNK5clang10ReturnStmt16getNRVOCandidateEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !87
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema20canDelayFunctionBodyERKNS_10DeclaratorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(18640) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2664) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2062, !nonnull !805, !align !806
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 6755399441055744
  %.not13 = icmp eq i64 %i.c, 0
  br i1 %.not13, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.b to i32
  %i.e = lshr i32 %i.d, 12
  %i.f = and i32 %i.e, 127
  %.off.i = add nsw i32 %i.f, -50
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !877  ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.k = zext i32 %i.i to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !876
  %i.m = getelementptr inbounds nuw [144 x i8], ptr %i.l, i64 %i.k ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !2068
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.q = load i16, ptr %i.p, align 8
  %i.r = and i16 %i.q, 512
  %.not14 = icmp eq i16 %i.r, 0
  br i1 %.not14, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1975
  %i.u = tail call i64 @_ZN5clang4Sema17GetTypeFromParserENS_9OpaquePtrINS_8QualTypeEEEPPNS_14TypeSourceInfoE(ptr %i.t, ptr noundef null) #28 ; 2 uses
  %i.v = icmp ult i64 %i.u, 16
  br i1 %i.v, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = and i64 %i.u, -16
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !856
  %i.z = tail call noundef ptr @_ZNK5clang4Type23getContainedDeducedTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.y) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 16
  %i.ac = and i32 %i.ab, 402653184
  %.not3.i = icmp ne i32 %i.ac, 0
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.f, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.b ], [ true, %bb.f ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.g ], [ %.not3.i, %bb.h ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema19canSkipFunctionBodyEPNS_4DeclE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang4Decl13getAsFunctionEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #30 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.c = load i16, ptr %i.b, align 4
  %i.d = and i16 %i.c, 3
  %.not11 = icmp eq i16 %i.d, 0
  br i1 %.not11, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8, !tbaa !834
  %i.f = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !856 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 16
  %i.k = add i8 %i.j, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.k, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.h) #28
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit:   ; preds = %bb.c, %bb.d
  %.1.i.i = phi ptr [ %i.l, %bb.d ], [ %i.h, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.m, align 8, !tbaa !834
  %i.n = and i64 %.sroa.0.0.copyload.i1.i, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !856
  %i.q = tail call noundef ptr @_ZNK5clang4Type23getContainedDeducedTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.p) #28
  %.not9 = icmp eq ptr %i.q, null
  br i1 %.not9, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1894, !nonnull !805, !align !806 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !810
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(9) %i.s, ptr noundef nonnull %1) #28
  br label %.thread
end_hunk_0

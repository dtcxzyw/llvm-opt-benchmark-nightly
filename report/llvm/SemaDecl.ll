Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDecl?download=true
inline.NumInlined: 28669
inline.NumDeleted: 12983
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN5clang4Sema38DiagnoseSizeOfParametersAndReturnValueEN4llvm8ArrayRefIPNS_11ParmVarDeclEEENS_8QualTypeEPNS_9NamedDeclE:bb.a
  %i.at = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.as, i64 %.sroa.01.0.copyload) #28
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  store i32 %i.au, ptr %i.d, align 4, !tbaa !813
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !853, !nonnull !805, !align !806
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = trunc i64 %i.ax to i32
  %i.az = icmp ugt i32 %i.au, %i.ay
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !1084
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.bb, align 8, !tbaa !813
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 %.sroa.0.0.copyload.i13, i32 noundef 7497) #28
  %i.bc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_11ParmVarDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.bd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.be = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.af
  br i1 %.not, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %bb.m, %bb.g, %bb.a
  ret void
}

declare i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_11ParmVarDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !815, !range !816, !noundef !805
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1084
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !820  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZN5clanglsIPKNS_11ParmVarDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES7_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !821
  %i.i = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.h) ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !820
  br label %_ZN5clanglsIPKNS_11ParmVarDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES7_RKT_.exit

_ZN5clanglsIPKNS_11ParmVarDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES7_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
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
  %i.ao = load ptr, ptr %1, align 8, !tbaa !1084
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !820 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIPKNS_11ParmVarDeclEEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !821
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !820
  br label %_ZNK5clang17PartialDiagnosticlsIPKNS_11ParmVarDeclEEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIPKNS_11ParmVarDeclEEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
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

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIPKNS_11ParmVarDeclEEERKS0_RKT_.exit, %_ZN5clanglsIPKNS_11ParmVarDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES7_RKT_.exit
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK5clang4Type18isObjCLifetimeTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4Sema18DelayedDiagnostics3addERKNS_4sema17DelayedDiagnosticE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !997    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !877  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !878
  %.not.i.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !973

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema17DelayedDiagnosticELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZN5clang4sema21DelayedDiagnosticPool3addERKNS0_17DelayedDiagnosticE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !876
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.j = load i32, ptr %i.c, align 8, !tbaa !877
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !877
  br label %_ZN5clang4sema21DelayedDiagnosticPool3addERKNS0_17DelayedDiagnosticE.exit

_ZN5clang4sema21DelayedDiagnosticPool3addERKNS0_17DelayedDiagnosticE.exit: ; preds = %bb.b, %bb.c
  ret void
}

declare noundef i32 @_ZNK5clang4Type26getObjCARCImplicitLifetimeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

declare i64 @_ZNK5clang10ASTContext24getAdjustedParameterTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang9ValueDecl15isParameterPackEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang4Sema25getEnclosingLambdaOrBlockEv(ptr noundef nonnull align 8 dereferenceable(18640)) local_unnamed_addr #2

declare i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i64 @_ZNK5clang11ParmVarDecl15getOriginalTypeEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema31ActOnFinishKNRParamDeclarationsEPNS_5ScopeERNS_10DeclaratorENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2664) %2, i32 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallString.2289", align 8 ; 9 uses
  %5 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 15 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %7 = alloca %"class.clang::FixItHint", align 8  ; 6 uses
  %8 = alloca %"class.clang::AttributeFactory", align 8 ; 5 uses
  %9 = alloca %"class.clang::DeclSpec", align 8   ; 22 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %10 = alloca %"class.clang::Declarator", align 8 ; 32 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !877  ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 128
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !876 ; 2 uses
  br i1 %.not.i.i, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %wide.trip.count.i.i = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %.pre.i, i64 %indvars.iv.i.i
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2068
  switch i32 %i.f, label %bb.c [
    i32 3, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.loopexit
    i32 6, label %bb.d
    i32 0, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit
    i32 1, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit
    i32 2, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit
    i32 4, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit
    i32 5, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit
    i32 7, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit, label %bb.b, !llvm.loop !53

_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.loopexit: ; preds = %bb.b
  br label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit

_ZN5clang10Declarator19getFunctionTypeInfoEv.exit: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.d, %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.loopexit, %bb.a
  %.0.i = phi i64 [ %indvars.iv.i.i, %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.loopexit ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ]
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %.pre.i, i64 %.0.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 1
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !2082 ; 2 uses
  %.not3340 = icmp eq i32 %i.l, 0
  br i1 %.not3340, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 92
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 296
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 164
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 140
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 720 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 728
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 732
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 736
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 752
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 744
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 748
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 768
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 776
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 792
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 784
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 788
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 808
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 816
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 2648
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 2652
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 140
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.bt = sext i32 %i.l to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ %i.bt, %.lr.ph ], [ %indvars.iv.next, %bb.w ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 10 uses
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !2083
  %i.bv = getelementptr inbounds [32 x i8], ptr %i.bu, i64 %indvars.iv.next
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2093
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %i.n, align 8, !tbaa !853, !nonnull !805, !align !806
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = and i64 %i.ca, 1
  %.not34 = icmp eq i64 %i.cb, 0
  br i1 %.not34, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.o, ptr %4, align 8, !tbaa !1912
  store i64 0, ptr %i.p, align 8, !tbaa !1913
  store i64 256, ptr %i.q, align 8, !tbaa !1986
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i32 2, ptr %i.r, align 8, !tbaa !2339
  store i8 0, ptr %i.s, align 8, !tbaa !2340
  store i32 1, ptr %i.t, align 4, !tbaa !2341
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %5, align 8, !tbaa !810
  store ptr %4, ptr %i.v, align 8, !tbaa !2343
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #28
  %i.cc = load ptr, ptr %i.w, align 8, !tbaa !2344
  %i.cd = load ptr, ptr %i.x, align 8, !tbaa !2345 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = icmp ult i64 %i.cg, 6
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ci = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull @.str.31, i64 noundef 6) #28 ; 0 uses
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !2345
  br label %_ZN4llvmlsINS_19raw_svector_ostreamEA7_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.cd, ptr noundef nonnull align 1 dereferenceable(6) @.str.31, i64 6, i1 false)
  %i.cj = load ptr, ptr %i.x, align 8, !tbaa !2345
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 6 ; 2 uses
  store ptr %i.ck, ptr %i.x, align 8, !tbaa !2345
  br label %_ZN4llvmlsINS_19raw_svector_ostreamEA7_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

_ZN4llvmlsINS_19raw_svector_ostreamEA7_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit: ; preds = %bb.i, %bb.j
  %i.cl = phi ptr [ %.pre, %bb.i ], [ %i.ck, %bb.j ] ; 3 uses
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !2083
  %i.cn = getelementptr inbounds [32 x i8], ptr %i.cm, i64 %indvars.iv.next
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !2092
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !958 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !960
  %i.ct = and i64 %i.cs, 4294967295               ; 5 uses
  %i.cu = load ptr, ptr %i.w, align 8, !tbaa !2344
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cl to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = icmp ugt i64 %i.ct, %i.cx
  br i1 %i.cy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvmlsINS_19raw_svector_ostreamEA7_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  %i.cz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %i.cr, i64 noundef %i.ct) #28 ; 0 uses
  %.pre46 = load ptr, ptr %i.x, align 8, !tbaa !2345
  br label %_ZN4llvmlsINS_19raw_svector_ostreamENS_9StringRefEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

bb.l:                                             ; preds = %_ZN4llvmlsINS_19raw_svector_ostreamEA7_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  %.not.i.i35 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i35, label %_ZN4llvmlsINS_19raw_svector_ostreamENS_9StringRefEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr nonnull align 8 %i.cr, i64 %i.ct, i1 false)
  %i.da = load ptr, ptr %i.x, align 8, !tbaa !2345
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ct ; 2 uses
  store ptr %i.db, ptr %i.x, align 8, !tbaa !2345
  br label %_ZN4llvmlsINS_19raw_svector_ostreamENS_9StringRefEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

_ZN4llvmlsINS_19raw_svector_ostreamENS_9StringRefEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.dc = phi ptr [ %.pre46, %bb.k ], [ %i.cl, %bb.l ], [ %i.db, %bb.m ] ; 2 uses
  %i.dd = load ptr, ptr %i.w, align 8, !tbaa !2344
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = icmp ult i64 %i.dg, 2
  br i1 %i.dh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvmlsINS_19raw_svector_ostreamENS_9StringRefEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  %i.di = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull @.str.32, i64 noundef 2) #28 ; 0 uses
  br label %_ZN4llvmlsINS_19raw_svector_ostreamEA3_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

bb.o:                                             ; preds = %_ZN4llvmlsINS_19raw_svector_ostreamENS_9StringRefEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  store i16 2619, ptr %i.dc, align 1
  %i.dj = load ptr, ptr %i.x, align 8, !tbaa !2345
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store ptr %i.dk, ptr %i.x, align 8, !tbaa !2345
  br label %_ZN4llvmlsINS_19raw_svector_ostreamEA3_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

_ZN4llvmlsINS_19raw_svector_ostreamEA3_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit: ; preds = %bb.n, %bb.o
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.dl = load ptr, ptr %i.m, align 8, !tbaa !2083
  %i.dm = getelementptr inbounds [32 x i8], ptr %i.dl, i64 %indvars.iv.next
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.06.0.copyload = load i32, ptr %i.dn, align 8, !tbaa !813
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 %.sroa.06.0.copyload, i32 noundef 5783) #28
  %i.do = load ptr, ptr %i.m, align 8, !tbaa !2083
  %i.dp = getelementptr inbounds [32 x i8], ptr %i.do, i64 %indvars.iv.next
  %i.dq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_14IdentifierInfoEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.dr = load ptr, ptr %4, align 8, !tbaa !1912
  %i.ds = load i64, ptr %i.p, align 8, !tbaa !1913
  call void @_ZN5clang9FixItHint15CreateInsertionENS_14SourceLocationEN4llvm9StringRefEb(ptr dead_on_unwind nonnull writable sret(%"class.clang::FixItHint") align 8 %7, i32 %3, ptr %i.dr, i64 %i.ds, i1 noundef zeroext false)
  %i.dt = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_9FixItHintEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.dq, ptr noundef nonnull align 8 dereferenceable(57) %7) ; 0 uses
  %i.du = load ptr, ptr %i.z, align 8, !tbaa !858 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.aa
  br i1 %i.dv, label %_ZN5clang9FixItHintD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmlsINS_19raw_svector_ostreamEA3_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  %i.dw = load i64, ptr %i.aa, align 8, !tbaa !834
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #29
  br label %_ZN5clang9FixItHintD2Ev.exit

_ZN5clang9FixItHintD2Ev.exit:                     ; preds = %_ZN4llvmlsINS_19raw_svector_ostreamEA3_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dy = load ptr, ptr %4, align 8, !tbaa !1912  ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.o
  br i1 %i.dz, label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5clang9FixItHintD2Ev.exit
  call void @free(ptr noundef %i.dy) #28
  br label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit

_ZN4llvm11SmallVectorIcLj256EED2Ev.exit:          ; preds = %_ZN5clang9FixItHintD2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZN5clang16AttributeFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(1296) %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i64 0, ptr %9, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !876
  store i32 0, ptr %i.ae, align 8, !tbaa !877
  store i32 2, ptr %i.af, align 4, !tbaa !878
  store ptr %8, ptr %i.ag, align 8, !tbaa !1013
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !876
  store i32 0, ptr %i.aj, align 8, !tbaa !877
  store i32 2, ptr %i.ak, align 4, !tbaa !878
  store ptr null, ptr %i.am, align 8, !tbaa !1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(180) %i.al, i8 0, i64 180, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !2083
  %i.eb = getelementptr inbounds [32 x i8], ptr %i.ea, i64 %indvars.iv.next
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.03.0.copyload = load i32, ptr %i.ec, align 8, !tbaa !813
  %i.ed = load ptr, ptr %i.an, align 8, !tbaa !804, !nonnull !805, !align !806
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 17728
  %i.ef = call noundef zeroext i1 @_ZN5clang8DeclSpec15SetTypeSpecTypeENS_17TypeSpecifierTypeENS_14SourceLocationERPKcRjRKNS_14PrintingPolicyE(ptr noundef nonnull align 8 dereferenceable(304) %9, i32 noundef 7, i32 %.sroa.03.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #28 ; 0 uses
  %i.eg = load ptr, ptr %i.m, align 8, !tbaa !2083
  %i.eh = getelementptr inbounds [32 x i8], ptr %i.eg, i64 %indvars.iv.next
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.sroa.02.0.copyload = load i32, ptr %i.ei, align 8, !tbaa !813 ; 2 uses
  store i32 %.sroa.02.0.copyload, ptr %i.ao, align 8, !tbaa !813
  store i32 %.sroa.02.0.copyload, ptr %i.ap, align 4, !tbaa !813
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.ej = load atomic i8, ptr @_ZGVZN5clang20ParsedAttributesView4noneEvE5Attrs acquire, align 8
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %bb.r, label %_ZN5clang20ParsedAttributesView4noneEv.exit, !prof !1033

bb.r:                                             ; preds = %bb.q
  %i.el = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5clang20ParsedAttributesView4noneEvE5Attrs) #28
  %.not.i = icmp eq i32 %i.el, 0
  br i1 %.not.i, label %_ZN5clang20ParsedAttributesView4noneEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, align 8, !tbaa !857
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 4), align 4, !tbaa !857
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 8), align 8, !tbaa !876
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 16), align 8, !tbaa !877
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, i64 20), align 4, !tbaa !878
  %i.em = call i32 @__cxa_atexit(ptr nonnull @_ZN5clang20ParsedAttributesViewD2Ev, ptr nonnull @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, ptr nonnull @__dso_handle) #28 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5clang20ParsedAttributesView4noneEvE5Attrs) #28
  br label %_ZN5clang20ParsedAttributesView4noneEv.exit

_ZN5clang20ParsedAttributesView4noneEv.exit:      ; preds = %bb.q, %bb.r, %bb.s
  store ptr %9, ptr %10, align 8, !tbaa !1035
  store ptr null, ptr %i.ar, align 8, !tbaa !834
  store i32 0, ptr %i.as, align 8, !tbaa !857
  store i32 0, ptr %i.at, align 4, !tbaa !857
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.aq, i8 0, i64 52, i1 false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ao, align 8, !tbaa !813
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.au, align 8
  store i32 4, ptr %i.av, align 8, !tbaa !1047
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aw, i8 0, i64 20, i1 false)
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !876
  store i32 0, ptr %i.az, align 8, !tbaa !877
  store i32 4, ptr %i.ba, align 4, !tbaa !878
  %i.en = load i64, ptr %9, align 8
  %i.eo = and i64 %i.en, 520192
  %i.ep = icmp eq i64 %i.eo, 282624
  %i.eq = zext i1 %i.ep to i16
  %i.er = load i16, ptr %i.bb, align 8
  %i.es = and i16 %i.er, -1024
  %i.et = or disjoint i16 %i.es, %i.eq
  store i16 %i.et, ptr %i.bb, align 8
  %i.eu = load ptr, ptr %i.ag, align 8, !tbaa !1048, !nonnull !805, !align !806
  store i32 0, ptr %i.bc, align 8, !tbaa !857
  store i32 0, ptr %i.bd, align 4, !tbaa !857
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !876
  store i32 0, ptr %i.bg, align 8, !tbaa !877
  store i32 2, ptr %i.bh, align 4, !tbaa !878
  store ptr %i.eu, ptr %i.bi, align 8, !tbaa !1013
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !876
  store i32 0, ptr %i.bl, align 8, !tbaa !877
  store i32 2, ptr %i.bm, align 4, !tbaa !878
  store ptr @_ZZN5clang20ParsedAttributesView4noneEvE5Attrs, ptr %i.bn, align 8, !tbaa !1049
  store i32 0, ptr %i.bp, align 8, !tbaa !857
  store i32 0, ptr %i.bq, align 4, !tbaa !857
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, i8 0, i64 40, i1 false)
  %i.ev = load ptr, ptr %i.m, align 8, !tbaa !2083
  %i.ew = getelementptr inbounds [32 x i8], ptr %i.ev, i64 %indvars.iv.next ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !2092
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.ey, align 8, !tbaa !813 ; 2 uses
  store ptr %i.ex, ptr %i.ar, align 8, !tbaa !834
  store i32 %.sroa.0.0.copyload, ptr %i.at, align 4, !tbaa !813
  store i32 %.sroa.0.0.copyload, ptr %i.as, align 8, !tbaa !813
  %i.ez = call noundef ptr @_ZN5clang4Sema20ActOnParamDeclaratorEPNS_5ScopeERNS_10DeclaratorENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(2664) %10, i32 0)
  %i.fa = load ptr, ptr %i.m, align 8, !tbaa !2083
  %i.fb = getelementptr inbounds [32 x i8], ptr %i.fa, i64 %indvars.iv.next
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store ptr %i.ez, ptr %i.fc, align 8, !tbaa !2093
  call void @_ZN5clang10DeclaratorD2Ev(ptr noundef nonnull align 8 dead_on_return(2664) dereferenceable(2664) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.fd = load i32, ptr %i.br, align 4, !tbaa !899
  %.not.i.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN5clang20ParsedAttributesView4noneEv.exit
  %i.fe = load ptr, ptr %i.bs, align 8, !tbaa !900
  call void @free(ptr noundef %i.fe) #28
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit.i

_ZN5clang12CXXScopeSpecD2Ev.exit.i:               ; preds = %bb.t, %_ZN5clang20ParsedAttributesView4noneEv.exit
  %i.ff = load ptr, ptr %i.ag, align 8, !tbaa !1048, !nonnull !805, !align !806
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.ff, ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #28
  %i.fg = load ptr, ptr %i.ah, align 8, !tbaa !876 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ai
  br i1 %i.fh, label %_ZN5clang13AttributePoolD2Ev.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit.i
  call void @free(ptr noundef %i.fg) #28
  br label %_ZN5clang13AttributePoolD2Ev.exit.i.i

_ZN5clang13AttributePoolD2Ev.exit.i.i:            ; preds = %bb.u, %_ZN5clang12CXXScopeSpecD2Ev.exit.i
  %i.fi = load ptr, ptr %i.ac, align 8, !tbaa !876 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.ad
  br i1 %i.fj, label %_ZN5clang8DeclSpecD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i.i
  call void @free(ptr noundef %i.fi) #28
  br label %_ZN5clang8DeclSpecD2Ev.exit

_ZN5clang8DeclSpecD2Ev.exit:                      ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN5clang16AttributeFactoryD1Ev(ptr noundef nonnull align 8 dead_on_return(1296) dereferenceable(1296) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.w

bb.w:                                             ; preds = %_ZN5clang8DeclSpecD2Ev.exit, %bb.f
  %.not33 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not33, label %.loopexit, label %bb.f, !llvm.loop !3591

.loopexit:                                        ; preds = %bb.w, %bb.e, %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #3

declare void @_ZN5clang16AttributeFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(1296)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5clang16AttributeFactoryD1Ev(ptr noundef nonnull align 8 dead_on_return(1296) dereferenceable(1296)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang4Sema23ActOnStartOfFunctionDefEPNS_5ScopeERNS_10DeclaratorEN4llvm15MutableArrayRefIPNS_21TemplateParameterListEEEPNS_12SkipBodyInfoENS0_10FnBodyKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(2664) %2, ptr %3, i64 %4, ptr nofree noundef captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector.1886", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !996    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !876
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !877
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !878
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !853, !nonnull !805, !align !806
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4294967295
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2060 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.m = load i32, ptr %i.l, align 8, !tbaa !877
  %.not.i.i.not = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5clang10SemaOpenMP57ActOnStartOfFunctionDefinitionInOpenMPDeclareVariantScopeEPNS_5ScopeERNS_10DeclaratorEN4llvm15MutableArrayRefIPNS_21TemplateParameterListEEERNS5_15SmallVectorImplIPNS_12FunctionDeclEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.k, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(2664) %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(16) %7) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 720 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, -13
  %i.q = or disjoint i16 %i.p, 4
  store i16 %i.q, ptr %i.n, align 8
  %i.r = call noundef ptr @_ZN5clang4Sema16HandleDeclaratorEPNS_5ScopeERNS_10DeclaratorEN4llvm15MutableArrayRefIPNS_21TemplateParameterListEEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(2664) %2, ptr %3, i64 %4)
  %i.s = call noundef ptr @_ZN5clang4Sema23ActOnStartOfFunctionDefEPNS_5ScopeEPNS_4DeclEPNS_12SkipBodyInfoENS0_10FnBodyKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef %i.r, ptr noundef %5, i32 noundef %6) ; 2 uses
  %i.t = load i32, ptr %i.c, align 8, !tbaa !877
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2060
  call void @_ZN5clang10SemaOpenMP58ActOnFinishedFunctionDefinitionInOpenMPDeclareVariantScopeEPNS_4DeclERN4llvm15SmallVectorImplIPNS_12FunctionDeclEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.v, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %7) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = load ptr, ptr %7, align 8, !tbaa !876    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.b
  br i1 %i.x, label %_ZN4llvm11SmallVectorIPN5clang12FunctionDeclELj4EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.w) #28
  br label %_ZN4llvm11SmallVectorIPN5clang12FunctionDeclELj4EED2Ev.exit
end_hunk_0

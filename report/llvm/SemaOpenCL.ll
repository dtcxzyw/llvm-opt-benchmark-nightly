Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOpenCL?download=true
inline.NumInlined: 1652
inline.NumDeleted: 900
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5clanglsIA12_cEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_:bb.a
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIA12_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53
  %i.aq = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ap) ; 2 uses
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !52
  br label %_ZNK5clang17PartialDiagnosticlsIA12_cEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIA12_cEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.ar = phi ptr [ %i.aq, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.an, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.as = ptrtoint ptr %1 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.au = load i8, ptr %i.ar, align 8, !tbaa !66
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  store i8 1, ptr %i.aw, align 1, !tbaa !48
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !52 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ax, align 8, !tbaa !66  ; 2 uses
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ax, align 8, !tbaa !66
  %i.bb = zext i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  store i64 %i.as, ptr %i.bc, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIA12_cEERKS0_RKT_.exit, %_ZN5clanglsIA12_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIA6_cEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 1 dereferenceable(6) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZN5clanglsIA6_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.g) ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !52
  br label %_ZN5clanglsIA6_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit

_ZN5clanglsIA6_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.i = phi ptr [ %i.h, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.l = load i8, ptr %i.i, align 8, !tbaa !66
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  store i8 1, ptr %i.n, align 1, !tbaa !48
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i8, ptr %i.o, align 8, !tbaa !66    ; 2 uses
  %i.r = add i8 %i.q, 1
  store i8 %i.r, ptr %i.o, align 8, !tbaa !66
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.s
  store i64 %i.j, ptr %i.t, align 8, !tbaa !67
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.w = load i8, ptr %i.v, align 4, !tbaa !28, !range !18, !noundef !19
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40  ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(168) %i.aa) #17, !inline_history !1
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.af = phi ptr [ %i.ae, %bb.e ], [ null, %bb.d ]
  store ptr %i.af, ptr %2, align 8, !tbaa !44
  %i.ag = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.ai = load i32, ptr %i.u, align 8, !tbaa !14
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIA6_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53
  %i.aq = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ap) ; 2 uses
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !52
  br label %_ZNK5clang17PartialDiagnosticlsIA6_cEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIA6_cEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.ar = phi ptr [ %i.aq, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.an, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.as = ptrtoint ptr %1 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.au = load i8, ptr %i.ar, align 8, !tbaa !66
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  store i8 1, ptr %i.aw, align 1, !tbaa !48
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !52 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ax, align 8, !tbaa !66  ; 2 uses
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ax, align 8, !tbaa !66
  %i.bb = zext i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  store i64 %i.as, ptr %i.bc, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIA6_cEERKS0_RKT_.exit, %_ZN5clanglsIA6_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clangL14checkBlockArgsERNS_4SemaEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.clang::NestedNameSpecifierLoc", align 8 ; 5 uses
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !48
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48
  %i.f = and i64 %i.e, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.0.0.copyload.i16 = load i64, ptr %i.i, align 16, !tbaa !48
  %i.j = and i64 %.sroa.0.0.copyload.i16, -16
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !87  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 16
  %.not.i = icmp eq i8 %i.n, 24
  br i1 %.not.i, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.l) #17
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %i.o, %bb.b ], [ %i.l, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.1.i, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.r = load i64, ptr %i.q, align 16
  %i.s = lshr i64 %i.r, 45
  %.idx = and i64 %i.s, 524280                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %.not38 = icmp samesign eq i64 %.idx, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.i, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %.013.lcssa = phi i1 [ false, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit ], [ %.1, %bb.i ]
  ret i1 %.013.lcssa

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.042 = phi i32 [ 0, %.lr.ph ], [ %5, %bb.i ]   ; 2 uses
  %.01341 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.i ]
  %.01439 = phi ptr [ %i.p, %.lr.ph ], [ %i.bu, %bb.i ] ; 3 uses
  %.0.copyload.i.i.i.i.i17 = load i64, ptr %.01439, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i17, -16
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !87 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !48
  %i.ad = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 16
  %i.ai = icmp eq i8 %i.ah, 40
  br i1 %i.ai, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.aj = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ab) #17
  %i.ak = and i64 %i.aj, -16
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !87
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !48
  %i.ao = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !87 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 16
  %i.at = icmp eq i8 %i.as, 13
  %.not7.i.i = icmp ne ptr %i.aq, null
  %.not.not.not.i.i = and i1 %.not7.i.i, %i.at
  br i1 %.not.not.not.i.i, label %_ZNK5clang4Type10isVoidTypeEv.exit, label %.critedge

_ZNK5clang4Type10isVoidTypeEv.exit:               ; preds = %bb.d
  %i.au = load i32, ptr %i.ar, align 16
  %i.av = and i32 %i.au, 536346624
  %i.aw = icmp eq i32 %i.av, 236978176
  br i1 %i.aw, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit
  %.0.copyload.i.i.i.i.i20 = load i64, ptr %.01439, align 8
  %i.ax = and i64 %.0.copyload.i.i.i.i.i20, -16
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !87
  %i.ba = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.az) #17
  %i.bb = and i64 %i.ba, -16
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bd, align 8 ; 2 uses
  %i.be = and i64 %.0.copyload.i.i.i.i.i.i, 8
  %.not.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i, label %.critedge, label %_ZNK5clang8QualType13getQualifiersEv.exit

_ZNK5clang8QualType13getQualifiersEv.exit:        ; preds = %bb.e
  %i.bf = and i64 %.0.copyload.i.i.i.i.i.i, -16
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %.sroa.0.0.copyload.i.i.i22 = load i64, ptr %i.bh, align 8, !tbaa !67
  %.mask37 = and i64 %.sroa.0.0.copyload.i.i.i22, 4294966784
  %i.bi = icmp eq i64 %.mask37, 1024
  br i1 %i.bi, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %_ZNK5clang4Type10isVoidTypeEv.exit, %bb.c, %_ZNK5clang8QualType13getQualifiersEv.exit
  %i.bj = load i16, ptr %1, align 8
  %i.bk = and i16 %i.bj, 511
  switch i16 %i.bk, label %_ZNK5clang11DeclRefExpr11getBeginLocEv.exit [
    i16 121, label %bb.f
    i16 73, label %bb.g
  ]

bb.f:                                             ; preds = %.critedge
  %i.bl = load ptr, ptr %i.x, align 8, !tbaa !849
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !853
  %4 = zext i32 %.042 to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %4
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !799
  %i.bq = call i32 @_ZNK5clang14DeclaratorDecl16getOuterLocStartEv(ptr noundef nonnull align 8 dereferenceable(68) %i.bp) #17
  br label %_ZNK5clang11DeclRefExpr11getBeginLocEv.exit

bb.g:                                             ; preds = %.critedge
  %i.br = load i32, ptr %1, align 8
  %i.bs = and i32 %i.br, 524288
  %.not.i23 = icmp eq i32 %i.bs, 0
  br i1 %.not.i23, label %bb.h, label %_ZNK5clang11DeclRefExpr15getQualifierLocEv.exit.i

_ZNK5clang11DeclRefExpr15getQualifierLocEv.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.u, align 8, !tbaa !67
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !800
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.v, align 8
  %i.bt = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNK5clang11DeclRefExpr11getBeginLocEv.exit

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.w, align 4, !tbaa !14
  br label %_ZNK5clang11DeclRefExpr11getBeginLocEv.exit

_ZNK5clang11DeclRefExpr11getBeginLocEv.exit:      ; preds = %.critedge, %bb.h, %_ZNK5clang11DeclRefExpr15getQualifierLocEv.exit.i, %bb.f
  %.sroa.0.0 = phi i32 [ %i.bq, %bb.f ], [ 0, %.critedge ], [ %i.bt, %_ZNK5clang11DeclRefExpr15getQualifierLocEv.exit.i ], [ %.sroa.0.0.copyload.i24, %bb.h ]
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 %.sroa.0.0, i32 noundef 4788) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #17
  br label %bb.i

bb.i:                                             ; preds = %_ZNK5clang8QualType13getQualifiersEv.exit, %_ZNK5clang11DeclRefExpr11getBeginLocEv.exit
  %.1 = phi i1 [ true, %_ZNK5clang11DeclRefExpr11getBeginLocEv.exit ], [ %.01341, %_ZNK5clang8QualType13getQualifiersEv.exit ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01439, i64 8 ; 2 uses
  %5 = add i32 %.042, 1
  %.not = icmp eq ptr %i.bu, %i.t
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !846
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang10SemaOpenCL31checkBuiltinKernelWorkGroupSizeEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !19, !align !90
  %i.c = tail call noundef zeroext i1 @_ZN5clang4Sema13checkArgCountEPNS_8CallExprEj(ptr noundef nonnull align 8 dereferenceable(18640) %i.b, ptr noundef %1, i32 noundef 1) #17
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %1, align 8
  %i.f = lshr i32 %i.e, 19
  %i.g = and i32 %i.f, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !778  ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val = load i64, ptr %i.k, align 8, !tbaa !48
  %i.l = and i64 %.val, -16
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !87
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !48
  %i.p = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i8, ptr %i.s, align 16
  %i.u = icmp eq i8 %i.t, 11
  br i1 %i.u, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.v = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #19
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %i.v, i32 noundef 4778) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !780
  %i.y = call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN5clang8CallExpr15getDirectCalleeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 127
  %i.ac = add nsw i32 %i.ab, -35
  %i.ad = icmp ult i32 %i.ac, 6
  %spec.select.i.i.i.i = select i1 %i.ad, ptr %i.y, ptr null
  br label %_ZN5clang8CallExpr15getDirectCalleeEv.exit

_ZN5clang8CallExpr15getDirectCalleeEv.exit:       ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.d ], [ null, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !786
  %i.ae = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_12FunctionDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.af = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIA6_cEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ae, ptr noundef nonnull align 1 dereferenceable(6) @.str.8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !19, !align !90
  %i.ah = tail call fastcc noundef zeroext i1 @_ZN5clangL14checkBlockArgsERNS_4SemaEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ag, ptr noundef nonnull %i.j)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5clang8CallExpr15getDirectCalleeEv.exit, %bb.e, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.ah, %bb.e ], [ true, %_ZN5clang8CallExpr15getDirectCalleeEv.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang10SemaOpenCL25checkBuiltinEnqueueKernelEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %11 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.clang::CanQual", align 8   ; 4 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %15 = alloca %"class.clang::CanQual", align 8   ; 4 uses
  %16 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !785  ; 6 uses
  store i32 %i.o, ptr %i.a, align 4, !tbaa !14
  %i.p = icmp ult i32 %i.o, 4
  br i1 %i.p, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.q = load i32, ptr %1, align 8                ; 4 uses
  %i.r = and i32 %i.q, 16777216
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !14
  br label %_ZNK5clang8CallExpr11getBeginLocEv.exit

bb.d:                                             ; preds = %bb.b
  %i.u = and i32 %i.q, 8388608
  %.not5.i = icmp eq i32 %i.u, 0
  br i1 %.not5.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = lshr i32 %i.q, 19
  %i.x = and i32 %i.w, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !778
  %i.ab = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #19 ; 2 uses
  %.not6.i = icmp eq i32 %i.ab, 0
  br i1 %.not6.i, label %bb.f, label %_ZNK5clang8CallExpr11getBeginLocEv.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !780
  %i.ae = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #19 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.g, label %_ZNK5clang8CallExpr11getBeginLocEv.exit

bb.g:                                             ; preds = %bb.f
  %.not1.i = icmp eq i32 %i.o, 0
  br i1 %.not1.i, label %_ZNK5clang8CallExpr11getBeginLocEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = lshr i32 %i.q, 19
  %i.ai = and i32 %i.ah, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !778 ; 2 uses
  %.not2.i = icmp eq ptr %i.al, null
  br i1 %.not2.i, label %_ZNK5clang8CallExpr11getBeginLocEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #19
  br label %_ZNK5clang8CallExpr11getBeginLocEv.exit

_ZNK5clang8CallExpr11getBeginLocEv.exit:          ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i32 [ %i.ab, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ], [ %i.am, %bb.i ], [ %i.ae, %bb.f ], [ %i.t, %bb.c ]
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.0.0.i, i32 noundef 5352) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.an = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 4, ptr %i.c, align 4, !tbaa !14
  %i.ao = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.ap = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %i.aq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.as

bb.j:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.as = load i32, ptr %1, align 8
  %i.at = lshr i32 %i.as, 19
  %i.au = and i32 %i.at, 1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.av ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !778 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !778
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !778
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
end_hunk_0

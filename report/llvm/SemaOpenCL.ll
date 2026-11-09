Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOpenCL?download=true
inline.NumInlined: 1652
inline.NumDeleted: 900
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5clang4Type13isIntegerTypeEv:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa58, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !806  ; 2 uses
  %i.o = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.n) #17 ; 2 uses
  %.not.not.i = icmp eq ptr %i.o, null
  %..i = select i1 %.not.not.i, ptr %i.n, ptr %i.o ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %..i, i64 74
  %i.q = load i8, ptr %i.p, align 2
  %i.r = trunc i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %..i, i64 128
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.s, align 8
  %i.t = icmp ugt i64 %.0.copyload.i.i.i.i.i, 7
  %i.u = select i1 %i.r, i1 true, i1 %i.t
  br i1 %i.u, label %bb.b, label %.thread26

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !806
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load i40, ptr %i.w, align 8
  %i.y = icmp sgt i40 %i.x, -1
  br label %.thread26

.lr.ph66:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.0.copyload.i.i.i.i65 = phi i64 [ %.sroa.0.0.copyload.i.i.i, %.lr.ph ], [ %.sroa.0.0.copyload.i.i.i38, %.lr.ph.preheader ]
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i65, -16
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !87 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i8, ptr %i.ac, align 16            ; 2 uses
  %i.ae = icmp ne i8 %i.ad, 35
  %.not18.not32 = icmp eq ptr %i.ab, null
  %.not18.not = or i1 %.not18.not32, %i.ae
  br i1 %.not18.not, label %bb.c, label %tailrecurse

tailrecurse:                                      ; preds = %.lr.ph66
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.af, align 16, !tbaa !48
  %i.ag = and i64 %.sroa.0.0.copyload.i, -16
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !87
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !48 ; 2 uses
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !87 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i8, ptr %i.an, align 16            ; 2 uses
  %i.ap = icmp ne i8 %i.ao, 13
  %.not.not30 = icmp eq ptr %i.am, null
  %.not.not = or i1 %.not.not30, %i.ap
  br i1 %.not.not, label %.lr.ph, label %tailrecurse._crit_edge

bb.c:                                             ; preds = %.lr.ph66
  %i.aq = icmp eq i8 %i.ad, 10
  br label %.thread26

.thread26:                                        ; preds = %bb.b, %.lr.ph._crit_edge, %tailrecurse._crit_edge, %bb.c
  %.3 = phi i1 [ %i.aq, %bb.c ], [ %i.y, %bb.b ], [ %spec.select.i, %tailrecurse._crit_edge ], [ false, %.lr.ph._crit_edge ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIA37_cEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 1 dereferenceable(37) %1) local_unnamed_addr #0 comdat {
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
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZN5clanglsIA37_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.g) ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !52
  br label %_ZN5clanglsIA37_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit

_ZN5clanglsIA37_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
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
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIA37_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53
  %i.aq = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ap) ; 2 uses
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !52
  br label %_ZNK5clang17PartialDiagnosticlsIA37_cEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIA37_cEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
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

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIA37_cEERKS0_RKT_.exit, %_ZN5clanglsIA37_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clangL30checkOpenCLEnqueueVariadicArgsERNS_4SemaEPNS_8CallExprEPNS_4ExprEj(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef readonly captures(none) %1, i64 %.8.val, i32 noundef range(i32 4, 8) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.a = and i64 %.8.val, -16
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48
  %i.e = and i64 %i.d, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.0.copyload.i13 = load i64, ptr %i.h, align 16, !tbaa !48
  %i.i = and i64 %.sroa.0.0.copyload.i13, -16
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !87  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i8, ptr %i.l, align 16
  %.not.i = icmp eq i8 %i.m, 24
  br i1 %.not.i, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.k) #17
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %i.n, %bb.b ], [ %i.k, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.p = load i64, ptr %i.o, align 16
  %i.q = lshr i64 %i.p, 48
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !785  ; 4 uses
  %i.u = add nuw nsw i32 %2, %i.r
  %.not = icmp eq i32 %i.t, %i.u
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %1, align 8                ; 4 uses
  %i.x = and i32 %i.w, 16777216
  %.not.i14 = icmp eq i32 %i.x, 0
  br i1 %.not.i14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !14
  br label %_ZNK5clang8CallExpr11getBeginLocEv.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = and i32 %i.w, 8388608
  %.not5.i = icmp eq i32 %i.aa, 0
  br i1 %.not5.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = lshr i32 %i.w, 19
  %i.ad = and i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !778
  %i.ah = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #19 ; 2 uses
  %.not6.i = icmp eq i32 %i.ah, 0
  br i1 %.not6.i, label %bb.g, label %_ZNK5clang8CallExpr11getBeginLocEv.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !780
  %i.ak = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #19 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %_ZNK5clang8CallExpr11getBeginLocEv.exit

bb.h:                                             ; preds = %bb.g
  %.not1.i = icmp eq i32 %i.t, 0
  br i1 %.not1.i, label %_ZNK5clang8CallExpr11getBeginLocEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = lshr i32 %i.w, 19
  %i.ao = and i32 %i.an, 1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !778 ; 2 uses
  %.not2.i = icmp eq ptr %i.ar, null
  br i1 %.not2.i, label %_ZNK5clang8CallExpr11getBeginLocEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #19
  br label %_ZNK5clang8CallExpr11getBeginLocEv.exit

_ZNK5clang8CallExpr11getBeginLocEv.exit:          ; preds = %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.i = phi i32 [ %i.ah, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ], [ %i.as, %bb.j ], [ %i.ak, %bb.g ], [ %i.z, %bb.d ]
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i32 %.sroa.0.0.i, i32 noundef 4791) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #17
  br label %_ZN5clangL31checkOpenCLEnqueueLocalSizeArgsERNS_4SemaEPNS_8CallExprEjj.exit

bb.k:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.at = add nsw i32 %i.t, -1
  %.not14.i = icmp samesign ugt i32 %2, %i.at
  br i1 %.not14.i, label %_ZN5clangL31checkOpenCLEnqueueLocalSizeArgsERNS_4SemaEPNS_8CallExprEjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %i.t to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZN5clangL25checkOpenCLEnqueueIntTypeERNS_4SemaEPNS_4ExprERKNS_8QualTypeE.exit.i, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5clangL25checkOpenCLEnqueueIntTypeERNS_4SemaEPNS_4ExprERKNS_8QualTypeE.exit.i ], [ %5, %.lr.ph.i ] ; 2 uses
  %.0915.i = phi i1 [ %.0.i.i, %_ZN5clangL25checkOpenCLEnqueueIntTypeERNS_4SemaEPNS_4ExprERKNS_8QualTypeE.exit.i ], [ false, %.lr.ph.i ]
  %i.ax = load i32, ptr %1, align 8
  %i.ay = lshr i32 %i.ax, 19
  %i.az = and i32 %i.ay, 1
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !778 ; 4 uses
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !771, !nonnull !19, !align !90
  %i.bf = call i64 @_ZNK5clang10ASTContext11getSizeTypeEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.be) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.0.0.copyload.i.i.i15 = load i64, ptr %i.bg, align 8, !tbaa !48
  %i.bh = and i64 %.sroa.0.0.copyload.i.i.i15, -16
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !87
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.0.0.copyload.i.i.i38.i.i.i = load i64, ptr %i.bk, align 8, !tbaa !48 ; 2 uses
  %i.bl = and i64 %.sroa.0.0.copyload.i.i.i38.i.i.i, -16
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !87 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i8, ptr %i.bo, align 16            ; 2 uses
  %i.bq = icmp ne i8 %i.bp, 13
  %.not.not3039.i.i.i = icmp eq ptr %i.bn, null
  %.not.not40.i.i.i = or i1 %.not.not3039.i.i.i, %i.bq
  br i1 %.not.not40.i.i.i, label %.lr.ph.i.preheader.i.i, label %tailrecurse._crit_edge.i.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.l
  %.not.i10.i.i = icmp eq i8 %i.bp, 47
  br i1 %.not.i10.i.i, label %.lr.ph.i._crit_edge.i.i, label %.lr.ph.i.i

tailrecurse._crit_edge.i.i.i:                     ; preds = %tailrecurse.i.i.i, %bb.l
  %.lcssa.i.i.i = phi ptr [ %i.bn, %bb.l ], [ %i.cs, %tailrecurse.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i, i64 16
  %i.bs = load i32, ptr %i.br, align 16
  %i.bt = lshr i32 %i.bs, 19
  %i.bu = and i32 %i.bt, 1023
  %i.bv = add nsw i32 %i.bu, -453
  %spec.select.i.i.i.i = icmp ult i32 %i.bv, 20
  br i1 %spec.select.i.i.i.i, label %bb.m, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %tailrecurse.i.i.i
  %.not.i.i.i = icmp eq i8 %i.cu, 47
  br i1 %.not.i.i.i, label %.lr.ph.i._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i._crit_edge.i.i:                          ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.lcssa.i.i = phi ptr [ %i.bn, %.lr.ph.i.preheader.i.i ], [ %i.cs, %.lr.ph.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 24 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !806 ; 2 uses
  %i.by = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.bx) #17, !inline_history !807 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.by, null
  %..i.i.i.i = select i1 %.not.not.i.i.i.i, ptr %i.bx, ptr %i.by ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %..i.i.i.i, i64 74
  %i.ca = load i8, ptr %i.bz, align 2
  %i.cb = trunc i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %..i.i.i.i, i64 128
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.cc, align 8
  %i.cd = icmp ugt i64 %.0.copyload.i.i.i.i.i.i.i.i, 7
  %i.ce = select i1 %i.cb, i1 true, i1 %i.cd
  br i1 %i.ce, label %_ZNK5clang4Type13isIntegerTypeEv.exit.i.i, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i11.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i38.i.i.i, %.lr.ph.i.preheader.i.i ]
  %i.cf = and i64 %.sroa.0.0.copyload.i.i.i.i.i11.i.i, -16
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !87 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i8, ptr %i.ci, align 16            ; 2 uses
  %i.ck = icmp ne i8 %i.cj, 35
  %.not18.not32.i.i.i = icmp eq ptr %i.ch, null
  %.not18.not.i.i.i = or i1 %.not18.not32.i.i.i, %i.ck
  br i1 %.not18.not.i.i.i, label %.split.i.i, label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %.lr.ph.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.cl, align 16, !tbaa !48
  %i.cm = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !87
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !48 ; 2 uses
  %i.cq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load ptr, ptr %i.cr, align 16, !tbaa !87 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i8, ptr %i.ct, align 16            ; 2 uses
  %i.cv = icmp ne i8 %i.cu, 13
  %.not.not30.i.i.i = icmp eq ptr %i.cs, null
  %.not.not.i.i.i = or i1 %.not.not30.i.i.i, %i.cv
  br i1 %.not.not.i.i.i, label %.lr.ph.i.i.i, label %tailrecurse._crit_edge.i.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.cw = icmp eq i8 %i.cj, 10
  br i1 %i.cw, label %bb.m, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread.i.i

_ZNK5clang4Type13isIntegerTypeEv.exit.i.i:        ; preds = %.lr.ph.i._crit_edge.i.i
  %i.cx = load ptr, ptr %i.bw, align 8, !tbaa !806
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.cz = load i40, ptr %i.cy, align 8
  %i.da = icmp sgt i40 %i.cz, -1
  br i1 %i.da, label %bb.m, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread.i.i

_ZNK5clang4Type13isIntegerTypeEv.exit.thread.i.i: ; preds = %_ZNK5clang4Type13isIntegerTypeEv.exit.i.i, %.split.i.i, %.lr.ph.i._crit_edge.i.i, %tailrecurse._crit_edge.i.i.i
  %i.db = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) #19
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 %i.db, i32 noundef 4790) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #17
  br label %_ZN5clangL25checkOpenCLEnqueueIntTypeERNS_4SemaEPNS_4ExprERKNS_8QualTypeE.exit.i

bb.m:                                             ; preds = %_ZNK5clang4Type13isIntegerTypeEv.exit.i.i, %.split.i.i, %tailrecurse._crit_edge.i.i.i
  %i.dc = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) #19
  call void @_ZN5clang4Sema23CheckImplicitConversionEPNS_4ExprENS_8QualTypeENS_14SourceLocationEPbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.bd, i64 %i.bf, i32 %i.dc, ptr noundef null, i1 noundef zeroext false) #17
  br label %_ZN5clangL25checkOpenCLEnqueueIntTypeERNS_4SemaEPNS_4ExprERKNS_8QualTypeE.exit.i

_ZN5clangL25checkOpenCLEnqueueIntTypeERNS_4SemaEPNS_4ExprERKNS_8QualTypeE.exit.i: ; preds = %bb.m, %_ZNK5clang4Type13isIntegerTypeEv.exit.thread.i.i
  %.0.i.i = phi i1 [ %.0915.i, %bb.m ], [ true, %_ZNK5clang4Type13isIntegerTypeEv.exit.thread.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN5clangL31checkOpenCLEnqueueLocalSizeArgsERNS_4SemaEPNS_8CallExprEjj.exit, label %bb.l, !llvm.loop !854

_ZN5clangL31checkOpenCLEnqueueLocalSizeArgsERNS_4SemaEPNS_8CallExprEjj.exit: ; preds = %_ZN5clangL25checkOpenCLEnqueueIntTypeERNS_4SemaEPNS_4ExprERKNS_8QualTypeE.exit.i, %bb.k, %_ZNK5clang8CallExpr11getBeginLocEv.exit
  %.0 = phi i1 [ true, %_ZNK5clang8CallExpr11getBeginLocEv.exit ], [ false, %bb.k ], [ %.0.i.i, %_ZN5clangL25checkOpenCLEnqueueIntTypeERNS_4SemaEPNS_4ExprERKNS_8QualTypeE.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIA8_cEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 1 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
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
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZN5clanglsIA8_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.g) ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !52
  br label %_ZN5clanglsIA8_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit

_ZN5clanglsIA8_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
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
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIA8_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53
  %i.aq = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ap) ; 2 uses
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !52
  br label %_ZNK5clang17PartialDiagnosticlsIA8_cEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIA8_cEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
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

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIA8_cEERKS0_RKT_.exit, %_ZN5clanglsIA8_cEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit
  ret ptr %0
}

declare noundef i32 @_ZNK5clang4Expr21isNullPointerConstantERNS_10ASTContextENS0_34NullPointerConstantValueDependenceE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(23904), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4Type28getPointeeOrArrayElementTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !48
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 16              ; 2 uses
  switch i8 %i.f, label %bb.c [
    i8 40, label %bb.b
    i8 31, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.g = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %0) #17
  %i.h = and i64 %i.g, -16
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !87
  br label %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = add i8 %i.f, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.k, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %.preheader, label %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit

.preheader:                                       ; preds = %bb.c, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i
  %.05.i = phi ptr [ %i.z, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i ], [ %0, %bb.c ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.m = load i8, ptr %i.l, align 16
  %i.n = add i8 %i.m, -7
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.n, -5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i

bb.d:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i7 = load i64, ptr %i.o, align 8, !tbaa !48
  %i.p = and i64 %.sroa.0.0.copyload.i.i.i.i.i7, -16
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i8, ptr %i.s, align 16
  %i.u = add i8 %i.t, -2
  %switch.i.i.i.i.i.i.i.i5.i.i = icmp ult i8 %i.u, 5
  br i1 %switch.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i, label %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i:   ; preds = %bb.d
  %i.v = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %.05.i) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread9.i: ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i, %.preheader
  %.1.i12.i = phi ptr [ %i.v, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i ], [ %.05.i, %.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.1.i12.i, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.w, align 16, !tbaa !48
  %i.x = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !87
  br label %.preheader

_ZNK5clang4Type24getBaseElementTypeUnsafeEv.exit: ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ %0, %bb.c ], [ %.05.i, %bb.d ], [ %.05.i, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_7CanQualINS_4TypeEEEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !48
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_7CanQualINS_4TypeEEEvEERKS1_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
end_hunk_0

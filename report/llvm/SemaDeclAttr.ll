Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDeclAttr?download=true
inline.NumInlined: 13074
inline.NumDeleted: 6077
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNK5clang13CXXRecordDecl13getDefinitionEv:bb.a
  %i.ao = phi ptr [ %i.an, %bb.m ], [ %i.b, %bb.a ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1729
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread
  %i.ar = phi ptr [ %i.aq, %.thread ], [ null, %bb.m ]
  ret ptr %i.ar
}

declare noundef i32 @_ZNK5clang13CXXRecordDecl25calculateInheritanceModelEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_13CXXRecordDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !77, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1395
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZN5clanglsIPNS_13CXXRecordDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.i = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.h) ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !83
  br label %_ZN5clanglsIPNS_13CXXRecordDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit

_ZN5clanglsIPNS_13CXXRecordDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.j, align 8, !tbaa !97
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 10, ptr %i.o, align 1, !tbaa !69
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !83   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.p, align 8, !tbaa !97    ; 2 uses
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %i.p, align 8, !tbaa !97
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  store i64 %i.k, ptr %i.u, align 8, !tbaa !74
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.x = load i8, ptr %i.w, align 4, !tbaa !99, !range !78, !noundef !79
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !111 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !113
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #23, !inline_history !0
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ]
  store ptr %i.ag, ptr %2, align 8, !tbaa !115
  %i.ah = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !66
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !118
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !1395
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIPNS_13CXXRecordDeclEEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !84
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !83
  br label %_ZNK5clang17PartialDiagnosticlsIPNS_13CXXRecordDeclEEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIPNS_13CXXRecordDeclEEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.at, align 8, !tbaa !97
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 10, ptr %i.ay, align 1, !tbaa !69
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !83 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !97  ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !97
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIPNS_13CXXRecordDeclEEERKS0_RKT_.exit, %_ZN5clanglsIPNS_13CXXRecordDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema11AddModeAttrEPNS_4DeclERKNS_19AttributeCommonInfoEPKNS_14IdentifierInfoEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 19 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 9 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %10 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %11 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %13 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8
  %15 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !1353
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !129
  %i.l = and i64 %i.k, 4294967295                 ; 6 uses
  %i.m = icmp samesign ugt i64 %i.l, 4
  br i1 %i.m, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i, label %_ZL13normalizeNameRN4llvm9StringRefE.exit

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.a
  %i.n = load i16, ptr %i.j, align 1
  %i.o = icmp ne i16 %i.n, 24415
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNK4llvm9StringRef9ends_withES0_.exit.i, label %_ZL13normalizeNameRN4llvm9StringRefE.exit

_ZNK4llvm9StringRef9ends_withES0_.exit.i:         ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -2
  %i.t = load i16, ptr %i.s, align 1
  %i.u = icmp ne i16 %i.t, 24415
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i, label %_ZL13normalizeNameRN4llvm9StringRefE.exit

_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i:  ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  %i.y = add nsw i64 %i.l, -4
  br label %_ZL13normalizeNameRN4llvm9StringRefE.exit

_ZL13normalizeNameRN4llvm9StringRefE.exit:        ; preds = %bb.a, %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %_ZNK4llvm9StringRef9ends_withES0_.exit.i, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i
  %.sroa.10.0 = phi i64 [ %i.y, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i ], [ %i.l, %_ZNK4llvm9StringRef9ends_withES0_.exit.i ], [ %i.l, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %i.l, %bb.a ] ; 6 uses
  %.sroa.0170.0 = phi ptr [ %i.x, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i ], [ %i.j, %_ZNK4llvm9StringRef9ends_withES0_.exit.i ], [ %i.j, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %i.j, %bb.a ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.z, align 8, !tbaa !66 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 1, ptr %i.c, align 1, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i8 0, ptr %i.d, align 1, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 0, ptr %i.e, align 4, !tbaa !1397
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i32 64, ptr %i.aa, align 8, !tbaa !835
  store i64 0, ptr %5, align 8, !tbaa !69
  %i.ab = icmp samesign ugt i64 %.sroa.10.0, 3
  br i1 %i.ab, label %bb.b, label %.split191.thread

bb.b:                                             ; preds = %_ZL13normalizeNameRN4llvm9StringRefE.exit
  %i.ac = load i8, ptr %.sroa.0170.0, align 1, !tbaa !69
  %i.ad = icmp eq i8 %i.ac, 86
  br i1 %i.ad, label %.preheader.preheader, label %_ZN4llvm5APIntaSEm.exit

.preheader.preheader:                             ; preds = %bb.b
  %i.ae = add nsw i64 %.sroa.10.0, -1             ; 4 uses
  %exitcond.not302 = icmp eq i64 %i.ae, 0
  br i1 %exitcond.not302, label %.critedge.thread, label %.lr.ph304

.preheader:                                       ; preds = %.lr.ph304
  %exitcond.not = icmp eq i64 %i.af, %i.ae
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph304, !llvm.loop !1730

.critedge.thread:                                 ; preds = %.preheader, %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  br label %bb.c

.lr.ph304:                                        ; preds = %.preheader.preheader, %.preheader
  %.0303 = phi i64 [ %i.af, %.preheader ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.af = add nuw i64 %.0303, 1                   ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0170.0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !69
  %i.ai = sext i8 %i.ah to i32
  %isdigittmp = add nsw i32 %i.ai, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.preheader, label %.critedge, !llvm.loop !1730

.critedge:                                        ; preds = %.lr.ph304
  %.not = icmp eq i64 %.0303, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  br i1 %.not, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.sink.split, label %bb.c

bb.c:                                             ; preds = %.critedge.thread, %.critedge
  %.0233 = phi i64 [ %i.ae, %.critedge.thread ], [ %.0303, %.critedge ]
  %i.aj = phi i64 [ %.sroa.10.0, %.critedge.thread ], [ %i.af, %.critedge ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0170.0, i64 1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %.0233)
  store ptr %i.ak, ptr %6, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.speculated.i, ptr %i.al, align 8
  %i.am = call noundef zeroext i1 @_ZNK4llvm9StringRef12getAsIntegerEjRNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(12) %5) #23
  %.pr.pre.pre = load i32, ptr %i.aa, align 8, !tbaa !835 ; 3 uses
  br i1 %i.am, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.pr.pre.pre, 65
  br i1 %i.an, label %bb.e, label %.split

bb.e:                                             ; preds = %bb.d
  %i.ao = load i64, ptr %5, align 8, !tbaa !69    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.sink.split, label %_ZNK4llvm5APInt10isPowerOf2Ev.exit

.split:                                           ; preds = %bb.d
  %i.ap = call noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %i.ap, label %bb.f, label %.thread

_ZNK4llvm5APInt10isPowerOf2Ev.exit:               ; preds = %bb.e
  %i.aq = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.ao)
  %i.ar = icmp samesign ult i64 %i.aq, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %i.ar, label %bb.f, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i

bb.f:                                             ; preds = %.split, %_ZNK4llvm5APInt10isPowerOf2Ev.exit
  %.sroa.speculated4.i97 = call i64 @llvm.umin.i64(i64 %.sroa.10.0, i64 %i.aj) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0170.0, i64 %.sroa.speculated4.i97
  %i.at = sub nuw nsw i64 %.sroa.10.0, %.sroa.speculated4.i97
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val93 = load ptr, ptr %i.au, align 8
  call fastcc void @_ZL16parseModeAttrArgRN5clang4SemaEN4llvm9StringRefERjRbS5_RNS_13FloatModeKindE(ptr %.val93, ptr nonnull %i.as, i64 %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  br i1 %4, label %_ZN4llvm5APIntaSEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.av, i32 %.sroa.0.0.copyload.i.i, i32 noundef 7830) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #23
  br label %_ZN4llvm5APIntaSEm.exit

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.aw = icmp ult i32 %.pr.pre.pre, 65
  br i1 %i.aw, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, label %.thread

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.sink.split: ; preds = %bb.e, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i:         ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.sink.split, %_ZNK4llvm5APInt10isPowerOf2Ev.exit, %bb.h
  store i64 0, ptr %5, align 8, !tbaa !69
  br label %_ZN4llvm5APIntaSEm.exit

.thread:                                          ; preds = %.split, %bb.h
  %i.ax = load ptr, ptr %5, align 8, !tbaa !69
  store i64 0, ptr %i.ax, align 8, !tbaa !74
  %i.ay = load ptr, ptr %5, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = zext i32 %.pr.pre.pre to i64
  %i.bb = add nuw nsw i64 %i.ba, 63
  %sh.diff.i = lshr i64 %i.bb, 3
  %i.bc = and i64 %sh.diff.i, 1073741816
  %i.bd = add nsw i64 %i.bc, -8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.az, i8 0, i64 %i.bd, i1 false)
  br label %_ZN4llvm5APIntaSEm.exit

_ZN4llvm5APIntaSEm.exit:                          ; preds = %.thread, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, %bb.g, %bb.f, %bb.b
  %.pr190 = load i32, ptr %i.aa, align 8, !tbaa !835 ; 2 uses
  %i.be = icmp ult i32 %.pr190, 65
  br i1 %i.be, label %.split191, label %_ZNK4llvm5APIntntEv.exit

.split191:                                        ; preds = %_ZN4llvm5APIntaSEm.exit
  %.pr207 = load i64, ptr %5, align 8, !tbaa !69
  %i.bf = icmp eq i64 %.pr207, 0
  br i1 %i.bf, label %.split191.thread, label %bb.i

_ZNK4llvm5APIntntEv.exit:                         ; preds = %_ZN4llvm5APIntaSEm.exit
  %i.bg = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %5) #22
  %i.bh = icmp eq i32 %i.bg, %.pr190
  br i1 %i.bh, label %.split191.thread, label %bb.i

.split191.thread:                                 ; preds = %_ZL13normalizeNameRN4llvm9StringRefE.exit, %.split191, %_ZNK4llvm5APIntntEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val = load ptr, ptr %i.bi, align 8
  call fastcc void @_ZL16parseModeAttrArgRN5clang4SemaEN4llvm9StringRefERjRbS5_RNS_13FloatModeKindE(ptr %.val, ptr nonnull %.sroa.0170.0, i64 %.sroa.10.0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  br label %bb.i

bb.i:                                             ; preds = %.split191, %.split191.thread, %_ZNK4llvm5APIntntEv.exit
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !66  ; 4 uses
  %.not81 = icmp eq i32 %i.bj, 0
  br i1 %.not81, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i32 %.sroa.0.0.copyload.i.i, i32 noundef 4211) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i32 0, ptr %i.f, align 4, !tbaa !66
  %i.bl = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.bm = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_14IdentifierInfoEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bi

bb.k:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = and i32 %i.bo, 127                      ; 2 uses
  %i.bq = add nsw i32 %i.bp, -68
  %i.br = icmp ult i32 %i.bq, -3
  %.not82208 = icmp eq ptr %1, null               ; 4 uses
  %.not82 = or i1 %.not82208, %i.br
  br i1 %.not82, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bs, align 8 ; 2 uses
  %i.bt = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = shl i64 %.0.copyload.i.i.i.i.i, 1
  %.sroa.0.0.in.idx.i = and i64 %i.bv, 8
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.0.0.in.idx.i
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !tbaa !69
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.bw = icmp ne i32 %i.bp, 63
  %.not83 = or i1 %.not82208, %i.bw
  br i1 %.not83, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.0.copyload.i.i.i.i = load i64, ptr %i.bx, align 8 ; 4 uses
  %i.by = icmp ugt i64 %.0.copyload.i.i.i.i, 7
  br i1 %i.by, label %bb.o, label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bz = and i64 %.0.copyload.i.i.i.i, 4
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = and i64 %.0.copyload.i.i.i.i, -5
  %i.cb = inttoptr i64 %i.ca to ptr
  %.sroa.0.0.copyload.i.i102 = load i64, ptr %i.cb, align 8, !tbaa !69 ; 2 uses
  %i.cc = and i64 %.sroa.0.0.copyload.i.i102, -16
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !144 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.0.0.copyload.i.i5.i = load i64, ptr %i.cf, align 8, !tbaa !69
  %i.cg = and i64 %.sroa.0.0.copyload.i.i5.i, 15
  %.not.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i102) #23
  %i.ci = extractvalue { ptr, i64 } %i.ch, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i: ; preds = %bb.q, %bb.p
  %.sroa.03.0.in.in.i.i = phi ptr [ %i.ci, %bb.q ], [ %i.ce, %bb.p ]
  %.sroa.03.0.in.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i to i64
  br label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit

_ZNK5clang8EnumDecl14getIntegerTypeEv.exit:       ; preds = %bb.o, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i
  %.sroa.06.1.i.in = phi i64 [ %.sroa.03.0.in.i.i, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i ], [ %.0.copyload.i.i.i.i, %bb.o ] ; 2 uses
  %i.cj = icmp ult i64 %.sroa.06.1.i.in, 16
  br i1 %i.cj, label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit.thread, label %bb.s

_ZNK5clang8EnumDecl14getIntegerTypeEv.exit.thread: ; preds = %bb.n, %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !832, !nonnull !79, !align !833
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 18984
  %.sroa.0.0.copyload.i = load i64, ptr %i.cm, align 8, !tbaa !69
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i104 = load i64, ptr %i.cn, align 8, !tbaa !69
end_hunk_0

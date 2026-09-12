Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaHLSL?download=true
inline.NumInlined: 8651
inline.NumDeleted: 3917
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i32, ptr %1, align 4, !tbaa !68
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !1216 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1217
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !1216
  br label %_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit

_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.au = zext i32 %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.at, align 8, !tbaa !1229
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 3, ptr %i.ay, align 1, !tbaa !817
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !1216 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !1229 ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !1229
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit, %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIjvEERKS1_OT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1212, !range !823, !noundef !101
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 4 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1216 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %bb.c

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1217
  %i.h = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.g) ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !1216
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, %bb.b
  %i.i = phi ptr [ %i.h, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 424 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !49   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 428
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52
  %.not.i5.i.i.i.i = icmp ult i32 %i.l, %i.n
  br i1 %.not.i5.i.i.i.i, label %bb.e, label %bb.d, !prof !53

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 %.sroa.0.0.copyload.i.i, i8 1)
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_11SourceRangeEvEERKS1_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.o ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.q, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i.i, align 1
  %i.r = load i32, ptr %i.k, align 8, !tbaa !49
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !49
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_11SourceRangeEvEERKS1_OT_.exit

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.v = load i8, ptr %i.u, align 4, !tbaa !822, !range !823, !noundef !101
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_11SourceRangeEvEERKS1_OT_.exit

bb.g:                                             ; preds = %bb.f
  %i.x = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1235 ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !834
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(168) %i.z) #23, !inline_history !5
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ %i.ad, %bb.h ], [ null, %bb.g ]
  store ptr %i.ae, ptr %2, align 8, !tbaa !1237
  %i.af = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !68
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !1240
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 4 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1216 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %bb.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1217
  %i.ap = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ao) ; 2 uses
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !1216
  br label %bb.i

bb.i:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = phi ptr [ %i.ap, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.am, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 416 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 424 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !49 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 428
  %i.av = load i32, ptr %i.au, align 4, !tbaa !52
  %.not.i5.i.i.i = icmp ult i32 %i.at, %i.av
  br i1 %.not.i5.i.i.i, label %bb.k, label %bb.j, !prof !53

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 %.sroa.0.0.copyload.i, i8 1)
  br label %_ZNK5clang17PartialDiagnosticlsINS_11SourceRangeEvEERKS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = zext i32 %i.at to i64
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !54
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %i.aw ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.ay, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i, align 1
  %i.az = load i32, ptr %i.as, align 8, !tbaa !49
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.as, align 8, !tbaa !49
  br label %_ZNK5clang17PartialDiagnosticlsINS_11SourceRangeEvEERKS0_OT_.exit

_ZNK5clang17PartialDiagnosticlsINS_11SourceRangeEvEERKS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_11SourceRangeEvEERKS1_OT_.exit

_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_11SourceRangeEvEERKS1_OT_.exit: ; preds = %bb.e, %bb.d, %bb.f, %_ZNK5clang17PartialDiagnosticlsINS_11SourceRangeEvEERKS0_OT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN5clang4Sema19checkArgCountAtMostEPNS_8CallExprEj(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL22CheckArgAddrSpaceOneOfPN5clang4SemaEPNS_8CallExprEjN4llvm8ArrayRefINS_6LangASEEE(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(address) %2, i64 %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i32, ptr %1, align 8
  %i.d = lshr i32 %i.c, 19
  %i.e = and i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1519 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.i = tail call noundef ptr @_ZN5clang4Expr11IgnoreCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8, !tbaa !817 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.k = and i64 %.sroa.0.0.copyload.i, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8 ; 2 uses
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i, 8
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %_ZNK5clang8QualType15getAddressSpaceEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !51
  %i.r = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %6 = lshr i32 %i.r, 9
  br label %_ZNK5clang8QualType15getAddressSpaceEv.exit

_ZNK5clang8QualType15getAddressSpaceEv.exit:      ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i32 [ %6, %bb.b ], [ 0, %bb.a ] ; 7 uses
  %.idx4.i = shl nuw nsw i64 %3, 2                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.idx4.i
  %i.t = lshr i64 %3, 2                           ; 2 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK5clang8QualType15getAddressSpaceEv.exit
  %i.u = and i64 %.idx4.i, 9223372036854775792
  %scevgep.i.i.i.i = getelementptr i8, ptr %2, i64 %i.u
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.g ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %2, %.lr.ph.i.i.i.i ], [ %i.ag, %bb.g ] ; 9 uses
  %i.v = load i32, ptr %.02946.i.i.i.i, align 4, !tbaa !1521
  %i.w = icmp eq i32 %i.v, %.sroa.0.0.i.i.i
  br i1 %i.w, label %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1521
  %i.z = icmp eq i32 %i.y, %.sroa.0.0.i.i.i
  br i1 %i.z, label %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !1521
  %i.ac = icmp eq i32 %i.ab, %.sroa.0.0.i.i.i
  br i1 %i.ac, label %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1521
  %i.af = icmp eq i32 %i.ae, %.sroa.0.0.i.i.i
  br i1 %i.af, label %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.ah = add nsw i64 %.047.i.i.i.i, -1
  %i.ai = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.ai, label %bb.c, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !1900

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %i.aj = and i64 %3, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZNK5clang8QualType15getAddressSpaceEv.exit
  %.pre-phi56.i.i.i.i = phi i64 [ %i.aj, %._crit_edge.loopexit.i.i.i.i ], [ %3, %_ZNK5clang8QualType15getAddressSpaceEv.exit ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %2, %_ZNK5clang8QualType15getAddressSpaceEv.exit ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i, label %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.thread [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = load i32, ptr %.029.lcssa.i.i.i.i, align 4, !tbaa !1521
  %i.al = icmp eq i32 %i.ak, %.sroa.0.0.i.i.i
  br i1 %i.al, label %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.1.i.i.i.i = phi ptr [ %i.am, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.an = load i32, ptr %.1.i.i.i.i, align 4, !tbaa !1521
  %i.ao = icmp eq i32 %i.an, %.sroa.0.0.i.i.i
  br i1 %i.ao, label %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.j
  %.2.i.i.i.i = phi ptr [ %i.ap, %bb.j ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.aq = load i32, ptr %.2.i.i.i.i, align 4, !tbaa !1521
  %i.ar = icmp eq i32 %i.aq, %.sroa.0.0.i.i.i
  br i1 %i.ar, label %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit, label %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  br label %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit23: ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit25: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  br label %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit: ; preds = %bb.c, %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit23, %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit25, %bb.h, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.h ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.au, %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit25 ], [ %i.at, %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit23 ], [ %i.as, %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.c ]
  %.not = icmp eq ptr %.028.i.i.i.i, %i.s
  br i1 %.not, label %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.thread, label %bb.k

_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #25
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.av, i32 %i.aw, i32 noundef 3936) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 1, ptr %i.a, align 4, !tbaa !68
  %i.ax = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ay = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit, %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.thread
  %.0 = phi i1 [ false, %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit ], [ true, %_ZN4llvm12is_containedIRNS_8ArrayRefIN5clang6LangASEEES3_EEbOT_RKT0_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL30CheckUnsignedIntRepresentationPN5clang4SemaENS_14SourceLocationEiNS_8QualTypeE(ptr noundef %0, i32 %1, i32 noundef %2, i64 %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.clang::QualType", align 8   ; 2 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  store i64 %3, ptr %4, align 8
  store i32 %2, ptr %i.a, align 4, !tbaa !68
  %i.e = and i64 %3, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !837
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Type32hasUnsignedIntegerRepresentationEv(ptr noundef nonnull align 16 dereferenceable(24) %i.g) #23
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 %1, i32 noundef 3370) #23
  %i.j = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIiEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 5, ptr %i.b, align 4, !tbaa !68
  %i.k = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 3, ptr %i.c, align 4, !tbaa !68
  %i.l = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.m = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.n = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.p = load i8, ptr %i.o, align 8, !tbaa !1212, !range !823, !noundef !101
  %i.q = trunc nuw i8 %i.p to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.q, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang4Type12isScalarTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !817
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !837 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 16              ; 4 uses
  %i.g = icmp ne i8 %i.f, 13
  %.not.not24 = icmp eq ptr %i.d, null            ; 2 uses
  %.not.not = or i1 %.not.not24, %i.g
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.e, align 16
  %i.i = lshr i32 %i.h, 19
  %i.j = and i32 %i.i, 1023
  %i.k = add nsw i32 %i.j, -453
  %spec.select = icmp ult i32 %i.k, 53
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ne i8 %i.f, 47
  %.not12.not = or i1 %.not.not24, %i.l
  br i1 %.not12.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1322 ; 2 uses
  %i.o = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.n) #23 ; 2 uses
  %.not.not.i = icmp eq ptr %i.o, null
  %..i = select i1 %.not.not.i, ptr %i.n, ptr %i.o ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %..i, i64 74
  %i.q = load i8, ptr %i.p, align 2
end_hunk_0

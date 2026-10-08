Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDeclAttr?download=true
inline.NumInlined: 13074
inline.NumDeleted: 6077
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5clanglsIA19_cEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_:bb.a
}

declare void @_ZN5clang10ThreadAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoE(ptr noundef nonnull align 8 dereferenceable(39), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_13CXXMethodDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !77, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1566
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZN5clanglsIPNS_13CXXMethodDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.i = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.h) ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !83
  br label %_ZN5clanglsIPNS_13CXXMethodDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit

_ZN5clanglsIPNS_13CXXMethodDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
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
  %i.ao = load ptr, ptr %1, align 8, !tbaa !1566
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIPNS_13CXXMethodDeclEEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !84
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !83
  br label %_ZNK5clang17PartialDiagnosticlsIPNS_13CXXMethodDeclEEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIPNS_13CXXMethodDeclEEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
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

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIPNS_13CXXMethodDeclEEERKS0_RKT_.exit, %_ZN5clanglsIPNS_13CXXMethodDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit
  ret ptr %0
}

declare void @_ZN5clang15MSConstexprAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoE(ptr noundef nonnull align 8 dereferenceable(39), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

declare void @_ZN5clang19HybridPatchableAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoE(ptr noundef nonnull align 8 dereferenceable(39), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

declare void @_ZN5clang31HLSLGroupSharedAddressSpaceAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoE(ptr noundef nonnull align 8 dereferenceable(39), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

declare void @_ZN5clang10AbiTagAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoEPN4llvm9StringRefEj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang11CFGuardAttr20ConvertStrToGuardArgEN4llvm9StringRefERNS0_8GuardArgE(ptr, i64, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare void @_ZN5clang11CFGuardAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS0_8GuardArgE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL26threadSafetyCheckIsPointerRN5clang4SemaEPKNS_4DeclERKNS_10ParsedAttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.48.val, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 %.48.val, ptr %2, align 8
  %i.a = and i64 %.48.val, -16
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !69
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !144 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i8, ptr %i.h, align 16              ; 3 uses
  switch i8 %i.i, label %bb.b [
    i8 40, label %.critedge
    i8 31, label %.critedge
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = add i8 %i.i, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.j, 3
  %i.k = and i8 %i.i, 62
  %spec.select.i.i.i = icmp eq i8 %i.k, 48
  %or.cond.i = and i1 %switch.i.i.i.i.i.i.i.i.i.i, %spec.select.i.i.i
  br i1 %or.cond.i, label %select.unfold, label %_ZNK5clang4Type15getAsRecordDeclEv.exit

select.unfold:                                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !151  ; 2 uses
  %i.n = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.m) #23 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.n, null
  %spec.select = select i1 %.not.not.i.i.i, ptr %i.m, ptr %i.n ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select, i64 74
  %i.p = load i8, ptr %i.o, align 2
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %select.unfold
  %i.r = tail call fastcc noundef zeroext i1 @_ZL31threadSafetyCheckIsSmartPointerRN5clang4SemaEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %spec.select)
  br i1 %i.r, label %.critedge, label %_ZNK5clang4Type15getAsRecordDeclEv.exit

_ZNK5clang4Type15getAsRecordDeclEv.exit:          ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.t, align 8, !tbaa !66
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 %.sroa.0.0.copyload.i.i, i32 noundef 7701) #23
  %i.u = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.v = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.a, %select.unfold, %bb.c, %_ZNK5clang4Type15getAsRecordDeclEv.exit
  %.1 = phi i1 [ true, %bb.a ], [ false, %_ZNK5clang4Type15getAsRecordDeclEv.exit ], [ true, %bb.c ], [ true, %select.unfold ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.1
}

declare void @_ZN5clang16PtGuardedVarAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoE(ptr noundef nonnull align 8 dereferenceable(39), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL31threadSafetyCheckIsSmartPointerRN5clang4SemaEPKNS_10RecordDeclE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %.val32.val = load ptr, ptr %i.a, align 8, !tbaa !832
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val32.val, i64 17968
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = or disjoint i64 %i.d, 6
  %i.f = tail call i64 @_ZNK5clang11DeclContext6lookupENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 %i.e) #23
  %i.g = icmp ugt i64 %i.f, 7                     ; 3 uses
  %i.h = zext i1 %i.g to i8
  %.val31.val = load ptr, ptr %i.a, align 8, !tbaa !832
  %i.i = getelementptr inbounds nuw i8, ptr %.val31.val, i64 18512
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = or disjoint i64 %i.j, 6
  %i.l = tail call i64 @_ZNK5clang11DeclContext6lookupENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 %i.k) #23
  %i.m = icmp ugt i64 %i.l, 7                     ; 3 uses
  %i.n = zext i1 %i.m to i8
  %or.cond = and i1 %i.g, %i.m
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 127
  %i.r = add nsw i32 %i.q, -63
  %i.s = icmp ult i32 %i.r, -3
  br i1 %i.s, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call noundef ptr @_ZNK5clang13CXXRecordDecl11bases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 2 uses
  %i.u = tail call noundef ptr @_ZNK5clang13CXXRecordDecl9bases_endEv(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 2 uses
  %.not2954 = icmp eq ptr %i.t, %i.u
  br i1 %.not2954, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.i
  %2 = trunc nuw i8 %.125 to i1
  %3 = trunc nuw i8 %.1 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.024.lcssa = phi i1 [ %i.g, %bb.c ], [ %2, %._crit_edge.loopexit ]
  %.023.lcssa = phi i1 [ %i.m, %bb.c ], [ %3, %._crit_edge.loopexit ]
  %or.cond3 = select i1 %.024.lcssa, i1 %.023.lcssa, i1 false
  br label %bb.j

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.057 = phi ptr [ %i.bx, %bb.i ], [ %i.t, %bb.c ] ; 3 uses
  %.02356 = phi i8 [ %.1, %bb.i ], [ %i.n, %bb.c ]
  %.02455 = phi i8 [ %.125, %bb.i ], [ %i.h, %bb.c ]
  %i.v = trunc nuw i8 %.02455 to i1
  br i1 %i.v, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.057, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2232
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.x, align 8, !tbaa !69 ; 2 uses
  %i.y = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !144 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !69
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i, 15
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i) #23
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit:      ; preds = %bb.d, %bb.e
  %.sroa.03.0.in.in.i.i = phi ptr [ %i.ae, %bb.e ], [ %i.aa, %bb.d ]
  %.sroa.03.0.in.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i to i64
  %i.af = and i64 %.sroa.03.0.in.i.i, -16
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !144
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !69
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !144, !nonnull !79, !noundef !79
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !151 ; 2 uses
  %i.ao = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.an) #23 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ao, null
  %spec.select.i.i2.i = select i1 %.not.not.i.i.i, ptr %i.an, ptr %i.ao
  %.val30.val = load ptr, ptr %i.a, align 8, !tbaa !832
  %i.ap = getelementptr inbounds nuw i8, ptr %spec.select.i.i2.i, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %.val30.val, i64 17968
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = or disjoint i64 %i.ar, 6
  %i.at = tail call i64 @_ZNK5clang11DeclContext6lookupENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 %i.as) #23
  %i.au = icmp ugt i64 %i.at, 7
  %i.av = zext i1 %i.au to i8
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit, %.lr.ph
  %.125 = phi i8 [ 1, %.lr.ph ], [ %i.av, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit ] ; 2 uses
  %i.aw = trunc nuw i8 %.02356 to i1
  br i1 %i.aw, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %.057, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2232
  %.sroa.0.0.copyload.i.i33 = load i64, ptr %i.ay, align 8, !tbaa !69 ; 2 uses
  %i.az = and i64 %.sroa.0.0.copyload.i.i33, -16
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 16, !tbaa !144 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.0.0.copyload.i.i.i34 = load i64, ptr %i.bc, align 8, !tbaa !69
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i34, 15
  %.not.i.i35 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i35, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit39, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i33) #23
  %i.bf = extractvalue { ptr, i64 } %i.be, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit39

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit39:    ; preds = %bb.g, %bb.h
  %.sroa.03.0.in.in.i.i36 = phi ptr [ %i.bf, %bb.h ], [ %i.bb, %bb.g ]
  %.sroa.03.0.in.i.i37 = ptrtoint ptr %.sroa.03.0.in.in.i.i36 to i64
  %i.bg = and i64 %.sroa.03.0.in.i.i37, -16
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !144
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.0.0.copyload.i.i.i.i41 = load i64, ptr %i.bj, align 8, !tbaa !69
  %i.bk = and i64 %.sroa.0.0.copyload.i.i.i.i41, -16
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load ptr, ptr %i.bl, align 16, !tbaa !144, !nonnull !79, !noundef !79
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !151 ; 2 uses
  %i.bp = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.bo) #23 ; 2 uses
  %.not.not.i.i.i48 = icmp eq ptr %i.bp, null
  %spec.select.i.i2.i49 = select i1 %.not.not.i.i.i48, ptr %i.bo, ptr %i.bp
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !832
  %i.bq = getelementptr inbounds nuw i8, ptr %spec.select.i.i2.i49, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %.val.val, i64 18512
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = or disjoint i64 %i.bs, 6
  %i.bu = tail call i64 @_ZNK5clang11DeclContext6lookupENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 %i.bt) #23
  %i.bv = icmp ugt i64 %i.bu, 7
  %i.bw = zext i1 %i.bv to i8
  br label %bb.i

bb.i:                                             ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit39, %bb.f
  %.1 = phi i8 [ 1, %bb.f ], [ %i.bw, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit39 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.057, i64 24 ; 2 uses
  %.not29 = icmp eq ptr %i.bx, %i.u
  br i1 %.not29, label %._crit_edge.loopexit, label %.lr.ph

bb.j:                                             ; preds = %bb.b, %._crit_edge, %bb.a
  %.127 = phi i1 [ true, %bb.a ], [ %or.cond3, %._crit_edge ], [ false, %bb.b ]
  ret i1 %.127
}

declare i64 @_ZNK5clang11DeclContext6lookupENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(32), i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang13CXXRecordDecl11bases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !894  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 1
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.e, i64 %i.f, i64 0 ; 3 uses
  %i.g = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18624
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !897  ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !838  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !839
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !840

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !838
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !899
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !900
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !901
  %i.x = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.y = ptrtoint ptr %i.b to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  %i.z = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.z, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i, %bb.a
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.a ] ; 2 uses
  %i.aa = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  %.not.not.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !900
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !899 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !904 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !900
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !113
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !79
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !79
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #23, !inline_history !57
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !918 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !69
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %bb.l, label %_ZNK5clang13LazyOffsetPtrINS_16CXXBaseSpecifierEmXadL_ZNS_17ExternalASTSource28GetExternalCXXBaseSpecifiersEmEEE3getEPS2_.exit.i

_ZNK5clang13LazyOffsetPtrINS_16CXXBaseSpecifierEmXadL_ZNS_17ExternalASTSource28GetExternalCXXBaseSpecifiersEmEEE3getEPS2_.exit.i: ; preds = %_ZNK5clang13CXXRecordDecl4dataEv.exit
  %.pre.i.i = load ptr, ptr %i.an, align 8, !tbaa !2234
  br label %_ZNK5clang13CXXRecordDecl14DefinitionData8getBasesEv.exit

bb.l:                                             ; preds = %_ZNK5clang13CXXRecordDecl4dataEv.exit
  %i.aq = tail call noundef ptr @_ZNK5clang13CXXRecordDecl14DefinitionData16getBasesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(104) %i.am) #23
  br label %_ZNK5clang13CXXRecordDecl14DefinitionData8getBasesEv.exit

_ZNK5clang13CXXRecordDecl14DefinitionData8getBasesEv.exit: ; preds = %_ZNK5clang13LazyOffsetPtrINS_16CXXBaseSpecifierEmXadL_ZNS_17ExternalASTSource28GetExternalCXXBaseSpecifiersEmEEE3getEPS2_.exit.i, %bb.l
  %.0.i = phi ptr [ %i.aq, %bb.l ], [ %.pre.i.i, %_ZNK5clang13LazyOffsetPtrINS_16CXXBaseSpecifierEmXadL_ZNS_17ExternalASTSource28GetExternalCXXBaseSpecifiersEmEEE3getEPS2_.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang13CXXRecordDecl9bases_endEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK5clang13CXXRecordDecl11bases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !894  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8 ; 3 uses
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 1
  %i.f = icmp eq i64 %i.e, 0
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.f, i64 %i.g, i64 0 ; 3 uses
  %i.h = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, -4
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 18624
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !897  ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2632 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !838  ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = add i64 %i.p, 24                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 2640
  %i.s = load i64, ptr %i.r, align 8, !tbaa !839
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.f, !prof !840

bb.e:                                             ; preds = %bb.d
  %i.u = inttoptr i64 %i.q to ptr
  store ptr %i.u, ptr %i.n, align 8, !tbaa !838
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.v to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.p, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.o, %bb.e ] ; 3 uses
  store ptr %i.m, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !899
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !900
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.c, ptr %i.x, align 8, !tbaa !901
  %i.y = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %i.c to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %bb.h ], [ %i.y, %bb.g ]
  %i.aa = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.aa, ptr %i.d, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i, %bb.a
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i = phi i64 [ %i.aa, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.a ] ; 2 uses
  %i.ab = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  %i.ac = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  %.not.not.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaCXXScopeSpec?download=true
begin_hunk_0_@_ZN5clang4Sema24ActOnSuperScopeSpecifierENS_14SourceLocationES1_RNS_12CXXScopeSpecE:bb.a
  store ptr %i.cs, ptr %4, align 8, !tbaa !1195
  %i.ct = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.ct, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.cv = load i32, ptr %i.ch, align 8, !tbaa !1148
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !1197
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.cz, ptr nonnull %.sroa.0.0.i, i64 %.sroa.3.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit

_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit: ; preds = %bb.y, %bb.z, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNK5clang13CXXRecordDecl11getNumBasesEv.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !709, !nonnull !710, !align !711
  tail call void @_ZN5clang12CXXScopeSpec18MakeMicrosoftSuperERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(23904) %i.db, ptr noundef nonnull %.125, i32 %1, i32 %2) #16
  br label %bb.ad

bb.ad:                                            ; preds = %select.unfold, %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit, %bb.ac, %bb.b
  %.1 = phi i1 [ true, %bb.b ], [ true, %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit ], [ false, %bb.ac ], [ true, %select.unfold ]
  ret i1 %.1
}

declare noundef ptr @_ZN5clang4Sema12getCurLambdaEb(ptr noundef nonnull align 8 dereferenceable(18640), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5clang12CXXScopeSpec18MakeMicrosoftSuperERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationES5_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, i32, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema31isAcceptableNestedNameSpecifierEPKNS_9NamedDeclEPb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 127
  switch i32 %i.c, label %_ZNK5clang9NamedDecl17getUnderlyingDeclEv.exit [
    i32 54, label %bb.c
    i32 55, label %bb.c
    i32 77, label %bb.c
    i32 79, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.d = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #17 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %_ZNK5clang9NamedDecl17getUnderlyingDeclEv.exit

_ZNK5clang9NamedDecl17getUnderlyingDeclEv.exit:   ; preds = %bb.b, %bb.c
  %i.e = phi i32 [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %.0.i.i = phi ptr [ %i.d, %bb.c ], [ %1, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 28
  %i.g = and i32 %i.e, 127                        ; 5 uses
  %i.h = icmp eq i32 %i.g, 78
  br i1 %i.h, label %bb.p, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang9NamedDecl17getUnderlyingDeclEv.exit
  %i.i = add nsw i32 %i.g, -59
  %i.j = icmp ult i32 %i.i, 10
  br i1 %i.j, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.g, -68
  %i.l = icmp ult i32 %i.k, -3
  br i1 %i.l, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.m, align 8 ; 2 uses
  %i.n = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = shl i64 %.0.copyload.i.i.i.i.i, 1
  %.sroa.0.0.in.idx.i = and i64 %i.p, 8
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.in.idx.i
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !tbaa !15
  %i.q = and i64 %.sroa.0.0.i, -16
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !15
  %i.u = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i8, ptr %i.x, align 16
  switch i8 %i.y, label %bb.m [
    i8 49, label %bb.p
    i8 47, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !709, !nonnull !710, !align !711
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2600
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1243, !nonnull !710, !align !711
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, 8192
  %.not20.a = icmp eq i64 %i.ae, 0
  br i1 %.not20.a, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %.not21.a = icmp eq ptr %2, null
  br i1 %.not21.a, label %bb.m, label %.sink.split

bb.i:                                             ; preds = %bb.e
  %i.af = icmp samesign ult i32 %i.g, 63
  br i1 %i.af, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp eq i32 %i.g, 63
  br i1 %i.ag, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !709, !nonnull !710, !align !711
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2600
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1243, !nonnull !710, !align !711
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = and i64 %i.al, 8192
  %.not18 = icmp eq i64 %i.am, 0
  br i1 %.not18, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %.not19 = icmp eq ptr %2, null
  br i1 %.not19, label %bb.m, label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.h
  store i8 1, ptr %2, align 1, !tbaa !1244
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.f, %bb.l, %bb.j, %bb.h
  %i.an = load i32, ptr %i.f, align 4
  %i.ao = and i32 %i.an, 127
  %i.ap = add nsw i32 %i.ao, -64
  %i.aq = icmp ult i32 %i.ap, -5
  br i1 %i.aq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.as = tail call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #16
  br i1 %i.as, label %.thread42, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !709, !nonnull !710, !align !711
  %i.av = tail call i64 @_ZNK5clang10ASTContext24getCanonicalTypeDeclTypeEPKNS_8TypeDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.au, ptr noundef nonnull %.0.i.i) #16
  %i.aw = and i64 %i.av, -16
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 17
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = and i16 %i.ba, 4
  %.not46 = icmp eq i16 %i.bb, 0
  br i1 %.not46, label %bb.p, label %.thread42

.thread42:                                        ; preds = %bb.n, %bb.o
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %.thread42, %bb.o, %bb.n, %bb.g, %bb.i, %bb.k, %bb.d, %_ZNK5clang9NamedDecl17getUnderlyingDeclEv.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ true, %bb.f ], [ true, %_ZNK5clang9NamedDecl17getUnderlyingDeclEv.exit ], [ true, %bb.k ], [ true, %bb.i ], [ true, %bb.g ], [ true, %.thread42 ], [ false, %bb.o ], [ false, %bb.n ]
  ret i1 %.2
}

declare i64 @_ZNK5clang10ASTContext24getCanonicalTypeDeclTypeEPKNS_8TypeDeclE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang4Sema25FindFirstQualifierInScopeEPNS_5ScopeENS_19NestedNameSpecifierE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::LookupResult", align 8 ; 25 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 163
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 164
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 96
  br label %.outer

.outer:                                           ; preds = %_ZN5clang12LookupResultD2Ev.exit, %.preheader
  %.sroa.017.0.ph = phi i64 [ 0, %_ZN5clang12LookupResultD2Ev.exit ], [ %2, %.preheader ]
  %.0.ph = phi ptr [ %.2, %_ZN5clang12LookupResultD2Ev.exit ], [ undef, %.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit, %.outer
  %.sroa.017.0 = phi i64 [ %.sroa.017.0.ph, %.outer ], [ %i.u, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit ] ; 3 uses
  %i.p = icmp ugt i64 %.sroa.017.0, 7
  %i.q = and i64 %.sroa.017.0, 6
  %i.r = icmp eq i64 %i.q, 0
  %or.cond28 = and i1 %i.p, %i.r
  br i1 %or.cond28, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread

_ZNK5clang19NestedNameSpecifier7getKindEv.exit:   ; preds = %bb.b
  %i.s = and i64 %.sroa.017.0, -8
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = call i64 @_ZNK5clang4Type9getPrefixEv(ptr noundef nonnull align 16 dereferenceable(24) %i.t) #16 ; 2 uses
  %.not24 = icmp eq i64 %i.u, 0
  br i1 %.not24, label %bb.c, label %bb.b, !llvm.loop !1245

bb.c:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load i8, ptr %i.v, align 16
  %.not26 = icmp eq i8 %i.w, 20
  br i1 %.not26, label %bb.d, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1246
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  store i32 0, ptr %3, align 8, !tbaa !1249
  store i32 0, ptr %i.a, align 4, !tbaa !1263
  store ptr %i.c, ptr %i.b, align 8, !tbaa !1162
  store i32 0, ptr %i.d, align 8, !tbaa !1200
  store i32 8, ptr %i.e, align 4, !tbaa !1201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %0, ptr %i.g, align 8, !tbaa !1264
  store i64 %i.z, ptr %i.h, align 8, !tbaa !706
  store i32 0, ptr %i.i, align 8, !tbaa !1148
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 %i.z) #16
  store <4 x i32> <i32 0, i32 0, i32 6, i32 0>, ptr %i.k, align 8, !tbaa !15
  store <8 x i8> <i8 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0>, ptr %i.l, align 8, !tbaa !1244
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %3) #16
  %i.aa = call noundef zeroext i1 @_ZN5clang4Sema10LookupNameERNS_12LookupResultEPNS_5ScopeEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %3, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false) #16 ; 0 uses
  %i.ab = load i32, ptr %3, align 8, !tbaa !1249  ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !1162 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ad, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8
  %i.ae = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 127
  switch i32 %i.ai, label %_ZNK5clang12LookupResult12getFoundDeclEv.exit [
    i32 54, label %bb.f
    i32 55, label %bb.f
    i32 77, label %bb.f
    i32 79, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.aj = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.af) #17
  br label %_ZNK5clang12LookupResult12getFoundDeclEv.exit

_ZNK5clang12LookupResult12getFoundDeclEv.exit:    ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.aj, %bb.f ], [ %i.af, %bb.e ] ; 2 uses
  %i.ak = call noundef zeroext i1 @_ZN5clang4Sema31isAcceptableNestedNameSpecifierEPKNS_9NamedDeclEPb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %.0.i.i, ptr noundef null) ; 2 uses
  %..0 = select i1 %i.ak, ptr %.0.i.i, ptr %.0.ph
  %.pre29.pre = load i32, ptr %3, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZNK5clang12LookupResult12getFoundDeclEv.exit
  %.pre29 = phi i32 [ %.pre29.pre, %_ZNK5clang12LookupResult12getFoundDeclEv.exit ], [ %i.ab, %bb.d ] ; 3 uses
  %.111 = phi i1 [ %i.ak, %_ZNK5clang12LookupResult12getFoundDeclEv.exit ], [ true, %bb.d ]
  %.2 = phi ptr [ %..0, %_ZNK5clang12LookupResult12getFoundDeclEv.exit ], [ null, %bb.d ] ; 2 uses
  %i.al = load i8, ptr %i.m, align 1, !tbaa !1265, !range !1165, !noundef !710
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.h, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.an = icmp ne i32 %.pre29, 5
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = icmp ne ptr %i.ao, null
  %or.cond.i.i = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !1264 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 216
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1266, !nonnull !710, !align !711
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load i64, ptr %i.at, align 8
  %i.av = and i64 %i.au, 18014398509481984
  %.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.aq, ptr noundef nonnull align 8 dereferenceable(168) %3) #16
  %.pre = load i32, ptr %3, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i: ; preds = %bb.j, %bb.h, %bb.g
  %i.aw = phi i32 [ %.pre, %bb.j ], [ %.pre29, %bb.g ], [ %.pre29, %bb.h ]
  %i.ax = load i8, ptr %i.n, align 4, !tbaa !1267, !range !1165, !noundef !710
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = icmp eq i32 %i.aw, 5
  %or.cond = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.k, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

bb.k:                                             ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !1264
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ba, ptr noundef nonnull align 8 dereferenceable(168) %3) #16
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i: ; preds = %bb.i, %bb.k, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !1268 ; 2 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.bb) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !1162 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.c
  br i1 %i.bd, label %_ZN5clang12LookupResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.bc) #16
  br label %_ZN5clang12LookupResultD2Ev.exit

_ZN5clang12LookupResultD2Ev.exit:                 ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %.111, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread, label %.outer

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread: ; preds = %bb.c, %_ZN5clang12LookupResultD2Ev.exit, %bb.b, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.2, %_ZN5clang12LookupResultD2Ev.exit ], [ null, %bb.c ]
  ret ptr %.5
}

declare i64 @_ZNK5clang4Type9getPrefixEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12LookupResultC2ERNS_4SemaENS_15DeclarationNameENS_14SourceLocationENS1_14LookupNameKindE17RedeclarationKind(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(18640) %1, i64 %2, i32 %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 comdat align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !1249
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !1263
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.b, align 8, !tbaa !1162
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !1200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 8, ptr %i.e, align 4, !tbaa !1201
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.g, align 8, !tbaa !1264
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %2, ptr %i.h, align 8, !tbaa !706
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %3, ptr %i.i, align 8, !tbaa !1148
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 %2) #16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.k, align 8, !tbaa !1269
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 0, ptr %i.l, align 4, !tbaa !1269
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %4, ptr %i.m, align 8, !tbaa !1270
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 0, ptr %i.n, align 4, !tbaa !1271
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = icmp ne i32 %5, 0
  %i.q = zext i1 %i.p to i8
  store i8 %i.q, ptr %i.o, align 8, !tbaa !1272
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.s = icmp eq i32 %5, 2
  %i.t = zext i1 %i.s to i8
  store i8 %i.t, ptr %i.r, align 1, !tbaa !1273
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 1, ptr %i.u, align 2, !tbaa !1274
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 163
  %i.w = icmp eq i32 %5, 0
  %i.x = zext i1 %i.w to i8                       ; 2 uses
  store i8 %i.x, ptr %i.v, align 1, !tbaa !1265
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %i.x, ptr %i.y, align 4, !tbaa !1267
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 0, ptr %i.z, align 1, !tbaa !1275
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 166
  store i8 0, ptr %i.aa, align 2, !tbaa !1276
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 167
  store i8 0, ptr %i.ab, align 1, !tbaa !1277
  tail call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #16
  ret void
}

declare noundef zeroext i1 @_ZN5clang4Sema10LookupNameERNS_12LookupResultEPNS_5ScopeEbb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12LookupResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 163
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1265, !range !1165, !noundef !710
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !1249
  %i.e = icmp ne i32 %i.d, 5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ne ptr %i.g, null
  %or.cond.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1264 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1266, !nonnull !710, !align !711
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 18014398509481984
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.j, ptr noundef nonnull align 8 dereferenceable(168) %0) #16
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit

_ZN5clang12LookupResult14diagnoseAccessEv.exit:   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.q = load i8, ptr %i.p, align 4, !tbaa !1267, !range !1165, !noundef !710
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit

bb.e:                                             ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit
  %i.s = load i32, ptr %0, align 8, !tbaa !1249
  %i.t = icmp eq i32 %i.s, 5
  br i1 %i.t, label %bb.f, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1264
  tail call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.v, ptr noundef nonnull align 8 dereferenceable(168) %0) #16
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit: ; preds = %bb.f, %bb.e, %_ZN5clang12LookupResult14diagnoseAccessEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1268 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit
  tail call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.x) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1162 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef %i.z) #16
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema27BuildCXXNestedNameSpecifierEPNS_5ScopeERNS0_18NestedNameSpecInfoEbRNS_12CXXScopeSpecEPNS_9NamedDeclEbPbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %5, i1 noundef zeroext %6, ptr nofree noundef writeonly captures(address_is_null) %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.clang::NestedNameSpecifier", align 8 ; 4 uses
  %10 = alloca %"class.clang::LookupResult", align 8 ; 39 uses
  %11 = alloca %"class.clang::QualType", align 8  ; 6 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %12 = alloca %"class.clang::TypeLocBuilder", align 8 ; 11 uses
  %13 = alloca %"class.clang::LookupResult", align 8 ; 34 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %15 = alloca %"class.clang::FixItHint", align 8 ; 6 uses
  %16 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %18 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %19 = alloca %"class.clang::DeclarationName", align 8 ; 6 uses
  %20 = alloca %"class.(anonymous namespace)::NestedNameSpecifierValidatorCCC", align 8 ; 8 uses
  %21 = alloca %"class.clang::TypoCorrection", align 8 ; 17 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %24 = alloca %"class.clang::PartialDiagnostic", align 8 ; 11 uses
  %25 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %26 = alloca %"class.clang::PartialDiagnostic", align 8 ; 9 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %27 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %28 = alloca %"class.clang::LookupResult", align 8 ; 6 uses
  %29 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %30 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %31 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %32 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %33 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %34 = alloca %"class.clang::TypeLocBuilder", align 8 ; 13 uses
  %35 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %36 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %37 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %38 = alloca %"class.clang::OpaquePtr", align 8 ; 4 uses
  %39 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %40 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %41 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %42 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %43 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 16 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1278 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1237 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !1240
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  %.not.i.i = icmp samesign ult i64 %i.o, 2
  br i1 %.not.i.i, label %_ZNK5clang14IdentifierInfo19isEditorPlaceholderEv.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.a
  %i.p = load i16, ptr %i.m, align 1
  %i.q = icmp ne i16 %i.p, 9020
end_hunk_0

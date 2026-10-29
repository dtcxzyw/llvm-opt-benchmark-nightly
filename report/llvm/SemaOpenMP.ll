Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOpenMP?download=true
inline.NumInlined: 65082
inline.NumDeleted: 21278
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5clang10SemaOpenMP24ActOnOpenMPPrivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_:bb.a

bb.cv:                                            ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, %bb.h, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit186
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit83, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  %i.vr = getelementptr inbounds nuw i8, ptr %.069220, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.vr, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

bb.cx:                                            ; preds = %._crit_edge
  %i.vs = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  %i.vt = load ptr, ptr %13, align 8, !tbaa !153
  %i.vu = load i32, ptr %i.g, align 8, !tbaa !154
  %i.vv = zext i32 %i.vu to i64
  %i.vw = load ptr, ptr %14, align 8, !tbaa !153
  store ptr %i.vw, ptr %29, align 8, !tbaa !1873
  %i.vx = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.vy = load i32, ptr %i.j, align 8, !tbaa !154
  %i.vz = zext i32 %i.vy to i64
  store i64 %i.vz, ptr %i.vx, align 8, !tbaa !1874
  %i.wa = call noundef ptr @_ZN5clang16OMPPrivateClause6CreateERKNS_10ASTContextENS_14SourceLocationES4_S4_N4llvm8ArrayRefIPNS_4ExprEEES9_(ptr noundef nonnull align 8 dereferenceable(23904) %i.vs, i32 %3, i32 %4, i32 %5, ptr %i.vt, i64 %i.vv, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %29) #36
  br label %bb.cy

bb.cy:                                            ; preds = %._crit_edge, %bb.cx
  %.0 = phi ptr [ %i.wa, %bb.cx ], [ null, %._crit_edge ]
  %i.wb = load ptr, ptr %14, align 8, !tbaa !153  ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.i
  br i1 %i.wc, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @free(ptr noundef %i.wb) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.wd = load ptr, ptr %13, align 8, !tbaa !153  ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.f
  br i1 %i.we, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit187, label %bb.da

bb.da:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  call void @free(ptr noundef %i.wd) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit187

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit187: ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPMapClauseEPNS_4ExprEN4llvm8ArrayRefINS_21OpenMPMapModifierKindEEENS4_INS_14SourceLocationEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbS7_S7_NS4_IS2_EERKNS_15OMPVarListLocTyEbSE_(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree readonly captures(none) %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7, i32 noundef %8, i1 noundef zeroext %9, i32 %10, i32 %11, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.1289") align 8 captures(none) %12, ptr noundef nonnull align 4 dereferenceable(12) %13, i1 noundef zeroext %14, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.1289") align 8 captures(none) %15) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 10 uses
  %16 = alloca [7 x %"class.clang::SourceLocation"], align 16 ; 5 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %18 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %19 = alloca %"struct.(anonymous namespace)::MappableVarListInfo", align 8 ; 21 uses
  %20 = alloca %"class.llvm::ArrayRef.1424", align 8 ; 3 uses
  %21 = alloca %"class.llvm::ArrayRef.2126", align 8 ; 3 uses
  %22 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 3 uses
  %23 = alloca %"class.llvm::ArrayRef.1424", align 8 ; 3 uses
  %24 = alloca %"class.llvm::ArrayRef.1327", align 8 ; 3 uses
  %25 = alloca %"class.clang::NestedNameSpecifierLoc", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, ptr noundef nonnull align 16 dereferenceable(28) @__const._ZN5clang10SemaOpenMP20ActOnOpenMPMapClauseEPNS_4ExprEN4llvm8ArrayRefINS_21OpenMPMapModifierKindEEENS4_INS_14SourceLocationEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbS7_S7_NS4_IS2_EERKNS_15OMPVarListLocTyEbSE_.Modifiers, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %16, i8 0, i64 28, i1 false), !tbaa !161
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !196
  %i.c = and i64 %.sroa.0.0.copyload.i, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !252
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !196
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !252 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load i8, ptr %i.j, align 16
  %i.l = icmp eq i8 %i.k, 13
  %.not7.i = icmp ne ptr %i.i, null
  %.not.not.not.i = and i1 %.not7.i, %i.l
  br i1 %.not.not.not.i, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread

_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit:    ; preds = %bb.b
  %i.m = load i32, ptr %i.j, align 16
  %i.n = and i32 %i.m, 536346624
  %i.o = icmp eq i32 %i.n, 275251200
  br i1 %i.o, label %.critedge, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread

_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread: ; preds = %bb.b, %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit
  %i.p = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %i.p, i32 noundef 4654) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #36
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread, %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit
  %i.q = and i64 %3, 4294967295
  %.not73 = icmp eq i64 %i.q, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %wide.trip.count = and i64 %3, 4294967295
  br label %bb.d

._crit_edge:                                      ; preds = %bb.g, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  %.sroa.010.0.copyload = load ptr, ptr %12, align 8, !tbaa !1850 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !1042 ; 7 uses
  store ptr %.sroa.010.0.copyload, ptr %19, align 8, !tbaa !1850
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1042
  %i.t = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !153
  %i.v = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  store i32 0, ptr %i.v, align 8, !tbaa !154
  %i.w = getelementptr inbounds nuw i8, ptr %19, i64 28
  store i32 16, ptr %i.w, align 4, !tbaa !155
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 160 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 176 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !153
  %i.z = getelementptr inbounds nuw i8, ptr %19, i64 168 ; 3 uses
  store i32 0, ptr %i.z, align 8, !tbaa !154
  %i.aa = getelementptr inbounds nuw i8, ptr %19, i64 172
  store i32 8, ptr %i.aa, align 4, !tbaa !155
  %i.ab = getelementptr inbounds nuw i8, ptr %19, i64 1328 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %19, i64 1344 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !153
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 1336 ; 2 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !154
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 1340 ; 2 uses
  store i32 16, ptr %i.ae, align 4, !tbaa !155
  %i.af = getelementptr inbounds nuw i8, ptr %19, i64 1472 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %19, i64 1488 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !153
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 1480 ; 2 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !154
  %i.ai = getelementptr inbounds nuw i8, ptr %19, i64 1484
  store i32 16, ptr %i.ai, align 4, !tbaa !155
  %i.aj = icmp ugt i64 %.sroa.2.0.copyload, 8
  br i1 %i.aj, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i, label %_ZN12_GLOBAL__N_119MappableVarListInfoC2EN4llvm8ArrayRefIPN5clang4ExprEEE.exit

_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i: ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 noundef %.sroa.2.0.copyload)
  %.pre.i = load i32, ptr %i.ae, align 4, !tbaa !155
  %i.ak = zext i32 %.pre.i to i64
  %i.al = icmp ugt i64 %.sroa.2.0.copyload, %i.ak
  br i1 %i.al, label %bb.c, label %.lr.ph71.preheader

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull %i.ac, i64 noundef %.sroa.2.0.copyload, i64 noundef 8) #36
  br label %.lr.ph71.preheader

_ZN12_GLOBAL__N_119MappableVarListInfoC2EN4llvm8ArrayRefIPN5clang4ExprEEE.exit: ; preds = %._crit_edge
  %.not5068 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not5068, label %._crit_edge72, label %.lr.ph71.preheader

.lr.ph71.preheader:                               ; preds = %bb.c, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i, %_ZN12_GLOBAL__N_119MappableVarListInfoC2EN4llvm8ArrayRefIPN5clang4ExprEEE.exit
  %.idx7486.pn = shl nuw nsw i64 %.sroa.2.0.copyload, 3
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 %.idx7486.pn
  br label %.lr.ph71

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.04467 = phi i32 [ 0, %.lr.ph ], [ %.145, %bb.g ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !1849 ; 6 uses
  %.not51 = icmp eq i32 %i.ao, 6
  br i1 %.not51, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = load <4 x i32>, ptr %i.a, align 16
  %i.aq = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %i.ar = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.as = icmp eq <4 x i32> %i.ap, %i.ar
  %i.at = load i32, ptr %scevgep.i.i.i.i, align 16
  %i.au = icmp eq i32 %i.at, %i.ao
  %i.av = load i32, ptr %i.r, align 4
  %i.aw = icmp eq i32 %i.av, %i.ao
  %i.ax = load i32, ptr %i.s, align 8
  %i.ay = icmp eq i32 %i.ax, %i.ao
  %i.az = freeze <4 x i1> %i.as
  %i.ba = bitcast <4 x i1> %i.az to i4
  %i.bb = icmp ne i4 %i.ba, 0
  %.fr = freeze i1 %i.au
  %op.rdx = or i1 %i.bb, %.fr
  %26 = freeze i1 %i.aw
  %27 = or i1 %op.rdx, %26
  %op.rdx89 = select i1 %27, i1 true, i1 %i.ay
  br i1 %op.rdx89, label %_ZN4llvm12is_containedIRA7_N5clang21OpenMPMapModifierKindES2_EEbOT_RKT0_.exit.thread, label %bb.f

_ZN4llvm12is_containedIRA7_N5clang21OpenMPMapModifierKindES2_EEbOT_RKT0_.exit.thread: ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %.sroa.011.0.copyload = load i32, ptr %i.bc, align 4, !tbaa !268
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.011.0.copyload, i32 noundef 4575) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %18) #36
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bd = zext i32 %.04467 to i64                 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bd
  store i32 %i.ao, ptr %i.be, align 4, !tbaa !1849
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %i.bd
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !268
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !268
  %i.bi = add nuw i32 %.04467, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm12is_containedIRA7_N5clang21OpenMPMapModifierKindES2_EEbOT_RKT0_.exit.thread
  %.145 = phi i32 [ %.04467, %_ZN4llvm12is_containedIRA7_N5clang21OpenMPMapModifierKindES2_EEbOT_RKT0_.exit.thread ], [ %i.bi, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !4112

._crit_edge72:                                    ; preds = %bb.n, %_ZN12_GLOBAL__N_119MappableVarListInfoC2EN4llvm8ArrayRefIPN5clang4ExprEEE.exit
  %.0.lcssa = phi i32 [ %8, %_ZN12_GLOBAL__N_119MappableVarListInfoC2EN4llvm8ArrayRefIPN5clang4ExprEEE.exit ], [ %.1, %bb.n ] ; 2 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !181
  %.sroa.02.0.copyload = load i32, ptr %13, align 4, !tbaa !268
  store ptr %i.a, ptr %20, align 8, !tbaa !1876
  %i.bm = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 7, ptr %i.bm, align 8, !tbaa !1877
  call fastcc void @_ZL27checkMappableExpressionListRN5clang4SemaEPN12_GLOBAL__N_110DSAStackTyEN4llvm3omp6ClauseERNS2_19MappableVarListInfoENS_14SourceLocationERNS_12CXXScopeSpecENS_19DeclarationNameInfoENS5_8ArrayRefIPNS_4ExprEEENS_19OpenMPMapClauseKindENSE_INS_21OpenMPMapModifierKindEEEbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.bj, ptr noundef %i.bl, i32 noundef 71, ptr noundef nonnull align 8 dereferenceable(1616) %19, i32 %.sroa.02.0.copyload, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull byval(%"struct.clang::DeclarationNameInfo") align 8 %7, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %15, i32 noundef %.0.lcssa, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1424") align 8 %20, i1 noundef zeroext %9, i1 noundef zeroext %14)
  %i.bn = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  %i.bo = load ptr, ptr %i.t, align 8, !tbaa !153
  %i.bp = load i32, ptr %i.v, align 8, !tbaa !154
  %i.bq = zext i32 %i.bp to i64
  %i.br = load ptr, ptr %i.ab, align 8, !tbaa !153
  %i.bs = load i32, ptr %i.ad, align 8, !tbaa !154
  %i.bt = zext i32 %i.bs to i64
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !153
  store ptr %i.bu, ptr %21, align 8, !tbaa !1880
  %i.bv = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !154
  %i.bx = zext i32 %i.bw to i64
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !1881
  %i.by = load ptr, ptr %i.af, align 8, !tbaa !153
  store ptr %i.by, ptr %22, align 8, !tbaa !1873
  %i.bz = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ca = load i32, ptr %i.ah, align 8, !tbaa !154
  %i.cb = zext i32 %i.ca to i64
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !1874
  store ptr %i.a, ptr %23, align 8, !tbaa !1876
  %i.cc = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 7, ptr %i.cc, align 8, !tbaa !1877
  store ptr %16, ptr %24, align 8, !tbaa !1883
  %i.cd = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 7, ptr %i.cd, align 8, !tbaa !1884
  %i.ce = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  %i.cf = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(23904) %i.ce) #36 ; 2 uses
  %i.cg = extractvalue { i64, ptr } %i.cf, 0
  store i64 %i.cg, ptr %25, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ci = extractvalue { i64, ptr } %i.cf, 1
  store ptr %i.ci, ptr %i.ch, align 8
  %i.cj = call noundef ptr @_ZN5clang12OMPMapClause6CreateERKNS_10ASTContextERKNS_15OMPVarListLocTyEN4llvm8ArrayRefIPNS_4ExprEEENS8_IPNS_9ValueDeclEEENS8_INS7_11SmallVectorINS_27OMPClauseMappableExprCommon17MappableComponentELj8EEEEESB_SA_NS8_INS_21OpenMPMapModifierKindEEENS8_INS_14SourceLocationEEENS_22NestedNameSpecifierLocENS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbSM_(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr %i.bo, i64 %i.bq, ptr %i.br, i64 %i.bt, ptr noundef nonnull byval(%"class.llvm::ArrayRef.2126") align 8 %21, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %22, ptr noundef %1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1424") align 8 %23, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1327") align 8 %24, ptr noundef nonnull byval(%"class.clang::NestedNameSpecifierLoc") align 8 %25, ptr noundef nonnull byval(%"struct.clang::DeclarationNameInfo") align 8 %7, i32 noundef %.0.lcssa, i1 noundef zeroext %9, i32 %10) #36
  %i.ck = load ptr, ptr %i.af, align 8, !tbaa !153 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ag
  br i1 %i.cl, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge72
  call void @free(ptr noundef %i.ck) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit.i

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit.i: ; preds = %bb.h, %._crit_edge72
  %i.cm = load ptr, ptr %i.ab, align 8, !tbaa !153 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ac
  br i1 %i.cn, label %_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj16EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit.i
  call void @free(ptr noundef %i.cm) #36
  br label %_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj16EED2Ev.exit.i

_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj16EED2Ev.exit.i: ; preds = %bb.i, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit.i
  %i.co = load ptr, ptr %i.x, align 8, !tbaa !153 ; 3 uses
  %i.cp = load i32, ptr %i.z, align 8, !tbaa !154 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj16EED2Ev.exit.i
  %i.cq = zext i32 %i.cp to i64
  %.idx.i.i = mul nuw nsw i64 %i.cq, 144
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.cs, %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i ], [ %i.cr, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -144 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !153 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -128
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  call void @free(ptr noundef %i.ct) #36
  br label %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.co, %i.cs
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i: ; preds = %_ZN4llvm11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !153
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i, %_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj16EED2Ev.exit.i
  %i.cw = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i ], [ %i.co, %_ZN4llvm11SmallVectorIPN5clang9ValueDeclELj16EED2Ev.exit.i ] ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.y
  br i1 %i.cx, label %_ZN4llvm11SmallVectorINS0_IN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELj8EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i
  call void @free(ptr noundef %i.cw) #36
  br label %_ZN4llvm11SmallVectorINS0_IN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorINS0_IN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELj8EED2Ev.exit.i: ; preds = %bb.k, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE13destroy_rangeEPS5_S7_.exit.i.i
  %i.cy = load ptr, ptr %i.t, align 8, !tbaa !153 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.u
  br i1 %i.cz, label %_ZN12_GLOBAL__N_119MappableVarListInfoD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorINS0_IN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELj8EED2Ev.exit.i
  call void @free(ptr noundef %i.cy) #36
  br label %_ZN12_GLOBAL__N_119MappableVarListInfoD2Ev.exit

_ZN12_GLOBAL__N_119MappableVarListInfoD2Ev.exit:  ; preds = %_ZN4llvm11SmallVectorINS0_IN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELj8EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret ptr %i.cj

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %bb.n
  %.070 = phi i32 [ %.1, %bb.n ], [ %8, %.lr.ph71.preheader ] ; 4 uses
  %.04769 = phi ptr [ %i.dg, %bb.n ], [ %.sroa.010.0.copyload, %.lr.ph71.preheader ] ; 2 uses
  %i.da = and i32 %.070, -2
  %or.cond = icmp eq i32 %i.da, 2
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph71
  %i.db = icmp eq i32 %.070, 3
  %i.dc = load ptr, ptr %.04769, align 8, !tbaa !1046
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.dd, align 8, !tbaa !196
  %i.de = call fastcc noundef zeroext i1 @_ZL28hasConstQualifiedMappingTypeN5clang8QualTypeE(i64 %.sroa.0.0.copyload.i52)
  %i.df = zext i1 %i.db to i32
  %spec.select = select i1 %i.de, i32 %i.df, i32 %.070
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph71
  %.1 = phi i32 [ %.070, %.lr.ph71 ], [ %spec.select, %bb.m ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.04769, i64 8 ; 2 uses
  %.not50 = icmp eq ptr %i.dg, %i.am
  br i1 %.not50, label %._crit_edge72, label %.lr.ph71
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15SmallVectorImplIPN5clang9OMPClauseEE12emplace_backIJRS3_EEES6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !154  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !155
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !271

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.b to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !153    ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %1, align 8, !tbaa !1638
  store ptr %i.i, ptr %i.h, align 8, !tbaa !1638
  %i.j = add nuw i32 %i.b, 1                      ; 2 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !154
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL37processImplicitMapsWithDefaultMappersRN5clang4SemaEPN12_GLOBAL__N_110DSAStackTyERN4llvm15SmallVectorImplIPNS_9OMPClauseEEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 {
end_hunk_0

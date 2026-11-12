Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaObjC?download=true
inline.NumInlined: 4540
inline.NumDeleted: 2620
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5clang8SemaObjC19BuildObjCObjectTypeENS_8QualTypeENS_14SourceLocationES2_N4llvm8ArrayRefIPNS_14TypeSourceInfoEEES2_S2_NS4_IPNS_16ObjCProtocolDeclEEENS4_IS2_EES2_bb:bb.a
  store i32 %i.my, ptr %i.f, align 4, !tbaa !22
  %i.mz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.mx, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.na = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.mz, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %52) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  %i.nb = load ptr, ptr %i.a, align 8, !tbaa !1170
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %.sroa.0.0.copyload.i207.i = load i32, ptr %i.nc, align 8, !tbaa !22
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %54, ptr noundef nonnull align 8 dereferenceable(8) %i.mp, i32 %.sroa.0.0.copyload.i207.i, i32 noundef 6456) #19
  %i.nd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_17ObjCInterfaceDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %54, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %54) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  %i.ne = load i64, ptr %14, align 8
  %spec.select275.i = select i1 %11, i64 0, i64 %i.ne
  br label %.thread265.i

bb.aw:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.pre328.i = phi i32 [ %i.mo, %._crit_edge.thread.i ], [ %.pre.pre.i, %._crit_edge.i ]
  %i.nf = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !1178, !nonnull !19, !align !20
  %.sroa.0.0.copyload.i = load i64, ptr %14, align 8, !tbaa !23
  %i.nh = load ptr, ptr %22, align 8, !tbaa !15
  %i.ni = zext i32 %.pre328.i to i64
  %i.nj = call i64 @_ZNK5clang10ASTContext17getObjCObjectTypeENS_8QualTypeEN4llvm8ArrayRefIS1_EENS3_IPNS_16ObjCProtocolDeclEEEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ng, i64 %.sroa.0.0.copyload.i, ptr %i.nh, i64 %i.ni, ptr null, i64 0, i1 noundef zeroext false) #19
  br label %.thread265.i

.thread265.i:                                     ; preds = %bb.at, %bb.aw, %bb.av, %.thread259.i
  %.sroa.0222.6.i = phi i64 [ %i.nj, %bb.aw ], [ %spec.select275.i, %bb.av ], [ %spec.select274.i, %.thread259.i ], [ %.sroa.0222.4.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.nk = load ptr, ptr %22, align 8, !tbaa !15   ; 2 uses
  %i.nl = icmp eq ptr %i.nk, %i.cf
  br i1 %i.nl, label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.thread265.i
  call void @free(ptr noundef %i.nk) #19
  br label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit.i: ; preds = %bb.ax, %.thread265.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit.i, %_ZN5clang9FixItHintD2Ev.exit133.i, %_ZN5clang9FixItHintD2Ev.exit.i
  %.sroa.0222.7.i = phi i64 [ %.sroa.0222.6.i, %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit.i ], [ %spec.select269.i, %_ZN5clang9FixItHintD2Ev.exit.i ], [ %spec.select270.i, %_ZN5clang9FixItHintD2Ev.exit133.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN5clangL17applyObjCTypeArgsERNS_4SemaENS_14SourceLocationENS_8QualTypeEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEENS_11SourceRangeEbb.exit

_ZN5clangL17applyObjCTypeArgsERNS_4SemaENS_14SourceLocationENS_8QualTypeEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEENS_11SourceRangeEbb.exit: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread.i, %bb.ay
  %.sroa.0222.8.i = phi i64 [ %.sroa.0222.7.i, %bb.ay ], [ %spec.select268.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.nm = icmp ult i64 %.sroa.0222.8.i, 16
  %or.cond = select i1 %11, i1 %i.nm, i1 false
  br i1 %or.cond, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %_ZN5clangL17applyObjCTypeArgsERNS_4SemaENS_14SourceLocationENS_8QualTypeEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEENS_11SourceRangeEbb.exit, %bb.a
  %.sroa.029.0 = phi i64 [ %1, %bb.a ], [ %.sroa.0222.8.i, %_ZN5clangL17applyObjCTypeArgsERNS_4SemaENS_14SourceLocationENS_8QualTypeEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEENS_11SourceRangeEbb.exit ] ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !1169 ; 2 uses
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %.sroa.03.0.copyload = load ptr, ptr %8, align 8, !tbaa !1500
  %i.nq = call i64 @_ZNK5clang10ASTContext27applyObjCProtocolQualifiersENS_8QualTypeEN4llvm8ArrayRefIPNS_16ObjCProtocolDeclEEERbb(ptr noundef nonnull align 8 dereferenceable(23904) %i.h, i64 %.sroa.029.0, ptr %.sroa.03.0.copyload, i64 %i.no, ptr noundef nonnull align 1 dereferenceable(1) %i.g, i1 noundef zeroext false) #19 ; 2 uses
  %i.nr = load i8, ptr %i.g, align 1, !tbaa !1110, !range !1111, !noundef !19
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %55, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %2, i32 noundef 4137) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #19
  store i32 %7, ptr %56, align 4, !tbaa !22
  %i.nt = getelementptr inbounds nuw i8, ptr %56, i64 4
  store i32 %10, ptr %i.nt, align 4, !tbaa !22
  %i.nu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %55, ptr noundef nonnull align 4 dereferenceable(8) %56) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  br i1 %11, label %.sink.split, label %.critedge

bb.bc:                                            ; preds = %bb.ba
  %i.nv = icmp ult i64 %i.nq, 16
  %or.cond42 = select i1 %11, i1 %i.nv, i1 false
  br i1 %or.cond42, label %.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.bc, %bb.bb
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bb, %bb.bc, %.critedge
  %.sroa.037.0.ph = phi i64 [ %i.nq, %.critedge ], [ 0, %bb.bc ], [ 0, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split, %_ZN5clangL17applyObjCTypeArgsERNS_4SemaENS_14SourceLocationENS_8QualTypeEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEENS_11SourceRangeEbb.exit, %bb.az
  %.sroa.037.0 = phi i64 [ 0, %_ZN5clangL17applyObjCTypeArgsERNS_4SemaENS_14SourceLocationENS_8QualTypeEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEENS_11SourceRangeEbb.exit ], [ %.sroa.029.0, %bb.az ], [ %.sroa.037.0.ph, %.sink.split ]
  ret i64 %.sroa.037.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang8SemaObjC22BuildObjCTypeParamTypeEPKNS_17ObjCTypeParamDeclENS_14SourceLocationEN4llvm8ArrayRefIPNS_16ObjCProtocolDeclEEENS6_IS4_EES4_b(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr %3, i64 %4, ptr nofree noundef readnone byval(%"class.llvm::ArrayRef.1189") align 8 captures(none) %5, i32 %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %9 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1501
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, -8                         ; 2 uses
  %i.g = icmp eq i64 %4, 0
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.h = call i64 @_ZNK5clang10ASTContext27applyObjCProtocolQualifiersENS_8QualTypeEN4llvm8ArrayRefIPNS_16ObjCProtocolDeclEEERbb(ptr noundef nonnull align 8 dereferenceable(23904) %i.b, i64 %i.f, ptr %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext false) #19 ; 2 uses
  %i.i = load i8, ptr %i.a, align 1, !tbaa !1110, !range !1111, !noundef !19
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 0, i32 noundef 4137) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i32 %2, ptr %9, align 4, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %6, ptr %i.k, align 4, !tbaa !22
  %i.l = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %7, label %.sink.split, label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.m = icmp ult i64 %i.h, 16
  %or.cond = select i1 %7, i1 %i.m, i1 false
  br i1 %or.cond, label %.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d, %.critedge
  %.sroa.018.0.ph = phi i64 [ %i.h, %.critedge ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.sroa.018.0 = phi i64 [ %i.f, %bb.a ], [ %.sroa.018.0.ph, %.sink.split ]
  ret i64 %.sroa.018.0
}

declare i64 @_ZNK5clang10ASTContext27applyObjCProtocolQualifiersENS_8QualTypeEN4llvm8ArrayRefIPNS_16ObjCProtocolDeclEEERbb(ptr noundef nonnull align 8 dereferenceable(23904), i64, ptr, i64, ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN5clang8SemaObjC21ActOnObjCInstanceTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(328) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19 ; 3 uses
  %i.b = tail call noundef ptr @_ZN5clang10ASTContext23getObjCInstanceTypeDeclEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.a) #19
  %i.c = tail call i64 @_ZNK5clang10ASTContext14getTypedefTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_15TypedefNameDeclENS_8QualTypeESt8optionalIbE(ptr noundef nonnull align 8 dereferenceable(23904) %i.a, i32 noundef 6, i64 0, ptr noundef %i.b, i64 0, i16 0) #19 ; 2 uses
  %i.d = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.a, i64 %i.c, i32 %1) #19
  %i.e = load ptr, ptr %0, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.f = tail call ptr @_ZN5clang4Sema16CreateParsedTypeENS_8QualTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %i.e, i64 %i.c, ptr noundef %i.d) #19
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang8SemaObjC26CheckObjCCircularContainerEPNS_15ObjCMessageExprE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 16580608
  %spec.select.i = icmp eq i32 %i.f, 65536
  br i1 %spec.select.i, label %bb.b, label %_ZN5clangL21GetNSSetArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1189
  %i.i = tail call noundef ptr @_ZNK5clang15ObjCMessageExpr20getReceiverInterfaceEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  %i.j = tail call noundef zeroext i1 @_ZNK5clang5NSAPI19isSubclassOfNSClassEPNS_17ObjCInterfaceDeclENS0_17NSClassIdKindKindE(ptr noundef nonnull align 8 dereferenceable(712) %i.h, ptr noundef %i.i, i32 noundef 3) #19
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i64 @_ZNK5clang15ObjCMessageExpr11getSelectorEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !1189
  %i.m = tail call i64 @_ZN5clang5NSAPI20getNSArrayMethodKindENS_8SelectorE(ptr noundef nonnull align 8 dereferenceable(712) %i.l, i64 %i.k) #19 ; 2 uses
  %i.n = and i64 %i.m, 4294967296
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %8

8:                                                ; preds = %bb.c
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.m to i32
  %switch.tableidx = add i32 %.sroa.0.0.extract.trunc.i, -8 ; 2 uses
  %9 = icmp ult i32 %switch.tableidx, 4
  br i1 %9, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %8, %bb.b, %bb.c
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !1189
  %i.p = tail call noundef ptr @_ZNK5clang15ObjCMessageExpr20getReceiverInterfaceEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  %i.q = tail call noundef zeroext i1 @_ZNK5clang5NSAPI19isSubclassOfNSClassEPNS_17ObjCInterfaceDeclENS0_17NSClassIdKindKindE(ptr noundef nonnull align 8 dereferenceable(712) %i.o, ptr noundef %i.p, i32 noundef 5) #19
  br i1 %i.q, label %bb.e, label %_ZN5clangL35GetNSMutableDictionaryArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i64 @_ZNK5clang15ObjCMessageExpr11getSelectorEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !1189
  %i.t = tail call i64 @_ZN5clang5NSAPI25getNSDictionaryMethodKindENS_8SelectorE(ptr noundef nonnull align 8 dereferenceable(712) %i.s, i64 %i.r) #19 ; 2 uses
  %i.u = and i64 %i.t, 4294967296
  %.not.i57 = icmp ne i64 %i.u, 0
  %.sroa.0.0.extract.trunc.i58 = trunc i64 %i.t to i32
  %.off.i = add i32 %.sroa.0.0.extract.trunc.i58, -10
  %switch.i = icmp ult i32 %.off.i, 3
  %or.cond = and i1 %.not.i57, %switch.i
  br i1 %or.cond, label %.critedge, label %_ZN5clangL35GetNSMutableDictionaryArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread

_ZN5clangL35GetNSMutableDictionaryArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread: ; preds = %bb.e, %bb.d
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !1189
  %i.w = tail call noundef ptr @_ZNK5clang15ObjCMessageExpr20getReceiverInterfaceEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  %i.x = tail call noundef zeroext i1 @_ZNK5clang5NSAPI19isSubclassOfNSClassEPNS_17ObjCInterfaceDeclENS0_17NSClassIdKindKindE(ptr noundef nonnull align 8 dereferenceable(712) %i.v, ptr noundef %i.w, i32 noundef 7) #19
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !1189
  %i.z = tail call noundef ptr @_ZNK5clang15ObjCMessageExpr20getReceiverInterfaceEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  %i.aa = tail call noundef zeroext i1 @_ZNK5clang5NSAPI19isSubclassOfNSClassEPNS_17ObjCInterfaceDeclENS0_17NSClassIdKindKindE(ptr noundef nonnull align 8 dereferenceable(712) %i.y, ptr noundef %i.z, i32 noundef 8) #19
  %or.cond.i = or i1 %i.x, %i.aa
  br i1 %or.cond.i, label %bb.f, label %_ZN5clangL21GetNSSetArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread

bb.f:                                             ; preds = %_ZN5clangL35GetNSMutableDictionaryArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread
  %i.ab = tail call i64 @_ZNK5clang15ObjCMessageExpr11getSelectorEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !1189
  %i.ad = tail call i64 @_ZN5clang5NSAPI18getNSSetMethodKindENS_8SelectorE(ptr noundef nonnull align 8 dereferenceable(712) %i.ac, i64 %i.ab) #19 ; 3 uses
  %i.ae = and i64 %i.ad, 4294967296
  %.not.i60 = icmp ne i64 %i.ae, 0
  %.sroa.0.0.extract.trunc.i61 = trunc i64 %i.ad to i32
  %i.af = icmp ult i32 %.sroa.0.0.extract.trunc.i61, 5
  %or.cond136.a = and i1 %.not.i60, %i.af
  br i1 %or.cond136.a, label %switch.lookup132, label %_ZN5clangL21GetNSSetArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread

switch.lookup:                                    ; preds = %8
  %i.ag = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5clang8SemaObjC26CheckObjCCircularContainerEPNS_15ObjCMessageExprE, i64 %i.ag
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.critedge

switch.lookup132:                                 ; preds = %bb.f
  %10 = and i64 %i.ad, 7
  %switch.gep133 = getelementptr inbounds nuw i8, ptr @switch.table._ZN5clang8SemaObjC26CheckObjCCircularContainerEPNS_15ObjCMessageExprE.15, i64 %10
  %switch.load134 = load i8, ptr %switch.gep133, align 1
  br label %.critedge

.critedge:                                        ; preds = %switch.lookup132, %switch.lookup, %bb.e
  %.sroa.078.0.shrunk = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.e ], [ %switch.load134, %switch.lookup132 ]
  %.sroa.078.0 = zext i8 %.sroa.078.0.shrunk to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.sroa.078.0
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !715
  %i.ak = tail call noundef ptr @_ZN5clang4Expr14IgnoreImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #20 ; 3 uses
  %i.al = load i16, ptr %i.ak, align 8
  %i.am = and i16 %i.al, 511
  %.not = icmp eq i16 %i.am, 26
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1116
  %i.ap = tail call noundef ptr @_ZN5clang4Expr14IgnoreImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  %.043 = phi ptr [ %i.ap, %bb.g ], [ %i.ak, %.critedge ] ; 8 uses
  %i.aq = load i32, ptr %i.d, align 8
  %i.ar = and i32 %i.aq, 16711680                 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 196608
  br i1 %i.as, label %bb.i, label %_ZN5clang15ObjCMessageExpr19getInstanceReceiverEv.exit

bb.i:                                             ; preds = %bb.h
  %i.at = load i16, ptr %.043, align 8
  %i.au = and i16 %i.at, 511
  %.not127 = icmp eq i16 %i.au, 73
  br i1 %.not127, label %bb.j, label %_ZN5clangL21GetNSSetArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.av = tail call noundef zeroext i1 @_ZNK5clang4Expr14isObjCSelfExprEv(ptr noundef nonnull align 8 dereferenceable(16) %.043) #19
  br i1 %i.av, label %bb.k, label %_ZN5clangL21GetNSSetArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.aw = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %.sroa.076.0.extract.trunc = trunc i64 %i.aw to i32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.076.0.extract.trunc, i32 noundef 7425) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ax = getelementptr inbounds nuw i8, ptr %.043, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1193
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !1194
  %i.az = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_9ValueDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !1118, !range !1111, !noundef !19
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.bd, ptr nonnull @.str.6, i64 7)
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit

bb.m:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 132
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !1137, !range !1111, !noundef !19
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.n, label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit

bb.n:                                             ; preds = %bb.m
  %i.bi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.az) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1146 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !717
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(168) %i.bk) #19, !inline_history !1502
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i: ; preds = %bb.o, %bb.n
  %i.bp = phi ptr [ %i.bo, %bb.o ], [ null, %bb.n ]
  store ptr %i.bp, ptr %2, align 8, !tbaa !1148
  %i.bq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bq, 0
  %i.br = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.bs = load i32, ptr %i.be, align 8, !tbaa !22
  %i.bt = zext i32 %i.bs to i64
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !1151
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.bw, ptr nonnull @.str.6, i64 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit

_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit: ; preds = %bb.l, %bb.m, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN5clangL21GetNSSetArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread

_ZN5clang15ObjCMessageExpr19getInstanceReceiverEv.exit: ; preds = %bb.h
  %i.bx = icmp eq i32 %i.ar, 65536
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1166
  %i.ca = tail call noundef ptr @_ZN5clang4Expr14IgnoreImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #20 ; 3 uses
  %i.cb = load i16, ptr %i.ca, align 8            ; 2 uses
  %i.cc = and i16 %i.cb, 511
  %.not117 = icmp eq i16 %i.cc, 26
  br i1 %.not117, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5clang15ObjCMessageExpr19getInstanceReceiverEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1116
  %i.cf = tail call noundef ptr @_ZN5clang4Expr14IgnoreImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #20 ; 2 uses
  %.pre = load i16, ptr %i.cf, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN5clang15ObjCMessageExpr19getInstanceReceiverEv.exit
  %i.cg = phi i16 [ %.pre, %bb.p ], [ %i.cb, %_ZN5clang15ObjCMessageExpr19getInstanceReceiverEv.exit ]
  %.0 = phi ptr [ %i.cf, %bb.p ], [ %i.ca, %_ZN5clang15ObjCMessageExpr19getInstanceReceiverEv.exit ] ; 2 uses
  %i.ch = and i16 %i.cg, 511
  switch i16 %i.ch, label %_ZN5clangL21GetNSSetArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread [
    i16 73, label %bb.r
    i16 37, label %bb.w
  ]

bb.r:                                             ; preds = %bb.q
  %i.ci = load i16, ptr %.043, align 8
  %i.cj = and i16 %i.ci, 511
  %.not121 = icmp eq i16 %i.cj, 73
  br i1 %.not121, label %bb.s, label %_ZN5clangL21GetNSSetArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1193 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.043, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1193
  %i.co = icmp eq ptr %i.cl, %i.cn
  br i1 %i.co, label %bb.t, label %_ZN5clangL21GetNSSetArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %i.cl, ptr %i.b, align 8, !tbaa !1194
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cp = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %.sroa.072.0.extract.trunc = trunc i64 %i.cp to i32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.072.0.extract.trunc, i32 noundef 7425) #19
  %i.cq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_9ValueDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.cr = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_9ValueDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cs = call noundef zeroext i1 @_ZNK5clang4Expr14isObjCSelfExprEv(ptr noundef nonnull align 8 dereferenceable(16) %.043) #19
  br i1 %i.cs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !1194
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %.sroa.0.0.copyload.i67 = load i32, ptr %i.cu, align 8, !tbaa !22
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.0.0.copyload.i67, i32 noundef 6323) #19
  %i.cv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_9ValueDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZN5clangL21GetNSSetArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread

bb.w:                                             ; preds = %bb.q
  %i.cw = load i16, ptr %.043, align 8
  %i.cx = and i16 %i.cw, 511
  %.not125 = icmp eq i16 %i.cx, 37
  br i1 %.not125, label %bb.x, label %_ZN5clangL21GetNSSetArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1197 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.043, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1197
  %i.dc = icmp eq ptr %i.cz, %i.db
  br i1 %i.dc, label %bb.y, label %_ZN5clangL21GetNSSetArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !1198
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.dd = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %.sroa.0.0.extract.trunc = trunc i64 %i.dd to i32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.0.0.extract.trunc, i32 noundef 7425) #19
  %i.de = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_12ObjCIvarDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.df = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_12ObjCIvarDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !1198
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %.sroa.0.0.copyload.i71 = load i32, ptr %i.dh, align 8, !tbaa !22
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.0.0.copyload.i71, i32 noundef 6323) #19
  %i.di = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_12ObjCIvarDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %_ZN5clangL21GetNSSetArgumentIndexERNS_8SemaObjCEPNS_15ObjCMessageExprE.exit.thread
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplateInstantiate?download=true
inline.NumInlined: 46814
inline.NumDeleted: 15846
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5clang4Sema15InstantiateEnumENS_14SourceLocationEPNS_8EnumDeclES3_RKNS_30MultiLevelTemplateArgumentListENS_26TemplateSpecializationKindE:bb.a
.lr.ph.i.i.i:                                     ; preds = %bb.r, %bb.t
  %.sroa.07.012.i.i.i = phi ptr [ %i.dy, %bb.t ], [ %i.dr, %bb.r ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.07.012.i.i.i, align 8, !tbaa !879 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not10.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !77
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull align 8 dereferenceable(18640) %i.di, ptr noundef nonnull align 8 dereferenceable(52) %i.dq) #26, !inline_history !13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.dy, %i.dt
  br i1 %.not.i.i.i33, label %_ZN5clang13atTemplateEndISt6vectorISt10unique_ptrINS_29TemplateInstantiationCallbackESt14default_deleteIS3_EESaIS6_EEEEvRT_RKNS_4SemaERKNSB_20CodeSynthesisContextE.exit.loopexit.i.i, label %.lr.ph.i.i.i

_ZN5clang13atTemplateEndISt6vectorISt10unique_ptrINS_29TemplateInstantiationCallbackESt14default_deleteIS3_EESaIS6_EEEEvRT_RKNS_4SemaERKNSB_20CodeSynthesisContextE.exit.loopexit.i.i: ; preds = %bb.t
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !925
  br label %_ZN5clang13atTemplateEndISt6vectorISt10unique_ptrINS_29TemplateInstantiationCallbackESt14default_deleteIS3_EESaIS6_EEEEvRT_RKNS_4SemaERKNSB_20CodeSynthesisContextE.exit.i.i

_ZN5clang13atTemplateEndISt6vectorISt10unique_ptrINS_29TemplateInstantiationCallbackESt14default_deleteIS3_EESaIS6_EEEEvRT_RKNS_4SemaERKNSB_20CodeSynthesisContextE.exit.i.i: ; preds = %_ZN5clang13atTemplateEndISt6vectorISt10unique_ptrINS_29TemplateInstantiationCallbackESt14default_deleteIS3_EESaIS6_EEEEvRT_RKNS_4SemaERKNSB_20CodeSynthesisContextE.exit.loopexit.i.i, %bb.r
  %i.dz = phi ptr [ %.pre.i.i, %_ZN5clang13atTemplateEndISt6vectorISt10unique_ptrINS_29TemplateInstantiationCallbackESt14default_deleteIS3_EESaIS6_EEEEvRT_RKNS_4SemaERKNSB_20CodeSynthesisContextE.exit.loopexit.i.i ], [ %i.di, %bb.r ]
  call void @_ZN5clang4Sema23popCodeSynthesisContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.dz)
  br label %_ZN5clang4Sema21InstantiatingTemplateD2Ev.exit

_ZN5clang4Sema21InstantiatingTemplateD2Ev.exit:   ; preds = %bb.d, %bb.q, %_ZN5clang13atTemplateEndISt6vectorISt10unique_ptrINS_29TemplateInstantiationCallbackESt14default_deleteIS3_EESaIS6_EEEEvRT_RKNS_4SemaERKNSB_20CodeSynthesisContextE.exit.i.i
  %.060 = phi i1 [ %i.bw, %_ZN5clang13atTemplateEndISt6vectorISt10unique_ptrINS_29TemplateInstantiationCallbackESt14default_deleteIS3_EESaIS6_EEEEvRT_RKNS_4SemaERKNSB_20CodeSynthesisContextE.exit.i.i ], [ %i.bw, %bb.q ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store ptr %i.n, ptr %i.m, align 8, !tbaa !1510
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZN5clang4Sema21InstantiatingTemplateD2Ev.exit
  %.1 = phi i1 [ %.060, %_ZN5clang4Sema21InstantiatingTemplateD2Ev.exit ], [ true, %bb.a ]
  ret i1 %.1
}

declare noundef ptr @_ZNK5clang8EnumDecl29getInstantiatedFromMemberEnumEv(ptr noundef nonnull align 8 dereferenceable(164)) local_unnamed_addr #2

declare void @_ZN5clang24TemplateDeclInstantiator25InstantiateEnumDefinitionEPNS_8EnumDeclES2_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema29InstantiateInClassInitializerENS_14SourceLocationEPNS_9FieldDeclES3_RKNS_30MultiLevelTemplateArgumentListE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(118) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %class.anon.1841, align 1           ; 3 uses
  %6 = alloca %"class.(anonymous namespace)::TemplateInstantiator", align 8 ; 13 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %7 = alloca %"struct.clang::Sema::RecursiveInstGuard", align 8 ; 5 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %11 = alloca %"struct.clang::Sema::InstantiatingTemplate", align 8 ; 6 uses
  %12 = alloca %"class.clang::PrettyDeclStackTraceEntry", align 8 ; 9 uses
  %13 = alloca %"class.clang::LocalInstantiationScope", align 8 ; 18 uses
  %14 = alloca %"class.clang::Sema::CXXThisScopeRAII", align 8 ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !1569
  store ptr %3, ptr %i.b, align 8, !tbaa !1569
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.e = load i32, ptr %i.d, align 4
  %i.f = lshr i32 %i.e, 2
  %i.g = and i32 %i.f, 3
  %.off = add nsw i32 %i.g, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %0, ptr %7, align 8, !tbaa !830
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(33) %2) #26, !inline_history !12
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, -7
  store i64 %i.n, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 13520
  %i.p = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPN5clang4DeclELj2EjNS_21PointerLikeTypeTraitsIS5_EENS_18PointerIntPairInfoIS5_Lj2ES7_EEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E24lookupOrInsertIntoBucketIRKSA_JEEESt4pairIPSG_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !2999
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.p, 1
  %i.q = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.q, label %_ZN5clang4Sema18RecursiveInstGuardC2ERS0_PNS_4DeclENS1_4KindE.exit, label %_ZN5clang4Sema18RecursiveInstGuardC2ERS0_PNS_4DeclENS1_4KindE.exit.thread

_ZN5clang4Sema18RecursiveInstGuardC2ERS0_PNS_4DeclENS1_4KindE.exit.thread: ; preds = %bb.b
  store i64 0, ptr %i.h, align 8, !tbaa !105
  br label %bb.c

_ZN5clang4Sema18RecursiveInstGuardC2ERS0_PNS_4DeclENS1_4KindE.exit: ; preds = %bb.b
  %.0.copyload.i.i.i.pr = load i64, ptr %i.h, align 8
  %i.r = icmp eq i64 %.0.copyload.i.i.i.pr, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5clang4Sema18RecursiveInstGuardC2ERS0_PNS_4DeclENS1_4KindE.exit.thread, %_ZN5clang4Sema18RecursiveInstGuardC2ERS0_PNS_4DeclENS1_4KindE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 %1, i32 noundef 3670) #26
  %i.t = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_9FieldDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.v = load i8, ptr %i.u, align 8, !tbaa !884, !range !70, !noundef !71
  %i.w = trunc nuw i8 %i.v to i1
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.af

bb.d:                                             ; preds = %_ZN5clang4Sema18RecursiveInstGuardC2ERS0_PNS_4DeclENS1_4KindE.exit
  %i.x = call noundef ptr @_ZNK5clang9FieldDecl21getInClassInitializerEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #26 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8 ; 3 uses
  %i.z = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang9FieldDecl9getParentEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83
  br label %_ZN5clang9FieldDecl9getParentEv.exit

_ZN5clang9FieldDecl9getParentEv.exit:             ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.af = call noundef ptr @_ZN5clang11DeclContext28getOuterLexicalRecordContextEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i) #26
  store ptr %i.af, ptr %i.c, align 8, !tbaa !1570
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %1, i32 noundef 3671) #26
  %i.ah = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_10RecordDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.ai = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_9FieldDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !1569 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call i64 %i.am(ptr noundef nonnull align 8 dereferenceable(33) %i.aj) #29, !inline_history !2994
  %.sroa.3.0.extract.shift.i = lshr i64 %i.an, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.sroa.3.0.extract.trunc.i, i32 noundef 6032) #26
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #26
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %2, i1 noundef zeroext true) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.af

bb.h:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 13760 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1499
  store ptr null, ptr %i.ao, align 8, !tbaa !1499
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @_ZN5clang4Sema21InstantiatingTemplateC1ERS0_NS_14SourceLocationEPNS_4DeclENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(9) %11, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull %2, i64 0) #26
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !869, !range !70, !noundef !71
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN5clang4Sema21InstantiatingTemplateD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !786, !nonnull !71, !align !787
  call void @_ZN4llvm21PrettyStackTraceEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %12) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang25PrettyDeclStackTraceEntryE, i64 16), ptr %12, align 8, !tbaa !77
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !1527
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %2, ptr %i.aw, align 8, !tbaa !1531
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 0, ptr %i.ax, align 8, !tbaa !870
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr @.str.5, ptr %i.ay, align 8, !tbaa !1532
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i27 = load i64, ptr %i.az, align 8 ; 3 uses
  %i.ba = and i64 %.0.copyload.i.i.i.i.i.i.i.i27, 4
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i27 to ptr
  br label %_ZN5clang9FieldDecl9getParentEv.exit30

bb.k:                                             ; preds = %bb.i
  %i.bd = and i64 %.0.copyload.i.i.i.i.i.i.i.i27, -5
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !83
  br label %_ZN5clang9FieldDecl9getParentEv.exit30

_ZN5clang9FieldDecl9getParentEv.exit30:           ; preds = %bb.j, %bb.k
  %.0.i.i28 = phi ptr [ %i.bc, %bb.j ], [ %i.bf, %bb.k ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i28, i64 8
  %i.bh = load i16, ptr %i.bg, align 8
  %i.bi = and i16 %i.bh, 127
  %i.bj = add nsw i16 %i.bi, -63
  %i.bk = icmp ult i16 %i.bj, -4
  %spec.select = select i1 %i.bk, ptr null, ptr %.0.i.i28
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1498 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1502
  store ptr null, ptr %i.bn, align 8, !tbaa !1502
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11136 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !105
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !1503
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !1504
  store ptr %spec.select, ptr %i.bl, align 8, !tbaa !1498
  store i64 0, ptr %i.bp, align 8, !tbaa !105
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !55
  store i32 %i.bw, ptr %i.br, align 8, !tbaa !1503
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !55
  store i32 %i.by, ptr %i.bt, align 8, !tbaa !1504
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 6, ptr noundef nonnull %2, i32 noundef 4) #26
  %i.bz = load ptr, ptr %i.bl, align 8, !tbaa !1498
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !54
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !55
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [792 x i8], ptr %i.cb, i64 %i.ce ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -32
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -8 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !3000, !range !70, !noundef !71
  %i.cj = trunc nuw i8 %i.ci to i1
  store i32 %1, ptr %i.cg, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds i8, ptr %i.cf, i64 -24
  store ptr %2, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.cf, i64 -16
  store ptr %i.bz, ptr %.sroa.5.0..sroa_idx, align 8
  br i1 %i.cj, label %_ZNSt8optionalIN5clang4Sema33ExpressionEvaluationContextRecord21InitializationContextEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5clang9FieldDecl9getParentEv.exit30
  store i8 1, ptr %i.ch, align 8, !tbaa !3000
  br label %_ZNSt8optionalIN5clang4Sema33ExpressionEvaluationContextRecord21InitializationContextEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

_ZNSt8optionalIN5clang4Sema33ExpressionEvaluationContextRecord21InitializationContextEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit: ; preds = %_ZN5clang9FieldDecl9getParentEv.exit30, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %0, ptr %13, align 8, !tbaa !830
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 80
  store i32 1, ptr %i.ck, align 8
  store i32 0, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 2 uses
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !54
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  store i32 0, ptr %i.co, align 8, !tbaa !55
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 100
  store i32 1, ptr %i.cp, align 4, !tbaa !56
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 12576 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1028
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !1039
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 3 uses
  store i8 0, ptr %i.ct, align 8, !tbaa !1040
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 121
  store i8 1, ptr %i.cu, align 1, !tbaa !1041
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 122
  store i8 0, ptr %i.cv, align 2, !tbaa !1038
  %i.cw = getelementptr inbounds nuw i8, ptr %13, i64 128
  store ptr null, ptr %i.cw, align 8, !tbaa !1042
  store ptr %13, ptr %i.cr, align 8, !tbaa !1028
  call void @_ZN5clang4Sema37ActOnStartCXXInClassMemberInitializerEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %.0.copyload.i.i.i.i.i.i.i.i31 = load i64, ptr %i.az, align 8 ; 3 uses
  %i.cx = and i64 %.0.copyload.i.i.i.i.i.i.i.i31, 4
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt8optionalIN5clang4Sema33ExpressionEvaluationContextRecord21InitializationContextEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit
  %i.cz = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i31 to ptr
  br label %_ZN5clang9FieldDecl9getParentEv.exit34

bb.n:                                             ; preds = %_ZNSt8optionalIN5clang4Sema33ExpressionEvaluationContextRecord21InitializationContextEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit
  %i.da = and i64 %.0.copyload.i.i.i.i.i.i.i.i31, -5
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !83
  br label %_ZN5clang9FieldDecl9getParentEv.exit34

_ZN5clang9FieldDecl9getParentEv.exit34:           ; preds = %bb.m, %bb.n
  %.0.i.i32 = phi ptr [ %i.cz, %bb.m ], [ %i.dc, %bb.n ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i32, i64 8
  %i.de = load i16, ptr %i.dd, align 8
  %i.df = and i16 %i.de, 127
  %i.dg = add nsw i16 %i.df, -59
  %i.dh = icmp ult i16 %i.dg, 4
  %i.di = getelementptr inbounds i8, ptr %.0.i.i32, i64 -64
  %spec.select.i.i.i33 = select i1 %i.dh, ptr %i.di, ptr null
  call void @_ZN5clang4Sema16CXXThisScopeRAIIC1ERS0_PNS_4DeclENS_10QualifiersEb(ptr noundef nonnull align 8 dereferenceable(17) %14, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %spec.select.i.i.i33, i64 0, i1 noundef zeroext true) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %0, ptr %6, align 8, !tbaa !830
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %4, ptr %i.dk, align 8, !tbaa !1003
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 0, ptr %i.dl, align 8, !tbaa !870
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %i.dm, align 8, !tbaa !75
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 56
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.dn, align 8, !tbaa !1004
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 3 uses
  store i8 0, ptr %i.do, align 8, !tbaa !1006
  %i.dp = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.x, i1 noundef zeroext false), !inline_history !3001
  %i.dq = load i8, ptr %i.do, align 8, !tbaa !1006, !range !70, !noundef !71
  %i.dr = trunc nuw i8 %i.dq to i1
  store i8 0, ptr %i.do, align 8, !tbaa !1006
  br i1 %i.dr, label %bb.o, label %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i.i

bb.o:                                             ; preds = %_ZN5clang9FieldDecl9getParentEv.exit34
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !54 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef %i.dt) #26, !inline_history !3001
  br label %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.p, %bb.o, %_ZN5clang9FieldDecl9getParentEv.exit34
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 28
  %.val1.i.i = load i32, ptr %i.dw, align 4, !tbaa !1009 ; 2 uses
  %i.dx = icmp eq i32 %.val1.i.i, 0
  br i1 %i.dx, label %_ZN5clang4Sema16SubstInitializerEPNS_4ExprERKNS_30MultiLevelTemplateArgumentListEb.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i.i
  %.val.i.i = load ptr, ptr %i.dj, align 8
  %i.dy = zext i32 %.val1.i.i to i64              ; 2 uses
  %i.dz = shl nuw nsw i64 %i.dy, 4
  %i.ea = add nuw nsw i64 %i.dy, 31
  %i.eb = lshr i64 %i.ea, 3
  %i.ec = and i64 %i.eb, 1073741820
  %i.ed = add nuw nsw i64 %i.ec, %i.dz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val.i.i, i64 noundef %i.ed, i64 noundef 8) #26, !inline_history !3001
  br label %_ZN5clang4Sema16SubstInitializerEPNS_4ExprERKNS_30MultiLevelTemplateArgumentListEb.exit

_ZN5clang4Sema16SubstInitializerEPNS_4ExprERKNS_30MultiLevelTemplateArgumentListEb.exit: ; preds = %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ee = and i64 %i.dp, -2                       ; 3 uses
  %.not24 = icmp eq i64 %i.ee, 0
  br i1 %.not24, label %.split20, label %.split

.split:                                           ; preds = %_ZN5clang4Sema16SubstInitializerEPNS_4ExprERKNS_30MultiLevelTemplateArgumentListEb.exit
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ef) #29
  br label %.split20

.split20:                                         ; preds = %_ZN5clang4Sema16SubstInitializerEPNS_4ExprERKNS_30MultiLevelTemplateArgumentListEb.exit, %.split
  %.sroa.038.0 = phi i32 [ %i.eg, %.split ], [ 0, %_ZN5clang4Sema16SubstInitializerEPNS_4ExprERKNS_30MultiLevelTemplateArgumentListEb.exit ]
  call void @_ZN5clang4Sema38ActOnFinishCXXInClassMemberInitializerEPNS_4DeclENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %2, i32 %.sroa.038.0, i64 %i.ee) #26
  %i.eh = call noundef ptr @_ZNK5clang4Sema22getASTMutationListenerEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26 ; 3 uses
  %.not25 = icmp eq ptr %i.eh, null
  br i1 %.not25, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.split20
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !77
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 152
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull %2) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.split20
  %i.el = call noundef ptr @_ZNK5clang9FieldDecl21getInClassInitializerEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #26
  %.not26 = icmp eq ptr %i.el, null               ; 2 uses
  call void @_ZN5clang4Sema16CXXThisScopeRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.em = load i8, ptr %i.ct, align 8, !tbaa !1040, !range !70, !noundef !71
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %_ZN5clang23LocalInstantiationScope4ExitEv.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eo = load i32, ptr %i.co, align 8, !tbaa !55 ; 2 uses
  %.not5.i.i = icmp eq i32 %i.eo, 0
  br i1 %.not5.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %i.ep = zext i32 %i.eo to i64
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.w, %bb.t
  %i.eq = load ptr, ptr %i.cq, align 8, !tbaa !1039
  %i.er = load ptr, ptr %13, align 8, !tbaa !1088, !nonnull !71, !align !787
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12576
  store ptr %i.eq, ptr %i.es, align 8, !tbaa !1028
  store i8 1, ptr %i.ct, align 8, !tbaa !1040
  br label %_ZN5clang23LocalInstantiationScope4ExitEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.w ] ; 2 uses
  %i.et = load ptr, ptr %i.cm, align 8, !tbaa !54
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.i.i
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1090 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListE:bb.a
  %i.dp = add nuw nsw i64 %i.do, %i.dl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val13, i64 noundef %i.dp, i64 noundef 8) #26
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerED2Ev.exit

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerED2Ev.exit: ; preds = %_ZN5clang4Decl21getLexicalDeclContextEv.exit, %bb.r, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %bb.s
  %.sroa.0.0.i37 = phi i64 [ %i.di, %bb.s ], [ %i.di, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %_ZN5clang4Decl21getLexicalDeclContextEv.exit ], [ %i.dh, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.dq = load ptr, ptr %10, align 8, !tbaa !54   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerED2Ev.exit
  call void @free(ptr noundef %i.dq) #26
  br label %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit

_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit: ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.dt = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.ch
  br i1 %i.du, label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj4EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit
  call void @free(ptr noundef %i.dt) #26
  br label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj4EED2Ev.exit: ; preds = %_ZN5clang30MultiLevelTemplateArgumentListD2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.v

bb.v:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj4EED2Ev.exit, %bb.l
  %.sroa.019.0 = phi i64 [ 1, %bb.l ], [ %.sroa.0.0.i37, %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj4EED2Ev.exit ]
  %i.dv = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.k
  br i1 %i.dw, label %_ZN5clang24TemplateArgumentListInfoD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.dv) #26
  br label %_ZN5clang24TemplateArgumentListInfoD2Ev.exit

_ZN5clang24TemplateArgumentListInfoD2Ev.exit:     ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.dx = load i8, ptr %i.f, align 8, !tbaa !1006, !range !70, !noundef !71
  %i.dy = trunc nuw i8 %i.dx to i1
  store i8 0, ptr %i.f, align 8, !tbaa !1006
  br i1 %i.dy, label %bb.x, label %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i

bb.x:                                             ; preds = %_ZN5clang24TemplateArgumentListInfoD2Ev.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !54 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.ea) #26
  br label %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i: ; preds = %bb.y, %bb.x, %_ZN5clang24TemplateArgumentListInfoD2Ev.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 28
  %.val1.i = load i32, ptr %i.ed, align 4, !tbaa !1009 ; 2 uses
  %i.ee = icmp eq i32 %.val1.i, 0
  br i1 %i.ee, label %_ZN12_GLOBAL__N_120TemplateInstantiatorD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i
  %.val.i = load ptr, ptr %i.a, align 8
  %i.ef = zext i32 %.val1.i to i64                ; 2 uses
  %i.eg = shl nuw nsw i64 %i.ef, 4
  %i.eh = add nuw nsw i64 %i.ef, 31
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = and i64 %i.ei, 1073741820
  %i.ek = add nuw nsw i64 %i.ej, %i.eg
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val.i, i64 noundef %i.ek, i64 noundef 8) #26
  br label %_ZN12_GLOBAL__N_120TemplateInstantiatorD2Ev.exit

_ZN12_GLOBAL__N_120TemplateInstantiatorD2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret i64 %.sroa.019.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 511
  switch i16 %i.b, label %bb.d [
    i16 122, label %bb.c
    i16 77, label %bb.c
    i16 20, label %bb.c
    i16 24, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.0.0 = phi i64 [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.2241", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %.not130 = icmp eq ptr %1, null
  br i1 %.not130, label %.loopexit, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.a, %tailrecurse.backedge
  %.tr118131 = phi ptr [ %.tr118.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 3 uses
  %i.b = load i16, ptr %.tr118131, align 8        ; 2 uses
  %i.c = and i16 %i.b, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.c, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph133
  %i.d = getelementptr inbounds nuw i8, ptr %.tr118131, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1656 ; 2 uses
  %.pre = load i16, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph133
  %i.f = phi i16 [ %i.b, %.lr.ph133 ], [ %.pre, %bb.b ] ; 2 uses
  %.098 = phi ptr [ %.tr118131, %.lr.ph133 ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = and i16 %i.f, 511
  %.not106 = icmp eq i16 %i.g, 129
  br i1 %.not106, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.098, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1657
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1659 ; 2 uses
  %.pre143 = load i16, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i16 [ %i.f, %bb.c ], [ %.pre143, %bb.d ]
  %.1 = phi ptr [ %.098, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = and i16 %i.l, 511
  %.not108 = icmp eq i16 %i.m, 50
  br i1 %.not108, label %bb.f, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 3 uses
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.h:                                             ; preds = %bb.f
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1662
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit: ; preds = %bb.h, %bb.g, %bb.e
  %.2 = phi ptr [ %.1, %bb.e ], [ %i.q, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %i.v = load i16, ptr %.2, align 8               ; 2 uses
  %i.w = and i16 %i.v, 511
  %.not110128 = icmp eq i16 %i.w, 120
  br i1 %.not110128, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit, %.lr.ph
  %.3129 = phi ptr [ %i.y, %.lr.ph ], [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.3129, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1665 ; 3 uses
  %i.z = load i16, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i16 %i.z, 511
  %.not110 = icmp eq i16 %i.aa, 120
  br i1 %.not110, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit
  %i.ab = phi i16 [ %i.v, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.z, %.lr.ph ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.ac = and i16 %i.ab, 511
  %.not112 = icmp eq i16 %i.ac, 81
  br i1 %.not112, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ad = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.3.lcssa) #26 ; 2 uses
  %.pre144 = load i16, ptr %i.ad, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ae = phi i16 [ %i.ab, %._crit_edge ], [ %.pre144, %bb.i ] ; 2 uses
  %.5 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %i.ad, %bb.i ] ; 13 uses
  %i.af = and i16 %i.ae, 511                      ; 3 uses
  %i.ag = icmp eq i16 %i.af, 101
  br i1 %i.ag, label %tailrecurse.backedge, label %bb.k

tailrecurse.backedge:                             ; preds = %bb.j, %bb.u
  %.sink = phi i64 [ %spec.select.v.i.i.i, %bb.u ], [ 16, %bb.j ]
  %4 = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink
  %.tr118.be = load ptr, ptr %4, align 8, !tbaa !955 ; 2 uses
  %.not = icmp eq ptr %.tr118.be, null
  br i1 %.not, label %.loopexit, label %.lr.ph133

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i16 %i.af, -119
  %spec.select.i.i.i.i.i.i.i.i60 = icmp ult i16 %i.ah, -2 ; 2 uses
  br i1 %2, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %spec.select.i.i.i.i.i.i.i.i60, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i32, ptr %.5, align 8              ; 2 uses
  %i.aj = and i32 %i.ai, 2097152
  %.not113 = icmp eq i32 %i.aj, 0
  %i.ak = trunc i32 %i.ai to i16
  br i1 %.not113, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.am = phi i16 [ %i.ak, %bb.m ], [ %i.ae, %bb.k ]
  switch i16 %i.af, label %bb.r [
    i16 102, label %bb.p
    i16 56, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.an = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.5) #29 ; 2 uses
  %.sroa.076.0.extract.trunc = trunc i64 %i.an to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.an, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.val53 = load ptr, ptr %0, align 8, !tbaa !1017
  %i.ao = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val53, i32 %.sroa.076.0.extract.trunc, i32 %.sroa.4.0.extract.trunc, ptr null, i64 0) #26
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %.val52 = load ptr, ptr %0, align 8, !tbaa !1017
  %i.ap = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val52, i32 0, i32 0, ptr null, i64 0) #26
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %i.aq = and i16 %i.am, 511
  %i.ar = icmp eq i16 %i.aq, 118
  %or.cond = or i1 %spec.select.i.i.i.i.i.i.i.i60, %i.ar
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.5)
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.at = load i32, ptr %.5, align 8              ; 3 uses
  %i.au = and i32 %i.at, 4194304
  %.not116 = icmp eq i32 %i.au, 0
  br i1 %.not116, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = and i32 %i.at, 511
  %.not.i.i.i = icmp eq i32 %i.av, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  br label %tailrecurse.backedge

bb.v:                                             ; preds = %bb.t
  %.val50 = load ptr, ptr %0, align 8, !tbaa !1017 ; 8 uses
  %i.aw = and i32 %i.at, 2097152
  %.not154 = icmp eq i32 %i.aw, 0
  br i1 %.not154, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %.val50, i64 4592
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %.val50, i64 4600
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !55
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [792 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -792
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1708
  switch i32 %i.be, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.x
    i32 3, label %bb.x
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %.val50, i64 216
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !882, !nonnull !71, !align !787
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 8192
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val50, i32 noundef 1, ptr noundef null, i32 noundef 4) #26
  %.val49.pre = load ptr, ptr %0, align 8, !tbaa !1017
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.val49 = phi ptr [ %.val50, %bb.w ], [ %.val50, %bb.x ], [ %.val49.pre, %bb.y ], [ %.val50, %bb.v ] ; 2 uses
  %.sroa.4.0 = phi i1 [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ false, %bb.v ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.val49, i64 4592
  %i.bk = getelementptr inbounds nuw i8, ptr %.val49, i64 4600
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !55
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !54
  %i.bo = getelementptr [792 x i8], ptr %i.bn, i64 %i.bm ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -831
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !1709, !range !70, !noundef !71
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 -39
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !1709
  %i.bs = getelementptr i8, ptr %i.bo, i64 -829
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1710, !range !70, !noundef !71
  %i.bu = getelementptr inbounds i8, ptr %i.bo, i64 -37
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !1710
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bv, ptr %3, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !55
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.bx, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !1004
  %i.by = load i16, ptr %.5, align 8
  %i.bz = and i16 %i.by, 511
  %.not.i.i = icmp eq i16 %i.bz, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %.5, i64 %spec.select.v.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1713
  %i.cd = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ca, i32 noundef %i.cc, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  br i1 %i.cd, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.ce = load i32, ptr %.5, align 8
  %i.cf = and i32 %i.ce, 2097152
  %.not117 = icmp eq i32 %i.cf, 0
  br i1 %.not117, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #29
  %i.ch = load ptr, ptr %3, align 8, !tbaa !54
  %i.ci = load i32, ptr %i.bw, align 8, !tbaa !55
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call i32 @_ZNK5clang16CXXConstructExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #29
  %.val54 = load ptr, ptr %0, align 8, !tbaa !1017
  %i.cl = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val54, i32 %i.cg, ptr %i.ch, i64 %i.cj, i32 %i.ck, i1 noundef zeroext true) #26
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %.5, i64 24
  %.sroa.0.0.copyload.i65 = load i64, ptr %i.cm, align 8, !tbaa !870 ; 2 uses
  %.sroa.068.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i65 to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i65, 32 ; 2 uses
  %i.cn = icmp eq i32 %.sroa.068.0.extract.trunc, 0
  %i.co = icmp eq i64 %.sroa.5.0.extract.shift, 0
  %.not2.i = or i1 %i.cn, %i.co
  br i1 %.not2.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.cp = load ptr, ptr %3, align 8, !tbaa !54
  %i.cq = load i32, ptr %i.bw, align 8, !tbaa !55
  %i.cr = zext i32 %i.cq to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !1017
  %i.cs = call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val51, i32 %.sroa.068.0.extract.trunc, i32 %.sroa.5.0.extract.trunc, ptr %i.cp, i64 %i.cr) #26
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.aa
  %.sroa.097.1 = phi i64 [ 1, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ %i.cl, %bb.aa ], [ %i.cs, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ct = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bv
  br i1 %i.cu, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.ct) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.sroa.4.0, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val50) #26
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.af, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.a, %bb.n, %bb.q, %bb.s, %bb.p
  %.sroa.097.3 = phi i64 [ %i.al, %bb.n ], [ %i.ao, %bb.p ], [ %i.ap, %bb.q ], [ %i.as, %bb.s ], [ %.sroa.097.1, %bb.af ], [ 0, %bb.a ], [ %.sroa.097.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 0, %tailrecurse.backedge ]
  ret i64 %.sroa.097.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema10SubstExprsEN4llvm8ArrayRefIPNS_4ExprEEEbRKNS_30MultiLevelTemplateArgumentListERNS1_15SmallVectorImplIS4_EE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree readonly captures(none) %1, i64 %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(118) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.(anonymous namespace)::TemplateInstantiator", align 8 ; 13 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %0, ptr %6, align 8, !tbaa !830
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %4, ptr %i.c, align 8, !tbaa !1003
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !870
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %i.e, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.f, align 8, !tbaa !1004
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 3 uses
  store i8 0, ptr %i.g, align 8, !tbaa !1006
  %i.h = trunc i64 %2 to i32
  %i.i = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %1, i32 noundef %i.h, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null)
  %i.j = load i8, ptr %i.g, align 8, !tbaa !1006, !range !70, !noundef !71
  %i.k = trunc nuw i8 %i.j to i1
  store i8 0, ptr %i.g, align 8, !tbaa !1006
  br i1 %i.k, label %bb.c, label %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.m) #26
  br label %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 28
  %.val1.i = load i32, ptr %i.p, align 4, !tbaa !1009 ; 2 uses
  %i.q = icmp eq i32 %.val1.i, 0
  br i1 %i.q, label %_ZN12_GLOBAL__N_120TemplateInstantiatorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i
  %.val.i = load ptr, ptr %i.b, align 8
  %i.r = zext i32 %.val1.i to i64                 ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820
  %i.w = add nuw nsw i64 %i.v, %i.s
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val.i, i64 noundef %i.w, i64 noundef 8) #26
  br label %_ZN12_GLOBAL__N_120TemplateInstantiatorD2Ev.exit

_ZN12_GLOBAL__N_120TemplateInstantiatorD2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4llvm16FoldingSetNodeIDELb0ELb0EED2Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN12_GLOBAL__N_120TemplateInstantiatorD2Ev.exit
  %.0 = phi i1 [ %i.i, %_ZN12_GLOBAL__N_120TemplateInstantiatorD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.clang::TreeTransform<(anonymous namespace)::TemplateInstantiator>::ForgetPartiallySubstitutedPackRAII", align 8 ; 7 uses
  %7 = alloca %"class.llvm::SmallVector.1747", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %8 = alloca %"struct.clang::OptionalUnsigned", align 4 ; 7 uses
  %.not155 = icmp eq i32 %2, 0
  br i1 %.not155, label %.critedge88, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.a
  %i.c = icmp ne ptr %5, null                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.l = zext i32 %2 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph158, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit118
  %indvars.iv = phi i64 [ 0, %.lr.ph158 ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit118 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !979  ; 4 uses
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.p = call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #26
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.e, label %.critedge88

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %5, align 1, !tbaa !1004
  br label %.critedge88

bb.f:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !979  ; 3 uses
  %i.r = load i16, ptr %i.q, align 8
  %i.s = and i16 %i.r, 511
  %.not147 = icmp eq i16 %i.s, 22
  br i1 %.not147, label %bb.g, label %.thread143

.thread:                                          ; preds = %bb.b
  %i.t = load i16, ptr %i.o, align 8
  %i.u = and i16 %i.t, 511
  %.not147191 = icmp eq i16 %i.u, 22
  br i1 %.not147191, label %bb.g, label %.thread143.thread

bb.g:                                             ; preds = %.thread, %bb.f
  %i.v = phi ptr [ %i.o, %.thread ], [ %i.q, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1715 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.f, ptr %7, align 8, !tbaa !54
  store i32 0, ptr %i.g, align 8, !tbaa !55
  store i32 2, ptr %i.h, align 4, !tbaa !56
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksEPNS_4ExprERN4llvm15SmallVectorImplISt4pairINS3_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 1, ptr %i.a, align 1, !tbaa !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i8 0, ptr %i.b, align 1, !tbaa !1004
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1716 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 %i.z, ptr %8, align 4, !tbaa !870
end_hunk_1
begin_hunk_2_@_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE27TransformCXXDefaultInitExprEPNS_18CXXDefaultInitExprE:bb.a
bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ay = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #29
  %i.az = tail call i64 @_ZN5clang4Sema23BuildCXXDefaultInitExprENS_14SourceLocationEPNS_9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.ay, ptr noundef nonnull %.0.i) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.h, %bb.g
  %.sroa.0.0 = phi i64 [ %i.ax, %bb.g ], [ %i.az, %bb.h ], [ 1, %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE26TransformCXXDefaultArgExprEPNS_17CXXDefaultArgExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1648 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1797, !noalias !3425 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1798, !noalias !3425 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1009, !noalias !3425 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !870, !noalias !3426
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !923

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !983, !noalias !3426
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.c, !prof !79

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !870, !noalias !3426
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !924

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.b, %bb.a
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ak, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.al, %.loopexit.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.am
  br i1 %.not.i, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1800
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 3 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ap = load i32, ptr %1, align 8
  %i.aq = and i32 %i.ap, 524288
  %.not26 = icmp eq i32 %i.aq, 0
  br i1 %.not26, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !979 ; 4 uses
  %.not.i18 = icmp eq ptr %i.as, null
  br i1 %.not.i18, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit
  %i.at = load i16, ptr %i.as, align 8
  %i.au = and i16 %i.at, 511
  switch i16 %i.au, label %bb.h [
    i16 122, label %bb.g
    i16 77, label %bb.g
    i16 20, label %bb.g
    i16 24, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.av = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.as), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.h:                                             ; preds = %bb.f
  %i.aw = ptrtoint ptr %i.as to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.g, %bb.h
  %.sroa.024.0 = phi i64 [ %i.av, %bb.g ], [ %i.aw, %bb.h ] ; 2 uses
  %i.ax = icmp eq i64 %.sroa.024.0, 1
  br i1 %i.ax, label %bb.o, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %.sroa.024.0, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ], [ 0, %bb.e ], [ 0, %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit ] ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !1783  ; 4 uses
  %i.ay = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.ay, align 4, !tbaa !1084
  %.not27 = icmp eq i32 %.val.val, 0
  br i1 %.not27, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !1648
  %i.ba = icmp eq ptr %.0.i, %i.az
  br i1 %i.ba, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !3427
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 616
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1498
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bg = and i64 %.sroa.0.0, -2
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i32, ptr %1, align 8
  %i.bj = and i32 %i.bi, 524288
  %.not.i19 = icmp eq i32 %i.bj, 0
  br i1 %.not.i19, label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !979
  br label %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit20

_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit20: ; preds = %bb.k, %bb.l
  %i.bm = phi ptr [ %i.bl, %bb.l ], [ null, %bb.k ]
  %i.bn = icmp eq ptr %i.bm, %i.bh
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit20
  %i.bo = ptrtoint ptr %1 to i64
  br label %bb.o

bb.n:                                             ; preds = %_ZN5clang17CXXDefaultArgExpr16getRewrittenExprEv.exit20, %bb.j, %bb.i, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.bp, align 4, !tbaa !870
  %i.bq = and i64 %.sroa.0.0, -2
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr i8, ptr %.val, i64 232
  %.val15.val = load ptr, ptr %i.bs, align 8, !tbaa !786
  %i.bt = getelementptr i8, ptr %.val, i64 616
  %.val15.val16 = load ptr, ptr %i.bt, align 8, !tbaa !1498
  %i.bu = tail call noundef ptr @_ZN5clang17CXXDefaultArgExpr6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_11ParmVarDeclEPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(23904) %.val15.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %.0.i, ptr noundef %i.br, ptr noundef %.val15.val16) #26
  %i.bv = ptrtoint ptr %i.bu to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %.sroa.023.1 = phi i64 [ 1, %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ %i.bo, %bb.m ], [ %i.bv, %bb.n ], [ 1, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit ]
  ret i64 %.sroa.023.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE25TransformCXXConstructExprEPNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2241", align 8 ; 9 uses
  %3 = alloca %"class.llvm::MutableArrayRef", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.2241", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1713
  switch i32 %i.c, label %bb.b [
    i32 1, label %bb.c
    i32 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 8
  %i.e = and i16 %i.d, 511
  %.not.i.i.i = icmp eq i16 %i.e, 118
  %5 = select i1 %.not.i.i.i, i64 56, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %5
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !979
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = load i16, ptr %1, align 8
  %i.j = and i16 %i.i, 511
  %.not.i.i.i44 = icmp eq i16 %i.j, 118
  %spec.select.v.i.i.i45 = select i1 %.not.i.i.i44, i64 48, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i45
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !979
  %i.m = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %1, align 8                ; 2 uses
  %i.o = and i32 %i.n, 2097152
  %.not70 = icmp eq i32 %i.o, 0
  br i1 %.not70, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %i.n, 511
  %.not.i.i.i47 = icmp eq i32 %i.p, 118
  %spec.select.v.i.i.i48 = select i1 %.not.i.i.i47, i64 48, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !979
  %i.s = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE20TransformInitializerEPS5_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.r, i1 noundef zeroext false)
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit.thread

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !105 ; 2 uses
  %i.u = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.u, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i79 = load ptr, ptr %0, align 8, !tbaa !1783
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i79, i64 232
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !786, !nonnull !71, !align !787
  %i.x = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.w, i64 %.sroa.0.0.copyload.i, i32 0) #26, !inline_history !27
  %i.y = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.x), !inline_history !27 ; 2 uses
  %.not.i80 = icmp eq ptr %i.y, null
  br i1 %.not.i80, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit.thread, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8, !tbaa !105 ; 4 uses
  %i.z = icmp ult i64 %.sroa.0.0.copyload.i.i, 16
  br i1 %i.z, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2130 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1797, !noalias !3436 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1798, !noalias !3436 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1009, !noalias !3436 ; 4 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i32 %i.ah, -1                       ; 2 uses
  %i.ak = ptrtoint ptr %i.ab to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.aj, %i.ao                    ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !870, !noalias !3437
  %i.au = and i32 %i.ap, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !923

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %i.ax = phi i64 [ %i.bd, %bb.j ], [ %i.aq, %bb.i ]
  %.017.i.i.i.i.i = phi i32 [ %i.bc, %bb.j ], [ %i.ap, %bb.i ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !983, !noalias !3437
  %i.ba = icmp eq ptr %i.ab, %i.az
  br i1 %i.ba, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.j, !prof !79

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = add nuw i32 %.017.i.i.i.i.i, 1
  %i.bc = and i32 %i.bb, %i.aj                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !870, !noalias !3437
  %i.bh = and i32 %i.bc, 31
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = trunc i32 %i.bi to i1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !924

.loopexit.i.i.i:                                  ; preds = %bb.j, %bb.i, %bb.h
  %i.bk = zext i32 %i.ah to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.bk
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ah to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.bk, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ay, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.bl, %.loopexit.i.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.bm
  br i1 %.not.i, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1800
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.k
  %.0.i = phi ptr [ %i.bo, %bb.k ], [ %i.ab, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 7 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bp, ptr %4, align 8, !tbaa !54
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.br, align 4, !tbaa !56
  %.val39 = load ptr, ptr %0, align 8, !tbaa !1783 ; 6 uses
  %i.bs = load i32, ptr %1, align 8               ; 2 uses
  %i.bt = and i32 %i.bs, 2097152
  %.not71 = icmp eq i32 %i.bt, 0
  %i.bu = trunc i32 %i.bs to i16                  ; 3 uses
  br i1 %.not71, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.val39, i64 4592
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !54
  %i.bx = getelementptr inbounds nuw i8, ptr %.val39, i64 4600
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !55
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [792 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -792
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1708
  switch i32 %i.cc, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.n
    i32 3, label %bb.n
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.val39, i64 216
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !882, !nonnull !71, !align !787
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = and i64 %i.cf, 8192
  %.not.i50 = icmp eq i64 %i.cg, 0
  br i1 %.not.i50, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 noundef 1, ptr noundef null, i32 noundef 4) #26
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.ch = phi i16 [ %i.bu, %bb.m ], [ %i.bu, %bb.n ], [ %.pre, %bb.o ], [ %i.bu, %bb.l ]
  %.sroa.6.0 = phi i1 [ false, %bb.m ], [ false, %bb.n ], [ true, %bb.o ], [ false, %bb.l ] ; 2 uses
  %i.ci = and i16 %i.ch, 511
  %.not.i.i = icmp eq i16 %i.ci, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i
  %i.ck = load i32, ptr %i.b, align 8, !tbaa !1713
  %i.cl = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE14TransformExprsEPKPS5_jbRN4llvm15SmallVectorImplISD_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.cj, i32 noundef %i.ck, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a)
  br i1 %i.cl, label %bb.p, label %.critedge38

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.q, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val39) #26
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge38:                                      ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.r, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51

bb.r:                                             ; preds = %.critedge38
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val39) #26
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51: ; preds = %.critedge38, %bb.r
  %.val = load ptr, ptr %0, align 8, !tbaa !1783  ; 3 uses
  %i.cm = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.cm, align 4, !tbaa !1084
  %.not72 = icmp eq i32 %.val.val, 0
  br i1 %.not72, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.t, align 8, !tbaa !105
  %i.cn = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i52
  br i1 %i.cn, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.aa, align 8, !tbaa !2130
  %i.cp = icmp ne ptr %.0.i, %i.co
  %i.cq = load i8, ptr %i.a, align 1, !range !70
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond = select i1 %i.cp, i1 true, i1 %i.cr
  br i1 %or.cond, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #29
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.cs, ptr noundef nonnull %.0.i, i1 noundef zeroext true) #26
  %i.ct = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge:                                        ; preds = %bb.t, %bb.s, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit51
  %i.cu = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #29 ; 2 uses
  %i.cv = load i32, ptr %1, align 8               ; 3 uses
  %i.cw = and i32 %i.cv, 524288
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = load ptr, ptr %4, align 8, !tbaa !54
  %i.cz = load i32, ptr %i.bq, align 8, !tbaa !55
  %i.da = zext i32 %i.cz to i64
  %i.db = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %i.dc = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dd = and <4 x i32> %i.dc, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.de = icmp ne <4 x i32> %i.dd, zeroinitializer ; 4 uses
  %i.df = lshr i32 %i.cv, 24
  %i.dg = and i32 %i.df, 7
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i54 = load i64, ptr %i.dh, align 8, !tbaa !870
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = and i64 %i.dj, 2305843009213693952
  %.not.i55 = icmp eq i64 %i.dk, 0
  br i1 %.not.i55, label %bb.v, label %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i

_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i: ; preds = %.critedge
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 184
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !2131
  br label %bb.v

bb.v:                                             ; preds = %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i, %.critedge
  %.0.i56 = phi ptr [ %.sroa.4.0.copyload.i.i, %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i ], [ %.0.i, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.dl, ptr %2, align 8, !tbaa !54
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.dm, align 8, !tbaa !55
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.dn, align 4, !tbaa !56
  %i.do = call noundef zeroext i1 @_ZN5clang4Sema23CompleteConstructorCallEPNS_18CXXConstructorDeclENS_8QualTypeEN4llvm15MutableArrayRefIPNS_4ExprEEENS_14SourceLocationERNS4_15SmallVectorImplIS7_EEbb(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef %.0.i56, i64 %.sroa.0.0.copyload.i.i, ptr %i.cy, i64 %i.da, i32 %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext false) #26
  br i1 %i.do, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1783
  %i.dp = load ptr, ptr %2, align 8, !tbaa !54
  store ptr %i.dp, ptr %3, align 8, !tbaa !1913
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dr = load i32, ptr %i.dm, align 8, !tbaa !55
  %i.ds = zext i32 %i.dr to i64
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !1914
  %i.dt = extractelement <4 x i1> %i.de, i64 0
  %i.du = extractelement <4 x i1> %i.de, i64 1
  %i.dv = extractelement <4 x i1> %i.de, i64 2
  %i.dw = extractelement <4 x i1> %i.de, i64 3
  %i.dx = call i64 @_ZN5clang4Sema21BuildCXXConstructExprENS_14SourceLocationENS_8QualTypeEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i, i32 %i.cu, i64 %.sroa.0.0.copyload.i.i, ptr noundef nonnull %.0.i, i1 noundef zeroext %i.cx, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %3, i1 noundef zeroext %i.dw, i1 noundef zeroext %i.dv, i1 noundef zeroext %i.du, i1 noundef zeroext %i.dt, i32 noundef %i.dg, i64 %.sroa.0.0.copyload.i54) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.020.0.i = phi i64 [ %i.dx, %bb.w ], [ 1, %bb.v ]
  %i.dy = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dl
  br i1 %i.dz, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPS5_EEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.dy) #26
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPS5_EEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPS5_EEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.q, %bb.p, %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPS5_EEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, %bb.u
  %.sroa.067.0 = phi i64 [ %i.ct, %bb.u ], [ %.sroa.020.0.i, %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPS5_EEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit ], [ 1, %bb.p ], [ 1, %bb.q ]
  %i.ea = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.bp
  br i1 %i.eb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  call void @free(ptr noundef %i.ea) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit.thread

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit.thread: ; preds = %bb.g, %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit, %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.e
  %.sroa.067.2 = phi i64 [ %i.s, %bb.e ], [ %.sroa.067.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformTypeENS_8QualTypeE.exit ], [ 1, %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i64 %.sroa.067.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE31TransformCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.2241", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2133
  %i.d = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE27TransformTypeWithDeducedTSTEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2130 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1797, !noalias !3446 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1798, !noalias !3446 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1009, !noalias !3446 ; 4 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %i.l, -1                         ; 2 uses
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = mul i64 %i.o, -4658895280553007687       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.n, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !870, !noalias !3447
  %i.y = and i32 %i.t, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !923

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.ah, %bb.d ], [ %i.u, %bb.c ]
  %.017.i.i.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.t, %bb.c ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !983, !noalias !3447
  %i.ae = icmp eq ptr %i.f, %i.ad
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.d, !prof !79

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ag = and i32 %i.af, %i.n                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !870, !noalias !3447
  %i.al = and i32 %i.ag, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !924

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.ao = zext i32 %i.l to i64                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ao
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.l to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ao, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ac, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.ap, %.loopexit.i.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.aq
  br i1 %.not.i, label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1800
  br label %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.e
  %.0.i = phi ptr [ %i.as, %bb.e ], [ %i.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 3 uses
  %.not38 = icmp eq ptr %.0.i, null
  br i1 %.not38, label %bb.w, label %bb.f

bb.f:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.au, align 8, !tbaa !55
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.av, align 4, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1713 ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 8
  br i1 %i.ay, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.az = zext i32 %i.ax to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.at, i64 noundef %i.az, i64 noundef 8) #26
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %.val39 = load ptr, ptr %0, align 8, !tbaa !1783 ; 5 uses
  %i.ba = load i32, ptr %1, align 8               ; 2 uses
  %i.bb = and i32 %i.ba, 2097152
  %.not51 = icmp eq i32 %i.bb, 0
  %i.bc = trunc i32 %i.ba to i16                  ; 3 uses
  br i1 %.not51, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.val39, i64 4592
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %.val39, i64 4600
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !55
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [792 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -792
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !1708
  switch i32 %i.bk, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.i
    i32 3, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.val39, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !882, !nonnull !71, !align !787
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 8192
  %.not.i42 = icmp eq i64 %i.bo, 0
  br i1 %.not.i42, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 noundef 1, ptr noundef null, i32 noundef 4) #26
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.h, %bb.i, %bb.j
  %i.bp = phi i16 [ %i.bc, %bb.h ], [ %i.bc, %bb.i ], [ %.pre, %bb.j ], [ %i.bc, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %.sroa.4.0 = phi i1 [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ false, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %i.bq = and i16 %i.bp, 511
  %.not.i.i = icmp eq i16 %i.bq, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i
  %i.bs = load i32, ptr %i.aw, align 8, !tbaa !1713
  %i.bt = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE14TransformExprsEPKPS5_jbRN4llvm15SmallVectorImplISD_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.br, i32 noundef %i.bs, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.bt, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.bu = load i32, ptr %1, align 8
  %i.bv = and i32 %i.bu, 6291456
  %or.cond50.not = icmp eq i32 %i.bv, 2097152
  br i1 %or.cond50.not, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bw = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #29
  %i.bx = load ptr, ptr %2, align 8, !tbaa !54
  %i.by = load i32, ptr %i.au, align 8, !tbaa !55
  %i.bz = zext i32 %i.by to i64
  %i.ca = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #29
  %.val40 = load ptr, ptr %0, align 8, !tbaa !1783
  %i.cb = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val40, i32 %i.bw, ptr %i.bx, i64 %i.bz, i32 %i.ca, i1 noundef zeroext true) #26 ; 2 uses
  %.not54 = icmp eq i64 %i.cb, 1
  br i1 %.not54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = and i64 %i.cb, -2
  %i.cd = inttoptr i64 %i.cc to ptr
  store i32 0, ptr %i.au, align 8, !tbaa !55
  %i.ce = load i32, ptr %i.av, align 4, !tbaa !56
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i: ; preds = %bb.m
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.at, i64 noundef 1, i64 noundef 8) #26
  %.pre8.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !55
  %i.cg = zext i32 %.pre8.pre.i.i.i.i to i64
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit: ; preds = %bb.m, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i
  %.pre8.i.i5.i.i = phi i64 [ %i.cg, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %bb.m ]
  %i.ch = load ptr, ptr %2, align 8, !tbaa !54
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.pre8.i.i5.i.i
  store ptr %i.cd, ptr %i.ci, align 1
  %.pre.i.i.i.i = load i32, ptr %i.au, align 8, !tbaa !55
  %i.cj = add i32 %.pre.i.i.i.i, 1
  store i32 %i.cj, ptr %i.au, align 8, !tbaa !55
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit, %bb.l, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.k
  %cond = phi i1 [ true, %bb.k ], [ false, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ false, %bb.l ], [ true, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit ]
  br i1 %.sroa.4.0, label %bb.o, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val39) #26
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.n, %bb.o
  br i1 %cond, label %bb.p, label %bb.u

bb.p:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.val = load ptr, ptr %0, align 8, !tbaa !1783  ; 2 uses
  %i.ck = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.ck, align 4, !tbaa !1084
  %.not52 = icmp eq i32 %.val.val, 0
  br i1 %.not52, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !2133
  %i.cm = icmp eq ptr %i.d, %i.cl
  br i1 %i.cm, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !2130
  %i.co = icmp ne ptr %.0.i, %i.cn
  %i.cp = load i8, ptr %i.a, align 1, !range !70
  %i.cq = trunc nuw i8 %i.cp to i1
  %or.cond = select i1 %i.co, i1 true, i1 %i.cq
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #29
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.cr, ptr noundef nonnull %.0.i, i1 noundef zeroext true) #26
  %i.cs = load ptr, ptr %0, align 8, !tbaa !1783, !nonnull !71, !align !787
  %i.ct = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cs, ptr noundef nonnull %1) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !105
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cv = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.cv, ptr %3, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cu, ptr %i.cw, align 8
  %i.cx = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.cy = load ptr, ptr %2, align 8, !tbaa !54
  %i.cz = load i32, ptr %i.au, align 8, !tbaa !55
  %i.da = zext i32 %i.cz to i64
  %i.db = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #29
  %i.dc = load i32, ptr %1, align 8
  %i.dd = and i32 %i.dc, 2097152
  %i.de = icmp ne i32 %i.dd, 0
  %.val41 = load ptr, ptr %0, align 8, !tbaa !1783
  %i.df = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val41, ptr noundef nonnull %i.d, i32 %i.cx, ptr %i.cy, i64 %i.da, i32 %i.db, i1 noundef zeroext %i.de) #26
  br label %bb.u

bb.u:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.t, %bb.s
  %.sroa.035.3 = phi i64 [ %i.df, %bb.t ], [ %i.ct, %bb.s ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.dg = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.at
  br i1 %i.dh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.dg) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.w

bb.w:                                             ; preds = %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.035.5 = phi i64 [ 1, %bb.a ], [ %.sroa.035.3, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ]
  ret i64 %.sroa.035.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE27TransformCXXBoolLiteralExprEPNS_18CXXBoolLiteralExprE(ptr noundef %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE29TransformCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2134
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2137 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1783, !nonnull !71, !align !787
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1665
  %i.g = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #29
  tail call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i32 %i.g, ptr noundef nonnull %i.c, i1 noundef zeroext true) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1665 ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 511
  switch i16 %i.k, label %bb.f [
    i16 122, label %bb.e
    i16 77, label %bb.e
    i16 20, label %bb.e
    i16 24, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.l = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.i), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.f:                                             ; preds = %bb.d
  %i.m = ptrtoint ptr %i.i to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ %i.l, %bb.e ], [ %i.m, %bb.f ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE18TransformBlockExprEPNS_9BlockExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2021", align 8 ; 9 uses
  %3 = alloca %"class.llvm::SmallVector.517", align 8 ; 9 uses
  %4 = alloca %"class.clang::Sema::ExtParameterInfoBuilder", align 8 ; 12 uses
  %5 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2140 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1783, !nonnull !71, !align !787
  %i.d = tail call i32 @_ZNK5clang9BlockExpr16getCaretLocationEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  tail call void @_ZN5clang4Sema15ActOnBlockStartENS_14SourceLocationEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.c, i32 %i.d, ptr noundef null) #26
  %i.e = load ptr, ptr %0, align 8, !tbaa !1783, !nonnull !71, !align !787
  %i.f = tail call noundef ptr @_ZN5clang4Sema11getCurBlockEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.e) #26 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1560 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2142
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 8192
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, -8193
  %i.o = or disjoint i16 %i.n, %i.k
  store i16 %i.o, ptr %i.l, align 8
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !2142
end_hunk_2
begin_hunk_3_@_ZN5clang11SemaOpenACC19LoopInConstructRAIID2Ev:bb.a
  %or.cond.i.i.i.i.i.i.i = select i1 %i.t, i1 %i.as, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !105 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #27
  br label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit

_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit: ; preds = %_ZN4llvm6APSIntaSERKS0_.exit.i.i.i.i.i.i, %_ZNSt22_Optional_payload_baseIN4llvm6APSIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i, %bb.j, %bb.k, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.aw = load i16, ptr %i.f, align 8
  store i16 %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load ptr, ptr %0, align 8, !tbaa !3793, !nonnull !71, !align !787
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.az, ptr noundef nonnull align 8 dereferenceable(14) %i.ax, i64 14, i1 false), !tbaa.struct !2290
  %i.ba = load ptr, ptr %0, align 8, !tbaa !3793, !nonnull !71, !align !787 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  store i8 %.in, ptr %i.bb, align 8, !tbaa !3813
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 156
  store i8 %.in3, ptr %i.bc, align 4, !tbaa !3814
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  %.lobit = and i8 %.in4.in.in, 2
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = and i8 %i.be, -3
  %i.bg = or disjoint i8 %i.bf, %.lobit
  store i8 %i.bg, ptr %i.bd, align 8
  %i.bh = load i8, ptr %i.u, align 8, !tbaa !2286, !range !70, !noundef !71
  %i.bi = trunc nuw i8 %i.bh to i1
  store i8 0, ptr %i.u, align 8, !tbaa !2286
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = icmp ugt i32 %i.bk, 64
  %or.cond.i.i.i.i = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.m, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit

bb.m:                                             ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !105 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.bm) #27
  br label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit

_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit: ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoaSERKS1_.exit, %bb.m, %bb.n
  ret void
}

declare void @_ZN5clang4Sema22ActOnConditionVariableEPNS_4DeclENS_14SourceLocationENS0_13ConditionKindE(ptr dead_on_unwind writable sret(%"class.clang::Sema::ConditionResult") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i32 noundef) local_unnamed_addr #2

declare void @_ZN5clang4Sema14ActOnConditionEPNS_5ScopeENS_14SourceLocationEPNS_4ExprENS0_13ConditionKindEb(ptr dead_on_unwind writable sret(%"class.clang::Sema::ConditionResult") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14ActOnWhileStmtENS_14SourceLocationES1_NS0_15ConditionResultES1_PNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef byval(%"class.clang::Sema::ConditionResult") align 8, i32, ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14ActOnLabelStmtENS_14SourceLocationEPNS_9LabelDeclES1_PNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4AttrELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !54
  %i.g = load i32, ptr %i.a, align 8, !tbaa !55
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !55
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !55
  ret void
}

declare noundef zeroext i1 @_ZN5clang4Sema26CheckRebuiltStmtAttributesEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(18640), ptr, i64) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema19BuildAttributedStmtENS_14SourceLocationEN4llvm8ArrayRefIPKNS_4AttrEEEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr, i64, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang8SemaSYCL23BuildSYCLKernelCallStmtEPNS_12FunctionDeclEPNS_12CompoundStmtEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5clang10SwitchStmt20getConditionVariableEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema22ActOnStartOfSwitchStmtENS_14SourceLocationES1_PNS_4StmtENS0_15ConditionResultES1_(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef, ptr noundef byval(%"class.clang::Sema::ConditionResult") align 8, i32) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema21ActOnFinishSwitchStmtENS_14SourceLocationEPNS_4StmtES3_(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema16ActOnDefaultStmtENS_14SourceLocationES1_PNS_4StmtEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema13ActOnCaseExprENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema13ActOnCaseStmtENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEES1_S5_S1_(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64, i32, i64, i32) local_unnamed_addr #2

declare void @_ZN5clang4Sema17ActOnCaseStmtBodyEPNS_4StmtES2_(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema16ActOnSEHTryBlockEbNS_14SourceLocationEPNS_4StmtES3_(ptr noundef nonnull align 8 dereferenceable(18640), i1 noundef zeroext, i32, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5clang14SEHFinallyStmt6CreateERKNS_10ASTContextENS_14SourceLocationEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(23904), i32, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema19ActOnSEHExceptBlockENS_14SourceLocationEPNS_4ExprEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE20TransformInitializerEPS5_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.2241", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %.not135 = icmp eq ptr %1, null
  br i1 %.not135, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.a, %tailrecurse.backedge
  %.tr119136 = phi ptr [ %.tr119.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 3 uses
  %i.b = load i16, ptr %.tr119136, align 8        ; 2 uses
  %i.c = and i16 %i.b, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.c, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph138
  %i.d = getelementptr inbounds nuw i8, ptr %.tr119136, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1656 ; 2 uses
  %.pre = load i16, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph138
  %i.f = phi i16 [ %i.b, %.lr.ph138 ], [ %.pre, %bb.b ] ; 2 uses
  %.099 = phi ptr [ %.tr119136, %.lr.ph138 ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = and i16 %i.f, 511
  %.not107 = icmp eq i16 %i.g, 129
  br i1 %.not107, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.099, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1657
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1659 ; 2 uses
  %.pre153 = load i16, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i16 [ %i.f, %bb.c ], [ %.pre153, %bb.d ]
  %.1 = phi ptr [ %.099, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = and i16 %i.l, 511
  %.not109 = icmp eq i16 %i.m, 50
  br i1 %.not109, label %bb.f, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 3 uses
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.h:                                             ; preds = %bb.f
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1662
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit: ; preds = %bb.h, %bb.g, %bb.e
  %.2 = phi ptr [ %.1, %bb.e ], [ %i.q, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %i.v = load i16, ptr %.2, align 8               ; 2 uses
  %i.w = and i16 %i.v, 511
  %.not111133 = icmp eq i16 %i.w, 120
  br i1 %.not111133, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit, %.lr.ph
  %.3134 = phi ptr [ %i.y, %.lr.ph ], [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.3134, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1665 ; 3 uses
  %i.z = load i16, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i16 %i.z, 511
  %.not111 = icmp eq i16 %i.aa, 120
  br i1 %.not111, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit
  %i.ab = phi i16 [ %i.v, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.z, %.lr.ph ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.ac = and i16 %i.ab, 511
  %.not113 = icmp eq i16 %i.ac, 81
  br i1 %.not113, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ad = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.3.lcssa) #26 ; 2 uses
  %.pre154 = load i16, ptr %i.ad, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ae = phi i16 [ %i.ab, %._crit_edge ], [ %.pre154, %bb.i ] ; 2 uses
  %.5 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %i.ad, %bb.i ] ; 15 uses
  %i.af = and i16 %i.ae, 511                      ; 4 uses
  %i.ag = icmp eq i16 %i.af, 101
  br i1 %i.ag, label %tailrecurse.backedge, label %bb.k

tailrecurse.backedge:                             ; preds = %bb.j, %bb.y
  %.sink = phi i64 [ %spec.select.v.i.i.i, %bb.y ], [ 16, %bb.j ]
  %4 = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink
  %.tr119.be = load ptr, ptr %4, align 8, !tbaa !955 ; 2 uses
  %.not = icmp eq ptr %.tr119.be, null
  br i1 %.not, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit, label %.lr.ph138

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i16 %i.af, -119
  %spec.select.i.i.i.i.i.i.i.i60 = icmp ult i16 %i.ah, -2 ; 2 uses
  br i1 %2, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %spec.select.i.i.i.i.i.i.i.i60, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i32, ptr %.5, align 8              ; 2 uses
  %i.aj = and i32 %i.ai, 2097152
  %.not114 = icmp eq i32 %i.aj, 0
  %i.ak = trunc i32 %i.ai to i16
  br i1 %.not114, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.l, %bb.m
  switch i16 %i.af, label %bb.p [
    i16 122, label %bb.o
    i16 77, label %bb.o
    i16 20, label %bb.o
    i16 24, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.al = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %.5), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.p:                                             ; preds = %bb.n
  %i.am = ptrtoint ptr %.5 to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.q:                                             ; preds = %bb.m, %bb.k
  %i.an = phi i16 [ %i.ak, %bb.m ], [ %i.ae, %bb.k ]
  switch i16 %i.af, label %bb.t [
    i16 102, label %bb.r
    i16 56, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ao = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.5) #29 ; 2 uses
  %.sroa.076.0.extract.trunc = trunc i64 %i.ao to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.ao, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %.val53 = load ptr, ptr %0, align 8, !tbaa !1783
  %i.ap = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val53, i32 %.sroa.076.0.extract.trunc, i32 %.sroa.4.0.extract.trunc, ptr null, i64 0) #26
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.s:                                             ; preds = %bb.q
  %.val52 = load ptr, ptr %0, align 8, !tbaa !1783
  %i.aq = tail call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val52, i32 0, i32 0, ptr null, i64 0) #26
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.t:                                             ; preds = %bb.q
  %i.ar = and i16 %i.an, 511                      ; 2 uses
  %i.as = icmp eq i16 %i.ar, 118
  %or.cond = or i1 %spec.select.i.i.i.i.i.i.i.i60, %i.as
  br i1 %or.cond, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  switch i16 %i.ar, label %bb.w [
    i16 122, label %bb.v
    i16 77, label %bb.v
    i16 20, label %bb.v
    i16 24, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u, %bb.u, %bb.u
  %i.at = tail call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %.5), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.w:                                             ; preds = %bb.u
  %i.au = ptrtoint ptr %.5 to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.x:                                             ; preds = %bb.t
  %i.av = load i32, ptr %.5, align 8              ; 3 uses
  %i.aw = and i32 %i.av, 4194304
  %.not117 = icmp eq i32 %i.aw, 0
  br i1 %.not117, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ax = and i32 %i.av, 511
  %.not.i.i.i = icmp eq i32 %i.ax, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  br label %tailrecurse.backedge

bb.z:                                             ; preds = %bb.x
  %.val50 = load ptr, ptr %0, align 8, !tbaa !1783 ; 8 uses
  %i.ay = and i32 %i.av, 2097152
  %.not172 = icmp eq i32 %i.ay, 0
  br i1 %.not172, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = getelementptr inbounds nuw i8, ptr %.val50, i64 4592
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %.val50, i64 4600
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !55
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [792 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -792
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !1708
  switch i32 %i.bg, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.ab
    i32 3, label %bb.ab
    i32 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa, %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %.val50, i64 216
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !882, !nonnull !71, !align !787
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = and i64 %i.bj, 8192
  %.not.i171 = icmp eq i64 %i.bk, 0
  br i1 %.not.i171, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val50, i32 noundef 1, ptr noundef null, i32 noundef 4) #26
  %.val49.pre = load ptr, ptr %0, align 8, !tbaa !1783
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.val49 = phi ptr [ %.val50, %bb.aa ], [ %.val50, %bb.ab ], [ %.val49.pre, %bb.ac ], [ %.val50, %bb.z ] ; 2 uses
  %.sroa.4.0 = phi i1 [ false, %bb.aa ], [ false, %bb.ab ], [ true, %bb.ac ], [ false, %bb.z ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.val49, i64 4592
  %i.bm = getelementptr inbounds nuw i8, ptr %.val49, i64 4600
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !55
  %i.bo = zext i32 %i.bn to i64
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !54
  %i.bq = getelementptr [792 x i8], ptr %i.bp, i64 %i.bo ; 4 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -831
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !1709, !range !70, !noundef !71
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 -39
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !1709
  %i.bu = getelementptr i8, ptr %i.bq, i64 -829
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !1710, !range !70, !noundef !71
  %i.bw = getelementptr inbounds i8, ptr %i.bq, i64 -37
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !1710
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bx, ptr %3, align 8, !tbaa !54
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.by, align 8, !tbaa !55
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.bz, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !1004
  %i.ca = load i16, ptr %.5, align 8
  %i.cb = and i16 %i.ca, 511
  %.not.i.i = icmp eq i16 %i.cb, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %.5, i64 %spec.select.v.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !1713
  %i.cf = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE14TransformExprsEPKPS5_jbRN4llvm15SmallVectorImplISD_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.cc, i32 noundef %i.ce, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  br i1 %i.cf, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.cg = load i32, ptr %.5, align 8
  %i.ch = and i32 %i.cg, 2097152
  %.not118 = icmp eq i32 %i.ch, 0
  br i1 %.not118, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #29
  %i.cj = load ptr, ptr %3, align 8, !tbaa !54
  %i.ck = load i32, ptr %i.by, align 8, !tbaa !55
  %i.cl = zext i32 %i.ck to i64
  %i.cm = call i32 @_ZNK5clang16CXXConstructExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(36) %.5) #29
  %.val54 = load ptr, ptr %0, align 8, !tbaa !1783
  %i.cn = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val54, i32 %i.ci, ptr %i.cj, i64 %i.cl, i32 %i.cm, i1 noundef zeroext true) #26
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %.5, i64 24
  %.sroa.0.0.copyload.i65 = load i64, ptr %i.co, align 8, !tbaa !870 ; 2 uses
  %.sroa.068.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i65 to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i65, 32 ; 2 uses
  %i.cp = icmp eq i32 %.sroa.068.0.extract.trunc, 0
  %i.cq = icmp eq i64 %.sroa.5.0.extract.shift, 0
  %.not2.i = or i1 %i.cp, %i.cq
  br i1 %.not2.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.cr = load ptr, ptr %3, align 8, !tbaa !54
  %i.cs = load i32, ptr %i.by, align 8, !tbaa !55
  %i.ct = zext i32 %i.cs to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !1783
  %i.cu = call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val51, i32 %.sroa.068.0.extract.trunc, i32 %.sroa.5.0.extract.trunc, ptr %i.cr, i64 %i.ct) #26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.ae
  %.sroa.097.1 = phi i64 [ 1, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ %i.cn, %bb.ae ], [ %i.cu, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cv = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bx
  br i1 %i.cw, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef %i.cv) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.sroa.4.0, label %bb.aj, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.aj:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val50) #26
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %tailrecurse.backedge, %bb.aj, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.w, %bb.v, %bb.a, %bb.s, %bb.r, %bb.o, %bb.p
  %.sroa.097.3 = phi i64 [ %i.am, %bb.p ], [ %i.ap, %bb.r ], [ %i.aq, %bb.s ], [ %.sroa.097.1, %bb.aj ], [ %i.au, %bb.w ], [ %i.al, %bb.o ], [ 0, %bb.a ], [ %i.at, %bb.v ], [ %.sroa.097.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 0, %tailrecurse.backedge ]
  ret i64 %.sroa.097.3
}

declare noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE14TransformExprsEPKPS5_jbRN4llvm15SmallVectorImplISD_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.1747", align 8 ; 8 uses
  %.not158 = icmp eq i32 %2, 0
  br i1 %.not158, label %.critedge88, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp ne ptr %5, null                     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.g = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit110
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit110 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !979  ; 5 uses
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %bb.e, label %.critedge88

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %5, align 1, !tbaa !1004
  br label %.critedge88

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !979  ; 3 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  %.not157 = icmp eq i16 %i.n, 22
  br i1 %.not157, label %bb.g, label %.thread151

.thread:                                          ; preds = %bb.b
  %i.o = load i16, ptr %i.i, align 8
  %i.p = and i16 %i.o, 511
  switch i16 %i.p, label %bb.s [
    i16 22, label %bb.g
    i16 122, label %bb.r
    i16 77, label %bb.r
    i16 20, label %bb.r
    i16 24, label %bb.r
  ]

bb.g:                                             ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.i, %.thread ], [ %i.l, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1715 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %i.d, ptr %6, align 8, !tbaa !54
  store i32 0, ptr %i.e, align 8, !tbaa !55
  store i32 2, ptr %i.f, align 4, !tbaa !56
  call void @_ZN5clang4Sema31collectUnexpandedParameterPacksEPNS_4ExprERN4llvm15SmallVectorImplISt4pairINS3_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEENS_14SourceLocationEEEE(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !1716
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val89 = load ptr, ptr %0, align 8, !tbaa !1783 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val89, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.w, align 4, !tbaa !870
  store i32 0, ptr %i.w, align 4, !tbaa !870
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i16, ptr %i.s, align 8
  %i.y = and i16 %i.x, 511
  switch i16 %i.y, label %bb.j [
    i16 122, label %bb.i
    i16 77, label %bb.i
    i16 20, label %bb.i
    i16 24, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.z = call fastcc i64 @_ZN5clang13TreeTransformIZNS_4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEE25ConstraintExprTransformerE13TransformExprEPS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.s), !inline_history !1653
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = ptrtoint ptr %i.s to i64
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit: ; preds = %bb.i, %bb.j
  %.sroa.0142.0 = phi i64 [ %i.z, %bb.i ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ab = icmp eq i64 %.sroa.0142.0, 1
  br i1 %i.ab, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit._ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread_crit_edge

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit._ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread_crit_edge: ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit
  %.val93.pre = load ptr, ptr %0, align 8, !tbaa !1783
  %i.ac = and i64 %.sroa.0142.0, -2
  %i.ad = inttoptr i64 %i.ac to ptr
  br label %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread

_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread: ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit._ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread_crit_edge, %bb.g
  %.val93 = phi ptr [ %.val93.pre, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit._ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread_crit_edge ], [ %.val89, %bb.g ]
  %.sroa.0142.0147 = phi ptr [ %i.ad, %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit._ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread_crit_edge ], [ null, %bb.g ]
  %.sroa.0.0.copyload.i94 = load i32, ptr %i.v, align 8, !tbaa !870
  %i.ae = call i64 @_ZN5clang4Sema18CheckPackExpansionEPNS_4ExprENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.val93, ptr noundef %.sroa.0142.0147, i32 %.sroa.0.0.copyload.i94, i32 %i.u) #26 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.k

bb.k:                                             ; preds = %_ZZN5clang4Sema29SubstConceptTemplateArgumentsEPKNS_25ConceptSpecializationExprEPKNS_4ExprERKNS_30MultiLevelTemplateArgumentListEEN25ConstraintExprTransformer13TransformExprEPS4_.exit.thread
  br i1 %i.a, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %5, align 1, !tbaa !1004
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = and i64 %i.ae, -2
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !56
  %.not.i95 = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i95, label %bb.o, label %bb.n, !prof !79

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ah)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.o:                                             ; preds = %bb.m
  %i.ak = zext i32 %i.ai to i64
  %i.al = load ptr, ptr %4, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  store ptr %i.ah, ptr %i.am, align 1
  %i.an = load i32, ptr %i.b, align 8, !tbaa !55
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
end_hunk_3
begin_hunk_4_@_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE36TransformCXXDependentScopeMemberExprEPNS_27CXXDependentScopeMemberExprE:bb.a
  %.sroa.0129.1 = phi i64 [ %storemerge, %_ZN5clang24TemplateArgumentListInfoD2Ev.exit ], [ %i.es, %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE34RebuildCXXDependentScopeMemberExprEPNS_4ExprENS_8QualTypeEbNS_14SourceLocationENS_22NestedNameSpecifierLocES7_PNS_9NamedDeclERKNS_19DeclarationNameInfoEPKNS_24TemplateArgumentListInfoE.exit ], [ %i.em, %bb.ae ], [ 1, %_ZNK5clang27CXXDependentScopeMemberExpr21getTemplateKeywordLocEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.w, %.thread, %bb.b
  %.sroa.0129.3 = phi i64 [ 1, %bb.b ], [ 1, %.thread ], [ %.sroa.0129.1, %bb.ak ], [ 1, %bb.w ]
  ret i64 %.sroa.0129.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE22TransformCXXDeleteExprEPNS_13CXXDeleteExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2125
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2126 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 4, !tbaa !870
  %i.h = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.f) ; 2 uses
  %.not27 = icmp eq ptr %i.h, null
  br i1 %.not27, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ]  ; 3 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !1017  ; 3 uses
  %i.i = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.i, align 4, !tbaa !1084
  %.not38 = icmp eq i32 %.val.val, 0
  %i.j = and i64 %i.c, -2
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  br i1 %.not38, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !2125 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !2126
  %i.o = icmp eq ptr %.0, %i.n
  br i1 %i.o, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.p, align 4, !tbaa !870
  tail call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i31, ptr noundef nonnull %.0, i1 noundef zeroext true) #26
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !2125
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %.pre, %bb.h ], [ %i.l, %bb.g ]
  %i.r = load i24, ptr %i.q, align 8
  %i.s = and i24 %i.r, 65536
  %.not39 = icmp eq i24 %i.s, 0
  br i1 %.not39, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !1017, !nonnull !71, !align !787
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !786, !nonnull !71, !align !787
  %i.w = tail call i64 @_ZNK5clang13CXXDeleteExpr16getDestroyedTypeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  %i.x = tail call i64 @_ZNK5clang10ASTContext18getBaseElementTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.v, i64 %i.w) #26
  %i.y = and i64 %i.x, -16
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !824
  %i.ab = tail call noundef ptr @_ZNK5clang4Type18getAsCXXRecordDeclEv(ptr noundef nonnull align 16 dereferenceable(24) %i.aa) ; 2 uses
  %.not29 = icmp eq ptr %i.ab, null
  br i1 %.not29, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1017, !nonnull !71, !align !787 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.ad, align 4, !tbaa !870
  %i.ae = tail call noundef ptr @_ZN5clang4Sema16LookupDestructorEPNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ac, ptr noundef nonnull %i.ab) #26
  tail call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ac, i32 %.sroa.0.0.copyload.i32, ptr noundef %i.ae, i1 noundef zeroext true) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.af = ptrtoint ptr %1 to i64
  br label %bb.m

._crit_edge:                                      ; preds = %bb.d, %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.ag, align 4, !tbaa !870
  %i.ah = load i32, ptr %1, align 8               ; 2 uses
  %i.ai = and i32 %i.ah, 524288
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = and i32 %i.ah, 1048576
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = tail call i64 @_ZN5clang4Sema14ActOnCXXDeleteENS_14SourceLocationEbbPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i33, i1 noundef zeroext %i.aj, i1 noundef zeroext %i.al, ptr noundef %i.k) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.a, %bb.l, %._crit_edge
  %.sroa.037.0 = phi i64 [ 1, %bb.a ], [ %i.am, %._crit_edge ], [ %i.af, %bb.l ], [ 1, %bb.c ]
  ret i64 %.sroa.037.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE27TransformCXXDefaultInitExprEPNS_18CXXDefaultInitExprE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 4, !tbaa !870
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2128
  %i.d = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %.sroa.0.0.copyload.i, ptr noundef %i.c) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !1017  ; 3 uses
  %i.e = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.e, align 4, !tbaa !1084
  %.not12 = icmp eq i32 %.val.val, 0
  br i1 %.not12, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !2128
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2129
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 616
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1498
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = ptrtoint ptr %1 to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.n = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #29
  %i.o = tail call i64 @_ZN5clang4Sema23BuildCXXDefaultInitExprENS_14SourceLocationEPNS_9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.n, ptr noundef nonnull %i.d) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e
  %.sroa.0.0 = phi i64 [ %i.m, %bb.e ], [ %i.o, %bb.f ], [ 1, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN12_GLOBAL__N_120TemplateInstantiator26TransformCXXDefaultArgExprEPN5clang17CXXDefaultArgExprE(ptr %.0.val, i32 %.4.val, ptr %.16.val) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8 ; 3 uses
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  br label %_ZN5clang4Decl14getDeclContextEv.exit

_ZN5clang4Decl14getDeclContextEv.exit:            ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = icmp eq ptr %.0.i, null
  %i.i = getelementptr inbounds i8, ptr %.0.i, i64 -72
  %i.j = select i1 %i.h, ptr null, ptr %i.i
  %i.k = tail call i64 @_ZN5clang4Sema22BuildCXXDefaultArgExprENS_14SourceLocationEPNS_12FunctionDeclEPNS_11ParmVarDeclEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.0.val, i32 %.4.val, ptr noundef %i.j, ptr noundef nonnull %.16.val, ptr noundef null) #26
  ret i64 %i.k
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE25TransformCXXConstructExprEPNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2241", align 8 ; 9 uses
  %3 = alloca %"class.llvm::MutableArrayRef", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.2241", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1713
  switch i32 %i.c, label %bb.b [
    i32 1, label %bb.c
    i32 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 8
  %i.e = and i16 %i.d, 511
  %.not.i.i.i = icmp eq i16 %i.e, 118
  %5 = select i1 %.not.i.i.i, i64 56, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %5
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !979
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = load i16, ptr %1, align 8
  %i.j = and i16 %i.i, 511
  %.not.i.i.i42 = icmp eq i16 %i.j, 118
  %spec.select.v.i.i.i43 = select i1 %.not.i.i.i42, i64 48, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i43
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !979
  %i.m = tail call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %1, align 8                ; 2 uses
  %i.o = and i32 %i.n, 2097152
  %.not69 = icmp eq i32 %i.o, 0
  br i1 %.not69, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %i.n, 511
  %.not.i.i.i45 = icmp eq i32 %i.p, 118
  %spec.select.v.i.i.i46 = select i1 %.not.i.i.i45, i64 48, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i46
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !979
  %i.s = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.r, i1 noundef zeroext false)
  br label %bb.y

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.t = tail call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #29 ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.val9.i = load i32, ptr %i.u, align 8, !tbaa !870 ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %.val.i = load i64, ptr %i.v, align 8, !tbaa !75
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TemporaryBaseC2ERS3_NS_14SourceLocationENS_15DeclarationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.t, ptr %i.u, align 8, !tbaa !870
  store i64 0, ptr %i.v, align 8, !tbaa !75
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TemporaryBaseC2ERS3_NS_14SourceLocationENS_15DeclarationNameE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TemporaryBaseC2ERS3_NS_14SourceLocationENS_15DeclarationNameE.exit: ; preds = %bb.f, %bb.g
  %.val10.i = phi i32 [ %.val9.i, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !105 ; 5 uses
  %.val9.i76 = load ptr, ptr %0, align 8          ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.x, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TemporaryBaseC2ERS3_NS_14SourceLocationENS_15DeclarationNameE.exit
  %i.y = and i64 %.sroa.0.0.copyload.i, -16
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !824
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 17
  %i.ac = load i16, ptr %i.ab, align 1
  %i.ad = and i16 %i.ac, 11
  %or.cond6.not.i.i = icmp eq i16 %i.ad, 0
  br i1 %or.cond6.not.i.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread79, label %_ZN12_GLOBAL__N_120TemplateInstantiator18AlreadyTransformedEN5clang8QualTypeE.exit.i

_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread79: ; preds = %bb.h
  tail call void @_ZN5clang4Sema32MarkDeclarationsReferencedInTypeENS_14SourceLocationENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val9.i76, i32 %.val10.i, i64 %.sroa.0.0.copyload.i) #26, !inline_history !1027
  br label %bb.i

_ZN12_GLOBAL__N_120TemplateInstantiator18AlreadyTransformedEN5clang8QualTypeE.exit.i: ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.val9.i76, i64 232
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !786, !nonnull !71, !align !787
  %i.ag = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.af, i64 %.sroa.0.0.copyload.i, i32 %.val10.i) #26, !inline_history !1027
  %i.ah = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ag), !inline_history !1027 ; 2 uses
  %.not.i77 = icmp eq ptr %i.ah, null
  br i1 %.not.i77, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit: ; preds = %_ZN12_GLOBAL__N_120TemplateInstantiator18AlreadyTransformedEN5clang8QualTypeE.exit.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ah, align 8, !tbaa !105 ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.copyload.i.i, 16
  br i1 %i.ai, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread79, %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit
  %.sroa.0.0.i81 = phi i64 [ %.sroa.0.0.copyload.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread79 ], [ %.sroa.0.0.copyload.i.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit ] ; 3 uses
  %i.aj = tail call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #29
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2130
  %i.am = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %i.aj, ptr noundef %i.al) ; 7 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.an, ptr %4, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.ap, align 4, !tbaa !56
  %.val = load ptr, ptr %0, align 8, !tbaa !1017  ; 6 uses
  %i.aq = load i32, ptr %1, align 8               ; 2 uses
  %i.ar = and i32 %i.aq, 2097152
  %.not70 = icmp eq i32 %i.ar, 0
  %i.as = trunc i32 %i.aq to i16                  ; 3 uses
  br i1 %.not70, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !55
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [792 x i8], ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -792
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1708
  switch i32 %i.ba, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.l
    i32 3, label %bb.l
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !882, !nonnull !71, !align !787
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.bd, 8192
  %.not.i48 = icmp eq i64 %i.be, 0
  br i1 %.not.i48, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4) #26
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.bf = phi i16 [ %i.as, %bb.k ], [ %i.as, %bb.l ], [ %.pre, %bb.m ], [ %i.as, %bb.j ]
  %.sroa.6.0 = phi i1 [ false, %bb.k ], [ false, %bb.l ], [ true, %bb.m ], [ false, %bb.j ] ; 2 uses
  %i.bg = and i16 %i.bf, 511
  %.not.i.i = icmp eq i16 %i.bg, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i
  %i.bi = load i32, ptr %i.b, align 8, !tbaa !1713
  %i.bj = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.bh, i32 noundef %i.bi, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a)
  br i1 %i.bj, label %bb.n, label %.critedge38

bb.n:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.o, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #26
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge38:                                      ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  br i1 %.sroa.6.0, label %bb.p, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit49

bb.p:                                             ; preds = %.critedge38
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #26
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit49

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit49: ; preds = %.critedge38, %bb.p
  %.val39 = load ptr, ptr %0, align 8, !tbaa !1017 ; 3 uses
  %i.bk = getelementptr i8, ptr %.val39, i64 13800
  %.val39.val = load i32, ptr %i.bk, align 4, !tbaa !1084
  %.not71 = icmp eq i32 %.val39.val, 0
  br i1 %.not71, label %bb.q, label %.critedge

bb.q:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit49
  %.sroa.0.0.copyload.i50 = load i64, ptr %i.w, align 8, !tbaa !105
  %i.bl = icmp eq i64 %.sroa.0.0.i81, %.sroa.0.0.copyload.i50
  br i1 %i.bl, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bm = load ptr, ptr %i.ak, align 8, !tbaa !2130
  %i.bn = icmp ne ptr %i.am, %i.bm
  %i.bo = load i8, ptr %i.a, align 1, !range !70
  %i.bp = trunc nuw i8 %i.bo to i1
  %or.cond = select i1 %i.bn, i1 true, i1 %i.bp
  br i1 %or.cond, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #29
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 %i.bq, ptr noundef nonnull %i.am, i1 noundef zeroext true) #26
  %i.br = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

.critedge:                                        ; preds = %bb.r, %bb.q, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit49
  %i.bs = call i32 @_ZNK5clang16CXXConstructExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #29 ; 2 uses
  %i.bt = load i32, ptr %1, align 8               ; 3 uses
  %i.bu = and i32 %i.bt, 524288
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = load ptr, ptr %4, align 8, !tbaa !54
  %i.bx = load i32, ptr %i.ao, align 8, !tbaa !55
  %i.by = zext i32 %i.bx to i64
  %i.bz = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %i.ca = shufflevector <4 x i32> %i.bz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cb = and <4 x i32> %i.ca, <i32 8388608, i32 4194304, i32 2097152, i32 1048576>
  %i.cc = icmp ne <4 x i32> %i.cb, zeroinitializer ; 4 uses
  %i.cd = lshr i32 %i.bt, 24
  %i.ce = and i32 %i.cd, 7
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.cf, align 8, !tbaa !870
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = and i64 %i.ch, 2305843009213693952
  %.not.i53 = icmp eq i64 %i.ci, 0
  br i1 %.not.i53, label %bb.t, label %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i

_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i: ; preds = %.critedge
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 184
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !2131
  br label %bb.t

bb.t:                                             ; preds = %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i, %.critedge
  %.0.i = phi ptr [ %.sroa.4.0.copyload.i.i, %_ZNK5clang18CXXConstructorDecl23getInheritedConstructorEv.exit.i ], [ %i.am, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.cj, ptr %2, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.ck, align 8, !tbaa !55
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.cl, align 4, !tbaa !56
  %i.cm = call noundef zeroext i1 @_ZN5clang4Sema23CompleteConstructorCallEPNS_18CXXConstructorDeclENS_8QualTypeEN4llvm15MutableArrayRefIPNS_4ExprEEENS_14SourceLocationERNS4_15SmallVectorImplIS7_EEbb(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, ptr noundef %.0.i, i64 %.sroa.0.0.i81, ptr %i.bw, i64 %i.by, i32 %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext false) #26
  br i1 %i.cm, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val.i54 = load ptr, ptr %0, align 8, !tbaa !1017
  %i.cn = load ptr, ptr %2, align 8, !tbaa !54
  store ptr %i.cn, ptr %3, align 8, !tbaa !1913
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load i32, ptr %i.ck, align 8, !tbaa !55
  %i.cq = zext i32 %i.cp to i64
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !1914
  %i.cr = extractelement <4 x i1> %i.cc, i64 0
  %i.cs = extractelement <4 x i1> %i.cc, i64 1
  %i.ct = extractelement <4 x i1> %i.cc, i64 2
  %i.cu = extractelement <4 x i1> %i.cc, i64 3
  %i.cv = call i64 @_ZN5clang4Sema21BuildCXXConstructExprENS_14SourceLocationENS_8QualTypeEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i54, i32 %i.bs, i64 %.sroa.0.0.i81, ptr noundef nonnull %i.am, i1 noundef zeroext %i.bv, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %3, i1 noundef zeroext %i.cu, i1 noundef zeroext %i.ct, i1 noundef zeroext %i.cs, i1 noundef zeroext %i.cr, i32 noundef %i.ce, i64 %.sroa.0.0.copyload.i52) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.020.0.i = phi i64 [ %i.cv, %bb.u ], [ 1, %bb.t ]
  %i.cw = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.cj
  br i1 %i.cx, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.cw) #26
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.o, %bb.n, %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit, %bb.s
  %.sroa.066.0 = phi i64 [ %i.br, %bb.s ], [ %.sroa.020.0.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE23RebuildCXXConstructExprENS_8QualTypeENS_14SourceLocationEPNS_18CXXConstructorDeclEbN4llvm15MutableArrayRefIPNS_4ExprEEEbbbbNS_19CXXConstructionKindENS_11SourceRangeE.exit ], [ 1, %bb.n ], [ 1, %bb.o ]
  %i.cy = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.an
  br i1 %i.cz, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  call void @free(ptr noundef %i.cy) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread: ; preds = %_ZN12_GLOBAL__N_120TemplateInstantiator18AlreadyTransformedEN5clang8QualTypeE.exit.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TemporaryBaseC2ERS3_NS_14SourceLocationENS_15DeclarationNameE.exit, %bb.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.066.1 = phi i64 [ %.sroa.066.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit ], [ 1, %bb.i ], [ 1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TemporaryBaseC2ERS3_NS_14SourceLocationENS_15DeclarationNameE.exit ], [ 1, %_ZN12_GLOBAL__N_120TemplateInstantiator18AlreadyTransformedEN5clang8QualTypeE.exit.i ]
  store i32 %.val9.i, ptr %i.u, align 8, !tbaa !870
  store i64 %.val.i, ptr %i.v, align 8, !tbaa !75
  br label %bb.y

bb.y:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread, %bb.e
  %.sroa.066.2 = phi i64 [ %.sroa.066.1, %_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformTypeENS_8QualTypeE.exit.thread ], [ %i.s, %bb.e ]
  ret i64 %.sroa.066.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE31TransformCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.2241", align 8 ; 13 uses
  %3 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2133
  %i.d = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE27TransformTypeWithDeducedTSTEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #29
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2130
  %i.h = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %i.e, ptr noundef %i.g) ; 3 uses
  %.not38 = icmp eq ptr %i.h, null
  br i1 %.not38, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.j, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.k, align 4, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1713 ; 2 uses
  %i.n = icmp ugt i32 %i.m, 8
  br i1 %i.n, label %bb.d, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.d:                                             ; preds = %bb.c
  %i.o = zext i32 %i.m to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.i, i64 noundef %i.o, i64 noundef 8) #26
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.c, %bb.d
  %.val = load ptr, ptr %0, align 8, !tbaa !1017  ; 5 uses
  %i.p = load i32, ptr %1, align 8                ; 2 uses
  %i.q = and i32 %i.p, 2097152
  %.not50 = icmp eq i32 %i.q, 0
  %i.r = trunc i32 %i.p to i16                    ; 3 uses
  br i1 %.not50, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.v = load i32, ptr %i.u, align 8, !tbaa !55
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [792 x i8], ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -792
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1708
  switch i32 %i.z, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit [
    i32 0, label %bb.f
    i32 3, label %bb.f
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !882, !nonnull !71, !align !787
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 8192
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 1, ptr noundef null, i32 noundef 4) #26
  %.pre = load i16, ptr %1, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.e, %bb.f, %bb.g
  %i.ae = phi i16 [ %i.r, %bb.e ], [ %i.r, %bb.f ], [ %.pre, %bb.g ], [ %i.r, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %.sroa.4.0 = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ true, %bb.g ], [ false, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %i.af = and i16 %i.ae, 511
  %.not.i.i = icmp eq i16 %i.af, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i
  %i.ah = load i32, ptr %i.l, align 8, !tbaa !1713
  %i.ai = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ag, i32 noundef %i.ah, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.ai, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %i.aj = load i32, ptr %1, align 8
  %i.ak = and i32 %i.aj, 6291456
  %or.cond49.not = icmp eq i32 %i.ak, 2097152
  br i1 %or.cond49.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.al = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #29
  %i.am = load ptr, ptr %2, align 8, !tbaa !54
  %i.an = load i32, ptr %i.j, align 8, !tbaa !55
  %i.ao = zext i32 %i.an to i64
  %i.ap = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #29
  %.val40 = load ptr, ptr %0, align 8, !tbaa !1017
  %i.aq = call i64 @_ZN5clang4Sema13BuildInitListENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val40, i32 %i.al, ptr %i.am, i64 %i.ao, i32 %i.ap, i1 noundef zeroext true) #26 ; 2 uses
  %.not52 = icmp eq i64 %i.aq, 1
  br i1 %.not52, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = and i64 %i.aq, -2
  %i.as = inttoptr i64 %i.ar to ptr
  store i32 0, ptr %i.j, align 8, !tbaa !55
  %i.at = load i32, ptr %i.k, align 4, !tbaa !56
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i: ; preds = %bb.j
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef 8) #26
  %.pre8.pre.i.i.i.i = load i32, ptr %i.j, align 8, !tbaa !55
  %i.av = zext i32 %.pre8.pre.i.i.i.i to i64
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit: ; preds = %bb.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i
  %.pre8.i.i5.i.i = phi i64 [ %i.av, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %bb.j ]
  %i.aw = load ptr, ptr %2, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.pre8.i.i5.i.i
  store ptr %i.as, ptr %i.ax, align 1
  %.pre.i.i.i.i = load i32, ptr %i.j, align 8, !tbaa !55
  %i.ay = add i32 %.pre.i.i.i.i, 1
  store i32 %i.ay, ptr %i.j, align 8, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit, %bb.i, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit, %bb.h
  %cond = phi i1 [ true, %bb.h ], [ false, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ], [ false, %bb.i ], [ true, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EEaSESt16initializer_listIS3_E.exit ]
  br i1 %.sroa.4.0, label %bb.l, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.l:                                             ; preds = %bb.k
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #26
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.k, %bb.l
  br i1 %cond, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.val39 = load ptr, ptr %0, align 8, !tbaa !1017 ; 2 uses
  %i.az = getelementptr i8, ptr %.val39, i64 13800
  %.val39.val = load i32, ptr %i.az, align 4, !tbaa !1084
  %.not51 = icmp eq i32 %.val39.val, 0
  br i1 %.not51, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !2133
  %i.bb = icmp eq ptr %i.d, %i.ba
  br i1 %i.bb, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !2130
  %i.bd = icmp ne ptr %i.h, %i.bc
  %i.be = load i8, ptr %i.a, align 1, !range !70
  %i.bf = trunc nuw i8 %i.be to i1
  %or.cond = select i1 %i.bd, i1 true, i1 %i.bf
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = call i32 @_ZNK5clang22CXXTemporaryObjectExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #29
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val39, i32 %i.bg, ptr noundef nonnull %i.h, i1 noundef zeroext true) #26
  %i.bh = load ptr, ptr %0, align 8, !tbaa !1017, !nonnull !71, !align !787
  %i.bi = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.bh, ptr noundef nonnull %1) #26
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !105
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bk = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  store ptr %i.bk, ptr %3, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bj, ptr %i.bl, align 8
  %i.bm = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.bn = load ptr, ptr %2, align 8, !tbaa !54
  %i.bo = load i32, ptr %i.j, align 8, !tbaa !55
  %i.bp = zext i32 %i.bo to i64
  %i.bq = call i32 @_ZNK5clang22CXXTemporaryObjectExpr9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #29
  %i.br = load i32, ptr %1, align 8
  %i.bs = and i32 %i.br, 2097152
  %i.bt = icmp ne i32 %i.bs, 0
  %.val41 = load ptr, ptr %0, align 8, !tbaa !1017
  %i.bu = call i64 @_ZN5clang4Sema25BuildCXXTypeConstructExprEPNS_14TypeSourceInfoENS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val41, ptr noundef nonnull %i.d, i32 %i.bm, ptr %i.bn, i64 %i.bp, i32 %i.bq, i1 noundef zeroext %i.bt) #26
  br label %bb.r

bb.r:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.q, %bb.p
  %.sroa.035.3 = phi i64 [ %i.bu, %bb.q ], [ %i.bi, %bb.p ], [ 1, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ]
  %i.bv = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.i
  br i1 %i.bw, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.bv) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.035.5 = phi i64 [ 1, %bb.a ], [ %.sroa.035.3, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %bb.b ]
  ret i64 %.sroa.035.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE27TransformCXXBoolLiteralExprEPNS_18CXXBoolLiteralExprE(ptr noundef %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE29TransformCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2134
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2137 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1017, !nonnull !71, !align !787
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1665
  %i.g = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #29
  tail call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i32 %i.g, ptr noundef nonnull %i.c, i1 noundef zeroext true) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1665
  %i.j = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i)
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN12_GLOBAL__N_120TemplateInstantiator18TransformBlockExprEPN5clang9BlockExprE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::LocalInstantiationScope", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load ptr, ptr %0, align 8, !tbaa !1017, !nonnull !71, !align !787 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !830
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 1, ptr %i.b, align 8
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 100
  store i32 1, ptr %i.g, align 4, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12576 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1028
  store ptr %i.j, ptr %i.h, align 8, !tbaa !1039
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  store i8 0, ptr %i.k, align 8, !tbaa !1040
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 121
  store i8 1, ptr %i.l, align 1, !tbaa !1041
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 122
  store i8 1, ptr %i.m, align 2, !tbaa !1038
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr null, ptr %i.n, align 8, !tbaa !1042
  store ptr %2, ptr %i.i, align 8, !tbaa !1028
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE18TransformBlockExprEPNS_9BlockExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  %i.p = load i8, ptr %i.k, align 8, !tbaa !1040, !range !70, !noundef !71
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5clang23LocalInstantiationScope4ExitEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %.not5.i.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.s = zext i32 %i.r to i64
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.b
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !1039
end_hunk_4

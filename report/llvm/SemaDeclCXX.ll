Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDeclCXX?download=true
inline.NumInlined: 22648
inline.NumDeleted: 9795
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5clang4Sema27CheckComparisonCategoryTypeENS_22ComparisonCategoryTypeENS_14SourceLocationENS0_23ComparisonCategoryUsageE:bb.a
  br label %bb.al

bb.al:                                            ; preds = %"_ZZN5clang4Sema27CheckComparisonCategoryTypeENS_22ComparisonCategoryTypeENS_14SourceLocationENS0_23ComparisonCategoryUsageEENK3$_0clEPNS_22ComparisonCategoryInfoE.exit94", %"_ZZN5clang4Sema27CheckComparisonCategoryTypeENS_22ComparisonCategoryTypeENS_14SourceLocationENS0_23ComparisonCategoryUsageEENK3$_0clEPNS_22ComparisonCategoryInfoE.exit", %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.sroa.0133.3 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %"_ZZN5clang4Sema27CheckComparisonCategoryTypeENS_22ComparisonCategoryTypeENS_14SourceLocationENS0_23ComparisonCategoryUsageEENK3$_0clEPNS_22ComparisonCategoryInfoE.exit" ], [ %.sroa.0133.2, %bb.ak ], [ %i.av, %bb.e ], [ 0, %"_ZZN5clang4Sema27CheckComparisonCategoryTypeENS_22ComparisonCategoryTypeENS_14SourceLocationENS0_23ComparisonCategoryUsageEENK3$_0clEPNS_22ComparisonCategoryInfoE.exit94" ]
  ret i64 %.sroa.0133.3
}

declare void @_ZN5clang10ASTContext31adjustDeducedFunctionResultTypeEPNS_12FunctionDeclENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, i64) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema13SubstAutoTypeENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(18640), i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema33DeclareImplicitEqualityComparisonEPNS_13CXXRecordDeclEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.clang::Sema::CodeSynthesisContext", align 8 ; 7 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.11.0..sroa_idx, i8 0, i64 28, i1 false)
  %i.a = load ptr, ptr %2, align 8, !tbaa !1195
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull align 8 dereferenceable(33) %2) #27, !inline_history !39
  %.sroa.3.0.extract.shift.i = lshr i64 %i.d, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  store i32 13, ptr %3, align 8, !tbaa !1397
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !1283
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !1283
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.3.0.extract.trunc.i, ptr %.sroa.77.0..sroa_idx, align 8, !tbaa !116
  %.sroa.98.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %.sroa.98.0..sroa_idx, align 8, !tbaa !1398
  %i.e = tail call noundef zeroext i1 @_ZN5clang4Sema24pushCodeSynthesisContextENS0_20CodeSynthesisContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull byval(%"struct.clang::Sema::CodeSynthesisContext") align 8 %3) #26 ; 0 uses
  %i.f = tail call noundef ptr @_ZN5clang4Sema26SubstSpaceshipAsEqualEqualEPNS_13CXXRecordDeclEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull %2) #26 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = or i32 %i.h, 512
  store i32 %i.i, ptr %i.g, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN5clang4Sema23popCodeSynthesisContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  ret void
}

declare noundef zeroext i1 @_ZN5clang4Sema24pushCodeSynthesisContextENS0_20CodeSynthesisContextE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef byval(%"struct.clang::Sema::CodeSynthesisContext") align 8) local_unnamed_addr #2

declare noundef ptr @_ZN5clang4Sema26SubstSpaceshipAsEqualEqualEPNS_13CXXRecordDeclEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN5clang4Sema23popCodeSynthesisContextEv(ptr noundef nonnull align 8 dereferenceable(18640)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema25DefineDefaultedComparisonENS_14SourceLocationEPNS_12FunctionDeclENS0_23DefaultedComparisonKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.clang::Sema::CodeSynthesisContext", align 8 ; 9 uses
  %5 = alloca %"class.clang::Sema::SynthesizedFunctionScope", align 8 ; 11 uses
  %6 = alloca %"struct.(anonymous namespace)::DefaultedFunctionFPFeaturesRAII", align 8 ; 4 uses
  %7 = alloca %"class.(anonymous namespace)::DefaultedComparisonSynthesizer", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4
  %i.c = and i16 %i.b, 64
  %.not43 = icmp eq i16 %i.c, 0
  br i1 %.not43, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 128
  %.not44 = icmp eq i32 %i.f, 0
  br i1 %.not44, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %0, ptr %5, align 8, !tbaa !1173
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.h, align 8, !tbaa !1173
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1312
  store ptr %i.k, ptr %i.i, align 8, !tbaa !1798
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1793
  store ptr null, ptr %i.m, align 8, !tbaa !1793
  store ptr %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11136 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !92
  store i64 %i.q, ptr %i.o, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1794
  store i32 %i.t, ptr %i.r, align 8, !tbaa !1799
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1795
  store i32 %i.w, ptr %i.u, align 4, !tbaa !1800
  store ptr %i.g, ptr %i.j, align 8, !tbaa !1312
  store i64 0, ptr %i.p, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !101
  store i32 %i.y, ptr %i.s, align 8, !tbaa !1794
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !101
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !1795
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ad = load i16, ptr %i.ac, align 8
  %i.ae = and i16 %i.ad, 127
  %i.af = add nsw i16 %i.ae, -41
  %i.ag = icmp ult i16 %i.af, -6                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.ag, ptr null, ptr %2
  tail call void @_ZN5clang4Sema17PushFunctionScopeEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  tail call void @_ZN5clang4Sema42PushExpressionEvaluationContextForFunctionENS0_27ExpressionEvaluationContextEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 6, ptr noundef %spec.select.i.i.i) #26
  br i1 %i.ag, label %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i16, ptr %i.a, align 4
  %i.ai = or i16 %i.ah, 64
  store i16 %i.ai, ptr %i.a, align 4
  br label %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit

_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.11.0..sroa_idx.i, i8 0, i64 28, i1 false)
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !1312
  %i.ak = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %i.aj) #26
  store i32 14, ptr %4, align 8, !tbaa !1397
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !1283
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !1283
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %1, ptr %.sroa.71.0..sroa_idx.i, align 8, !tbaa !116
  %.sroa.92.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ak, ptr %.sroa.92.0..sroa_idx.i, align 8, !tbaa !1398
  %i.al = tail call noundef zeroext i1 @_ZN5clang4Sema24pushCodeSynthesisContextENS0_20CodeSynthesisContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull byval(%"struct.clang::Sema::CodeSynthesisContext") align 8 %4) #26 ; 0 uses
  store i8 1, ptr %i.ab, align 8, !tbaa !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  %i.am = call noundef ptr @_ZNK5clang12FunctionDecl25getDefaultedOrDeletedInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 8, !tbaa !116 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  br label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit

_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit: ; preds = %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit, %bb.e
  %.sroa.6.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i, %bb.e ], [ 0, %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.e ], [ 0, %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1172, !nonnull !107, !align !791 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 216
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = trunc i64 %i.ar to i32                  ; 3 uses
  %i.at = lshr i32 %i.as, 23
  %i.au = and i32 %i.at, 3                        ; 2 uses
  %i.av = icmp eq i32 %i.au, 3
  %spec.store.select.i.i.i = select i1 %i.av, i32 2, i32 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = lshr i64 %i.ax, 57
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = and i32 %i.az, 4                        ; 2 uses
  %i.bb = lshr i32 %i.as, 19
  %i.bc = and i32 %i.bb, 192
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = lshr i64 %i.be, 36
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 32256
  %i.bi = icmp eq i32 %spec.store.select.i.i.i, 1
  %.not3.i.i.i.i = icmp ne i32 %i.ba, 0
  %or.cond.not16.i.i.i = select i1 %i.bi, i1 %.not3.i.i.i.i, i1 false
  %i.bj = and i32 %i.as, 100663296
  %i.bk = icmp eq i32 %i.bj, 67108864
  %or.cond15.i.i.i = select i1 %or.cond.not16.i.i.i, i1 %i.bk, i1 false
  %masksel.i.i.i = select i1 %or.cond15.i.i.i, i32 256, i32 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 208
  %i.bm = load i64, ptr %i.bl, align 8
  %sh.diff.i.i.i = lshr i64 %i.bm, 23
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.bn = and i32 %tr.sh.diff.i.i.i, 29360128
  %i.bo = or disjoint i32 %i.bc, %i.bh
  %i.bp = or disjoint i32 %i.bo, %i.bn
  %i.bq = or disjoint i32 %i.bp, %masksel.i.i.i
  %i.br = or disjoint i32 %i.bq, %i.ba
  %i.bs = or disjoint i32 %i.br, %spec.store.select.i.i.i
  %i.bt = or disjoint i32 %i.bs, 56
  %i.bu = xor i32 %.sroa.6.0.i, -1
  %i.bv = and i32 %i.bt, %i.bu
  %i.bw = and i32 %.sroa.0.0.i, %.sroa.6.0.i
  %i.bx = or i32 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !116
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %.sroa.6.0.insert.ext.i = zext i32 %.sroa.6.0.i to i64
  %.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.6.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bz, align 8, !tbaa !116
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1282
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1167
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.cd, align 8, !tbaa !92
  %i.ce = and i64 %.sroa.0.0.copyload.i, -16
  %i.cf = inttoptr i64 %i.ce to ptr               ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !98 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i8, ptr %i.ch, align 16
  %i.cj = and i8 %i.ci, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.cj, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ck, align 8, !tbaa !92
  %i.cl = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load ptr, ptr %i.cm, align 16, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i8, ptr %i.co, align 16
  %i.cq = and i8 %i.cp, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.cq, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.f
  %i.cr = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cg) #26 ; 2 uses
  %.not.i26 = icmp eq ptr %i.cr, null
  br i1 %.not.i26, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit
  %.1.i8.i = phi ptr [ %i.cr, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.cg, %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.ct = load i24, ptr %i.cs, align 16
  %i.cu = and i24 %i.ct, 1048576
  %.not4.i.i = icmp eq i24 %i.cu, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cv, align 8
  %i.cw = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load ptr, ptr %i.cx, align 16, !tbaa !98 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load i8, ptr %i.cz, align 16
  %i.db = and i8 %i.da, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.db, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.dc = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cy) #26
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.dc, %bb.g ], [ %i.cy, %.lr.ph.i.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.de = load i24, ptr %i.dd, align 16
  %i.df = and i24 %i.de, 1048576
  %.not.i.i = icmp eq i24 %i.df, 0
  br i1 %.not.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.dg, align 8, !tbaa !92
  %.pre = and i64 %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, -16
  %.pre46 = inttoptr i64 %.pre to ptr
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.f, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.pre-phi47 = phi ptr [ %i.cf, %bb.f ], [ %i.cf, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.pre46, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ]
  %i.dh = load ptr, ptr %.pre-phi47, align 8, !tbaa !98
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.di, align 8, !tbaa !92
  %i.dj = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load ptr, ptr %i.dk, align 16, !tbaa !98 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i8, ptr %i.dm, align 16            ; 3 uses
  %i.do = add i8 %i.dn, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.do, 3
  %.not.i7.i = icmp ne ptr %i.dl, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.dp = and i8 %i.dn, 62
  %spec.select.i.i.i27 = icmp eq i8 %i.dp, 48
  %or.cond.i = and i1 %spec.select.i.i.i27, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.h, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.h:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1388 ; 3 uses
  %i.ds = icmp eq i8 %i.dn, 49
  br i1 %i.ds, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 28
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = and i32 %i.du, 127
  %i.dw = add nsw i32 %i.dv, -60
  %i.dx = icmp ult i32 %i.dw, 3
  br i1 %i.dx, label %bb.j, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dy = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.dr) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.dy, null
  %spec.select.i.i = select i1 %.not.not.i.i, ptr %i.dr, ptr %i.dy
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, %bb.i, %bb.j
  %.1.i = phi ptr [ null, %bb.i ], [ null, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit ], [ %spec.select.i.i, %bb.j ]
  %i.dz = load ptr, ptr %2, align 8, !tbaa !1195
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = call i64 %i.eb(ptr noundef nonnull align 8 dereferenceable(33) %2) #27, !inline_history !39
  %.sroa.3.0.extract.shift.i = lshr i64 %i.ec, 32 ; 2 uses
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %.not45 = icmp eq i64 %.sroa.3.0.extract.shift.i, 0
  br i1 %.not45, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.ed, align 8, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %bb.k
  %.sroa.03.0 = phi i32 [ %.sroa.0.0.copyload.i30, %bb.k ], [ %.sroa.3.0.extract.trunc.i, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %0, ptr %7, align 8, !tbaa !1173
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.1.i, ptr %i.ee, align 8, !tbaa !1808
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.ef, align 8, !tbaa !1809
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 %3, ptr %i.eg, align 8, !tbaa !1810
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !100
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 5 uses
  store i32 0, ptr %i.ej, align 8, !tbaa !101
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  store i32 16, ptr %i.ek, align 4, !tbaa !112
  %i.el = call noundef ptr @_ZNK5clang12FunctionDecl25getDefaultedOrDeletedInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26 ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.el, null
  br i1 %.not.i.i31, label %_ZN12_GLOBAL__N_130DefaultedComparisonSynthesizerC2ERN5clang4SemaEPNS1_13CXXRecordDeclEPNS1_12FunctionDeclENS2_23DefaultedComparisonKindENS1_14SourceLocationE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.em = load i32, ptr %i.el, align 8, !tbaa !1812 ; 4 uses
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i32 0, ptr %i.ej, align 8, !tbaa !101
  %.idx.i.i = shl nuw nsw i64 %i.en, 3
  %i.ep = load i32, ptr %i.ek, align 4, !tbaa !112
  %i.eq = icmp ugt i32 %i.em, %i.ep
  br i1 %i.eq, label %_ZN4llvm15SmallVectorImplIN5clang14DeclAccessPairEE7reserveEm.exit.i.i.i.thread.i.i, label %_ZN4llvm15SmallVectorImplIN5clang14DeclAccessPairEE7reserveEm.exit.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN5clang14DeclAccessPairEE7reserveEm.exit.i.i.i.thread.i.i: ; preds = %bb.m
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull %i.ei, i64 noundef %i.en, i64 noundef 8) #26
  %.pre8.pre.i.i.i.i.i = load i32, ptr %i.ej, align 8, !tbaa !101
  %i.er = zext i32 %.pre8.pre.i.i.i.i.i to i64
  br label %bb.n

_ZN4llvm15SmallVectorImplIN5clang14DeclAccessPairEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.m
  %.not.i.i.i.i.i.i = icmp eq i32 %i.em, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5clang17UnresolvedSetImpl6assignIPKNS_14DeclAccessPairEEEvT_S5_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm15SmallVectorImplIN5clang14DeclAccessPairEE7reserveEm.exit.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN5clang14DeclAccessPairEE7reserveEm.exit.i.i.i.thread.i.i
  %.pre8.i.i.i15.i.i = phi i64 [ %i.er, %_ZN4llvm15SmallVectorImplIN5clang14DeclAccessPairEE7reserveEm.exit.i.i.i.thread.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN5clang14DeclAccessPairEE7reserveEm.exit.i.i.i.i.i ]
  %i.es = load ptr, ptr %i.eh, align 8, !tbaa !100
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.pre8.i.i.i15.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr nonnull align 8 %i.eo, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i.i = load i32, ptr %i.ej, align 8, !tbaa !101
  br label %_ZN5clang17UnresolvedSetImpl6assignIPKNS_14DeclAccessPairEEEvT_S5_.exit.i.i

_ZN5clang17UnresolvedSetImpl6assignIPKNS_14DeclAccessPairEEEvT_S5_.exit.i.i: ; preds = %bb.n, %_ZN4llvm15SmallVectorImplIN5clang14DeclAccessPairEE7reserveEm.exit.i.i.i.i.i
  %i.eu = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN5clang14DeclAccessPairEE7reserveEm.exit.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.n ]
  %i.ev = add i32 %i.eu, %i.em
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !101
  br label %_ZN12_GLOBAL__N_130DefaultedComparisonSynthesizerC2ERN5clang4SemaEPNS1_13CXXRecordDeclEPNS1_12FunctionDeclENS2_23DefaultedComparisonKindENS1_14SourceLocationE.exit

_ZN12_GLOBAL__N_130DefaultedComparisonSynthesizerC2ERN5clang4SemaEPNS1_13CXXRecordDeclEPNS1_12FunctionDeclENS2_23DefaultedComparisonKindENS1_14SourceLocationE.exit: ; preds = %bb.l, %_ZN5clang17UnresolvedSetImpl6assignIPKNS_14DeclAccessPairEEEvT_S5_.exit.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 176
  store i32 %.sroa.03.0, ptr %i.ew, align 8, !tbaa !116
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 180
  store i32 0, ptr %i.ex, align 4, !tbaa !1814
  %i.ey = call fastcc i64 @_ZN12_GLOBAL__N_130DefaultedComparisonSynthesizer5buildEv(ptr noundef nonnull align 8 dereferenceable(184) %7) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_122DeclaringSpecialMemberC2ERN5clang4SemaEPNS1_13CXXRecordDeclENS1_20CXXSpecialMemberKindE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.aw, align 8, !tbaa !116
  store i32 12, ptr %4, align 8, !tbaa !1397
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !1283
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !1283
  %.sroa.712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.0.0.copyload.i, ptr %.sroa.712.0..sroa_idx, align 8, !tbaa !116
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %.sroa.913.0..sroa_idx, align 8, !tbaa !1398
  %.sroa.1114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %3, ptr %.sroa.1114.0..sroa_idx, align 8, !tbaa !92
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i64 0, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !116
  %i.ax = tail call noundef zeroext i1 @_ZN5clang4Sema24pushCodeSynthesisContextENS0_20CodeSynthesisContextE(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef nonnull byval(%"struct.clang::Sema::CodeSynthesisContext") align 8 %4) #26 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare noundef ptr @_ZN5clang18CXXConstructorDecl6CreateERNS_10ASTContextEPNS_13CXXRecordDeclENS_14SourceLocationERKNS_19DeclarationNameInfoENS_8QualTypeEPNS_14TypeSourceInfoENS_17ExplicitSpecifierEbbbNS_17ConstexprSpecKindENS_20InheritedConstructorERKNS_20AssociatedConstraintE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, i32, ptr noundef nonnull align 8 dereferenceable(24), i64, ptr noundef, i64, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef byval(%"class.clang::InheritedConstructor") align 8, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang13CXXRecordDecl28hasTrivialDefaultConstructorEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl21hasDefaultConstructorEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br i1 %i.a, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1478 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8 ; 3 uses
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 1
  %i.f = icmp eq i64 %i.e, 0
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.f, i64 %i.g, i64 0 ; 3 uses
  %i.h = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, -4
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 18624
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1288 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2632 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1289 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = add i64 %i.p, 24                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 2640
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1290
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %bb.g, !prof !113

bb.f:                                             ; preds = %bb.e
  %i.u = inttoptr i64 %i.q to ptr
  store ptr %i.u, ptr %i.n, align 8, !tbaa !1289
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.v to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.p, %bb.f ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ %i.o, %bb.f ] ; 3 uses
  store ptr %i.m, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1292
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !1293
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.c, ptr %i.x, align 8, !tbaa !1294
  %i.y = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.c to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %bb.i ], [ %i.y, %bb.h ]
  %i.aa = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.aa, ptr %i.d, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i, %bb.b
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i = phi i64 [ %i.aa, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.ab = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  %i.ac = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  %.not.not.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1293
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !1292 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !1297 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, %i.ai
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !1293
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !1195
  %i.ak = getelementptr i8, ptr %i.aj, i64 152, !nosanitize !107
  %i.al = load ptr, ptr %i.ak, align 8, !nosanitize !107
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull %i.c) #26, !inline_history !12
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.c, %bb.j, %bb.k, %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1476
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, 549755813888
  %i.aq = icmp ne i64 %i.ap, 0
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5clang13CXXRecordDecl4dataEv.exit, %bb.a
  %i.ar = phi i1 [ false, %bb.a ], [ %i.aq, %_ZNK5clang13CXXRecordDecl4dataEv.exit ]
  ret i1 %i.ar
}

declare noundef ptr @_ZN5clang4Sema18getScopeForContextEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema32DefineImplicitDefaultConstructorENS_14SourceLocationEPNS_18CXXConstructorDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.clang::Sema::CodeSynthesisContext", align 8 ; 9 uses
  %4 = alloca %"struct.(anonymous namespace)::DefaultedFunctionFPFeaturesRAII", align 8 ; 4 uses
  %5 = alloca %"class.clang::Sema::SynthesizedFunctionScope", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  %i.a = call noundef ptr @_ZNK5clang12FunctionDecl25getDefaultedOrDeletedInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !116 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  br label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit

_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit: ; preds = %bb.a, %bb.b
  %.sroa.6.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1172, !nonnull !107, !align !791 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = lshr i32 %i.g, 23
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %i.j = icmp eq i32 %i.i, 3
  %spec.store.select.i.i.i = select i1 %i.j, i32 2, i32 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 57
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 4                          ; 2 uses
  %i.p = lshr i32 %i.g, 19
  %i.q = and i32 %i.p, 192
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = lshr i64 %i.s, 36
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = and i32 %i.u, 32256
  %i.w = icmp eq i32 %spec.store.select.i.i.i, 1
  %.not3.i.i.i.i = icmp ne i32 %i.o, 0
  %or.cond.not16.i.i.i = select i1 %i.w, i1 %.not3.i.i.i.i, i1 false
  %i.x = and i32 %i.g, 100663296
  %i.y = icmp eq i32 %i.x, 67108864
  %or.cond15.i.i.i = select i1 %or.cond.not16.i.i.i, i1 %i.y, i1 false
  %masksel.i.i.i = select i1 %or.cond15.i.i.i, i32 256, i32 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.aa = load i64, ptr %i.z, align 8
  %sh.diff.i.i.i = lshr i64 %i.aa, 23
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.ab = and i32 %tr.sh.diff.i.i.i, 29360128
  %i.ac = or disjoint i32 %i.q, %i.v
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = or disjoint i32 %i.ad, %masksel.i.i.i
  %i.af = or disjoint i32 %i.ae, %i.o
  %i.ag = or disjoint i32 %i.af, %spec.store.select.i.i.i
  %i.ah = or disjoint i32 %i.ag, 56
  %i.ai = xor i32 %.sroa.6.0.i, -1
  %i.aj = and i32 %i.ah, %i.ai
  %i.ak = and i32 %.sroa.0.0.i, %.sroa.6.0.i
  %i.al = or i32 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.al, ptr %i.am, align 8, !tbaa !116
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %.sroa.6.0.insert.ext.i = zext i32 %.sroa.6.0.i to i64
  %.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.6.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.an, align 8, !tbaa !116
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.ap = load i16, ptr %i.ao, align 4
  %i.aq = and i16 %i.ap, 64
  %.not33 = icmp eq i16 %i.aq, 0
  br i1 %.not33, label %bb.c, label %bb.r

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, 128
  %.not34 = icmp eq i32 %i.at, 0
  br i1 %.not34, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.av = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.au) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 8 ; 3 uses
  %i.ax = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ba = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1249
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

_ZN5clang13CXXMethodDecl9getParentEv.exit:        ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.az, %bb.e ], [ %i.bc, %bb.f ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -64
  %i.be = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -36
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, 128
  %.not35 = icmp eq i32 %i.bg, 0
  br i1 %.not35, label %bb.g, label %bb.r

bb.g:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %0, ptr %5, align 8, !tbaa !1173
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.bh, align 8, !tbaa !1173
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1312
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !1798
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1793
  store ptr null, ptr %i.bm, align 8, !tbaa !1793
  store ptr %i.bn, ptr %i.bl, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11136 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !92
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !92
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !1794
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !1799
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !1795
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !1800
  store ptr %i.au, ptr %i.bj, align 8, !tbaa !1312
  store i64 0, ptr %i.bp, align 8, !tbaa !92
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !101
  store i32 %i.by, ptr %i.bs, align 8, !tbaa !1794
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !101
  store i32 %i.ca, ptr %i.bv, align 8, !tbaa !1795
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cd = load i16, ptr %i.cc, align 8
  %i.ce = and i16 %i.cd, 127
  %i.cf = add nsw i16 %i.ce, -41
  %i.cg = icmp ult i16 %i.cf, -6                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.cg, ptr null, ptr %2
  call void @_ZN5clang4Sema17PushFunctionScopeEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  call void @_ZN5clang4Sema42PushExpressionEvaluationContextForFunctionENS0_27ExpressionEvaluationContextEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 6, ptr noundef %spec.select.i.i.i) #26
  br i1 %i.cg, label %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ch = load i16, ptr %i.ao, align 4
  %i.ci = or i16 %i.ch, 64
  store i16 %i.ci, ptr %i.ao, align 4
  br label %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit

_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit: ; preds = %bb.g, %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.cj, align 8, !tbaa !92
  %i.ck = and i64 %.sroa.0.0.copyload.i, -16
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !98 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i8, ptr %i.cn, align 16
  %.not.i28 = icmp eq i8 %i.co, 24
  br i1 %.not.i28, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit
  %i.cp = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cm) #26
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit, %bb.i
  %.1.i = phi ptr [ %i.cp, %bb.i ], [ %i.cm, %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit ]
  %i.cq = call noundef ptr @_ZN5clang4Sema20ResolveExceptionSpecENS_14SourceLocationEPKNS_17FunctionProtoTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %.1.i) #26 ; 0 uses
  call void @_ZN5clang4Sema14MarkVTableUsedENS_14SourceLocationEPNS_13CXXRecordDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull %i.bd, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.11.0..sroa_idx.i, i8 0, i64 28, i1 false)
  %i.cr = load ptr, ptr %i.bj, align 8, !tbaa !1312
  %i.cs = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %i.cr) #26
  store i32 14, ptr %3, align 8, !tbaa !1397
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !1283
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !1283
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %1, ptr %.sroa.71.0..sroa_idx.i, align 8, !tbaa !116
  %.sroa.92.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cs, ptr %.sroa.92.0..sroa_idx.i, align 8, !tbaa !1398
  %i.ct = call noundef zeroext i1 @_ZN5clang4Sema24pushCodeSynthesisContextENS0_20CodeSynthesisContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull byval(%"struct.clang::Sema::CodeSynthesisContext") align 8 %3) #26 ; 0 uses
  store i8 1, ptr %i.cb, align 8, !tbaa !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cu = call noundef zeroext i1 @_ZN5clang4Sema19SetCtorInitializersEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_18CXXCtorInitializerEEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %2, i1 noundef zeroext false, ptr null, i64 0)
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %2, i1 noundef zeroext true) #26
  br label %bb.q

bb.k:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.cv = load ptr, ptr %2, align 8, !tbaa !1195
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call i64 %i.cx(ptr noundef nonnull align 8 dereferenceable(33) %2) #27, !inline_history !39
  %.sroa.3.0.extract.shift.i = lshr i64 %i.cy, 32 ; 2 uses
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %.not36 = icmp eq i64 %.sroa.3.0.extract.shift.i, 0
  br i1 %.not36, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.cz, align 8, !tbaa !116
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.02.0 = phi i32 [ %.sroa.0.0.copyload.i31, %bb.l ], [ %.sroa.3.0.extract.trunc.i, %bb.k ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !790, !nonnull !107, !align !791
  %i.dc = call noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef 16, ptr noundef nonnull align 8 dereferenceable(23904) %i.db, i32 noundef 8) #26 ; 8 uses
  %i.dd = load i16, ptr %i.dc, align 8
  %i.de = and i16 %i.dd, -512
  %i.df = or disjoint i16 %i.de, 258              ; 2 uses
  store i16 %i.df, ptr %i.dc, align 8
  %i.dg = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !1283, !range !106, !noundef !107
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.n, label %_ZN5clang12CompoundStmtC2ENS_14SourceLocationE.exit

bb.n:                                             ; preds = %bb.m
  call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 258) #26
  %.pre.i.i = load i16, ptr %i.dc, align 8
  br label %_ZN5clang12CompoundStmtC2ENS_14SourceLocationE.exit

_ZN5clang12CompoundStmtC2ENS_14SourceLocationE.exit: ; preds = %bb.m, %bb.n
  %i.di = phi i16 [ %i.df, %bb.m ], [ %.pre.i.i, %bb.n ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i32 %.sroa.02.0, ptr %i.dj, align 8, !tbaa !116
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 %.sroa.02.0, ptr %i.dk, align 4, !tbaa !116
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 0, ptr %i.dl, align 4, !tbaa !92
  %i.dm = and i16 %i.di, -513
  store i16 %i.dm, ptr %i.dc, align 8
  call void @_ZN5clang12FunctionDecl7setBodyEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull %i.dc) #26
  %i.dn = load ptr, ptr %i.da, align 8, !tbaa !790, !nonnull !107, !align !791
  call void @_ZN5clang4Decl8markUsedERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef nonnull align 8 dereferenceable(23904) %i.dn) #26
  %i.do = call noundef ptr @_ZNK5clang4Sema22getASTMutationListenerEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26 ; 3 uses
  %.not = icmp eq ptr %i.do, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN5clang12CompoundStmtC2ENS_14SourceLocationE.exit
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1195
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
end_hunk_1
begin_hunk_2_@_ZNK5clang13CXXRecordDecl20hasTrivialDestructorEv:bb.a
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1293
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1292 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1297 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !1293
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !1195
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !107
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !107
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #26, !inline_history !12
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1476
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 17592186044416
  %i.ap = icmp ne i64 %i.ao, 0
  ret i1 %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang13CXXRecordDecl27hasTrivialDestructorForCallEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1478 ; 4 uses
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1288 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1289 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1290
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !1289
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1292
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !1293
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !1294
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1293
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1292 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1297 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !1293
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !1195
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !107
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !107
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #26, !inline_history !12
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1476
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 1125899906842624
  %i.ap = icmp ne i64 %i.ao, 0
  ret i1 %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema24DefineImplicitDestructorENS_14SourceLocationEPNS_17CXXDestructorDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.clang::Sema::CodeSynthesisContext", align 8 ; 9 uses
  %4 = alloca %"struct.(anonymous namespace)::DefaultedFunctionFPFeaturesRAII", align 8 ; 4 uses
  %5 = alloca %"class.clang::Sema::SynthesizedFunctionScope", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  %i.a = call noundef ptr @_ZNK5clang12FunctionDecl25getDefaultedOrDeletedInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !116 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  br label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit

_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit: ; preds = %bb.a, %bb.b
  %.sroa.6.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1172, !nonnull !107, !align !791 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = lshr i32 %i.g, 23
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %i.j = icmp eq i32 %i.i, 3
  %spec.store.select.i.i.i = select i1 %i.j, i32 2, i32 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 57
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 4                          ; 2 uses
  %i.p = lshr i32 %i.g, 19
  %i.q = and i32 %i.p, 192
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = lshr i64 %i.s, 36
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = and i32 %i.u, 32256
  %i.w = icmp eq i32 %spec.store.select.i.i.i, 1
  %.not3.i.i.i.i = icmp ne i32 %i.o, 0
  %or.cond.not16.i.i.i = select i1 %i.w, i1 %.not3.i.i.i.i, i1 false
  %i.x = and i32 %i.g, 100663296
  %i.y = icmp eq i32 %i.x, 67108864
  %or.cond15.i.i.i = select i1 %or.cond.not16.i.i.i, i1 %i.y, i1 false
  %masksel.i.i.i = select i1 %or.cond15.i.i.i, i32 256, i32 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.aa = load i64, ptr %i.z, align 8
  %sh.diff.i.i.i = lshr i64 %i.aa, 23
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.ab = and i32 %tr.sh.diff.i.i.i, 29360128
  %i.ac = or disjoint i32 %i.q, %i.v
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = or disjoint i32 %i.ad, %masksel.i.i.i
  %i.af = or disjoint i32 %i.ae, %i.o
  %i.ag = or disjoint i32 %i.af, %spec.store.select.i.i.i
  %i.ah = or disjoint i32 %i.ag, 56
  %i.ai = xor i32 %.sroa.6.0.i, -1
  %i.aj = and i32 %i.ah, %i.ai
  %i.ak = and i32 %.sroa.0.0.i, %.sroa.6.0.i
  %i.al = or i32 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.al, ptr %i.am, align 8, !tbaa !116
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %.sroa.6.0.insert.ext.i = zext i32 %.sroa.6.0.i to i64
  %.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.6.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.an, align 8, !tbaa !116
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.ap = load i16, ptr %i.ao, align 4
  %i.aq = and i16 %i.ap, 64
  %.not38 = icmp eq i16 %i.aq, 0
  br i1 %.not38, label %bb.c, label %bb.u

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, 128
  %.not39 = icmp eq i32 %i.at, 0
  br i1 %.not39, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.av = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.au) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 8 ; 3 uses
  %i.ax = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ba = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1249
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

_ZN5clang13CXXMethodDecl9getParentEv.exit:        ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.az, %bb.e ], [ %i.bc, %bb.f ]
  %i.bd = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %0, ptr %5, align 8, !tbaa !1173
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.be, align 8, !tbaa !1173
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1312
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !1798
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1793
  store ptr null, ptr %i.bj, align 8, !tbaa !1793
  store ptr %i.bk, ptr %i.bi, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 11136 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !92
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !92
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1794
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !1799
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !1795
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !1800
  store ptr %i.au, ptr %i.bg, align 8, !tbaa !1312
  store i64 0, ptr %i.bm, align 8, !tbaa !92
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !101
  store i32 %i.bv, ptr %i.bp, align 8, !tbaa !1794
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !101
  store i32 %i.bx, ptr %i.bs, align 8, !tbaa !1795
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = and i16 %i.ca, 127
  %i.cc = add nsw i16 %i.cb, -41
  %i.cd = icmp ult i16 %i.cc, -6                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.cd, ptr null, ptr %2
  call void @_ZN5clang4Sema17PushFunctionScopeEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  call void @_ZN5clang4Sema42PushExpressionEvaluationContextForFunctionENS0_27ExpressionEvaluationContextEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 6, ptr noundef %spec.select.i.i.i) #26
  br i1 %i.cd, label %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit
  %i.ce = load i16, ptr %i.ao, align 4
  %i.cf = or i16 %i.ce, 64
  store i16 %i.cf, ptr %i.ao, align 4
  br label %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit

_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit: ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.cg, align 8, !tbaa !92
  %i.ch = and i64 %.sroa.0.0.copyload.i, -16
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !98 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 16
  %.not.i28 = icmp eq i8 %i.cl, 24
  br i1 %.not.i28, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit
  %i.cm = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cj) #26
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit, %bb.h
  %.1.i = phi ptr [ %i.cm, %bb.h ], [ %i.cj, %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit ]
  %i.cn = call noundef ptr @_ZN5clang4Sema20ResolveExceptionSpecENS_14SourceLocationEPKNS_17FunctionProtoTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %.1.i) #26 ; 0 uses
  call void @_ZN5clang4Sema14MarkVTableUsedENS_14SourceLocationEPNS_13CXXRecordDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %i.bd, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.11.0..sroa_idx.i, i8 0, i64 28, i1 false)
  %i.co = load ptr, ptr %i.bg, align 8, !tbaa !1312
  %i.cp = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %i.co) #26
  store i32 14, ptr %3, align 8, !tbaa !1397
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !1283
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !1283
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %1, ptr %.sroa.71.0..sroa_idx.i, align 8, !tbaa !116
  %.sroa.92.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cp, ptr %.sroa.92.0..sroa_idx.i, align 8, !tbaa !1398
  %i.cq = call noundef zeroext i1 @_ZN5clang4Sema24pushCodeSynthesisContextENS0_20CodeSynthesisContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull byval(%"struct.clang::Sema::CodeSynthesisContext") align 8 %3) #26 ; 0 uses
  store i8 1, ptr %i.by, align 8, !tbaa !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i29 = load i32, ptr %i.cr, align 8, !tbaa !116 ; 2 uses
  %i.cs = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.au) #26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i30 = load i64, ptr %i.ct, align 8 ; 3 uses
  %i.cu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i30, 4
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.cw = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i30 to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit32

bb.j:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.cx = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i30, -5
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1249
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit32

_ZN5clang13CXXMethodDecl9getParentEv.exit32:      ; preds = %bb.i, %bb.j
  %.0.i.i.i31 = phi ptr [ %i.cw, %bb.i ], [ %i.cz, %bb.j ] ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %.0.i.i.i31, i64 -64 ; 2 uses
  %i.db = call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i31) #26
  br i1 %i.db, label %_ZN5clang4Sema38MarkBaseAndMemberDestructorsReferencedENS_14SourceLocationEPNS_13CXXRecordDeclE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit32
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i31, i64 8
  %i.dd = load i16, ptr %i.dc, align 8
  %.mask.i.i = and i16 %i.dd, -8192
  %i.de = icmp eq i16 %.mask.i.i, 16384
  br i1 %i.de, label %_ZN5clang4Sema38MarkBaseAndMemberDestructorsReferencedENS_14SourceLocationEPNS_13CXXRecordDeclE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = call ptr @_ZNK5clang10RecordDecl11field_beginEv(ptr noundef nonnull align 8 dereferenceable(128) %i.da) #26 ; 2 uses
  %.not16.i = icmp eq ptr %i.df, null
  br i1 %.not16.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i, %bb.l
  call fastcc void @_ZL29MarkBaseDestructorsReferencedRN5clang4SemaENS_14SourceLocationEPNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i29, ptr noundef nonnull %i.da)
  br label %_ZN5clang4Sema38MarkBaseAndMemberDestructorsReferencedENS_14SourceLocationEPNS_13CXXRecordDeclE.exit

.lr.ph.i:                                         ; preds = %bb.l, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i
  %.sroa.013.017.i = phi ptr [ %.sroa.013.2.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i ], [ %i.df, %bb.l ] ; 2 uses
  call fastcc void @_ZL29MarkFieldDestructorReferencedRN5clang4SemaENS_14SourceLocationEPNS_9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i29, ptr noundef nonnull %.sroa.013.017.i)
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.dg, align 8
  %i.dh = and i64 %.0.copyload.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.di = inttoptr i64 %i.dh to ptr               ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not1.i.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %bb.m
  %.sroa.013.1.i = phi ptr [ %i.dq, %bb.m ], [ %i.di, %.lr.ph.i ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i, i64 28
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = and i32 %i.dk, 127
  %i.dm = add nsw i32 %i.dl, -50
  %i.dn = icmp ult i32 %i.dm, 3
  br i1 %i.dn, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.do, align 8
  %i.dp = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.dq = inttoptr i64 %i.dp to ptr               ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5
end_hunk_2
begin_hunk_3_@_ZNK5clang13CXXRecordDecl24hasTrivialCopyAssignmentEv:bb.a
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !107
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !107
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #26, !inline_history !12
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1476
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 4398046511104
  %i.ap = icmp ne i64 %i.ao, 0
  ret i1 %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang13CXXRecordDecl34setImplicitCopyAssignmentIsDeletedEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1478 ; 4 uses
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1288 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1289 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1290
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !1289
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1292
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !1293
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !1294
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1293
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1292 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1297 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !1293
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !1195
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !107
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !107
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #26, !inline_history !12
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1476 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = or i64 %i.an, 68719476736
  store i64 %i.ao, ptr %i.am, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema28DefineImplicitCopyAssignmentENS_14SourceLocationEPNS_13CXXMethodDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.clang::Sema::CodeSynthesisContext", align 8 ; 9 uses
  %4 = alloca %"struct.(anonymous namespace)::DefaultedFunctionFPFeaturesRAII", align 8 ; 4 uses
  %5 = alloca %"class.clang::Sema::SynthesizedFunctionScope", align 8 ; 11 uses
  %6 = alloca %"class.llvm::SmallVector.1987", align 8 ; 12 uses
  %7 = alloca %"class.(anonymous namespace)::RefBuilder", align 8 ; 7 uses
  %8 = alloca %"class.std::optional.1992", align 8 ; 7 uses
  %9 = alloca %"class.std::optional.2002", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.2012", align 8 ; 10 uses
  %11 = alloca %"class.llvm::SmallVector.1235", align 8 ; 9 uses
  %12 = alloca %"class.(anonymous namespace)::CastBuilder", align 8 ; 8 uses
  %13 = alloca %"class.(anonymous namespace)::CastBuilder", align 8 ; 8 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %15 = alloca %"class.clang::CanQual", align 8   ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8
  %18 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %19 = alloca %"class.clang::CanQual", align 8   ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %20 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %21 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8
  %22 = alloca %"class.clang::LookupResult", align 8 ; 8 uses
  %23 = alloca %"class.(anonymous namespace)::MemberBuilder", align 8 ; 11 uses
  %24 = alloca %"class.(anonymous namespace)::MemberBuilder", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  %i.c = call noundef ptr @_ZNK5clang12FunctionDecl25getDefaultedOrDeletedInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !116 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  br label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit

_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit: ; preds = %bb.a, %bb.b
  %.sroa.6.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1172, !nonnull !107, !align !791 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = lshr i32 %i.i, 23
  %i.k = and i32 %i.j, 3                          ; 2 uses
  %i.l = icmp eq i32 %i.k, 3
  %spec.store.select.i.i.i = select i1 %i.l, i32 2, i32 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.n = load i64, ptr %i.m, align 8
  %i.o = lshr i64 %i.n, 57
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i32 %i.p, 4                          ; 2 uses
  %i.r = lshr i32 %i.i, 19
  %i.s = and i32 %i.r, 192
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i64 %i.u, 36
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = and i32 %i.w, 32256
  %i.y = icmp eq i32 %spec.store.select.i.i.i, 1
  %.not3.i.i.i.i = icmp ne i32 %i.q, 0
  %or.cond.not16.i.i.i = select i1 %i.y, i1 %.not3.i.i.i.i, i1 false
  %i.z = and i32 %i.i, 100663296
  %i.aa = icmp eq i32 %i.z, 67108864
  %or.cond15.i.i.i = select i1 %or.cond.not16.i.i.i, i1 %i.aa, i1 false
  %masksel.i.i.i = select i1 %or.cond15.i.i.i, i32 256, i32 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.ac = load i64, ptr %i.ab, align 8
  %sh.diff.i.i.i = lshr i64 %i.ac, 23
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.ad = and i32 %tr.sh.diff.i.i.i, 29360128
  %i.ae = or disjoint i32 %i.s, %i.x
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = or disjoint i32 %i.af, %masksel.i.i.i
  %i.ah = or disjoint i32 %i.ag, %i.q
  %i.ai = or disjoint i32 %i.ah, %spec.store.select.i.i.i
  %i.aj = or disjoint i32 %i.ai, 56
  %i.ak = xor i32 %.sroa.6.0.i, -1
  %i.al = and i32 %i.aj, %i.ak
  %i.am = and i32 %.sroa.0.0.i, %.sroa.6.0.i
  %i.an = or i32 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !116
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %.sroa.6.0.insert.ext.i = zext i32 %.sroa.6.0.i to i64
  %.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.6.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ap, align 8, !tbaa !116
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.ar = load i16, ptr %i.aq, align 4
  %i.as = and i16 %i.ar, 64
  %.not274 = icmp eq i16 %i.as, 0
  br i1 %.not274, label %bb.c, label %bb.bp

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 128
  %.not275 = icmp eq i32 %i.av, 0
  br i1 %.not275, label %bb.d, label %bb.bp

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ax = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.aw) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 8 ; 3 uses
  %i.az = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

bb.f:                                             ; preds = %bb.d
  %i.bc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1249
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

_ZN5clang13CXXMethodDecl9getParentEv.exit:        ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.bb, %bb.e ], [ %i.be, %bb.f ] ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -64 ; 5 uses
  %i.bg = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -36
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = and i32 %i.bh, 128
  %.not276 = icmp eq i32 %i.bi, 0
  br i1 %.not276, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %2, i1 noundef zeroext true) #26
  br label %bb.bp

bb.h:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %0, ptr %5, align 8, !tbaa !1173
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.bj, align 8, !tbaa !1173
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1312
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !1798
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1793
  store ptr null, ptr %i.bo, align 8, !tbaa !1793
  store ptr %i.bp, ptr %i.bn, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 11136 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !92
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !92
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !1794
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !1799
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !1795
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !1800
  store ptr %i.aw, ptr %i.bl, align 8, !tbaa !1312
  store i64 0, ptr %i.br, align 8, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !101
  store i32 %i.ca, ptr %i.bu, align 8, !tbaa !1794
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !101
  store i32 %i.cc, ptr %i.bx, align 8, !tbaa !1795
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cf = load i16, ptr %i.ce, align 8
  %i.cg = and i16 %i.cf, 127
  %i.ch = add nsw i16 %i.cg, -41
  %i.ci = icmp ult i16 %i.ch, -6                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.ci, ptr null, ptr %2
  call void @_ZN5clang4Sema17PushFunctionScopeEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  call void @_ZN5clang4Sema42PushExpressionEvaluationContextForFunctionENS0_27ExpressionEvaluationContextEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 6, ptr noundef %spec.select.i.i.i) #26
  br i1 %i.ci, label %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = load i16, ptr %i.aq, align 4
  %i.ck = or i16 %i.cj, 64
  store i16 %i.ck, ptr %i.aq, align 4
  br label %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit

_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit: ; preds = %bb.h, %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.cl, align 8, !tbaa !92
  %i.cm = and i64 %.sroa.0.0.copyload.i, -16
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !98 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i8, ptr %i.cp, align 16
  %.not.i131 = icmp eq i8 %i.cq, 24
  br i1 %.not.i131, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit
  %i.cr = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.co) #26
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit, %bb.j
  %.1.i = phi ptr [ %i.cr, %bb.j ], [ %i.co, %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit ]
  %i.cs = call noundef ptr @_ZN5clang4Sema20ResolveExceptionSpecENS_14SourceLocationEPKNS_17FunctionProtoTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %.1.i) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.11.0..sroa_idx.i, i8 0, i64 28, i1 false)
  %i.ct = load ptr, ptr %i.bl, align 8, !tbaa !1312
  %i.cu = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %i.ct) #26
  store i32 14, ptr %3, align 8, !tbaa !1397
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !1283
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !1283
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %1, ptr %.sroa.71.0..sroa_idx.i, align 8, !tbaa !116
  %.sroa.92.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cu, ptr %.sroa.92.0..sroa_idx.i, align 8, !tbaa !1398
  %i.cv = call noundef zeroext i1 @_ZN5clang4Sema24pushCodeSynthesisContextENS0_20CodeSynthesisContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull byval(%"struct.clang::Sema::CodeSynthesisContext") align 8 %3) #26 ; 0 uses
  store i8 1, ptr %i.cd, align 8, !tbaa !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cw = load ptr, ptr %i.e, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = and i64 %i.cx, 8192
  %.not = icmp eq i64 %i.cy, 0
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.cz = load i32, ptr %i.at, align 4
  %i.da = and i32 %i.cz, 512
  %.not277 = icmp eq i32 %i.da, 0
  br i1 %.not277, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call fastcc void @_ZL31diagnoseDeprecatedCopyOperationRN5clang4SemaEPNS_13CXXMethodDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.db, ptr %6, align 8, !tbaa !100
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.dc, align 8, !tbaa !101
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 8, ptr %i.dd, align 4, !tbaa !112
  %i.de = call noundef zeroext i1 @_ZNK5clang12FunctionDecl37hasCXXExplicitFunctionObjectParameterEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1282
  %i.dh = zext i1 %i.de to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1167 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %.sroa.0.0.copyload.i132 = load i64, ptr %i.dk, align 8, !tbaa !92 ; 3 uses
  %i.dl = and i64 %.sroa.0.0.copyload.i132, -16
  %i.dm = inttoptr i64 %i.dl to ptr               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.dn, align 8 ; 3 uses
  %i.do = and i64 %.0.copyload.i.i.i.i.i.i, 8
  %.not.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i, label %_ZNK5clang8QualType13getQualifiersEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = and i64 %.0.copyload.i.i.i.i.i.i, -16
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dr, align 8, !tbaa !1284
  br label %_ZNK5clang8QualType13getQualifiersEv.exit

_ZNK5clang8QualType13getQualifiersEv.exit:        ; preds = %bb.m, %bb.n
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.n ], [ 0, %bb.m ]
  %i.ds = or i64 %.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i132
  %i.dt = and i64 %i.ds, 7
  %i.du = or i64 %.sroa.0.0.i.i, %i.dt
  %i.dv = load ptr, ptr %i.dm, align 16, !tbaa !98 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.dw, align 8, !tbaa !92
  %i.dx = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.dy = inttoptr i64 %i.dx to ptr
end_hunk_3
begin_hunk_4_@_ZN5clang13CXXRecordDecl34setImplicitMoveAssignmentIsDeletedEv
define linkonce_odr hidden void @_ZN5clang13CXXRecordDecl34setImplicitMoveAssignmentIsDeletedEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1478 ; 4 uses
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1288 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1289 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1290
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !1289
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1292
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !1293
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !1294
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1293
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1292 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1297 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !1293
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !1195
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !107
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !107
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #26, !inline_history !12
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1476 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = or i64 %i.an, 137438953472
  store i64 %i.ao, ptr %i.am, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema28DefineImplicitMoveAssignmentENS_14SourceLocationEPNS_13CXXMethodDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.clang::Sema::CodeSynthesisContext", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::SmallVector.3176", align 8 ; 12 uses
  %5 = alloca %"class.llvm::DenseMap.3178", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %6 = alloca %"struct.std::pair.3184", align 8   ; 5 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %10 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %11 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %12 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %13 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %14 = alloca %"struct.(anonymous namespace)::DefaultedFunctionFPFeaturesRAII", align 8 ; 4 uses
  %15 = alloca %"class.clang::Sema::SynthesizedFunctionScope", align 8 ; 11 uses
  %16 = alloca %"class.llvm::SmallVector.1987", align 8 ; 12 uses
  %17 = alloca %"class.(anonymous namespace)::RefBuilder", align 8 ; 7 uses
  %18 = alloca %"class.(anonymous namespace)::MoveCastBuilder", align 8 ; 5 uses
  %19 = alloca %"class.std::optional.1992", align 8 ; 7 uses
  %20 = alloca %"class.std::optional.2002", align 8 ; 7 uses
  %21 = alloca %"class.std::optional.2012", align 8 ; 10 uses
  %22 = alloca %"class.llvm::SmallVector.1235", align 8 ; 9 uses
  %23 = alloca %"class.(anonymous namespace)::CastBuilder", align 8 ; 8 uses
  %24 = alloca %"class.(anonymous namespace)::CastBuilder", align 8 ; 8 uses
  %25 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %26 = alloca %"class.clang::CanQual", align 8   ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %27 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %28 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8
  %29 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %30 = alloca %"class.clang::CanQual", align 8   ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %31 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %32 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8
  %33 = alloca %"class.clang::LookupResult", align 8 ; 8 uses
  %34 = alloca %"class.(anonymous namespace)::MemberBuilder", align 8 ; 11 uses
  %35 = alloca %"class.(anonymous namespace)::MemberBuilder", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  %i.g = call noundef ptr @_ZNK5clang12FunctionDecl25getDefaultedOrDeletedInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !116 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  br label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit

_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit: ; preds = %bb.a, %bb.b
  %.sroa.6.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1172, !nonnull !107, !align !791 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  %i.n = lshr i32 %i.m, 23
  %i.o = and i32 %i.n, 3                          ; 2 uses
  %i.p = icmp eq i32 %i.o, 3
  %spec.store.select.i.i.i = select i1 %i.p, i32 2, i32 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.r = load i64, ptr %i.q, align 8
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = and i32 %i.t, 4                          ; 2 uses
  %i.v = lshr i32 %i.m, 19
  %i.w = and i32 %i.v, 192
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i64 %i.y, 36
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = and i32 %i.aa, 32256
  %i.ac = icmp eq i32 %spec.store.select.i.i.i, 1
  %.not3.i.i.i.i = icmp ne i32 %i.u, 0
  %or.cond.not16.i.i.i = select i1 %i.ac, i1 %.not3.i.i.i.i, i1 false
  %i.ad = and i32 %i.m, 100663296
  %i.ae = icmp eq i32 %i.ad, 67108864
  %or.cond15.i.i.i = select i1 %or.cond.not16.i.i.i, i1 %i.ae, i1 false
  %masksel.i.i.i = select i1 %or.cond15.i.i.i, i32 256, i32 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.ag = load i64, ptr %i.af, align 8
  %sh.diff.i.i.i = lshr i64 %i.ag, 23
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.ah = and i32 %tr.sh.diff.i.i.i, 29360128
  %i.ai = or disjoint i32 %i.w, %i.ab
  %i.aj = or disjoint i32 %i.ai, %i.ah
  %i.ak = or disjoint i32 %i.aj, %masksel.i.i.i
  %i.al = or disjoint i32 %i.ak, %i.u
  %i.am = or disjoint i32 %i.al, %spec.store.select.i.i.i
  %i.an = or disjoint i32 %i.am, 56
  %i.ao = xor i32 %.sroa.6.0.i, -1
  %i.ap = and i32 %i.an, %i.ao
  %i.aq = and i32 %.sroa.0.0.i, %.sroa.6.0.i
  %i.ar = or i32 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !116
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %.sroa.6.0.insert.ext.i = zext i32 %.sroa.6.0.i to i64
  %.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.6.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.at, align 8, !tbaa !116
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.av = load i16, ptr %i.au, align 4
  %i.aw = and i16 %i.av, 64
  %.not256 = icmp eq i16 %i.aw, 0
  br i1 %.not256, label %bb.c, label %bb.dk

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %i.ay, 128
  %.not257 = icmp eq i32 %i.az, 0
  br i1 %.not257, label %bb.d, label %bb.dk

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bb = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.ba) #26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bc, align 8 ; 3 uses
  %i.bd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bf = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

bb.f:                                             ; preds = %bb.d
  %i.bg = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1249
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

_ZN5clang13CXXMethodDecl9getParentEv.exit:        ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.bf, %bb.e ], [ %i.bi, %bb.f ] ; 5 uses
  %i.bj = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -64 ; 9 uses
  %i.bk = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -36
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = and i32 %i.bl, 128
  %.not258 = icmp eq i32 %i.bm, 0
  br i1 %.not258, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %2, i1 noundef zeroext true) #26
  br label %bb.dk

bb.h:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !1422
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1478 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 8 ; 3 uses
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.br, i64 %i.bs, i64 0 ; 3 uses
  %i.bt = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.bt, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bu = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  %i.bv = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, -4
  %i.bw = inttoptr i64 %i.bv to ptr               ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl12getNumVBasesEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 18624
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1288 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 2632 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1289 ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cc = add i64 %i.cb, 24                       ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 2640
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !1290
  %i.cf = icmp ult i64 %i.cc, %i.ce
  br i1 %i.cf, label %bb.l, label %bb.m, !prof !113

bb.l:                                             ; preds = %bb.k
  %i.cg = inttoptr i64 %i.cc to ptr
  store ptr %i.cg, ptr %i.bz, align 8, !tbaa !1289
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ch = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bz, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.ch to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %i.cb, %bb.l ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %bb.m ], [ %i.ca, %bb.l ] ; 3 uses
  store ptr %i.by, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1292
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.ci, align 8, !tbaa !1293
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.bo, ptr %i.cj, align 8, !tbaa !1294
  %i.ck = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.j
  %i.cl = ptrtoint ptr %i.bo to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cl, %bb.o ], [ %i.ck, %bb.n ]
  %i.cm = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.cm, ptr %i.bp, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cm, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.cn = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cn, 0
  %i.co = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.co, 0
  %.not.not.i.i.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl12getNumVBasesEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !1293
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !1292 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !1297 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cr, %i.cu
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl12getNumVBasesEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.cu, ptr %i.cq, align 8, !tbaa !1293
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !1195
  %i.cw = getelementptr i8, ptr %i.cv, i64 152, !nosanitize !107
  %i.cx = load ptr, ptr %i.cw, align 8, !nosanitize !107
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull %i.bo) #26, !inline_history !2957
  br label %_ZNK5clang13CXXRecordDecl12getNumVBasesEv.exit.i

_ZNK5clang13CXXRecordDecl12getNumVBasesEv.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1476
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !1488
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_ZL34checkMoveAssignmentForRepeatedMoveRN5clang4SemaEPNS_13CXXRecordDeclENS_14SourceLocationE.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK5clang13CXXRecordDecl12getNumVBasesEv.exit.i
  %i.dd = call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl24hasTrivialMoveAssignmentEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bj)
  br i1 %i.dd, label %_ZL34checkMoveAssignmentForRepeatedMoveRN5clang4SemaEPNS_13CXXRecordDeclENS_14SourceLocationE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = load ptr, ptr %i.bn, align 8, !tbaa !1478 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i35.i = load i64, ptr %i.df, align 8 ; 3 uses
  %i.dg = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i35.i, 1
  %i.dh = icmp eq i64 %i.dg, 0
  %i.di = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i35.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i36.i = select i1 %i.dh, i64 %i.di, i64 0 ; 3 uses
  %i.dj = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i36.i, 3
  br i1 %i.dj, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.dk = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i36.i, 2
  %.not.i.i.i.i.i.i.i.i.i42.i = icmp eq i64 %i.dk, 0
  %i.dl = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i36.i, -4
  %i.dm = inttoptr i64 %i.dl to ptr               ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i42.i, label %_ZNK5clang13CXXRecordDecl11getNumBasesEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 18624
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1288 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i43.i = icmp eq ptr %i.do, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i43.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 2632 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1289 ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.ds = add i64 %i.dr, 24                       ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 2640
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !1290
  %i.dv = icmp ult i64 %i.ds, %i.du
  br i1 %i.dv, label %bb.x, label %bb.y, !prof !113

bb.x:                                             ; preds = %bb.w
  %i.dw = inttoptr i64 %i.ds to ptr
end_hunk_4
begin_hunk_5_@_ZNK5clang13CXXRecordDecl32hasTrivialCopyConstructorForCallEv:bb.a
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1293
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1292 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1297 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !1293
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !1195
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !107
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !107
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #26, !inline_history !12
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1476
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 70368744177664
  %i.ap = icmp ne i64 %i.ao, 0
  ret i1 %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang13CXXRecordDecl35setImplicitCopyConstructorIsDeletedEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1478 ; 4 uses
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1288 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1289 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1290
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !1289
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1292
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !1293
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !1294
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1293
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1292 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1297 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !1293
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !1195
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !107
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !107
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #26, !inline_history !12
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1476 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = or i64 %i.an, 17179869184
  store i64 %i.ao, ptr %i.am, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema29DefineImplicitCopyConstructorENS_14SourceLocationEPNS_18CXXConstructorDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.clang::Sema::CodeSynthesisContext", align 8 ; 9 uses
  %4 = alloca %"struct.(anonymous namespace)::DefaultedFunctionFPFeaturesRAII", align 8 ; 4 uses
  %5 = alloca %"class.clang::Sema::SynthesizedFunctionScope", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  %i.a = call noundef ptr @_ZNK5clang12FunctionDecl25getDefaultedOrDeletedInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !116 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  br label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit

_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit: ; preds = %bb.a, %bb.b
  %.sroa.6.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1172, !nonnull !107, !align !791 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = lshr i32 %i.g, 23
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %i.j = icmp eq i32 %i.i, 3
  %spec.store.select.i.i.i = select i1 %i.j, i32 2, i32 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 57
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 4                          ; 2 uses
  %i.p = lshr i32 %i.g, 19
  %i.q = and i32 %i.p, 192
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = lshr i64 %i.s, 36
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = and i32 %i.u, 32256
  %i.w = icmp eq i32 %spec.store.select.i.i.i, 1
  %.not3.i.i.i.i = icmp ne i32 %i.o, 0
  %or.cond.not16.i.i.i = select i1 %i.w, i1 %.not3.i.i.i.i, i1 false
  %i.x = and i32 %i.g, 100663296
  %i.y = icmp eq i32 %i.x, 67108864
  %or.cond15.i.i.i = select i1 %or.cond.not16.i.i.i, i1 %i.y, i1 false
  %masksel.i.i.i = select i1 %or.cond15.i.i.i, i32 256, i32 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.aa = load i64, ptr %i.z, align 8
  %sh.diff.i.i.i = lshr i64 %i.aa, 23
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.ab = and i32 %tr.sh.diff.i.i.i, 29360128
  %i.ac = or disjoint i32 %i.q, %i.v
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = or disjoint i32 %i.ad, %masksel.i.i.i
  %i.af = or disjoint i32 %i.ae, %i.o
  %i.ag = or disjoint i32 %i.af, %spec.store.select.i.i.i
  %i.ah = or disjoint i32 %i.ag, 56
  %i.ai = xor i32 %.sroa.6.0.i, -1
  %i.aj = and i32 %i.ah, %i.ai
  %i.ak = and i32 %.sroa.0.0.i, %.sroa.6.0.i
  %i.al = or i32 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.al, ptr %i.am, align 8, !tbaa !116
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %.sroa.6.0.insert.ext.i = zext i32 %.sroa.6.0.i to i64
  %.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.6.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.an, align 8, !tbaa !116
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.ap = load i16, ptr %i.ao, align 4
  %i.aq = and i16 %i.ap, 64
  %.not38 = icmp eq i16 %i.aq, 0
  br i1 %.not38, label %bb.c, label %bb.s

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, 128
  %.not39 = icmp eq i32 %i.at, 0
  br i1 %.not39, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.av = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.au) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 8 ; 3 uses
  %i.ax = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ba = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1249
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

_ZN5clang13CXXMethodDecl9getParentEv.exit:        ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.az, %bb.e ], [ %i.bc, %bb.f ]
  %i.bd = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %0, ptr %5, align 8, !tbaa !1173
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.be, align 8, !tbaa !1173
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1312
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !1798
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1793
  store ptr null, ptr %i.bj, align 8, !tbaa !1793
  store ptr %i.bk, ptr %i.bi, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 11136 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !92
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !92
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1794
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !1799
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !1795
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !1800
  store ptr %i.au, ptr %i.bg, align 8, !tbaa !1312
  store i64 0, ptr %i.bm, align 8, !tbaa !92
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !101
  store i32 %i.bv, ptr %i.bp, align 8, !tbaa !1794
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !101
  store i32 %i.bx, ptr %i.bs, align 8, !tbaa !1795
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = and i16 %i.ca, 127
  %i.cc = add nsw i16 %i.cb, -41
  %i.cd = icmp ult i16 %i.cc, -6                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.cd, ptr null, ptr %2
  call void @_ZN5clang4Sema17PushFunctionScopeEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  call void @_ZN5clang4Sema42PushExpressionEvaluationContextForFunctionENS0_27ExpressionEvaluationContextEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 6, ptr noundef %spec.select.i.i.i) #26
  br i1 %i.cd, label %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit
  %i.ce = load i16, ptr %i.ao, align 4
  %i.cf = or i16 %i.ce, 64
  store i16 %i.cf, ptr %i.ao, align 4
  br label %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit

_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit: ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.cg, align 8, !tbaa !92
  %i.ch = and i64 %.sroa.0.0.copyload.i, -16
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !98 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 16
  %.not.i30 = icmp eq i8 %i.cl, 24
  br i1 %.not.i30, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit
  %i.cm = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cj) #26
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit, %bb.h
  %.1.i = phi ptr [ %i.cm, %bb.h ], [ %i.cj, %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit ]
  %i.cn = call noundef ptr @_ZN5clang4Sema20ResolveExceptionSpecENS_14SourceLocationEPKNS_17FunctionProtoTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %.1.i) #26 ; 0 uses
  call void @_ZN5clang4Sema14MarkVTableUsedENS_14SourceLocationEPNS_13CXXRecordDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %i.bd, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.11.0..sroa_idx.i, i8 0, i64 28, i1 false)
  %i.co = load ptr, ptr %i.bg, align 8, !tbaa !1312
  %i.cp = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %i.co) #26
  store i32 14, ptr %3, align 8, !tbaa !1397
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !1283
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !1283
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %1, ptr %.sroa.71.0..sroa_idx.i, align 8, !tbaa !116
  %.sroa.92.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cp, ptr %.sroa.92.0..sroa_idx.i, align 8, !tbaa !1398
  %i.cq = call noundef zeroext i1 @_ZN5clang4Sema24pushCodeSynthesisContextENS0_20CodeSynthesisContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull byval(%"struct.clang::Sema::CodeSynthesisContext") align 8 %3) #26 ; 0 uses
  store i8 1, ptr %i.by, align 8, !tbaa !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !1172, !nonnull !107, !align !791
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = and i64 %i.cs, 8192
  %.not = icmp eq i64 %i.ct, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.cu = load i32, ptr %i.ar, align 4
  %i.cv = and i32 %i.cu, 512
  %.not40 = icmp eq i32 %i.cv, 0
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @_ZL31diagnoseDeprecatedCopyOperationRN5clang4SemaEPNS_13CXXMethodDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.cw = call noundef zeroext i1 @_ZN5clang4Sema19SetCtorInitializersEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_18CXXCtorInitializerEEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %2, i1 noundef zeroext false, ptr null, i64 0)
  br i1 %i.cw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %2, i1 noundef zeroext true) #26
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.cx = load ptr, ptr %2, align 8, !tbaa !1195
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call i64 %i.cz(ptr noundef nonnull align 8 dereferenceable(33) %2) #27, !inline_history !39
  %.sroa.3.0.extract.shift.i = lshr i64 %i.da, 32 ; 2 uses
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %.not41 = icmp eq i64 %.sroa.3.0.extract.shift.i, 0
  br i1 %.not41, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.db, align 8, !tbaa !116
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.03.0 = phi i32 [ %.sroa.0.0.copyload.i33, %bb.n ], [ %.sroa.3.0.extract.trunc.i, %bb.m ] ; 2 uses
  call void @_ZN5clang4Sema24ActOnStartOfCompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i1 noundef zeroext false) #26
  %i.dc = call i64 @_ZN5clang4Sema17ActOnCompoundStmtENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4StmtEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.03.0, i32 %.sroa.03.0, ptr null, i64 0, i1 noundef zeroext false) #26
  %i.dd = and i64 %i.dc, -2
  %i.de = inttoptr i64 %i.dd to ptr
  call void @_ZN5clang12FunctionDecl7setBodyEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef %i.de) #26
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !790, !nonnull !107, !align !791
  call void @_ZN5clang4Decl8markUsedERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef nonnull align 8 dereferenceable(23904) %i.dg) #26
  call void @_ZN5clang4Sema25ActOnFinishOfCompoundStmtEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.dh = call noundef ptr @_ZNK5clang4Sema22getASTMutationListenerEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26 ; 3 uses
  %.not29 = icmp eq ptr %i.dh, null
  br i1 %.not29, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1195
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 112
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull %2) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @_ZN5clang4Sema24SynthesizedFunctionScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
end_hunk_5
begin_hunk_6_@_ZNK5clang13CXXRecordDecl32hasTrivialMoveConstructorForCallEv:bb.a
  %.not.not14.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  %.not.not.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1293
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !1292 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !1297 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, %i.ai
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !1293
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !1195
  %i.ak = getelementptr i8, ptr %i.aj, i64 152, !nosanitize !107
  %i.al = load ptr, ptr %i.ak, align 8, !nosanitize !107
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull %i.c) #26, !inline_history !12
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.c, %bb.j, %bb.k, %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1476
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, 140737488355328
  %i.aq = icmp ne i64 %i.ap, 0
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5clang13CXXRecordDecl4dataEv.exit, %bb.a
  %i.ar = phi i1 [ false, %bb.a ], [ %i.aq, %_ZNK5clang13CXXRecordDecl4dataEv.exit ]
  ret i1 %i.ar
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang13CXXRecordDecl35setImplicitMoveConstructorIsDeletedEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1478 ; 4 uses
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1288 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1289 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1290
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !1289
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1292
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !1293
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !1294
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1293
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1292 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1297 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !1293
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !1195
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !107
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !107
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #26, !inline_history !12
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1476 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = or i64 %i.an, 34359738368
  store i64 %i.ao, ptr %i.am, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema29DefineImplicitMoveConstructorENS_14SourceLocationEPNS_18CXXConstructorDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.clang::Sema::CodeSynthesisContext", align 8 ; 9 uses
  %4 = alloca %"struct.(anonymous namespace)::DefaultedFunctionFPFeaturesRAII", align 8 ; 4 uses
  %5 = alloca %"class.clang::Sema::SynthesizedFunctionScope", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  %i.a = call noundef ptr @_ZNK5clang12FunctionDecl25getDefaultedOrDeletedInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !116 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  br label %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit

_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit: ; preds = %bb.a, %bb.b
  %.sroa.6.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1172, !nonnull !107, !align !791 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = lshr i32 %i.g, 23
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %i.j = icmp eq i32 %i.i, 3
  %spec.store.select.i.i.i = select i1 %i.j, i32 2, i32 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 57
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 4                          ; 2 uses
  %i.p = lshr i32 %i.g, 19
  %i.q = and i32 %i.p, 192
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = lshr i64 %i.s, 36
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = and i32 %i.u, 32256
  %i.w = icmp eq i32 %spec.store.select.i.i.i, 1
  %.not3.i.i.i.i = icmp ne i32 %i.o, 0
  %or.cond.not16.i.i.i = select i1 %i.w, i1 %.not3.i.i.i.i, i1 false
  %i.x = and i32 %i.g, 100663296
  %i.y = icmp eq i32 %i.x, 67108864
  %or.cond15.i.i.i = select i1 %or.cond.not16.i.i.i, i1 %i.y, i1 false
  %masksel.i.i.i = select i1 %or.cond15.i.i.i, i32 256, i32 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.aa = load i64, ptr %i.z, align 8
  %sh.diff.i.i.i = lshr i64 %i.aa, 23
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.ab = and i32 %tr.sh.diff.i.i.i, 29360128
  %i.ac = or disjoint i32 %i.q, %i.v
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = or disjoint i32 %i.ad, %masksel.i.i.i
  %i.af = or disjoint i32 %i.ae, %i.o
  %i.ag = or disjoint i32 %i.af, %spec.store.select.i.i.i
  %i.ah = or disjoint i32 %i.ag, 56
  %i.ai = xor i32 %.sroa.6.0.i, -1
  %i.aj = and i32 %i.ah, %i.ai
  %i.ak = and i32 %.sroa.0.0.i, %.sroa.6.0.i
  %i.al = or i32 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.al, ptr %i.am, align 8, !tbaa !116
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %.sroa.6.0.insert.ext.i = zext i32 %.sroa.6.0.i to i64
  %.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.6.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.an, align 8, !tbaa !116
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.ap = load i16, ptr %i.ao, align 4
  %i.aq = and i16 %i.ap, 64
  %.not35 = icmp eq i16 %i.aq, 0
  br i1 %.not35, label %bb.c, label %bb.p

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, 128
  %.not36 = icmp eq i32 %i.at, 0
  br i1 %.not36, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.av = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.au) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 8 ; 3 uses
  %i.ax = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ba = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1249
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

_ZN5clang13CXXMethodDecl9getParentEv.exit:        ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.az, %bb.e ], [ %i.bc, %bb.f ]
  %i.bd = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %0, ptr %5, align 8, !tbaa !1173
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.be, align 8, !tbaa !1173
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1312
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !1798
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1793
  store ptr null, ptr %i.bj, align 8, !tbaa !1793
  store ptr %i.bk, ptr %i.bi, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 11136 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !92
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !92
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1794
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !1799
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !1795
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !1800
  store ptr %i.au, ptr %i.bg, align 8, !tbaa !1312
  store i64 0, ptr %i.bm, align 8, !tbaa !92
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !101
  store i32 %i.bv, ptr %i.bp, align 8, !tbaa !1794
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !101
  store i32 %i.bx, ptr %i.bs, align 8, !tbaa !1795
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = and i16 %i.ca, 127
  %i.cc = add nsw i16 %i.cb, -41
  %i.cd = icmp ult i16 %i.cc, -6                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.cd, ptr null, ptr %2
  call void @_ZN5clang4Sema17PushFunctionScopeEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  call void @_ZN5clang4Sema42PushExpressionEvaluationContextForFunctionENS0_27ExpressionEvaluationContextEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 6, ptr noundef %spec.select.i.i.i) #26
  br i1 %i.cd, label %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit
  %i.ce = load i16, ptr %i.ao, align 4
  %i.cf = or i16 %i.ce, 64
  store i16 %i.cf, ptr %i.ao, align 4
  br label %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit

_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit: ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.cg, align 8, !tbaa !92
  %i.ch = and i64 %.sroa.0.0.copyload.i, -16
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !98 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 16
  %.not.i27 = icmp eq i8 %i.cl, 24
  br i1 %.not.i27, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit
  %i.cm = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cj) #26
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit, %bb.h
  %.1.i = phi ptr [ %i.cm, %bb.h ], [ %i.cj, %_ZN5clang4Sema24SynthesizedFunctionScopeC2ERS0_PNS_11DeclContextE.exit ]
  %i.cn = call noundef ptr @_ZN5clang4Sema20ResolveExceptionSpecENS_14SourceLocationEPKNS_17FunctionProtoTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %.1.i) #26 ; 0 uses
  call void @_ZN5clang4Sema14MarkVTableUsedENS_14SourceLocationEPNS_13CXXRecordDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %i.bd, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.11.0..sroa_idx.i, i8 0, i64 28, i1 false)
  %i.co = load ptr, ptr %i.bg, align 8, !tbaa !1312
  %i.cp = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %i.co) #26
  store i32 14, ptr %3, align 8, !tbaa !1397
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !1283
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !1283
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %1, ptr %.sroa.71.0..sroa_idx.i, align 8, !tbaa !116
  %.sroa.92.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cp, ptr %.sroa.92.0..sroa_idx.i, align 8, !tbaa !1398
  %i.cq = call noundef zeroext i1 @_ZN5clang4Sema24pushCodeSynthesisContextENS0_20CodeSynthesisContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull byval(%"struct.clang::Sema::CodeSynthesisContext") align 8 %3) #26 ; 0 uses
  store i8 1, ptr %i.by, align 8, !tbaa !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cr = call noundef zeroext i1 @_ZN5clang4Sema19SetCtorInitializersEPNS_18CXXConstructorDeclEbN4llvm8ArrayRefIPNS_18CXXCtorInitializerEEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %2, i1 noundef zeroext false, ptr null, i64 0)
  br i1 %i.cr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %2, i1 noundef zeroext true) #26
  br label %bb.m

bb.j:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.cs = load ptr, ptr %2, align 8, !tbaa !1195
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call i64 %i.cu(ptr noundef nonnull align 8 dereferenceable(33) %2) #27, !inline_history !39
  %.sroa.3.0.extract.shift.i = lshr i64 %i.cv, 32 ; 2 uses
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %.not37 = icmp eq i64 %.sroa.3.0.extract.shift.i, 0
  br i1 %.not37, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.cw, align 8, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.03.0 = phi i32 [ %.sroa.0.0.copyload.i30, %bb.k ], [ %.sroa.3.0.extract.trunc.i, %bb.j ] ; 2 uses
  call void @_ZN5clang4Sema24ActOnStartOfCompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i1 noundef zeroext false) #26
  %i.cx = call i64 @_ZN5clang4Sema17ActOnCompoundStmtENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4StmtEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.03.0, i32 %.sroa.03.0, ptr null, i64 0, i1 noundef zeroext false) #26
  %i.cy = and i64 %i.cx, -2
  %i.cz = inttoptr i64 %i.cy to ptr
  call void @_ZN5clang12FunctionDecl7setBodyEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef %i.cz) #26
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !790, !nonnull !107, !align !791
  call void @_ZN5clang4Decl8markUsedERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef nonnull align 8 dereferenceable(23904) %i.db) #26
  call void @_ZN5clang4Sema25ActOnFinishOfCompoundStmtEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.dc = call noundef ptr @_ZNK5clang4Sema22getASTMutationListenerEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #26 ; 3 uses
  %.not = icmp eq ptr %i.dc, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1195
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 112
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull %2) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_ZN5clang4Sema24SynthesizedFunctionScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_131DefaultedFunctionFPFeaturesRAIIC2ERN5clang4SemaEPNS1_12FunctionDeclE.exit, %bb.c, %bb.o
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(32) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema19isImplicitlyDeletedEPNS_12FunctionDeclE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(18640) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1195
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(168) %1) #26, !inline_history !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load i32, ptr %i.e, align 8
end_hunk_6

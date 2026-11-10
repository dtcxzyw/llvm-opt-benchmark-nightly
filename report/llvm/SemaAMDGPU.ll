Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaAMDGPU?download=true
inline.NumInlined: 1926
inline.NumDeleted: 1059
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang10SemaAMDGPU30CheckAMDGCNBuiltinFunctionCallEjPNS_8CallExprE:bb.a
  %10 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %11 = alloca %"class.llvm::APSInt", align 8     ; 9 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %13 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %15 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %16 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %17 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %18 = alloca %"class.llvm::APSInt", align 8     ; 13 uses
  %19 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %20 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %21 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %22 = alloca %"class.llvm::APSInt", align 8     ; 8 uses
  %23 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %24 = alloca %"class.clang::ActionResult", align 8 ; 5 uses
  %25 = alloca %"struct.clang::Expr::EvalResult", align 8 ; 11 uses
  %26 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %27 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %28 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %29 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %30 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %31 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %32 = alloca %"struct.clang::Expr::EvalResult", align 8 ; 9 uses
  %33 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %34 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.e = tail call noundef ptr @_ZNK5clang4Sema18getCurFunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, i1 noundef zeroext true) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, i8 0, i64 16, i1 false)
  store i32 16, ptr %i.f, align 8, !tbaa !28
  %i.g = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  call void @_ZNK5clang10ASTContext21getFunctionFeatureMapERN4llvm9StringMapIbNS1_15MallocAllocatorEEEPKNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.h = call noundef zeroext i1 @_ZN5clang7Builtin30evaluateRequiredTargetFeaturesEN4llvm9StringRefERKNS1_9StringMapIbNS1_15MallocAllocatorEEE(ptr nonnull @.str, i64 12, ptr noundef nonnull align 8 dereferenceable(20) %5) #20 ; 2 uses
  %i.i = zext i1 %i.h to i8
  store i8 %i.i, ptr %i.a, align 1, !tbaa !29
  switch i32 %1, label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit [
    i32 2236, label %bb.b
    i32 2235, label %bb.b
    i32 2370, label %bb.b
    i32 2369, label %bb.b
    i32 2129, label %bb.b
    i32 2128, label %bb.b
    i32 1967, label %bb.b
    i32 1962, label %bb.b
    i32 2460, label %bb.ct
    i32 2459, label %bb.ct
    i32 1706, label %bb.cv
    i32 1707, label %bb.cv
    i32 1704, label %bb.cv
    i32 1705, label %bb.cv
    i32 1933, label %bb.j
    i32 2305, label %bb.k
    i32 2311, label %bb.l
    i32 2183, label %bb.s
    i32 2184, label %bb.t
    i32 2422, label %bb.u
    i32 1776, label %bb.v
    i32 1773, label %bb.v
    i32 1774, label %bb.v
    i32 1771, label %bb.v
    i32 1775, label %bb.v
    i32 1772, label %bb.v
    i32 1779, label %bb.v
    i32 1777, label %bb.v
    i32 1778, label %bb.v
    i32 1783, label %bb.v
    i32 1781, label %bb.v
    i32 1782, label %bb.v
    i32 1780, label %bb.v
    i32 1785, label %bb.v
    i32 1784, label %bb.v
    i32 1708, label %bb.w
    i32 1709, label %bb.x
    i32 1739, label %bb.y
    i32 1738, label %bb.y
    i32 1737, label %bb.y
    i32 1742, label %bb.z
    i32 1741, label %bb.z
    i32 1740, label %bb.z
    i32 1940, label %bb.aa
    i32 1941, label %bb.aa
    i32 1942, label %bb.aa
    i32 1968, label %bb.aa
    i32 1969, label %bb.aa
    i32 1970, label %bb.aa
    i32 2003, label %bb.ad
    i32 2005, label %bb.ad
    i32 2002, label %bb.ad
    i32 2004, label %bb.ad
    i32 2006, label %bb.ad
    i32 2008, label %bb.ad
    i32 2007, label %bb.ad
    i32 2009, label %bb.ad
    i32 2011, label %bb.ad
    i32 2010, label %bb.ad
    i32 2013, label %bb.ad
    i32 2012, label %bb.ad
    i32 2015, label %bb.ad
    i32 2014, label %bb.ad
    i32 2017, label %bb.ad
    i32 2016, label %bb.ad
    i32 2019, label %bb.ad
    i32 2018, label %bb.ad
    i32 2020, label %bb.ad
    i32 2022, label %bb.ad
    i32 2021, label %bb.ad
    i32 2023, label %bb.ad
    i32 2025, label %bb.ad
    i32 2024, label %bb.ad
    i32 2027, label %bb.ad
    i32 2026, label %bb.ad
    i32 2029, label %bb.ad
    i32 2028, label %bb.ad
    i32 2031, label %bb.ad
    i32 2033, label %bb.ad
    i32 2030, label %bb.ad
    i32 2032, label %bb.ad
    i32 2034, label %bb.ad
    i32 2036, label %bb.ad
    i32 2035, label %bb.ad
    i32 2037, label %bb.ad
    i32 2039, label %bb.ad
    i32 2038, label %bb.ad
    i32 2041, label %bb.ad
    i32 2040, label %bb.ad
    i32 2043, label %bb.ad
    i32 2042, label %bb.ad
    i32 2071, label %bb.ad
    i32 2070, label %bb.ad
    i32 2073, label %bb.ad
    i32 2072, label %bb.ad
    i32 2074, label %bb.ad
    i32 2076, label %bb.ad
    i32 2075, label %bb.ad
    i32 2077, label %bb.ad
    i32 2079, label %bb.ad
    i32 2078, label %bb.ad
    i32 2081, label %bb.ad
    i32 2080, label %bb.ad
    i32 2083, label %bb.ad
    i32 2082, label %bb.ad
    i32 2057, label %bb.ad
    i32 2056, label %bb.ad
    i32 2059, label %bb.ad
    i32 2058, label %bb.ad
    i32 2060, label %bb.ad
    i32 2061, label %bb.ad
    i32 2062, label %bb.ad
    i32 2063, label %bb.ad
    i32 2065, label %bb.ad
    i32 2064, label %bb.ad
    i32 2067, label %bb.ad
    i32 2066, label %bb.ad
    i32 2069, label %bb.ad
    i32 2068, label %bb.ad
    i32 2045, label %bb.ad
    i32 2044, label %bb.ad
    i32 2047, label %bb.ad
    i32 2046, label %bb.ad
    i32 2048, label %bb.ad
    i32 2050, label %bb.ad
    i32 2049, label %bb.ad
    i32 2051, label %bb.ad
    i32 2053, label %bb.ad
    i32 2052, label %bb.ad
    i32 2055, label %bb.ad
    i32 2054, label %bb.ad
    i32 2001, label %bb.ad
    i32 2085, label %bb.bo
    i32 2087, label %bb.bo
    i32 2084, label %bb.bo
    i32 2086, label %bb.bo
    i32 2088, label %bb.bo
    i32 2090, label %bb.bo
    i32 2089, label %bb.bo
    i32 2091, label %bb.bo
    i32 2093, label %bb.bo
    i32 2092, label %bb.bo
    i32 2095, label %bb.bo
    i32 2094, label %bb.bo
    i32 2097, label %bb.bo
    i32 2096, label %bb.bo
    i32 2099, label %bb.bo
    i32 2098, label %bb.bo
    i32 2101, label %bb.bo
    i32 2100, label %bb.bo
    i32 2102, label %bb.bo
    i32 2104, label %bb.bo
    i32 2103, label %bb.bo
    i32 2105, label %bb.bo
    i32 2107, label %bb.bo
    i32 2106, label %bb.bo
    i32 2109, label %bb.bo
    i32 2108, label %bb.bo
    i32 2111, label %bb.bo
    i32 2110, label %bb.bo
    i32 2516, label %35
    i32 2408, label %35
    i32 2493, label %bb.ct
    i32 2476, label %bb.ct
    i32 2494, label %bb.ct
    i32 2467, label %bb.ct
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 1, ptr %i.j, align 8, !tbaa !31
  store i64 0, ptr %6, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.k, align 4, !tbaa !34
  %i.l = load i32, ptr %2, align 8
  %i.m = lshr i32 %i.l, 19
  %i.n = and i32 %i.m, 1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 6 uses
  %i.s = load i24, ptr %i.r, align 8
  %i.t = and i24 %i.s, 32768
  %.not183 = icmp eq i24 %i.t, 0
  br i1 %.not183, label %bb.c, label %_ZN4llvm5APIntD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.v = call i64 @_ZN5clang4Sema31VerifyIntegerConstantExpressionEPNS_4ExprEPN4llvm6APSIntENS_13AllowFoldKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.u, ptr noundef nonnull %i.r, ptr noundef nonnull %6, i32 noundef 0) #20 ; 0 uses
  %i.w = load i32, ptr %i.j, align 8, !tbaa !31   ; 7 uses
  %i.x = icmp ult i32 %i.w, 65
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = load i64, ptr %6, align 8, !tbaa !32
  %i.z = icmp eq i32 %i.w, 0
  %i.aa = sub nuw nsw i32 64, %i.w
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = shl i64 %i.y, %i.ab
  %i.ad = ashr exact i64 %i.ac, %i.ab
  br i1 %i.z, label %_ZNK4llvm5APInt12getSExtValueEv.exit.thread, label %_ZNK4llvm5APInt12getSExtValueEv.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %6, align 8, !tbaa !32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !38
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit

_ZNK4llvm5APInt12getSExtValueEv.exit:             ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.ad, %bb.d ], [ %i.af, %bb.e ]
  switch i64 %.0.i, label %_ZNK4llvm5APInt12getSExtValueEv.exit.thread [
    i64 1, label %bb.g
    i64 2, label %bb.g
    i64 4, label %bb.g
    i64 12, label %bb.f
    i64 16, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit, %_ZNK4llvm5APInt12getSExtValueEv.exit
  br i1 %i.h, label %bb.g, label %_ZNK4llvm5APInt12getSExtValueEv.exit.thread

_ZNK4llvm5APInt12getSExtValueEv.exit.thread:      ; preds = %bb.d, %bb.f, %_ZNK4llvm5APInt12getSExtValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ag = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.ah = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #21
  call void @_ZN5clang4Sema10targetDiagENS_14SourceLocationEjPKNS_12FunctionDeclE(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(18640) %i.ag, i32 %i.ah, i32 noundef 3002, ptr noundef null) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ai = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #21
  store i64 %i.ai, ptr %8, align 8
  %i.aj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ak = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.al = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #21
  call void @_ZN5clang4Sema10targetDiagENS_14SourceLocationEjPKNS_12FunctionDeclE(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %9, ptr noundef nonnull align 8 dereferenceable(18640) %i.ak, i32 %i.al, i32 noundef 5916, ptr noundef null) #20
  %i.am = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIbEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.an = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #21
  store i64 %i.an, ptr %10, align 8
  %i.ao = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.am, ptr noundef nonnull align 4 dereferenceable(8) %10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %.pre184 = load i32, ptr %i.j, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit.thread, %_ZNK4llvm5APInt12getSExtValueEv.exit, %_ZNK4llvm5APInt12getSExtValueEv.exit, %_ZNK4llvm5APInt12getSExtValueEv.exit, %bb.f
  %i.ap = phi i32 [ %i.w, %bb.f ], [ %.pre184, %_ZNK4llvm5APInt12getSExtValueEv.exit.thread ], [ %i.w, %_ZNK4llvm5APInt12getSExtValueEv.exit ], [ %i.w, %_ZNK4llvm5APInt12getSExtValueEv.exit ], [ %i.w, %_ZNK4llvm5APInt12getSExtValueEv.exit ]
  %.1 = phi i1 [ false, %bb.f ], [ true, %_ZNK4llvm5APInt12getSExtValueEv.exit.thread ], [ false, %_ZNK4llvm5APInt12getSExtValueEv.exit ], [ false, %_ZNK4llvm5APInt12getSExtValueEv.exit ], [ false, %_ZNK4llvm5APInt12getSExtValueEv.exit ] ; 3 uses
  %i.aq = icmp ugt i32 %i.ap, 64
  br i1 %i.aq, label %bb.h, label %_ZN4llvm5APIntD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %6, align 8, !tbaa !32    ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN4llvm5APIntD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #22
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.b, %bb.g, %bb.h, %bb.i
  %.1210 = phi i1 [ %.1, %bb.i ], [ %.1, %bb.g ], [ %.1, %bb.h ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.j:                                             ; preds = %bb.a
  br label %bb.cv

bb.k:                                             ; preds = %bb.a
  %i.at = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.au = call noundef zeroext i1 @_ZN5clang4Sema23BuiltinConstantArgRangeEPNS_8CallExprEjiib(ptr noundef nonnull align 8 dereferenceable(18640) %i.at, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 65535, i1 noundef zeroext true) #20
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i32 1, ptr %i.av, align 8, !tbaa !31
  store i64 0, ptr %11, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i8 0, ptr %i.aw, align 4, !tbaa !34
  %i.ax = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.ay = call noundef zeroext i1 @_ZN5clang4Sema18BuiltinConstantArgEPNS_8CallExprEjRN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ax, ptr noundef %2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(13) %11) #20 ; 2 uses
  br i1 %i.ay, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = call noundef zeroext i1 @_ZN5clang7Builtin30evaluateRequiredTargetFeaturesEN4llvm9StringRefERKNS1_9StringMapIbNS1_15MallocAllocatorEEE(ptr nonnull @.str.1, i64 11, ptr noundef nonnull align 8 dereferenceable(20) %5) #20
  %i.ba = load i32, ptr %i.av, align 8, !tbaa !31
  %i.bb = icmp ult i32 %i.ba, 65
  %i.bc = load ptr, ptr %11, align 8
  %.in.i.i = select i1 %i.bb, ptr %11, ptr %i.bc
  %i.bd = load i64, ptr %.in.i.i, align 8, !tbaa !32 ; 3 uses
  %i.be = icmp ugt i64 %i.bd, 2                   ; 2 uses
  br i1 %i.az, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.bf = and i64 %i.bd, 2
  %.not182 = icmp eq i64 %i.bf, 0
  %or.cond211.a = or i1 %.not182, %i.be
  br i1 %or.cond211.a, label %bb.o, label %bb.p

.critedge:                                        ; preds = %bb.m
  %.not181 = trunc i64 %i.bd to i1
  %or.cond212 = or i1 %i.be, %.not181
  br i1 %or.cond212, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge, %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bh = load i32, ptr %2, align 8
  %i.bi = lshr i32 %i.bh, 19
  %i.bj = and i32 %i.bi, 1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bn = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.bo = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #21
  call void @_ZN5clang4Sema10targetDiagENS_14SourceLocationEjPKNS_12FunctionDeclE(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(18640) %i.bn, i32 %i.bo, i32 noundef 6693, ptr noundef null) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.bp = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm) #21
  store i64 %i.bp, ptr %13, align 8
  %i.bq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 4 dereferenceable(8) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.br = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.bs = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #21
  call void @_ZN5clang4Sema10targetDiagENS_14SourceLocationEjPKNS_12FunctionDeclE(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %14, ptr noundef nonnull align 8 dereferenceable(18640) %i.br, i32 %i.bs, i32 noundef 5922, ptr noundef null) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.bt = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm) #21
  store i64 %i.bt, ptr %15, align 8
  %i.bu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef nonnull align 4 dereferenceable(8) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %bb.n, %bb.o, %bb.l
  %i.bv = load i32, ptr %i.av, align 8, !tbaa !31
  %i.bw = icmp ugt i32 %i.bv, 64
  br i1 %i.bw, label %bb.q, label %_ZN4llvm5APIntD2Ev.exit116

bb.q:                                             ; preds = %bb.p
  %i.bx = load ptr, ptr %11, align 8, !tbaa !32   ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN4llvm5APIntD2Ev.exit116, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #22
  br label %_ZN4llvm5APIntD2Ev.exit116

_ZN4llvm5APIntD2Ev.exit116:                       ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.s:                                             ; preds = %bb.a
  %i.bz = call noundef zeroext i1 @_ZN5clang10SemaAMDGPU23checkMovDPPFunctionCallEPNS_8CallExprEjj(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef %2, i32 noundef 5, i32 noundef 1)
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.t:                                             ; preds = %bb.a
  %i.ca = call noundef zeroext i1 @_ZN5clang10SemaAMDGPU23checkMovDPPFunctionCallEPNS_8CallExprEjj(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef %2, i32 noundef 2, i32 noundef 1)
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

end_hunk_0
begin_hunk_1_@_ZN5clang10SemaAMDGPU30CheckAMDGCNBuiltinFunctionCallEjPNS_8CallExprE:bb.a
  %i.hv = add i32 %i.fi, -2
  %i.hw = call noundef zeroext i1 @_ZN5clang4Sema18BuiltinConstantArgEPNS_8CallExprEjRN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(18640) %i.hu, ptr noundef nonnull %2, i32 noundef %i.hv, ptr noundef nonnull align 8 dereferenceable(13) %18) #20
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNK5clang8CallExpr11getBeginLocEv.exit129, %bb.bk, %.critedge113, %bb.bj, %bb.ar, %bb.as
  %.4 = phi i1 [ true, %bb.ar ], [ true, %bb.as ], [ true, %_ZNK5clang8CallExpr11getBeginLocEv.exit129 ], [ true, %.critedge113 ], [ true, %bb.bj ], [ %i.hw, %bb.bk ]
  %i.hx = load i32, ptr %i.fk, align 8, !tbaa !31
  %i.hy = icmp ugt i32 %i.hx, 64
  br i1 %i.hy, label %bb.bm, label %_ZN4llvm5APIntD2Ev.exit130

bb.bm:                                            ; preds = %bb.bl
  %i.hz = load ptr, ptr %18, align 8, !tbaa !32   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %_ZN4llvm5APIntD2Ev.exit130, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZdaPv(ptr noundef nonnull %i.hz) #22
  br label %_ZN4llvm5APIntD2Ev.exit130

_ZN4llvm5APIntD2Ev.exit130:                       ; preds = %bb.bl, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.bo:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ib = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 17784
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !441, !nonnull !24, !align !25
  %i.ie = call noundef ptr @_ZNK5clang7Builtin7Context19getRequiredFeaturesEj(ptr noundef nonnull align 8 dereferenceable(176) %i.id, i32 noundef %1) #20 ; 5 uses
  %.not.i131 = icmp eq ptr %i.ie, null
  br i1 %.not.i131, label %_ZN4llvm9StringRefC2EPKc.exit133, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.if = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ie) #20
  br label %_ZN4llvm9StringRefC2EPKc.exit133

_ZN4llvm9StringRefC2EPKc.exit133:                 ; preds = %bb.bo, %bb.bp
  %.sroa.0.0.i132 = phi i64 [ %i.if, %bb.bp ], [ 0, %bb.bo ] ; 3 uses
  %i.ig = call noundef zeroext i1 @_ZN5clang7Builtin30evaluateRequiredTargetFeaturesEN4llvm9StringRefERKNS1_9StringMapIbNS1_15MallocAllocatorEEE(ptr %i.ie, i64 %.sroa.0.0.i132, ptr noundef nonnull align 8 dereferenceable(20) %5) #20
  br i1 %i.ig, label %bb.cc, label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.ih = load i32, ptr %2, align 8               ; 4 uses
  %i.ii = and i32 %i.ih, 16777216
  %.not.i134 = icmp eq i32 %i.ii, 0
  br i1 %.not.i134, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !442
  br label %_ZNK5clang8CallExpr11getBeginLocEv.exit140

bb.bs:                                            ; preds = %bb.bq
  %i.il = and i32 %i.ih, 8388608
  %.not5.i136 = icmp eq i32 %i.il, 0
  br i1 %.not5.i136, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.in = lshr i32 %i.ih, 19
  %i.io = and i32 %i.in, 1
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !36
  %i.is = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ir) #21 ; 2 uses
  %.not6.i137 = icmp eq i32 %i.is, 0
  br i1 %.not6.i137, label %bb.bu, label %_ZNK5clang8CallExpr11getBeginLocEv.exit140

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !444
  %i.iv = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iu) #21 ; 2 uses
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.bv, label %_ZNK5clang8CallExpr11getBeginLocEv.exit140

bb.bv:                                            ; preds = %bb.bu
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !47
  %.not1.i138 = icmp eq i32 %i.iy, 0
  br i1 %.not1.i138, label %_ZNK5clang8CallExpr11getBeginLocEv.exit140, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ja = lshr i32 %i.ih, 19
  %i.jb = and i32 %i.ja, 1
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jc
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !36 ; 2 uses
  %.not2.i139 = icmp eq ptr %i.je, null
  br i1 %.not2.i139, label %_ZNK5clang8CallExpr11getBeginLocEv.exit140, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jf = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.je) #21
  br label %_ZNK5clang8CallExpr11getBeginLocEv.exit140

_ZNK5clang8CallExpr11getBeginLocEv.exit140:       ; preds = %bb.br, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx
  %.sroa.0.0.i135 = phi i32 [ %i.is, %bb.bt ], [ 0, %bb.bv ], [ 0, %bb.bw ], [ %i.jf, %bb.bx ], [ %i.iv, %bb.bu ], [ %i.ik, %bb.br ]
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.0.0.i135, i32 noundef 706) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.jg = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.0.0.copyload.i141 = load i64, ptr %i.jg, align 8, !tbaa !38
  store i64 %.sroa.0.0.copyload.i141, ptr %21, align 8
  %i.jh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %20, ptr noundef nonnull align 8 dereferenceable(8) %21) ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 120
  %i.jj = load i8, ptr %i.ji, align 8, !tbaa !446, !range !447, !noundef !24
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZNK5clang8CallExpr11getBeginLocEv.exit140
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.jl, ptr %i.ie, i64 %.sroa.0.0.i132)
  br label %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit151

bb.bz:                                            ; preds = %_ZNK5clang8CallExpr11getBeginLocEv.exit140
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 128
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 132
  %i.jo = load i8, ptr %i.jn, align 4, !tbaa !449, !range !447, !noundef !24
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %bb.ca, label %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit151

bb.ca:                                            ; preds = %bb.bz
  %i.jq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.jh) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !458 ; 3 uses
  %.not.i.i142 = icmp eq ptr %i.js, null
  br i1 %.not.i.i142, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i143, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !460
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = call noundef ptr %i.jv(ptr noundef nonnull align 8 dereferenceable(168) %i.js) #20, !inline_history !0
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i143

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i143: ; preds = %bb.cb, %bb.ca
  %i.jx = phi ptr [ %i.jw, %bb.cb ], [ null, %bb.ca ]
  store ptr %i.jx, ptr %3, align 8, !tbaa !462
  %i.jy = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.jq, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.fca.0.extract.i.i144 = extractvalue { ptr, i8 } %i.jy, 0
  %i.jz = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i144, i64 8
  %i.ka = load i32, ptr %i.jm, align 8, !tbaa !442
  %i.kb = zext i32 %i.ka to i64
  %i.kc = load ptr, ptr %i.jz, align 8, !tbaa !465
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %i.kc, i64 %i.kb
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.ke, ptr %i.ie, i64 %.sroa.0.0.i132)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit151

_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit151: ; preds = %bb.by, %bb.bz, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.cc:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit133
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !47 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.kh = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store i32 1, ptr %i.kh, align 8, !tbaa !31
  store i64 0, ptr %22, align 8, !tbaa !32
  %i.ki = getelementptr inbounds nuw i8, ptr %22, i64 12
  store i8 0, ptr %i.ki, align 4, !tbaa !34
  %i.kj = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.kk = call noundef zeroext i1 @_ZN5clang4Sema23BuiltinConstantArgRangeEPNS_8CallExprEjiib(ptr noundef nonnull align 8 dereferenceable(18640) %i.kj, ptr noundef %2, i32 noundef 1, i32 noundef 0, i32 noundef 15, i1 noundef zeroext true) #20
  br i1 %i.kk, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kl = add i32 %i.kg, -1
  %i.km = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.kn = call noundef zeroext i1 @_ZN5clang4Sema18BuiltinConstantArgEPNS_8CallExprEjRN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(18640) %i.km, ptr noundef nonnull %2, i32 noundef %i.kl, ptr noundef nonnull align 8 dereferenceable(13) %22) #20
  br i1 %i.kn, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ko = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.kp = add i32 %i.kg, -2
  %i.kq = call noundef zeroext i1 @_ZN5clang4Sema18BuiltinConstantArgEPNS_8CallExprEjRN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ko, ptr noundef nonnull %2, i32 noundef %i.kp, ptr noundef nonnull align 8 dereferenceable(13) %22) #20
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.kr = phi i1 [ true, %bb.cd ], [ true, %bb.cc ], [ %i.kq, %bb.ce ]
  %i.ks = load i32, ptr %i.kh, align 8, !tbaa !31
  %i.kt = icmp ugt i32 %i.ks, 64
  br i1 %i.kt, label %bb.cg, label %_ZN4llvm5APIntD2Ev.exit152

bb.cg:                                            ; preds = %bb.cf
  %i.ku = load ptr, ptr %22, align 8, !tbaa !32   ; 2 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %_ZN4llvm5APIntD2Ev.exit152, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZdaPv(ptr noundef nonnull %i.ku) #22
  br label %_ZN4llvm5APIntD2Ev.exit152

_ZN4llvm5APIntD2Ev.exit152:                       ; preds = %bb.cf, %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

35:                                               ; preds = %bb.a, %bb.a
  switch i32 %1, label %._crit_edge [
    i32 2516, label %bb.ci
    i32 2408, label %bb.ck
  ]

._crit_edge:                                      ; preds = %35
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %bb.cm

bb.ci:                                            ; preds = %35
  %i.kw = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.kx = call noundef zeroext i1 @_ZN5clang4Sema18checkArgCountRangeEPNS_8CallExprEjj(ptr noundef nonnull align 8 dereferenceable(18640) %i.kw, ptr noundef %2, i32 noundef 7, i32 noundef 8) #20
  br i1 %i.kx, label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !47 ; 2 uses
  %i.la = icmp eq i32 %i.kz, 7
  br i1 %i.la, label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit, label %bb.cm

bb.ck:                                            ; preds = %35
  %i.lb = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.lc = call noundef zeroext i1 @_ZN5clang4Sema18checkArgCountRangeEPNS_8CallExprEjj(ptr noundef nonnull align 8 dereferenceable(18640) %i.lb, ptr noundef %2, i32 noundef 8, i32 noundef 9) #20
  br i1 %i.lc, label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !47 ; 2 uses
  %i.lf = icmp eq i32 %i.le, 8
  br i1 %i.lf, label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge, %bb.cl, %bb.cj
  %36 = phi i32 [ %.pre, %._crit_edge ], [ %i.le, %bb.cl ], [ %i.kz, %bb.cj ]
  %i.lg = add i32 %36, -1
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.li = load i32, ptr %2, align 8
  %i.lj = lshr i32 %i.li, 19
  %i.lk = and i32 %i.lj, 1
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.ll
  %i.ln = zext i32 %i.lg to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.ln
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.lq = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i32 1, ptr %i.lq, align 8, !tbaa !31
  store i64 0, ptr %23, align 8, !tbaa !32
  %i.lr = getelementptr inbounds nuw i8, ptr %23, i64 12
  store i8 0, ptr %i.lr, align 4, !tbaa !34
  %i.ls = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.lt = call i64 @_ZN5clang4Sema31VerifyIntegerConstantExpressionEPNS_4ExprEPN4llvm6APSIntENS_13AllowFoldKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ls, ptr noundef %i.lp, ptr noundef nonnull %23, i32 noundef 0) #20
  %spec.select.i153 = icmp ugt i64 %i.lt, 1
  br i1 %spec.select.i153, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %.sroa.0.0.copyload.i154 = load i64, ptr %i.lu, align 8, !tbaa !32 ; 2 uses
  %i.lv = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 232
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !1114, !nonnull !24, !align !25
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 18904
  %.sroa.0.0.copyload.i155 = load i64, ptr %i.ly, align 8, !tbaa !32 ; 3 uses
  %i.lz = and i64 %.sroa.0.0.copyload.i154, -16
  %i.ma = inttoptr i64 %i.lz to ptr
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !32
  %i.md = and i64 %.sroa.0.0.copyload.i154, 7
  %i.me = or i64 %i.mc, %i.md
  %i.mf = and i64 %.sroa.0.0.copyload.i155, -16
  %i.mg = inttoptr i64 %i.mf to ptr
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !32
  %i.mj = and i64 %.sroa.0.0.copyload.i155, 7
  %i.mk = or i64 %i.mi, %i.mj
  %i.ml = icmp eq i64 %i.me, %i.mk
  br i1 %i.ml, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.mm = ptrtoint ptr %i.lp to i64
  store i64 %i.mm, ptr %24, align 8, !tbaa !1221
  %i.mn = call noundef i32 @_ZN5clang4Sema32CheckSingleAssignmentConstraintsENS_8QualTypeERNS_12ActionResultIPNS_4ExprELb1EEEbbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.lv, i64 %.sroa.0.0.copyload.i155, ptr noundef nonnull align 8 dereferenceable(8) %24, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) #20 ; 0 uses
  %i.mo = load i64, ptr %24, align 8, !tbaa !1221
  %i.mp = icmp eq i64 %i.mo, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br i1 %i.mp, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cm, %bb.co, %bb.cp
  %.8 = phi i1 [ true, %bb.co ], [ false, %bb.cp ], [ true, %bb.cm ]
  %i.mq = load i32, ptr %i.lq, align 8, !tbaa !31
  %i.mr = icmp ugt i32 %i.mq, 64
  br i1 %i.mr, label %bb.cr, label %_ZN4llvm5APIntD2Ev.exit157

bb.cr:                                            ; preds = %bb.cq
  %i.ms = load ptr, ptr %23, align 8, !tbaa !32   ; 2 uses
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %_ZN4llvm5APIntD2Ev.exit157, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_ZdaPv(ptr noundef nonnull %i.ms) #22
  br label %_ZN4llvm5APIntD2Ev.exit157

_ZN4llvm5APIntD2Ev.exit157:                       ; preds = %bb.cq, %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.ct:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.mu = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.mv = call noundef zeroext i1 @_ZN5clang4Sema23BuiltinConstantArgRangeEPNS_8CallExprEjiib(ptr noundef nonnull align 8 dereferenceable(18640) %i.mu, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true) #20
  br i1 %i.mv, label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mw = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.mx = call noundef zeroext i1 @_ZN5clang4Sema23BuiltinConstantArgRangeEPNS_8CallExprEjiib(ptr noundef nonnull align 8 dereferenceable(18640) %i.mw, ptr noundef %2, i32 noundef 2, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true) #20
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.cv:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.j
  %.0107 = phi i64 [ 1, %bb.j ], [ 3, %bb.a ], [ 3, %bb.a ], [ 3, %bb.a ], [ 3, %bb.a ]
  %.0106 = phi i64 [ 0, %bb.j ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ], [ 2, %bb.a ]
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.mz = load i32, ptr %2, align 8
  %i.na = lshr i32 %i.mz, 19
  %i.nb = and i32 %i.na, 1
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.nc
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %.0106
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !36
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = and i64 %i.ng, -2
  %i.ni = inttoptr i64 %i.nh to ptr               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  store i8 0, ptr %25, align 8, !tbaa !1117
  %i.nj = getelementptr inbounds nuw i8, ptr %25, i64 1
  store i8 0, ptr %i.nj, align 1, !tbaa !1118
  %i.nk = getelementptr inbounds nuw i8, ptr %25, i64 2
  store i8 0, ptr %i.nk, align 2, !tbaa !1119
  %i.nl = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr null, ptr %i.nl, align 8, !tbaa !1120
  %i.nm = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store i32 0, ptr %i.nm, align 8, !tbaa !1124
  %i.nn = getelementptr inbounds nuw i8, ptr %25, i64 20 ; 2 uses
  %i.no = load i8, ptr %i.nn, align 4
  %i.np = and i8 %i.no, -2
  store i8 %i.np, ptr %i.nn, align 4
  %i.nq = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %i.nr = call noundef zeroext i1 @_ZNK5clang4Expr13EvaluateAsIntERNS0_10EvalResultERKNS_10ASTContextENS0_15SideEffectsKindEb(ptr noundef nonnull align 8 dereferenceable(16) %i.ni, ptr noundef nonnull align 8 dereferenceable(72) %25, ptr noundef nonnull align 8 dereferenceable(23904) %i.nq, i32 noundef 0, i1 noundef zeroext false) #20
  br i1 %i.nr, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.ns = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ni) #21
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %i.ns, i32 noundef 5396) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %.sroa.0.0.copyload.i158 = load i64, ptr %i.nt, align 8, !tbaa !32
  store i64 %.sroa.0.0.copyload.i158, ptr %27, align 8
  %i.nu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_8QualTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %26, ptr noundef nonnull align 8 dereferenceable(8) %27)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 120
  %i.nw = load i8, ptr %i.nv, align 8, !tbaa !446, !range !447, !noundef !24
  %i.nx = trunc nuw i8 %i.nw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.df

bb.cx:                                            ; preds = %bb.cv
  %i.ny = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !31
  %i.ob = icmp ult i32 %i.oa, 65
  %i.oc = load ptr, ptr %i.ny, align 8
  %spec.select.i159 = select i1 %i.ob, ptr %i.ny, ptr %i.oc
  %.0.i160 = load i64, ptr %spec.select.i159, align 8, !tbaa !32 ; 2 uses
  %i.od = icmp ult i64 %.0.i160, 6
  br i1 %i.od, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.oe = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ni) #21
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %i.oe, i32 noundef 6729) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4, !tbaa !442
  %i.of = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %28, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.og = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ni) #21
  store i64 %i.og, ptr %29, align 8
  %i.oh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.of, ptr noundef nonnull align 4 dereferenceable(8) %29)
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 120
  %i.oj = load i8, ptr %i.oi, align 8, !tbaa !446, !range !447, !noundef !24
  %i.ok = trunc nuw i8 %i.oj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.df

bb.cz:                                            ; preds = %bb.cx
  %switch = icmp samesign ult i64 %.0.i160, 2
  %i.ol = icmp eq i32 %1, 1933
  %or.cond = and i1 %i.ol, %switch
  br i1 %or.cond, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  %i.om = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ni) #21
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %i.om, i32 noundef 6729) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4, !tbaa !442
  %i.on = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %30, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %i.oo = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ni) #21
  store i64 %i.oo, ptr %31, align 8
  %i.op = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.on, ptr noundef nonnull align 4 dereferenceable(8) %31)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 120
  %i.or = load i8, ptr %i.oq, align 8, !tbaa !446, !range !447, !noundef !24
  %i.os = trunc nuw i8 %i.or to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %bb.df

bb.db:                                            ; preds = %bb.cz
  %i.ot = load i32, ptr %2, align 8
  %i.ou = lshr i32 %i.ot, 19
  %i.ov = and i32 %i.ou, 1
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.ow
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %.0107
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !36
  %i.pa = ptrtoint ptr %i.oz to i64
end_hunk_1

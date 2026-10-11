Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaAMDGPU?download=true
inline.NumInlined: 1926
inline.NumDeleted: 1059
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang10SemaAMDGPU30CheckAMDGCNBuiltinFunctionCallEjPNS_8CallExprE:bb.a
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
    i32 2516, label %bb.ci
    i32 2408, label %bb.ci
    i32 2493, label %bb.cu
    i32 2476, label %bb.cu
    i32 2494, label %bb.cu
    i32 2467, label %bb.cu
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
  br label %bb.cw

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
  %35 = icmp ugt i64 %i.bd, 2                     ; 2 uses
  br i1 %i.az, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.be = and i64 %i.bd, 2
  %.not182 = icmp eq i64 %i.be, 0
  %or.cond211 = or i1 %.not182, %35
  br i1 %or.cond211, label %bb.o, label %bb.p

.critedge:                                        ; preds = %bb.m
  %.not181 = trunc i64 %i.bd to i1
  %or.cond212 = or i1 %35, %.not181
  br i1 %or.cond212, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bg = load i32, ptr %2, align 8
  %i.bh = lshr i32 %i.bg, 19
  %i.bi = and i32 %i.bh, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bm = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.bn = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #21
  call void @_ZN5clang4Sema10targetDiagENS_14SourceLocationEjPKNS_12FunctionDeclE(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(18640) %i.bm, i32 %i.bn, i32 noundef 6693, ptr noundef null) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.bo = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #21
  store i64 %i.bo, ptr %13, align 8
  %i.bp = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 4 dereferenceable(8) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.bq = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.br = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #21
  call void @_ZN5clang4Sema10targetDiagENS_14SourceLocationEjPKNS_12FunctionDeclE(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %14, ptr noundef nonnull align 8 dereferenceable(18640) %i.bq, i32 %i.br, i32 noundef 5922, ptr noundef null) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.bs = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #21
  store i64 %i.bs, ptr %15, align 8
  %i.bt = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef nonnull align 4 dereferenceable(8) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %bb.n, %bb.o, %bb.l
  %i.bu = load i32, ptr %i.av, align 8, !tbaa !31
  %i.bv = icmp ugt i32 %i.bu, 64
  br i1 %i.bv, label %bb.q, label %_ZN4llvm5APIntD2Ev.exit116

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %11, align 8, !tbaa !32   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN4llvm5APIntD2Ev.exit116, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #22
  br label %_ZN4llvm5APIntD2Ev.exit116

_ZN4llvm5APIntD2Ev.exit116:                       ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.s:                                             ; preds = %bb.a
  %i.by = call noundef zeroext i1 @_ZN5clang10SemaAMDGPU23checkMovDPPFunctionCallEPNS_8CallExprEjj(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef %2, i32 noundef 5, i32 noundef 1)
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.t:                                             ; preds = %bb.a
  %i.bz = call noundef zeroext i1 @_ZN5clang10SemaAMDGPU23checkMovDPPFunctionCallEPNS_8CallExprEjj(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef %2, i32 noundef 2, i32 noundef 1)
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.u:                                             ; preds = %bb.a
  %i.ca = call noundef zeroext i1 @_ZN5clang10SemaAMDGPU23checkMovDPPFunctionCallEPNS_8CallExprEjj(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef %2, i32 noundef 6, i32 noundef 2)
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.v:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.cb = load ptr, ptr %0, align 8, !tbaa !23, !nonnull !24, !align !25
  %i.cc = call noundef zeroext i1 @_ZN5clang4Sema23BuiltinConstantArgRangeEPNS_8CallExprEjiib(ptr noundef nonnull align 8 dereferenceable(18640) %i.cb, ptr noundef %2, i32 noundef 2, i32 noundef 0, i32 noundef 15, i1 noundef zeroext true) #20
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.w:                                             ; preds = %bb.a
  %i.cd = call noundef zeroext i1 @_ZN5clang10SemaAMDGPU16checkAVLoadStoreEPNS_8CallExprEb(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef %2, i1 zeroext poison)
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.x:                                             ; preds = %bb.a
  %i.ce = call noundef zeroext i1 @_ZN5clang10SemaAMDGPU16checkAVLoadStoreEPNS_8CallExprEb(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef %2, i1 zeroext poison)
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.y:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.cf = call noundef zeroext i1 @_ZN5clang10SemaAMDGPU27checkCoopAtomicFunctionCallEPNS_8CallExprEb(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef %2, i1 noundef zeroext false)
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.z:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.cg = call noundef zeroext i1 @_ZN5clang10SemaAMDGPU27checkCoopAtomicFunctionCallEPNS_8CallExprEb(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef %2, i1 noundef zeroext true)
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.aa:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ci = load i32, ptr %2, align 8
  %i.cj = lshr i32 %i.ci, 19
  %i.ck = and i32 %i.cj, 1
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !36 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !47
  %i.cr = add i32 %i.cq, -1
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !36 ; 2 uses
  %i.cv = load i24, ptr %i.co, align 8
  %i.cw = and i24 %i.cv, 131072
  %.not.i = icmp eq i24 %i.cw, 0
  br i1 %.not.i, label %bb.ab, label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cx = load i24, ptr %i.cu, align 8
  %i.cy = and i24 %i.cx, 131072
  %.not10.i = icmp eq i24 %i.cy, 0
  br i1 %.not10.i, label %bb.ac, label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cz = call noundef zeroext i1 @_ZN5clang10SemaAMDGPU26checkAtomicOrderingCABIArgEPNS_4ExprEbb(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull %i.co, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.da = call fastcc noundef zeroext i1 @_ZN5clangL15checkScopeAsIntERNS_10SemaAMDGPUEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull %i.cu)
  %i.db = or i1 %i.cz, %i.da
  br label %_ZN5clang10SemaAMDGPU22checkAtomicMonitorLoadEPNS_8CallExprE.exit

bb.ad:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.dc = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 17784
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !441, !nonnull !24, !align !25
  %i.df = call noundef ptr @_ZNK5clang7Builtin7Context19getRequiredFeaturesEj(ptr noundef nonnull align 8 dereferenceable(176) %i.de, i32 noundef %1) #20 ; 5 uses
  %.not.i118 = icmp eq ptr %i.df, null
  br i1 %.not.i118, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.df) #20
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.ad, %bb.ae
  %.sroa.0.0.i = phi i64 [ %i.dg, %bb.ae ], [ 0, %bb.ad ] ; 3 uses
  %i.dh = call noundef zeroext i1 @_ZN5clang7Builtin30evaluateRequiredTargetFeaturesEN4llvm9StringRefERKNS1_9StringMapIbNS1_15MallocAllocatorEEE(ptr %i.df, i64 %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(20) %5) #20
  br i1 %i.dh, label %bb.ar, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.di = load i32, ptr %2, align 8               ; 4 uses
  %i.dj = and i32 %i.di, 16777216
  %.not.i119 = icmp eq i32 %i.dj, 0
  br i1 %.not.i119, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !442
  br label %_ZNK5clang8CallExpr11getBeginLocEv.exit

bb.ah:                                            ; preds = %bb.af
  %i.dm = and i32 %i.di, 8388608
  %.not5.i.a = icmp eq i32 %i.dm, 0
  br i1 %.not5.i.a, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.do = lshr i32 %i.di, 19
  %i.dp = and i32 %i.do, 1
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !36
  %i.dt = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #21 ; 2 uses
  %.not6.i = icmp eq i32 %i.dt, 0
  br i1 %.not6.i, label %bb.aj, label %_ZNK5clang8CallExpr11getBeginLocEv.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !444
  %i.dw = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dv) #21 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.ak, label %_ZNK5clang8CallExpr11getBeginLocEv.exit

bb.ak:                                            ; preds = %bb.aj
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !47
  %.not1.i.a = icmp eq i32 %i.dz, 0
  br i1 %.not1.i.a, label %_ZNK5clang8CallExpr11getBeginLocEv.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eb = lshr i32 %i.di, 19
  %i.ec = and i32 %i.eb, 1
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !36 ; 2 uses
  %.not2.i = icmp eq ptr %i.ef, null
  br i1 %.not2.i, label %_ZNK5clang8CallExpr11getBeginLocEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eg = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ef) #21
  br label %_ZNK5clang8CallExpr11getBeginLocEv.exit

_ZNK5clang8CallExpr11getBeginLocEv.exit:          ; preds = %bb.ag, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am
  %.sroa.0.0.i120 = phi i32 [ %i.dt, %bb.ai ], [ 0, %bb.ak ], [ 0, %bb.al ], [ %i.eg, %bb.am ], [ %i.dw, %bb.aj ], [ %i.dl, %bb.ag ]
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.0.0.i120, i32 noundef 706) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.eh, align 8, !tbaa !38
  store i64 %.sroa.0.0.copyload.i, ptr %17, align 8
  %i.ei = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %16, ptr noundef nonnull align 8 dereferenceable(8) %17) ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 120
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !446, !range !447, !noundef !24
  %i.el = trunc nuw i8 %i.ek to i1
end_hunk_0

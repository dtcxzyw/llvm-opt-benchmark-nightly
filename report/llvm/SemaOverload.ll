Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOverload?download=true
inline.NumInlined: 15476
inline.NumDeleted: 6061
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_:bb.a
  %i.ah = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !554
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1433
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i8, ptr %1, align 1, !tbaa !1250, !range !86, !noundef !87
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !559 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIbvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !560
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !559
  br label %_ZNK5clang17PartialDiagnosticlsIbvEERKS0_OT_.exit

_ZNK5clang17PartialDiagnosticlsIbvEERKS0_OT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.au = zext nneg i8 %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.at, align 8, !tbaa !1412
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 2, ptr %i.ay, align 1, !tbaa !75
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !559 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !1412 ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !1412
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIbvEERKS0_OT_.exit, %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIbvEERKS1_OT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang20OverloadCandidateSet14NoteCandidatesERNS_4SemaEN4llvm8ArrayRefIPNS_4ExprEEENS4_IPNS_17OverloadCandidateEEENS3_9StringRefENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(7844) %0, ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr nofree readonly captures(none) %2, i64 %3, ptr %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::StringRef") align 8 captures(none) %6, i32 %7) local_unnamed_addr #5 align 2 {
bb.a:
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %15 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %18 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %19 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %20 = alloca %"class.llvm::SmallVector.1270", align 8 ; 6 uses
  %21 = alloca %"class.llvm::function_ref.1275", align 8 ; 5 uses
  %22 = alloca %class.anon.1528, align 1          ; 3 uses
  %23 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %24 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %27 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %29 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 10 uses
  %30 = alloca %"class.clang::PartialDiagnostic", align 8 ; 6 uses
  %31 = alloca %"class.clang::QualType", align 8  ; 7 uses
  %32 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %33 = alloca %"class.clang::ConstraintSatisfaction", align 8 ; 15 uses
  %34 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %35 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %36 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %38 = alloca %"class.llvm::raw_string_ostream", align 8 ; 12 uses
  %39 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 10 uses
  %40 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 10 uses
  %i.j = alloca i32, align 4                      ; 3 uses
  %41 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %42 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %44 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %45 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %46 = alloca %"class.clang::Qualifiers", align 8 ; 4 uses
  %47 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %48 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %50 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %51 = alloca %"class.clang::ConstraintSatisfaction", align 8 ; 15 uses
  %52 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %.idx = shl i64 %5, 3                           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %.not143 = icmp eq i64 %5, 0
  br i1 %.not143, label %_ZN5clang17DiagnosticsEngine23overloadCandidatesShownEj.exit69, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !1490, !nonnull !87, !align !500
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1522
  %i.z = icmp eq i32 %i.y, 1
  %i.aa = trunc i64 %3 to i32                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2956
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7840
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 20 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %51, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %51, i64 28
  %i.an = getelementptr inbounds nuw i8, ptr %51, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %51, i64 129
  %i.ap = getelementptr inbounds nuw i8, ptr %51, i64 136 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %51, i64 152 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %51, i64 144
  %i.as = getelementptr inbounds nuw i8, ptr %51, i64 148
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %38, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %38, i64 44
  %i.bb = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %40, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %40, i64 128
  %i.bf = getelementptr inbounds nuw i8, ptr %40, i64 132
  %i.bg = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %39, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %39, i64 128
  %i.bk = getelementptr inbounds nuw i8, ptr %39, i64 132
  %i.bl = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %39, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %33, i64 28
  %i.bs = getelementptr inbounds nuw i8, ptr %33, i64 128
  %i.bt = getelementptr inbounds nuw i8, ptr %33, i64 129
  %i.bu = getelementptr inbounds nuw i8, ptr %33, i64 136 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %33, i64 152 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %33, i64 144
  %i.bx = getelementptr inbounds nuw i8, ptr %33, i64 148
  %i.by = getelementptr inbounds nuw i8, ptr %30, i64 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 10 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %29, i64 120
  %i.ch = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.ci = getelementptr inbounds nuw i8, ptr %29, i64 132
  %i.cj = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %27, i64 120
  %i.cm = getelementptr inbounds nuw i8, ptr %27, i64 128
  %i.cn = getelementptr inbounds nuw i8, ptr %27, i64 132
  %i.co = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.cq = add i64 %.idx, 34359738360
  %i.cr = lshr exact i64 %i.cq, 3
  %i.cs = trunc i64 %i.cr to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.eo
  %.0146 = phi i1 [ false, %.lr.ph ], [ %.3.ph, %bb.eo ] ; 12 uses
  %.041145 = phi i32 [ 0, %.lr.ph ], [ %i.db, %bb.eo ] ; 3 uses
  %.044144 = phi ptr [ %4, %.lr.ph ], [ %i.aeq, %bb.eo ] ; 3 uses
  %i.ct = load ptr, ptr %.044144, align 8, !tbaa !1468 ; 41 uses
  %i.cu = load ptr, ptr %i.u, align 8, !tbaa !1490, !nonnull !87, !align !500 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !1522
  %i.cx = icmp eq i32 %i.cw, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cz = load i32, ptr %i.cy, align 8
  %.0.i = select i1 %i.cx, i32 2147483647, i32 %i.cz
  %i.da = icmp uge i32 %.041145, %.0.i
  %or.cond = and i1 %i.z, %i.da
  br i1 %or.cond, label %_ZL21NoteFunctionCandidateRN5clang4SemaEPNS_17OverloadCandidateEjbNS_6LangASE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.db = add i32 %.041145, 1
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !1477 ; 34 uses
  %.not47 = icmp eq ptr %i.dc, null
  br i1 %.not47, label %bb.cp, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dd = load i32, ptr %i.ab, align 4, !tbaa !1329
  %i.de = icmp eq i32 %i.dd, 4                    ; 2 uses
  %i.df = load i32, ptr %i.ac, align 8, !tbaa !1451
  %i.dg = call fastcc noundef zeroext i1 @_ZL36shouldSkipNotingLambdaConversionDeclPKN5clang12FunctionDeclE(ptr noundef nonnull %i.dc)
  br i1 %i.dg, label %bb.eo, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dh = load ptr, ptr %i.ad, align 8, !tbaa !1252, !nonnull !87, !align !500
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = and i64 %i.dj, 4611686018427387904
  %.not.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 28
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = and i32 %i.dm, 512
  %.not130.i = icmp eq i32 %i.dn, 0
  br i1 %.not130.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = and i32 %i.dp, 261120
  %.not73.i = icmp eq i32 %i.dq, 2048
  br i1 %.not73.i, label %bb.h, label %bb.eo

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ct, i64 104 ; 6 uses
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = and i32 %i.ds, 16
  %.not74.i = icmp eq i32 %i.dt, 0
  br i1 %.not74.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.du = call noundef zeroext i1 @_ZNK5clang12FunctionDecl37hasCXXExplicitFunctionObjectParameterEv(ptr noundef nonnull align 8 dereferenceable(168) %i.dc) #28
  br i1 %i.du, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = and i32 %i.dw, 57344
  %i.dy = icmp eq i32 %i.dx, 16384
  br i1 %i.dy, label %bb.k, label %bb.eo

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.dz = load i32, ptr %i.dr, align 8            ; 6 uses
  %i.ea = and i32 %i.dz, 1
  %.not75.i = icmp eq i32 %i.ea, 0
  br i1 %.not75.i, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eb = load ptr, ptr %i.dc, align 8, !tbaa !1264
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef ptr %i.ed(ptr noundef nonnull align 8 dereferenceable(168) %i.dc) #28, !inline_history !1986
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 8) ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = and i32 %i.eg, 4194304
  %.not131.i = icmp eq i32 %i.eh, 0
  br i1 %.not131.i, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  store ptr %i.ae, ptr %43, align 8, !tbaa !1523
  store i64 0, ptr %i.af, align 8, !tbaa !1447
  store i8 0, ptr %i.ae, align 8, !tbaa !75
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ei, align 8
  %i.ej = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load i32, ptr %i.dr, align 8
  %i.em = lshr i32 %i.el, 8
  %i.en = and i32 %i.em, 3
  %i.eo = call fastcc i64 @_ZN12_GLOBAL__N_125ClassifyOverloadCandidateERN5clang4SemaEPKNS0_9NamedDeclEPKNS0_12FunctionDeclENS0_28OverloadCandidateRewriteKindERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.ek, ptr noundef %i.dc, i32 noundef %i.en, ptr noundef nonnull align 8 dereferenceable(32) %43) ; 2 uses
  %.sroa.011.0.extract.trunc.i = trunc i64 %i.eo to i32
  %.sroa.412.0.extract.shift.i = lshr i64 %i.eo, 32
  %.sroa.412.0.extract.trunc.i = trunc nuw nsw i64 %.sroa.412.0.extract.shift.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ep, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %44, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.sroa.0.0.copyload.i.i, i32 noundef 6404) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  store i32 %.sroa.011.0.extract.trunc.i, ptr %i.l, align 4, !tbaa !554
  %i.eq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %44, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28
  store i32 %.sroa.412.0.extract.trunc.i, ptr %i.m, align 4, !tbaa !554
  %i.er = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.eq, ptr noundef nonnull align 4 dereferenceable(4) %i.m) ; 7 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 120
  %i.et = load i8, ptr %i.es, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.ew = load ptr, ptr %43, align 8, !tbaa !1323
  %i.ex = load i64, ptr %i.af, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.ev, ptr %i.ew, i64 %i.ex)
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 128
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 132
  %i.fa = load i8, ptr %i.ez, align 4, !tbaa !1419, !range !86, !noundef !87
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.p, label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.fc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.er) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1428 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1264
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call noundef ptr %i.fh(ptr noundef nonnull align 8 dereferenceable(168) %i.fe) #28, !inline_history !1987
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i.i

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i.i: ; preds = %bb.q, %bb.p
  %i.fj = phi ptr [ %i.fi, %bb.q ], [ null, %bb.p ]
  store ptr %i.fj, ptr %42, align 8, !tbaa !1430
  %i.fk = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.fc, ptr noundef nonnull align 8 dereferenceable(8) %42)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.fk, 0
  %i.fl = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  %i.fm = load i32, ptr %i.ey, align 8, !tbaa !554
  %i.fn = zext i32 %i.fm to i64
  %i.fo = load ptr, ptr %i.fl, align 8, !tbaa !1433
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %i.fn
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %43, align 8, !tbaa !1323
  %i.fs = load i64, ptr %i.af, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.fq, ptr %i.fr, i64 %i.fs)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit.i

_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i.i, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #28
  %i.ft = load ptr, ptr %i.dc, align 8, !tbaa !1264
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = call noundef ptr %i.fv(ptr noundef nonnull align 8 dereferenceable(168) %i.dc) #28, !inline_history !1986
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 80
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = and i32 %i.fy, 4194304
  %.not132.i = icmp eq i32 %i.fz, 0
  br i1 %.not132.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit.i
  %i.ga = load ptr, ptr %i.dc, align 8, !tbaa !1264
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call noundef ptr %i.gc(ptr noundef nonnull align 8 dereferenceable(168) %i.dc) #28, !inline_history !1988
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 80
  %i.gf = load i32, ptr %i.ge, align 8
  %i.gg = and i32 %i.gf, 37748736
  %i.gh = icmp eq i32 %i.gg, 4194304
  %i.gi = select i1 %i.gh, i32 1, i32 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit.i
  %i.gj = phi i32 [ %i.gi, %bb.r ], [ 0, %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit.i ]
  store i32 %i.gj, ptr %i.n, align 4, !tbaa !554
  %i.gk = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.er, ptr noundef nonnull align 4 dereferenceable(4) %i.n) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  %.0.copyload.i.i.i.i.i82.i = load i64, ptr %i.ei, align 8
  %i.gl = and i64 %.0.copyload.i.i.i.i.i82.i, -8  ; 2 uses
  %i.gm = inttoptr i64 %i.gl to ptr               ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = and i32 %i.go, 127
  %i.gq = icmp ne i32 %i.gp, 55
  %.not5.i.i = icmp eq i64 %i.gl, 0
  %.not.i.i = or i1 %.not5.i.i, %i.gq
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.gr, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %41, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.sroa.0.0.copyload.i.i.i, i32 noundef 6417) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  %i.gs = call noundef ptr @_ZNK5clang26ConstructorUsingShadowDecl21getNominatedBaseClassEv(ptr noundef nonnull align 8 dereferenceable(104) %i.gm) #28
  store ptr %i.gs, ptr %i.k, align 8, !tbaa !1443
  %i.gt = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_13CXXRecordDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %41) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit.i

_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit.i: ; preds = %bb.t, %bb.s
  %i.gu = load ptr, ptr %43, align 8, !tbaa !1323 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ae
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit.i
  %i.gw = load i64, ptr %i.ae, align 8, !tbaa !75
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  br label %bb.eo

bb.u:                                             ; preds = %bb.l
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.copyload.i.i.i.i.i83.i = load i64, ptr %i.gy, align 8
  %i.gz = and i64 %.0.copyload.i.i.i.i.i83.i, -8
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = load i32, ptr %i.dr, align 8
  %i.hc = lshr i32 %i.hb, 8
  %i.hd = and i32 %i.hc, 3
  call void @_ZN5clang4Sema21NoteOverloadCandidateEPKNS_9NamedDeclEPKNS_12FunctionDeclENS_28OverloadCandidateRewriteKindENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.ha, ptr noundef nonnull %i.dc, i32 noundef %i.hd, i64 0, i1 noundef zeroext false)
  br label %bb.eo

bb.v:                                             ; preds = %bb.k
  %i.he = lshr i32 %i.dz, 10
  %trunc.i = trunc i32 %i.he to i8
  switch i8 %trunc.i, label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i [
    i8 0, label %bb.w
    i8 1, label %bb.w
    i8 3, label %bb.y
    i8 5, label %bb.ab
    i8 14, label %bb.ad
    i8 4, label %bb.af
    i8 6, label %bb.af
    i8 7, label %bb.af
    i8 2, label %bb.ag
    i8 8, label %bb.ak
    i8 9, label %bb.ax
    i8 10, label %bb.bc
    i8 12, label %bb.bk
    i8 11, label %bb.bn
    i8 15, label %bb.bo
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.hf = load ptr, ptr %i.ct, align 8, !tbaa !1477 ; 4 uses
  %i.hg = call noundef i32 @_ZNK5clang12FunctionDecl31getMinRequiredExplicitArgumentsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.hf) #28 ; 0 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 28
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = and i32 %i.hi, 128
  %.not.i.i84.i = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i84.i, label %_ZL18CheckArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEjb.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.hk, align 8, !tbaa !1249
  %i.hl = and i64 %.sroa.0.0.copyload.i.i.i.i, 7
  %cond.i.i.i = icmp eq i64 %i.hl, 6
  br i1 %cond.i.i.i, label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i, label %_ZL18CheckArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEjb.exit.i.i

_ZL18CheckArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEjb.exit.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 8) ]
  %53 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %53, align 8
  %i.hm = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.hn = inttoptr i64 %i.hm to ptr
  %i.ho = load i32, ptr %i.dr, align 8
  %i.hp = and i32 %i.ho, 16
  %i.hq = icmp ne i32 %i.hp, 0
  call fastcc void @_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_9NamedDeclEPNS_4DeclEjb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.hn, ptr noundef nonnull %i.hf, i32 noundef %i.aa, i1 noundef zeroext %i.hq)
  br label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i

bb.y:                                             ; preds = %bb.v
  %i.hr = load ptr, ptr %i.ct, align 8, !tbaa !1477 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ct, i64 112 ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 8
  %i.hu = and i16 %i.ht, 255
  %i.hv = add nsw i16 %i.hu, -11
  %or.cond.i109 = icmp ult i16 %i.hv, 2
  br i1 %or.cond.i109, label %bb.z, label %_ZL18CheckArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEjb.exit.i

bb.z:                                             ; preds = %bb.y
  %i.hw = call noundef i32 @_ZNK5clang12FunctionDecl31getMinRequiredExplicitArgumentsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.hr) #28 ; 0 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 28
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = and i32 %i.hy, 128
  %.not.i.i111 = icmp eq i32 %i.hz, 0
  br i1 %.not.i.i111, label %_ZL18CheckArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEjb.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  %.sroa.0.0.copyload.i.i.i112 = load i64, ptr %i.ia, align 8, !tbaa !1249
  %i.ib = and i64 %.sroa.0.0.copyload.i.i.i112, 7
  %cond.i.i = icmp eq i64 %i.ib, 6
  br i1 %cond.i.i, label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i, label %_ZL18CheckArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEjb.exit.i

_ZL18CheckArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEjb.exit.i: ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 8) ]
  %54 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.copyload.i.i.i.i.i.i110 = load i64, ptr %54, align 8
  %i.ic = and i64 %.0.copyload.i.i.i.i.i.i110, -8
  %i.id = inttoptr i64 %i.ic to ptr
  call fastcc void @_ZL20DiagnoseBadDeductionRN5clang4SemaEPNS_9NamedDeclEPNS_4DeclERNS_20DeductionFailureInfoEjb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.id, ptr noundef %i.hr, ptr noundef nonnull align 8 dereferenceable(48) %i.hs, i32 noundef %i.aa, i1 noundef zeroext %i.de)
  br label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i

bb.ab:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #28
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.sroa.0.0.copyload.i85.i = load i32, ptr %i.ie, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %45, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.sroa.0.0.copyload.i85.i, i32 noundef 6411) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #28
  %i.if = call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.dc) #28
  %.not79.i = icmp ne ptr %i.if, null
  %i.ig = zext i1 %.not79.i to i32
  store i32 %i.ig, ptr %i.o, align 4, !tbaa !554
  %i.ih = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %45, ptr noundef nonnull align 4 dereferenceable(4) %i.o) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %45) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 8) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.copyload.i.i.i.i.i86.i = load i64, ptr %i.ii, align 8
  %i.ij = and i64 %.0.copyload.i.i.i.i.i86.i, -8  ; 2 uses
  %i.ik = inttoptr i64 %i.ij to ptr               ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 28
  %i.im = load i32, ptr %i.il, align 4
  %i.in = and i32 %i.im, 127
  %i.io = icmp ne i32 %i.in, 55
  %.not5.i105 = icmp eq i64 %i.ij, 0
  %.not.i106 = or i1 %.not5.i105, %i.io
  br i1 %.not.i106, label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %.sroa.0.0.copyload.i.i107 = load i32, ptr %i.ip, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.sroa.0.0.copyload.i.i107, i32 noundef 6417) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.iq = call noundef ptr @_ZNK5clang26ConstructorUsingShadowDecl21getNominatedBaseClassEv(ptr noundef nonnull align 8 dereferenceable(104) %i.ik) #28
  store ptr %i.iq, ptr %i.a, align 8, !tbaa !1443
  %i.ir = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_13CXXRecordDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i

bb.ad:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  %i.is = shl i32 %i.df, 9
  %i.it = zext i32 %i.is to i64
  store i64 %i.it, ptr %46, align 8, !tbaa !1398
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  %i.iu = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.sroa.0.0.copyload.i87.i = load i32, ptr %i.iu, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %47, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.sroa.0.0.copyload.i87.i, i32 noundef 6412) #28
  %i.iv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10QualifiersEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %47, ptr noundef nonnull align 8 dereferenceable(8) %46) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %47) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 8) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.copyload.i.i.i.i.i88.i = load i64, ptr %i.iw, align 8
  %i.ix = and i64 %.0.copyload.i.i.i.i.i88.i, -8  ; 2 uses
  %i.iy = inttoptr i64 %i.ix to ptr               ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 28
  %i.ja = load i32, ptr %i.iz, align 4
  %i.jb = and i32 %i.ja, 127
  %i.jc = icmp ne i32 %i.jb, 55
  %.not5.i101 = icmp eq i64 %i.ix, 0
  %.not.i102 = or i1 %.not5.i101, %i.jc
  br i1 %.not.i102, label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit104, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %.sroa.0.0.copyload.i.i103 = load i32, ptr %i.jd, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.sroa.0.0.copyload.i.i103, i32 noundef 6417) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.je = call noundef ptr @_ZNK5clang26ConstructorUsingShadowDecl21getNominatedBaseClassEv(ptr noundef nonnull align 8 dereferenceable(104) %i.iy) #28
  store ptr %i.je, ptr %i.b, align 8, !tbaa !1443
  %i.jf = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_13CXXRecordDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit104

_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit104: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  br label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i

bb.af:                                            ; preds = %bb.v, %bb.v, %bb.v
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 8) ]
  %55 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.copyload.i.i.i.i.i89.i = load i64, ptr %55, align 8
  %i.jg = and i64 %.0.copyload.i.i.i.i.i89.i, -8
  %i.jh = inttoptr i64 %i.jg to ptr
  %i.ji = lshr i32 %i.dz, 8
  %i.jj = and i32 %i.ji, 3
  call void @_ZN5clang4Sema21NoteOverloadCandidateEPKNS_9NamedDeclEPKNS_12FunctionDeclENS_28OverloadCandidateRewriteKindENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.jh, ptr noundef nonnull %i.dc, i32 noundef %i.jj, i64 0, i1 noundef zeroext false)
  br label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i

bb.ag:                                            ; preds = %bb.v
  %i.jk = lshr i32 %i.dz, 3
  %.lobit.i = and i32 %i.jk, 1                    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !1303
  %i.jn = trunc i64 %i.jm to i32                  ; 2 uses
  %.not78134.i = icmp eq i32 %.lobit.i, %i.jn
  br i1 %.not78134.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !1302
  %i.jq = zext nneg i32 %.lobit.i to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.jq, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aj ] ; 3 uses
  %i.jr = getelementptr inbounds nuw [152 x i8], ptr %i.jp, i64 %indvars.iv.i
  %i.js = load i32, ptr %i.jr, align 8
  %i.jt = and i32 %i.js, 2147483647
  %cond.i = icmp eq i32 %i.jt, 5
  br i1 %cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ju = trunc nuw i64 %indvars.iv.i to i32
  call fastcc void @_ZL21DiagnoseBadConversionRN5clang4SemaEPNS_17OverloadCandidateEjb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef nonnull %i.ct, i32 noundef %i.ju, i1 noundef zeroext %i.de)
  br label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i

bb.aj:                                            ; preds = %bb.ah
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %.not78.i = icmp eq i32 %indvars.i, %i.jn
  br i1 %.not78.i, label %.critedge.i, label %bb.ah, !llvm.loop !1989

.critedge.i:                                      ; preds = %bb.aj, %bb.ag
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 8) ]
  %56 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.copyload.i.i.i.i.i90.i = load i64, ptr %56, align 8
  %i.jv = and i64 %.0.copyload.i.i.i.i.i90.i, -8
  %i.jw = inttoptr i64 %i.jv to ptr
  %i.jx = lshr i32 %i.dz, 8
  %i.jy = and i32 %i.jx, 3
  call void @_ZN5clang4Sema21NoteOverloadCandidateEPKNS_9NamedDeclEPKNS_12FunctionDeclENS_28OverloadCandidateRewriteKindENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.jw, ptr noundef nonnull %i.dc, i32 noundef %i.jy, i64 0, i1 noundef zeroext false)
  br label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i

bb.ak:                                            ; preds = %bb.v
  %i.jz = call noundef ptr @_ZNK5clang4Sema18getCurFunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %1, i1 noundef zeroext true) #28
  %i.ka = load ptr, ptr %i.ct, align 8, !tbaa !1477 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.kb = load ptr, ptr %i.at, align 8, !tbaa !1357
  %i.kc = call noundef i32 @_ZN5clang8SemaCUDA14IdentifyTargetEPKNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(76) %i.kb, ptr noundef %i.jz, i1 noundef zeroext false) #28
  store i32 %i.kc, ptr %i.c, align 4, !tbaa !1525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.kd = load ptr, ptr %i.at, align 8, !tbaa !1357
  %i.ke = call noundef i32 @_ZN5clang8SemaCUDA14IdentifyTargetEPKNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(76) %i.kd, ptr noundef %i.ka, i1 noundef zeroext false) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 8) ]
  store i32 %i.ke, ptr %i.d, align 4, !tbaa !1525
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store ptr %i.au, ptr %11, align 8, !tbaa !1523
  store i64 0, ptr %i.av, align 8, !tbaa !1447
  store i8 0, ptr %i.au, align 8, !tbaa !75
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.copyload.i.i.i.i.i.i79 = load i64, ptr %i.kf, align 8
  %i.kg = and i64 %.0.copyload.i.i.i.i.i.i79, -8
  %i.kh = inttoptr i64 %i.kg to ptr
  %i.ki = load i32, ptr %i.dr, align 8
  %i.kj = lshr i32 %i.ki, 8
  %i.kk = and i32 %i.kj, 3
  %i.kl = call fastcc i64 @_ZN12_GLOBAL__N_125ClassifyOverloadCandidateERN5clang4SemaEPKNS0_9NamedDeclEPKNS0_12FunctionDeclENS0_28OverloadCandidateRewriteKindERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.kh, ptr noundef %i.ka, i32 noundef %i.kk, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %.sroa.011.0.extract.trunc.i80 = trunc i64 %i.kl to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.km = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %.sroa.0.0.copyload.i.i81 = load i32, ptr %i.km, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.sroa.0.0.copyload.i.i81, i32 noundef 6400) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i32 %.sroa.011.0.extract.trunc.i80, ptr %i.e, align 4, !tbaa !554
  %i.kn = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i32 0, ptr %i.f, align 4, !tbaa !554
  %i.ko = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.kn, ptr noundef nonnull align 4 dereferenceable(4) %i.f) ; 7 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 120
  %i.kq = load i8, ptr %i.kp, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  %i.kt = load ptr, ptr %11, align 8, !tbaa !1323
  %i.ku = load i64, ptr %i.av, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.ks, ptr %i.kt, i64 %i.ku)
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit.i82

bb.am:                                            ; preds = %bb.ak
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ko, i64 128
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 132
  %i.kx = load i8, ptr %i.kw, align 4, !tbaa !1419, !range !86, !noundef !87
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.an, label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit.i82

bb.an:                                            ; preds = %bb.am
  %i.kz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.ko) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.la = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !1428 ; 3 uses
  %.not.i.i.i98 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i98, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i.i99, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !1264
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = call noundef ptr %i.le(ptr noundef nonnull align 8 dereferenceable(168) %i.lb) #28, !inline_history !1990
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i.i99

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i.i99: ; preds = %bb.ao, %bb.an
  %i.lg = phi ptr [ %i.lf, %bb.ao ], [ null, %bb.an ]
  store ptr %i.lg, ptr %10, align 8, !tbaa !1430
  %i.lh = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.kz, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %.fca.0.extract.i.i.i100 = extractvalue { ptr, i8 } %i.lh, 0
  %i.li = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i100, i64 8
  %i.lj = load i32, ptr %i.kv, align 8, !tbaa !554
  %i.lk = zext i32 %i.lj to i64
  %i.ll = load ptr, ptr %i.li, align 8, !tbaa !1433
  %i.lm = getelementptr inbounds nuw [32 x i8], ptr %i.ll, i64 %i.lk
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %11, align 8, !tbaa !1323
  %i.lp = load i64, ptr %i.av, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.ln, ptr %i.lo, i64 %i.lp)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit.i82

_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit.i82: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i.i99, %bb.am, %bb.al
  %i.lq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_18CUDAFunctionTargetEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ko, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.lr = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_18CUDAFunctionTargetEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.lq, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ka, i64 28
  %i.lt = load i32, ptr %i.ls, align 4
  %i.lu = and i32 %i.lt, 636
  %or.cond.not.i = icmp eq i32 %i.lu, 548
  br i1 %or.cond.not.i, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit.i82
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ka, i64 72
  %i.lw = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.lv) #28
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lx, align 8 ; 3 uses
  %i.ly = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ma = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.mb = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.mc = inttoptr i64 %i.mb to ptr
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !1338
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit.i

_ZN5clang13CXXMethodDecl9getParentEv.exit.i:      ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i = phi ptr [ %i.ma, %bb.aq ], [ %i.md, %bb.ar ] ; 2 uses
  %i.me = icmp eq ptr %.0.i.i.i.i, null
  %i.mf = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -64
  %i.mg = select i1 %i.me, ptr null, ptr %i.mf
  %switch.tableidx.i = add i32 %.sroa.011.0.extract.trunc.i80, -4 ; 2 uses
  %i.mh = icmp ult i32 %switch.tableidx.i, 5
  br i1 %i.mh, label %switch.lookup.i, label %bb.aw

switch.lookup.i:                                  ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit.i
  %i.mi = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ka) #28
  %.not31.i = icmp eq i32 %i.mi, 0
  br i1 %.not31.i, label %.critedge.i88, label %bb.as

bb.as:                                            ; preds = %switch.lookup.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ka, i64 120
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !1295
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !1297
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 48
  %.sroa.0.0.copyload.i33.i = load i64, ptr %i.mm, align 8, !tbaa !75
  %i.mn = and i64 %.sroa.0.0.copyload.i33.i, -16
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = load ptr, ptr %i.mo, align 16, !tbaa !74 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load i8, ptr %i.mq, align 16
  %i.ms = and i8 %i.mr, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.ms, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i86 = load i64, ptr %i.mt, align 8, !tbaa !75
  %i.mu = and i64 %.sroa.0.0.copyload.i.i.i.i.i86, -16
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = load ptr, ptr %i.mv, align 16, !tbaa !74
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.my = load i8, ptr %i.mx, align 16
  %i.mz = and i8 %i.my, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i87 = icmp eq i8 %i.mz, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i87, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %.critedge.i88

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.at
  %i.na = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.mp) #28 ; 2 uses
  %.not32.i = icmp eq ptr %i.na, null
  br i1 %.not32.i, label %.critedge.i88, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.as
  %.1.i43.i = phi ptr [ %i.na, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.mp, %bb.as ] ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.1.i43.i, i64 16
  %i.nc = load i24, ptr %i.nb, align 16
  %i.nd = and i24 %i.nc, 1048576
  %.not4.i.i90 = icmp eq i24 %i.nd, 0
  br i1 %.not4.i.i90, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i95
  %.05.i.i92 = phi ptr [ %.1.i.i.i96, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i95 ], [ %.1.i43.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40.i ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.05.i.i92, i64 32
  %.0.copyload.i.i.i.i.i.i.i93 = load i64, ptr %i.ne, align 8
  %i.nf = and i64 %.0.copyload.i.i.i.i.i.i.i93, -16
  %i.ng = inttoptr i64 %i.nf to ptr
  %i.nh = load ptr, ptr %i.ng, align 16, !tbaa !74 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load i8, ptr %i.ni, align 16
  %i.nk = and i8 %i.nj, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i94 = icmp eq i8 %i.nk, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i94, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i95, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i91
  %i.nl = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.nh) #28
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i95

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i95: ; preds = %bb.au, %.lr.ph.i.i91
  %.1.i.i.i96 = phi ptr [ %i.nl, %bb.au ], [ %i.nh, %.lr.ph.i.i91 ] ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.1.i.i.i96, i64 16
  %i.nn = load i24, ptr %i.nm, align 16
  %i.no = and i24 %i.nn, 1048576
  %.not.i.i97 = icmp eq i24 %i.no, 0
  br i1 %.not.i.i97, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i91, !llvm.loop !9

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i95, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40.i
  %.0.lcssa.i.i = phi ptr [ %.1.i43.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40.i ], [ %.1.i.i.i96, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i95 ]
  %i.np = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.copyload.i35.i = load i64, ptr %i.np, align 16, !tbaa !75 ; 2 uses
  %i.nq = trunc i64 %.sroa.0.0.copyload.i35.i to i1
  br i1 %i.nq, label %.critedge.i88, label %bb.av

bb.av:                                            ; preds = %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %i.nr = and i64 %.sroa.0.0.copyload.i35.i, -16
  %i.ns = inttoptr i64 %i.nr to ptr
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %.0.copyload.i.i.i.i.i1.i.i = load i64, ptr %i.nt, align 8
  %i.nu = trunc i64 %.0.copyload.i.i.i.i.i1.i.i to i1
  br label %.critedge.i88

.critedge.i88:                                    ; preds = %bb.av, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.at, %switch.lookup.i
  %.1.i89 = phi i1 [ false, %switch.lookup.i ], [ %i.nu, %bb.av ], [ false, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ true, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ false, %bb.at ]
  %i.nv = load ptr, ptr %i.at, align 8, !tbaa !1357
  %i.nw = call noundef zeroext i1 @_ZN5clang8SemaCUDA35inferTargetForImplicitSpecialMemberEPNS_13CXXRecordDeclENS_20CXXSpecialMemberKindEPNS_13CXXMethodDeclEbb(ptr noundef nonnull align 8 dereferenceable(76) %i.nv, ptr noundef %i.mg, i32 noundef %switch.tableidx.i, ptr noundef nonnull %i.ka, i1 noundef zeroext %.1.i89, i1 noundef zeroext true) #28 ; 0 uses
  br label %bb.aw
end_hunk_0
begin_hunk_1_@_ZN5clang20OverloadCandidateSet14NoteCandidatesERNS_4SemaEN4llvm8ArrayRefIPNS_4ExprEEENS4_IPNS_17OverloadCandidateEEENS3_9StringRefENS_14SourceLocationE:bb.a
  %i.ny = icmp eq ptr %i.nx, %i.au
  br i1 %i.ny, label %_ZL17DiagnoseBadTargetRN5clang4SemaEPNS_17OverloadCandidateE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83: ; preds = %bb.aw
  %i.nz = load i64, ptr %i.au, align 8, !tbaa !75
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.oa) #30
  br label %_ZL17DiagnoseBadTargetRN5clang4SemaEPNS_17OverloadCandidateE.exit

_ZL17DiagnoseBadTargetRN5clang4SemaEPNS_17OverloadCandidateE.exit: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i

bb.ax:                                            ; preds = %bb.v
  %.val.i = load ptr, ptr %i.ct, align 8, !tbaa !1477
  %i.ob = getelementptr i8, ptr %i.ct, i64 120
  %.val80.i = load ptr, ptr %i.ob, align 8, !tbaa !75 ; 3 uses
  %i.oc = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load i32, ptr %i.oc, align 8, !tbaa !554
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.val.val.i, i32 noundef 6406) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.od = getelementptr inbounds nuw i8, ptr %.val80.i, i64 40
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !1356
  %i.of = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oe) #29
  store i64 %i.of, ptr %15, align 8
  %i.og = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef nonnull align 4 dereferenceable(8) %15) ; 6 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.val80.i, i64 56
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !1526 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.val80.i, i64 48
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !1527
  %i.ol = zext i32 %i.ok to i64                   ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.og, i64 120
  %i.on = load i8, ptr %i.om, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.op = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.op, ptr %i.oi, i64 %i.ol)
  br label %_ZL26DiagnoseFailedEnableIfAttrRN5clang4SemaEPNS_17OverloadCandidateE.exit

bb.az:                                            ; preds = %bb.ax
  %i.oq = getelementptr inbounds nuw i8, ptr %i.og, i64 128
  %i.or = getelementptr inbounds nuw i8, ptr %i.og, i64 132
  %i.os = load i8, ptr %i.or, align 4, !tbaa !1419, !range !86, !noundef !87
  %i.ot = trunc nuw i8 %i.os to i1
  br i1 %i.ot, label %bb.ba, label %_ZL26DiagnoseFailedEnableIfAttrRN5clang4SemaEPNS_17OverloadCandidateE.exit

bb.ba:                                            ; preds = %bb.az
  %i.ou = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.og) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.ov = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !1428 ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i76, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i.i77, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !1264
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 32
  %i.oz = load ptr, ptr %i.oy, align 8
  %i.pa = call noundef ptr %i.oz(ptr noundef nonnull align 8 dereferenceable(168) %i.ow) #28, !inline_history !1991
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i.i77

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i.i77: ; preds = %bb.bb, %bb.ba
  %i.pb = phi ptr [ %i.pa, %bb.bb ], [ null, %bb.ba ]
  store ptr %i.pb, ptr %13, align 8, !tbaa !1430
  %i.pc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ou, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %.fca.0.extract.i.i.i78 = extractvalue { ptr, i8 } %i.pc, 0
  %i.pd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i78, i64 8
  %i.pe = load i32, ptr %i.oq, align 8, !tbaa !554
  %i.pf = zext i32 %i.pe to i64
  %i.pg = load ptr, ptr %i.pd, align 8, !tbaa !1433
  %i.ph = getelementptr inbounds nuw [32 x i8], ptr %i.pg, i64 %i.pf
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.pi, ptr %i.oi, i64 %i.ol)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZL26DiagnoseFailedEnableIfAttrRN5clang4SemaEPNS_17OverloadCandidateE.exit

_ZL26DiagnoseFailedEnableIfAttrRN5clang4SemaEPNS_17OverloadCandidateE.exit: ; preds = %bb.ay, %bb.az, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i

bb.bc:                                            ; preds = %bb.v
  %.val81.i = load ptr, ptr %i.ct, align 8, !tbaa !1477 ; 4 uses
  %i.pj = call i64 @_ZN5clang17ExplicitSpecifier11getFromDeclEPKNS_12FunctionDeclE(ptr noundef %.val81.i) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  %i.pk = getelementptr inbounds nuw i8, ptr %.val81.i, i64 80
  %i.pl = load i16, ptr %i.pk, align 8
  %i.pm = and i16 %i.pl, 127
  switch i16 %i.pm, label %bb.bf [
    i16 39, label %bb.bg
    i16 38, label %bb.bd
    i16 40, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.pn = getelementptr inbounds nuw i8, ptr %.val81.i, i64 28
  %i.po = load i32, ptr %i.pn, align 4
  %i.pp = lshr i32 %i.po, 8
  %i.pq = and i32 %i.pp, 2
  %i.pr = xor i32 %i.pq, 2
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  unreachable

bb.bg:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %.sink.i = phi i32 [ %i.pr, %bb.be ], [ 1, %bb.bd ], [ 0, %bb.bc ]
  store i32 %.sink.i, ptr %i.g, align 4, !tbaa !554
  %i.ps = getelementptr inbounds nuw i8, ptr %.val81.i, i64 112
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !1995 ; 2 uses
  %i.pu = call noundef ptr @_ZNK5clang12FunctionDecl31getTemplateInstantiationPatternEb(ptr noundef nonnull align 8 dereferenceable(168) %i.pt, i1 noundef zeroext true) #28 ; 2 uses
  %.not.i73 = icmp eq ptr %i.pu, null
  br i1 %.not.i73, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 112
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !1995
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0.i74 = phi ptr [ %i.pw, %bb.bh ], [ %i.pt, %bb.bg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.px = getelementptr inbounds nuw i8, ptr %.0.i74, i64 24
  %.sroa.0.0.copyload.i.i75 = load i32, ptr %i.px, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.sroa.0.0.copyload.i.i75, i32 noundef 6408) #28
  %i.py = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  %i.pz = and i64 %i.pj, -4                       ; 2 uses
  %.not11.i = icmp ne i64 %i.pz, 0                ; 2 uses
  %i.qa = zext i1 %.not11.i to i32
  store i32 %i.qa, ptr %i.h, align 4, !tbaa !554
  %i.qb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.py, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  br i1 %.not11.i, label %bb.bj, label %_ZL26DiagnoseFailedExplicitSpecRN5clang4SemaEPNS_17OverloadCandidateE.exit

bb.bj:                                            ; preds = %bb.bi
  %i.qc = inttoptr i64 %i.pz to ptr
  %i.qd = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qc) #29
  br label %_ZL26DiagnoseFailedExplicitSpecRN5clang4SemaEPNS_17OverloadCandidateE.exit

_ZL26DiagnoseFailedExplicitSpecRN5clang4SemaEPNS_17OverloadCandidateE.exit: ; preds = %bb.bi, %bb.bj
  %storemerge.i = phi i64 [ %i.qd, %bb.bj ], [ 0, %bb.bi ]
  store i64 %storemerge.i, ptr %17, align 8
  %i.qe = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.qb, ptr noundef nonnull align 4 dereferenceable(8) %17) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i

bb.bk:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  %i.qf = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl23isCopyOrMoveConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.dc, ptr noundef nonnull align 4 dereferenceable(4) %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  br i1 %i.qf, label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #28
  %i.qg = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.sroa.0.0.copyload.i91.i = load i32, ptr %i.qg, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %48, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.sroa.0.0.copyload.i91.i, i32 noundef 6418) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #28
  %i.qh = call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.dc) #28
  %.not76.i = icmp ne ptr %i.qh, null
  %i.qi = zext i1 %.not76.i to i32
  store i32 %i.qi, ptr %i.p, align 4, !tbaa !554
  %i.qj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %48, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #28
  %i.qk = getelementptr inbounds nuw i8, ptr %i.dc, i64 120
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !1295
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !1297
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 48
  %.sroa.0.0.copyload.i92.i = load i64, ptr %i.qn, align 8, !tbaa !75
  %i.qo = and i64 %.sroa.0.0.copyload.i92.i, -16
  %i.qp = inttoptr i64 %i.qo to ptr
  %i.qq = load ptr, ptr %i.qp, align 16, !tbaa !74
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.qr, align 8, !tbaa !75
  %i.qs = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.qt = inttoptr i64 %i.qs to ptr
  %i.qu = load ptr, ptr %i.qt, align 16, !tbaa !74
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qw = load i8, ptr %i.qv, align 16
  %i.qx = icmp eq i8 %i.qw, 43
  %i.qy = zext i1 %i.qx to i8
  store i8 %i.qy, ptr %i.q, align 1, !tbaa !1250
  %i.qz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.qj, ptr noundef nonnull align 1 dereferenceable(1) %i.q) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %48) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 8) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.copyload.i.i.i.i.i94.i = load i64, ptr %i.ra, align 8
  %i.rb = and i64 %.0.copyload.i.i.i.i.i94.i, -8  ; 2 uses
  %i.rc = inttoptr i64 %i.rb to ptr               ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 28
  %i.re = load i32, ptr %i.rd, align 4
  %i.rf = and i32 %i.re, 127
  %i.rg = icmp ne i32 %i.rf, 55
  %.not5.i = icmp eq i64 %i.rb, 0
  %.not.i71 = or i1 %.not5.i, %i.rg
  br i1 %.not.i71, label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  %.sroa.0.0.copyload.i.i72 = load i32, ptr %i.rh, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.sroa.0.0.copyload.i.i72, i32 noundef 6417) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  %i.ri = call noundef ptr @_ZNK5clang26ConstructorUsingShadowDecl21getNominatedBaseClassEv(ptr noundef nonnull align 8 dereferenceable(104) %i.rc) #28
  store ptr %i.ri, ptr %i.i, align 8, !tbaa !1443
  %i.rj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_13CXXRecordDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i

bb.bn:                                            ; preds = %bb.v
  %i.rk = call fastcc noundef zeroext i1 @_ZL33checkAddressOfFunctionIsAvailableRN5clang4SemaEPKNS_12FunctionDeclEbbNS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef nonnull %i.dc, i1 noundef zeroext true, i1 noundef zeroext true, i32 0) ; 0 uses
  br label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i

bb.bo:                                            ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 8) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #28
  store ptr %i.ah, ptr %49, align 8, !tbaa !1523
  store i64 0, ptr %i.ai, align 8, !tbaa !1447
  store i8 0, ptr %i.ah, align 8, !tbaa !75
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.copyload.i.i.i.i.i95.i = load i64, ptr %i.rl, align 8
  %i.rm = and i64 %.0.copyload.i.i.i.i.i95.i, -8
  %i.rn = inttoptr i64 %i.rm to ptr
  %i.ro = lshr i32 %i.dz, 8
  %i.rp = and i32 %i.ro, 3
  %i.rq = call fastcc i64 @_ZN12_GLOBAL__N_125ClassifyOverloadCandidateERN5clang4SemaEPKNS0_9NamedDeclEPKNS0_12FunctionDeclENS0_28OverloadCandidateRewriteKindERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.rn, ptr noundef %i.dc, i32 noundef %i.rp, ptr noundef nonnull align 8 dereferenceable(32) %49)
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.rq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #28
  %i.rr = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.sroa.0.0.copyload.i96.i = load i32, ptr %i.rr, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %50, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.sroa.0.0.copyload.i96.i, i32 noundef 6402) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #28
  store i32 %.sroa.01.0.extract.trunc.i, ptr %i.r, align 4, !tbaa !554
  %i.rs = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %50, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #28
  store i32 0, ptr %i.s, align 4, !tbaa !554
  %i.rt = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.rs, ptr noundef nonnull align 4 dereferenceable(4) %i.s) ; 6 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 120
  %i.rv = load i8, ptr %i.ru, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.rw = trunc nuw i8 %i.rv to i1
  br i1 %i.rw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 32
  %i.ry = load ptr, ptr %49, align 8, !tbaa !1323
  %i.rz = load i64, ptr %i.ai, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.rx, ptr %i.ry, i64 %i.rz)
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rt, i64 128
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rt, i64 132
  %i.sc = load i8, ptr %i.sb, align 4, !tbaa !1419, !range !86, !noundef !87
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %bb.br, label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit

bb.br:                                            ; preds = %bb.bq
  %i.se = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.rt) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !1428 ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.sg, null
  br i1 %.not.i.i70, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !1264
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 32
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = call noundef ptr %i.sj(ptr noundef nonnull align 8 dereferenceable(168) %i.sg) #28, !inline_history !11
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i: ; preds = %bb.bs, %bb.br
  %i.sl = phi ptr [ %i.sk, %bb.bs ], [ null, %bb.br ]
  store ptr %i.sl, ptr %19, align 8, !tbaa !1430
  %i.sm = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.se, ptr noundef nonnull align 8 dereferenceable(8) %19)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.sm, 0
  %i.sn = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.so = load i32, ptr %i.sa, align 8, !tbaa !554
  %i.sp = zext i32 %i.so to i64
  %i.sq = load ptr, ptr %i.sn, align 8, !tbaa !1433
  %i.sr = getelementptr inbounds nuw [32 x i8], ptr %i.sq, i64 %i.sp
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.st = load ptr, ptr %49, align 8, !tbaa !1323
  %i.su = load i64, ptr %i.ai, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.ss, ptr %i.st, i64 %i.su)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit

_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit: ; preds = %bb.bp, %bb.bq, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %50) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %51, i8 0, i64 16, i1 false)
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !515
  store i32 0, ptr %i.al, align 8, !tbaa !516
  store i32 4, ptr %i.am, align 4, !tbaa !517
  store i8 0, ptr %i.an, align 8, !tbaa !574
  store i8 0, ptr %i.ao, align 1, !tbaa !575
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !515
  store i32 0, ptr %i.ar, align 8, !tbaa !516
  store i32 4, ptr %i.as, align 4, !tbaa !517
  %i.sv = call noundef zeroext i1 @_ZN5clang4Sema24CheckFunctionConstraintsEPKNS_12FunctionDeclERNS_22ConstraintSatisfactionENS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef nonnull %i.dc, ptr noundef nonnull align 8 dereferenceable(184) %51, i32 0, i1 noundef zeroext true) #28
  br i1 %i.sv, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit
  call void @_ZN5clang4Sema29DiagnoseUnsatisfiedConstraintERKNS_22ConstraintSatisfactionENS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef nonnull align 8 dereferenceable(184) %51, i32 0, i1 noundef zeroext true) #28
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit
  %i.sw = load ptr, ptr %i.ap, align 8, !tbaa !515 ; 2 uses
  %i.sx = icmp eq ptr %i.sw, %i.aq
  br i1 %i.sx, label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @free(ptr noundef %i.sw) #28
  br label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i: ; preds = %bb.bv, %bb.bu
  %i.sy = load ptr, ptr %i.aj, align 8, !tbaa !515 ; 2 uses
  %i.sz = icmp eq ptr %i.sy, %i.ak
  br i1 %i.sz, label %_ZN5clang22ConstraintSatisfactionD2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.sy) #28
  br label %_ZN5clang22ConstraintSatisfactionD2Ev.exit

_ZN5clang22ConstraintSatisfactionD2Ev.exit:       ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  %i.ta = load ptr, ptr %49, align 8, !tbaa !1323 ; 2 uses
  %i.tb = icmp eq ptr %i.ta, %i.ah
  br i1 %i.tb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i: ; preds = %_ZN5clang22ConstraintSatisfactionD2Ev.exit
  %i.tc = load i64, ptr %i.ah, align 8, !tbaa !75
  %i.td = add i64 %i.tc, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.td) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i: ; preds = %_ZN5clang22ConstraintSatisfactionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  br label %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i

_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i: ; preds = %bb.bm, %bb.bl, %bb.ac, %bb.ab, %_ZL18CheckArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEjb.exit.i, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i, %bb.bn, %bb.bk, %_ZL26DiagnoseFailedExplicitSpecRN5clang4SemaEPNS_17OverloadCandidateE.exit, %_ZL26DiagnoseFailedEnableIfAttrRN5clang4SemaEPNS_17OverloadCandidateE.exit, %_ZL17DiagnoseBadTargetRN5clang4SemaEPNS_17OverloadCandidateE.exit, %.critedge.i, %bb.ai, %bb.af, %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit104, %_ZL18CheckArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEjb.exit.i.i, %bb.x, %bb.v
  %i.te = getelementptr inbounds nuw i8, ptr %i.dc, i64 28
  %i.tf = load i32, ptr %i.te, align 4            ; 2 uses
  %i.tg = and i32 %i.tf, 127
  %.not122 = icmp eq i32 %i.tg, 40
  br i1 %.not122, label %bb.bx, label %bb.eo

bb.bx:                                            ; preds = %_ZL21DiagnoseArityMismatchRN5clang4SemaEPNS_17OverloadCandidateEj.exit.i
  %i.th = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %.sroa.0.0.copyload.i.i.i.i100.i = load i64, ptr %i.th, align 8, !tbaa !1249 ; 2 uses
  %i.ti = and i64 %.sroa.0.0.copyload.i.i.i.i100.i, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ti, 7
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5clang15DeclarationName11getNameKindEv.exit.i.i.i.i.i, label %_ZNK5clang15DeclarationName28getCXXDeductionGuideTemplateEv.exit.i.i.i.i

_ZNK5clang15DeclarationName11getNameKindEv.exit.i.i.i.i.i: ; preds = %bb.bx
  %i.tj = and i64 %.sroa.0.0.copyload.i.i.i.i100.i, -8
  %i.tk = inttoptr i64 %i.tj to ptr               ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !1529
  %i.tm = icmp eq i32 %i.tl, 0
  br i1 %i.tm, label %bb.by, label %_ZNK5clang15DeclarationName28getCXXDeductionGuideTemplateEv.exit.i.i.i.i

bb.by:                                            ; preds = %_ZNK5clang15DeclarationName11getNameKindEv.exit.i.i.i.i.i
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !1997
  br label %_ZNK5clang15DeclarationName28getCXXDeductionGuideTemplateEv.exit.i.i.i.i

_ZNK5clang15DeclarationName28getCXXDeductionGuideTemplateEv.exit.i.i.i.i: ; preds = %bb.by, %_ZNK5clang15DeclarationName11getNameKindEv.exit.i.i.i.i.i, %bb.bx
  %.0.i.i.i.i.i = phi ptr [ %i.to, %bb.by ], [ null, %_ZNK5clang15DeclarationName11getNameKindEv.exit.i.i.i.i.i ], [ null, %bb.bx ] ; 2 uses
  %i.tp = and i32 %i.tf, 512
  %.not36.i.i.i.i = icmp eq i32 %i.tp, 0
  br i1 %.not36.i.i.i.i, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %_ZNK5clang15DeclarationName28getCXXDeductionGuideTemplateEv.exit.i.i.i.i
  %.not24.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i, null
  br i1 %.not24.i.i.i.i, label %bb.eo, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.tq = call noundef zeroext i1 @_ZNK5clang12TemplateDecl11isTypeAliasEv(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i.i.i) #28
  br i1 %i.tq, label %bb.cb, label %bb.eo

bb.cb:                                            ; preds = %bb.ca, %_ZNK5clang15DeclarationName28getCXXDeductionGuideTemplateEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  store ptr %i.aw, ptr %37, align 8, !tbaa !1523
  store i64 0, ptr %i.ax, align 8, !tbaa !1447
  store i8 0, ptr %i.aw, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  store i32 0, ptr %i.ay, align 8, !tbaa !1998
  store i8 0, ptr %i.az, align 8, !tbaa !1999
  store i32 1, ptr %i.ba, align 4, !tbaa !2000
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %38, align 8, !tbaa !1264
  store ptr %37, ptr %i.bc, align 8, !tbaa !2002
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %38, ptr noundef null, i64 noundef 0, i32 noundef 0) #28
  %i.tr = call noundef ptr @_ZNK5clang12FunctionDecl28getDescribedFunctionTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.dc) #28 ; 2 uses
  %.not25.i.i.i.i = icmp eq ptr %i.tr, null
  br i1 %.not25.i.i.i.i, label %bb.cc, label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  %i.ts = call noundef ptr @_ZNK5clang12FunctionDecl31getTemplateInstantiationPatternEb(ptr noundef nonnull align 8 dereferenceable(168) %i.dc, i1 noundef zeroext false) #28 ; 2 uses
  %.not26.not.i.i.i.i = icmp eq ptr %i.ts, null
  br i1 %.not26.not.i.i.i.i, label %bb.cd, label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  call void @_ZNK5clang4Decl5printERN4llvm11raw_ostreamEjb(ptr noundef nonnull align 8 dereferenceable(33) %i.dc, ptr noundef nonnull align 8 dereferenceable(48) %38, i32 noundef 0, i1 noundef zeroext false) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  %i.tt = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.sroa.0.0.copyload.i27.i.i.i.i = load i32, ptr %i.tt, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %39, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 %.sroa.0.0.copyload.i27.i.i.i.i, i32 noundef 6183) #28
  %i.tu = load i8, ptr %i.bi, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.tv = trunc nuw i8 %i.tu to i1
  br i1 %i.tv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.tw = load ptr, ptr %37, align 8, !tbaa !1323
  %i.tx = load i64, ptr %i.ax, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.bm, ptr %i.tw, i64 %i.tx)
end_hunk_1
begin_hunk_2_@_ZN5clang4Sema35PerformContextualImplicitConversionENS_14SourceLocationEPNS_4ExprERNS0_27ContextualImplicitConverterE:bb.a
  %i.en = and i64 %.0.copyload.i.i.i.i.i125, -5   ; 2 uses
  %i.eo = load i32, ptr %i.bk, align 8, !tbaa !516 ; 2 uses
  %i.ep = load i32, ptr %i.bl, align 4, !tbaa !517
  %.not.i.i127 = icmp ult i32 %i.eo, %i.ep
  br i1 %.not.i.i127, label %bb.ad, label %bb.ac, !prof !565

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.en)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.ad:                                            ; preds = %bb.ab
  %i.eq = zext i32 %i.eo to i64
  %i.er = load ptr, ptr %8, align 8, !tbaa !515
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq
  store i64 %i.en, ptr %i.es, align 1
  %i.et = load i32, ptr %i.bk, align 8, !tbaa !516
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.bk, align 8, !tbaa !516
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.ae:                                            ; preds = %bb.z
  br i1 %i.cl, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = load ptr, ptr %i.al, align 8, !tbaa !1252, !nonnull !87, !align !500
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = and i64 %i.ew, 16384
  %.not100 = icmp eq i64 %i.ex, 0
  br i1 %.not100, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = icmp ult i64 %.sroa.0160.0197, 16
  br i1 %i.ey, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ez = and i64 %.sroa.0.0.in.i.sroa.speculated, -16
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = load ptr, ptr %i.fa, align 16, !tbaa !74 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.sroa.0.0.copyload.i.i129 = load i64, ptr %i.fc, align 8, !tbaa !75
  %i.fd = and i64 %.sroa.0.0.copyload.i.i129, 15
  %.not.i130 = icmp eq i64 %i.fd, 0
  br i1 %.not.i130, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fe = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.in.i.sroa.speculated) #28
  %i.ff = extractvalue { ptr, i64 } %i.fe, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit:   ; preds = %bb.ah, %bb.ai
  %.sroa.03.0.in.in.i = phi ptr [ %i.ff, %bb.ai ], [ %i.fb, %bb.ah ]
  %.sroa.03.0.in.i = ptrtoint ptr %.sroa.03.0.in.in.i to i64
  %.sroa.03.0.i = and i64 %.sroa.03.0.in.i, -8
  br label %.critedge

bb.aj:                                            ; preds = %bb.ag
  %i.fg = trunc nuw i8 %.091199 to i1
  br i1 %i.fg, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.aj
  %i.fh = and i64 %.sroa.0.0.in.i.sroa.speculated, -16
  %i.fi = inttoptr i64 %i.fh to ptr
  %i.fj = load ptr, ptr %i.fi, align 16, !tbaa !74 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.sroa.0.0.copyload.i.i132 = load i64, ptr %i.fk, align 8, !tbaa !75
  %i.fl = and i64 %.sroa.0.0.copyload.i.i132, 15
  %.not.i133 = icmp eq i64 %i.fl, 0
  br i1 %.not.i133, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit137, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.in.i.sroa.speculated) #28
  %i.fn = extractvalue { ptr, i64 } %i.fm, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit137

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit137: ; preds = %bb.ak, %bb.al
  %.sroa.03.0.in.in.i134 = phi ptr [ %i.fn, %bb.al ], [ %i.fj, %bb.ak ]
  %.sroa.03.0.in.i135 = ptrtoint ptr %.sroa.03.0.in.in.i134 to i64
  %.sroa.03.0.i136 = and i64 %.sroa.03.0.in.i135, -8
  %.not195 = icmp eq i64 %.sroa.03.0.i136, %.sroa.0160.0197
  %spec.select = zext i1 %.not195 to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.aj, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit137, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit, %bb.af, %bb.ae
  %.sroa.0160.1 = phi i64 [ %.sroa.0160.0197, %bb.ae ], [ %.sroa.0160.0197, %bb.af ], [ %.sroa.03.0.i, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit ], [ %.sroa.0160.0197, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit137 ], [ %.sroa.0160.0197, %bb.aj ] ; 2 uses
  %.192 = phi i8 [ %.091199, %bb.ae ], [ %.091199, %bb.af ], [ %.091199, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit ], [ %spec.select, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit137 ], [ 0, %bb.aj ] ; 2 uses
  %.0.copyload.i.i.i.i.i139 = load i64, ptr %.sroa.0153.0198, align 8
  %i.fo = and i64 %.0.copyload.i.i.i.i.i139, -5   ; 2 uses
  %i.fp = load i32, ptr %i.bh, align 8, !tbaa !516 ; 2 uses
  %i.fq = load i32, ptr %i.bi, align 4, !tbaa !517
  %.not.i.i141 = icmp ult i32 %i.fp, %i.fq
  br i1 %.not.i.i141, label %bb.an, label %bb.am, !prof !565

bb.am:                                            ; preds = %.critedge
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 %i.fo)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.an:                                            ; preds = %.critedge
  %i.fr = zext i32 %i.fp to i64
  %i.fs = load ptr, ptr %7, align 8, !tbaa !515
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fr
  store i64 %i.fo, ptr %i.ft, align 1
  %i.fu = load i32, ptr %i.bh, align 8, !tbaa !516
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr %i.bh, align 8, !tbaa !516
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, %bb.aa, %bb.ac, %bb.ad, %bb.am, %bb.an, %bb.t
  %.sroa.0160.3 = phi i64 [ %.sroa.0160.0197, %bb.t ], [ %.sroa.0160.0197, %bb.aa ], [ %.sroa.0160.0197, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit ], [ %.sroa.0160.0197, %bb.ad ], [ %.sroa.0160.0197, %bb.ac ], [ %.sroa.0160.1, %bb.am ], [ %.sroa.0160.1, %bb.an ] ; 3 uses
  %.3 = phi i8 [ %.091199, %bb.t ], [ %.091199, %bb.aa ], [ %.091199, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit ], [ %.091199, %bb.ad ], [ %.091199, %bb.ac ], [ %.192, %bb.am ], [ %.192, %bb.an ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0153.0198, i64 8 ; 2 uses
  %.not194 = icmp eq ptr %i.fw, %i.br
  br i1 %.not194, label %._crit_edge, label %.lr.ph, !llvm.loop !2046

bb.ao:                                            ; preds = %._crit_edge
  %i.fx = icmp ult i64 %.sroa.0160.3, 16
  br i1 %i.fx, label %.thread, label %bb.aq

.thread:                                          ; preds = %._crit_edge.thread, %bb.ao
  %.val110 = load ptr, ptr %8, align 8
  %.val111 = load i32, ptr %i.bk, align 8, !tbaa !516
  %i.fy = call fastcc noundef zeroext i1 @_ZL26diagnoseNoViableConversionRN5clang4SemaENS_14SourceLocationERPNS_4ExprERNS0_27ContextualImplicitConverterENS_8QualTypeEbRNS_17UnresolvedSetImplE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(10) %3, i64 %.sroa.0165.0190, i1 noundef zeroext %i.bv, ptr %.val110, i32 %.val111)
  br i1 %i.fy, label %bb.bb, label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !1230
  %i.ga = call fastcc i64 @_ZL34finishContextualImplicitConversionRN5clang4SemaENS_14SourceLocationEPNS_4ExprERNS0_27ContextualImplicitConverterE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %i.fz, ptr noundef nonnull align 8 dereferenceable(10) %3)
  br label %bb.bb

bb.aq:                                            ; preds = %bb.ao
  br i1 %i.bw, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !1230
  %i.gc = call fastcc i64 @_ZL27diagnoseAmbiguousConversionRN5clang4SemaENS_14SourceLocationEPNS_4ExprERNS0_27ContextualImplicitConverterENS_8QualTypeERNS_17UnresolvedSetImplE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %i.gb, ptr noundef nonnull align 8 dereferenceable(10) %3, i64 %.sroa.0165.0190, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.bb

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.gd, ptr %9, align 8, !tbaa !515
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.ge, align 8, !tbaa !516
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 16, ptr %i.gf, align 4, !tbaa !517
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 2704
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 2728
  store ptr %i.gh, ptr %i.gg, align 8, !tbaa !1328
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 2712
  store i32 16, ptr %i.gi, align 8, !tbaa !1327
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 2716
  store i32 0, ptr %i.gj, align 4, !tbaa !1326
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 2720
  store i8 1, ptr %i.gk, align 8, !tbaa !1325
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 2856
  store ptr null, ptr %i.gl, align 8, !tbaa !1330
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 2864
  store i32 0, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 2872
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 2888
  %i.gp = getelementptr inbounds nuw i8, ptr %9, i64 2904
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.gn, i8 0, i64 16, i1 false)
  store ptr %i.gp, ptr %i.go, align 8, !tbaa !515
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 2896
  store i32 0, ptr %i.gq, align 8, !tbaa !516
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 2900
  store i32 4, ptr %i.gr, align 4, !tbaa !517
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 2936
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 2952 ; 2 uses
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !515
  %i.gu = getelementptr inbounds nuw i8, ptr %9, i64 2944
  store i32 0, ptr %i.gu, align 8, !tbaa !516
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 2948
  store i32 0, ptr %i.gv, align 4, !tbaa !517
  store i32 %1, ptr %i.gt, align 8, !tbaa !554
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 2956
  store i32 0, ptr %i.gw, align 4, !tbaa !1329
  %i.gx = getelementptr inbounds nuw i8, ptr %9, i64 2960
  store i64 0, ptr %i.gx, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 2968
  store i8 0, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !1250
  %i.gy = getelementptr inbounds nuw i8, ptr %9, i64 2972
  store i32 0, ptr %i.gy, align 4, !tbaa !1318
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 7840
  store i32 0, ptr %i.gz, align 8, !tbaa !1451
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !1230
  %.val112 = load ptr, ptr %7, align 8, !tbaa !515
  %.val113 = load i32, ptr %i.bh, align 8, !tbaa !516
  call fastcc void @_ZL33collectViableConversionCandidatesRN5clang4SemaEPNS_4ExprENS_8QualTypeERNS_17UnresolvedSetImplERNS_20OverloadCandidateSetE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.ha, i64 %.sroa.0160.3, ptr %.val112, i32 %.val113, ptr noundef nonnull align 8 dereferenceable(7844) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.hb = call noundef i32 @_ZN5clang20OverloadCandidateSet18BestViableFunctionERNS_4SemaENS_14SourceLocationERPNS_17OverloadCandidateE(ptr noundef nonnull align 8 dereferenceable(7844) %9, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  switch i32 %i.hb, label %default.unreachable [
    i32 0, label %bb.at
    i32 2, label %bb.au
    i32 1, label %bb.av
    i32 3, label %.critedge104
  ]

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.hc = load ptr, ptr %i.b, align 8, !tbaa !1468 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hc, i64 8) ]
  %12 = load ptr, ptr %i.hc, align 8, !tbaa !1477
  %13 = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.0.copyload.i.i.i.i144 = load i64, ptr %13, align 8
  %i.hd = and i64 %.0.copyload.i.i.i.i144, 3
  %i.he = ptrtoint ptr %12 to i64
  %i.hf = or i64 %i.hd, %i.he
  store i64 %i.hf, ptr %10, align 8
  %i.hg = call fastcc noundef zeroext i1 @_ZL16recordConversionRN5clang4SemaENS_14SourceLocationERPNS_4ExprERNS0_27ContextualImplicitConverterENS_8QualTypeEbRNS_14DeclAccessPairE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(10) %3, i64 %.sroa.0165.0190, i1 noundef zeroext %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %i.hg, label %bb.aw, label %.critedge104

bb.au:                                            ; preds = %bb.as
  %i.hh = load ptr, ptr %i.a, align 8, !tbaa !1230
  %i.hi = call fastcc i64 @_ZL27diagnoseAmbiguousConversionRN5clang4SemaENS_14SourceLocationEPNS_4ExprERNS0_27ContextualImplicitConverterENS_8QualTypeERNS_17UnresolvedSetImplE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %i.hh, ptr noundef nonnull align 8 dereferenceable(10) %3, i64 %.sroa.0165.0190, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  %.val108 = load ptr, ptr %8, align 8
  %.val109 = load i32, ptr %i.bk, align 8, !tbaa !516
  %i.hj = call fastcc noundef zeroext i1 @_ZL26diagnoseNoViableConversionRN5clang4SemaENS_14SourceLocationERPNS_4ExprERNS0_27ContextualImplicitConverterENS_8QualTypeEbRNS_17UnresolvedSetImplE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(10) %3, i64 %.sroa.0165.0190, i1 noundef zeroext %i.bv, ptr %.val108, i32 %.val109)
  br i1 %i.hj, label %bb.aw, label %.critedge104

default.unreachable:                              ; preds = %bb.as
  unreachable

.critedge104:                                     ; preds = %bb.at, %bb.as, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @_ZN5clang20OverloadCandidateSetD2Ev(ptr noundef nonnull align 8 dead_on_return(7844) dereferenceable(7844) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge106

bb.aw:                                            ; preds = %bb.at, %bb.av, %bb.au
  %.sroa.0183.0 = phi i64 [ 1, %bb.av ], [ %i.hi, %bb.au ], [ 1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @_ZN5clang20OverloadCandidateSetD2Ev(ptr noundef nonnull align 8 dead_on_return(7844) dereferenceable(7844) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bb

bb.ax:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.hk = load i32, ptr %i.bh, align 8, !tbaa !516
  switch i32 %i.hk, label %bb.ba [
    i32 0, label %bb.ay
    i32 1, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  %.val = load ptr, ptr %8, align 8
  %.val107 = load i32, ptr %i.bk, align 8, !tbaa !516
  %i.hl = call fastcc noundef zeroext i1 @_ZL26diagnoseNoViableConversionRN5clang4SemaENS_14SourceLocationERPNS_4ExprERNS0_27ContextualImplicitConverterENS_8QualTypeEbRNS_17UnresolvedSetImplE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(10) %3, i64 %.sroa.0165.0190, i1 noundef zeroext %i.bv, ptr %.val, i32 %.val107)
  br i1 %i.hl, label %bb.bb, label %.critedge106

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.hm = load ptr, ptr %7, align 8, !tbaa !515
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !75
  store i64 %i.hn, ptr %11, align 8, !tbaa !75
  %i.ho = call fastcc noundef zeroext i1 @_ZL16recordConversionRN5clang4SemaENS_14SourceLocationERPNS_4ExprERNS0_27ContextualImplicitConverterENS_8QualTypeEbRNS_14DeclAccessPairE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(10) %3, i64 %.sroa.0165.0190, i1 noundef zeroext %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br i1 %i.ho, label %bb.bb, label %.critedge106

bb.ba:                                            ; preds = %bb.ax
  %i.hp = load ptr, ptr %i.a, align 8, !tbaa !1230
  %i.hq = call fastcc i64 @_ZL27diagnoseAmbiguousConversionRN5clang4SemaENS_14SourceLocationEPNS_4ExprERNS0_27ContextualImplicitConverterENS_8QualTypeERNS_17UnresolvedSetImplE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %i.hp, ptr noundef nonnull align 8 dereferenceable(10) %3, i64 %.sroa.0165.0190, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.bb

.critedge106:                                     ; preds = %bb.az, %.critedge104, %bb.ay
  %i.hr = load ptr, ptr %i.a, align 8, !tbaa !1230
  %i.hs = call fastcc i64 @_ZL34finishContextualImplicitConversionRN5clang4SemaENS_14SourceLocationEPNS_4ExprERNS0_27ContextualImplicitConverterE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %i.hr, ptr noundef nonnull align 8 dereferenceable(10) %3)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ay, %.thread, %bb.aw, %.critedge106, %bb.ba, %bb.ar, %bb.ap
  %.sroa.0183.1 = phi i64 [ %i.hq, %bb.ba ], [ 1, %.thread ], [ %i.hs, %.critedge106 ], [ 1, %bb.ay ], [ %i.gc, %bb.ar ], [ %i.ga, %bb.ap ], [ %.sroa.0183.0, %bb.aw ], [ 1, %bb.az ]
  %i.ht = load ptr, ptr %8, align 8, !tbaa !515   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.bj
  br i1 %i.hu, label %_ZN5clang13UnresolvedSetILj4EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef %i.ht) #28
  br label %_ZN5clang13UnresolvedSetILj4EED2Ev.exit

_ZN5clang13UnresolvedSetILj4EED2Ev.exit:          ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.hv = load ptr, ptr %7, align 8, !tbaa !515   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.bg
  br i1 %i.hw, label %_ZN5clang13UnresolvedSetILj4EED2Ev.exit145, label %bb.bd

bb.bd:                                            ; preds = %_ZN5clang13UnresolvedSetILj4EED2Ev.exit
  call void @free(ptr noundef %i.hv) #28
  br label %_ZN5clang13UnresolvedSetILj4EED2Ev.exit145

_ZN5clang13UnresolvedSetILj4EED2Ev.exit145:       ; preds = %_ZN5clang13UnresolvedSetILj4EED2Ev.exit, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.be

bb.be:                                            ; preds = %_ZN5clang13UnresolvedSetILj4EED2Ev.exit145, %bb.q
  %.sroa.0183.2 = phi i64 [ %.sroa.0183.1, %_ZN5clang13UnresolvedSetILj4EED2Ev.exit145 ], [ %i.bf, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.m, %bb.h, %bb.d, %bb.b
  %.sroa.0183.4 = phi i64 [ %i.e, %bb.b ], [ 1, %bb.d ], [ %.sroa.0183.2, %bb.be ], [ %i.ax, %bb.m ], [ %i.t, %bb.h ]
  ret i64 %.sroa.0183.4
}

declare i64 @_ZN5clang4Sema20CheckPlaceholderExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) local_unnamed_addr #6

declare i64 @_ZN5clang4Sema23DefaultLvalueConversionEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) local_unnamed_addr #6

declare { ptr, ptr } @_ZNK5clang13CXXRecordDecl29getVisibleConversionFunctionsEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL26diagnoseNoViableConversionRN5clang4SemaENS_14SourceLocationERPNS_4ExprERNS0_27ContextualImplicitConverterENS_8QualTypeEbRNS_17UnresolvedSetImplE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(10) %3, i64 %4, i1 noundef zeroext %5, ptr nofree readonly captures(none) %.0.val, i32 %.8.val) unnamed_addr #5 {
bb.a:
  %6 = alloca %"class.clang::QualType", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %10 = alloca %"class.clang::FixItHint", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.clang::FixItHint", align 8 ; 6 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.a = icmp ne i32 %.8.val, 1
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !86
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %i.a, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %.0.val, align 8, !tbaa !75 ; 2 uses
  %i.f = and i64 %i.e, -8
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 127
  switch i32 %i.j, label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit [
    i32 54, label %bb.c
    i32 55, label %bb.c
    i32 77, label %bb.c
    i32 79, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.k = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #29
  br label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit

_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit:    ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.k, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 8, !tbaa !75
  %i.m = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !74  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i8, ptr %i.p, align 16
  %i.r = add i8 %i.q, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.r, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit

bb.d:                                             ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit
  %i.s = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.o) #28
  br label %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit

_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit: ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit, %bb.d
  %.1.i.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.t, align 8, !tbaa !75 ; 3 uses
  %i.u = and i64 %.sroa.0.0.copyload.i1.i, -16
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !74  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i8, ptr %i.x, align 16
  %i.z = and i8 %i.y, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.z, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !75
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i8, ptr %i.ae, align 16
  %i.ag = and i8 %i.af, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.ag, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.e
  %i.ah = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.w) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit
  %.1.i8.i = phi ptr [ %i.ah, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.w, %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.aj = load i24, ptr %i.ai, align 16
  %i.ak = and i24 %i.aj, 1048576
  %.not4.i.i = icmp eq i24 %i.ak, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i
end_hunk_2
begin_hunk_3_@_ZL26diagnoseNoViableConversionRN5clang4SemaENS_14SourceLocationERPNS_4ExprERNS0_27ContextualImplicitConverterENS_8QualTypeEbRNS_17UnresolvedSetImplE:bb.a
  %i.cs = call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr) #29
  %i.ct = call i32 @_ZN5clang4Sema19getLocForEndOfTokenENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %i.cs, i32 noundef 0) #28
  call void @_ZN5clang9FixItHint15CreateInsertionENS_14SourceLocationEN4llvm9StringRefEb(ptr dead_on_unwind nonnull writable sret(%"class.clang::FixItHint") align 8 %13, i32 %i.ct, ptr nonnull @.str.57, i64 1, i1 noundef zeroext false)
  %i.cu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_9FixItHintEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cq, ptr noundef nonnull align 8 dereferenceable(57) %13) ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1323 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZN5clang9FixItHintD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !75
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #30
  br label %_ZN5clang9FixItHintD2Ev.exit

_ZN5clang9FixItHintD2Ev.exit:                     ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1323 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZN5clang9FixItHintD2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %_ZN5clang9FixItHintD2Ev.exit
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !75
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #30
  br label %_ZN5clang9FixItHintD2Ev.exit46

_ZN5clang9FixItHintD2Ev.exit46:                   ; preds = %_ZN5clang9FixItHintD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
  %i.dh = load ptr, ptr %11, align 8, !tbaa !1323 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cd
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZN5clang9FixItHintD2Ev.exit46
  %i.dj = load i64, ptr %i.cd, align 8, !tbaa !75
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5clang9FixItHintD2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %i.dl = load ptr, ptr %12, align 8, !tbaa !1323 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bo
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dn = load i64, ptr %i.bo, align 8, !tbaa !75
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %.sroa.06.0.copyload = load i64, ptr %6, align 8, !tbaa !75
  %i.dp = load ptr, ptr %3, align 8, !tbaa !1264
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %14, ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.0.i, i64 %.sroa.06.0.copyload) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #28
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 13760
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1544
  %.not = icmp eq ptr %i.dt, null
  br i1 %.not, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.du = load ptr, ptr %2, align 8, !tbaa !1230  ; 2 uses
  %i.dv = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #29
  %i.dw = call noundef i32 @_ZN5clang4Sema25CheckMemberOperatorAccessENS_14SourceLocationEPNS_4ExprES3_NS_14DeclAccessPairE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %i.dv, ptr noundef nonnull %i.du, ptr noundef null, i64 %i.e) #28 ; 0 uses
  %i.dx = load ptr, ptr %2, align 8, !tbaa !1230
  %i.dy = call i64 @_ZN5clang4Sema22BuildCXXMemberCallExprEPNS_4ExprEPNS_9NamedDeclEPNS_17CXXConversionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.dx, ptr noundef %i.g, ptr noundef nonnull %.0.i, i1 noundef zeroext %5) ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ea = load ptr, ptr %2, align 8, !tbaa !1230  ; 2 uses
  %i.eb = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) #29
  %i.ec = call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) #29
  %i.ed = and i64 %i.dy, -2
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ef, align 8, !tbaa !75
  %i.eg = call i64 @_ZN5clang4Sema18CreateRecoveryExprENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %i.eb, i32 %i.ec, ptr nonnull %2, i64 1, i64 %.sroa.0.0.copyload.i) #28 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = and i64 %i.eg, -2
  %i.ej = inttoptr i64 %i.ei to ptr
  store ptr %i.ej, ptr %2, align 8, !tbaa !1230
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.ek = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ true, %bb.m ], [ false, %bb.k ], [ false, %bb.l ]
  %i.el = load ptr, ptr %7, align 8, !tbaa !1323  ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ax
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.n
  %i.en = load i64, ptr %i.ax, align 8, !tbaa !75
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %i.ek, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.a
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.o
  %.2 = phi i1 [ false, %bb.o ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZL34finishContextualImplicitConversionRN5clang4SemaENS_14SourceLocationEPNS_4ExprERNS0_27ContextualImplicitConverterE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(10) %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %5 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !75
  %i.b = load ptr, ptr %3, align 8, !tbaa !1264
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(10) %3, i64 %.sroa.0.0.copyload.i) #28
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !1548, !range !86, !noundef !87
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.sroa.0.0.copyload.i13 = load i64, ptr %i.a, align 8, !tbaa !75
  %i.h = load ptr, ptr %3, align 8, !tbaa !1264
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, i64 %.sroa.0.0.copyload.i13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.k = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #29
  store i64 %i.k, ptr %5, align 8
  %i.l = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 4 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = call i64 @_ZN5clang4Sema23DefaultLvalueConversionEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %2) #28
  ret i64 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZL27diagnoseAmbiguousConversionRN5clang4SemaENS_14SourceLocationEPNS_4ExprERNS0_27ContextualImplicitConverterENS_8QualTypeERNS_17UnresolvedSetImplE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(10) %3, i64 %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %5) unnamed_addr #5 {
bb.a:
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %7 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1548, !range !86, !noundef !87
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.d = load ptr, ptr %3, align 8, !tbaa !1264
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, i64 %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.g = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #29
  store i64 %i.g, ptr %7, align 8
  %i.h = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 4 dereferenceable(8) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !516  ; 2 uses
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = zext i32 %i.j to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, %bb.b
  %i.l = ptrtoint ptr %2 to i64
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit ] ; 2 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !515    ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %.0.copyload.i.i.i.i.i = load i64, ptr %9, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 127
  switch i32 %i.r, label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit [
    i32 54, label %bb.c
    i32 55, label %bb.c
    i32 77, label %bb.c
    i32 79, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.s = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o) #29
  br label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit

_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit:    ; preds = %.lr.ph, %bb.c
  %.0.i = phi ptr [ %i.s, %bb.c ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.t, align 8, !tbaa !75
  %i.u = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !74  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i8, ptr %i.x, align 16
  %i.z = add i8 %i.y, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.z, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit

bb.d:                                             ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit
  %i.aa = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.w) #28
  br label %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit

_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit: ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit, %bb.d
  %.1.i.i = phi ptr [ %i.aa, %bb.d ], [ %i.w, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.ab, align 8, !tbaa !75 ; 3 uses
  %i.ac = and i64 %.sroa.0.0.copyload.i1.i, -16
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !74 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i8, ptr %i.af, align 16
  %i.ah = and i8 %i.ag, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.ah, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !75
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !74
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i8, ptr %i.am, align 16
  %i.ao = and i8 %i.an, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.ao, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.e
  %i.ap = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ae) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit
  %.1.i8.i = phi ptr [ %i.ap, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.ae, %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.ar = load i24, ptr %i.aq, align 16
  %i.as = and i24 %i.ar, 1048576
  %.not4.i.i = icmp eq i24 %i.as, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8
  %i.au = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !74 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i8, ptr %i.ax, align 16
  %i.az = and i8 %i.ay, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.az, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ba = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.aw) #28
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.ba, %bb.f ], [ %i.aw, %.lr.ph.i.i ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.bc = load i24, ptr %i.bb, align 16
  %i.bd = and i24 %i.bc, 1048576
  %.not.i.i = icmp eq i24 %i.bd, 0
  br i1 %.not.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !9

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.be, align 8, !tbaa !75
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.e, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.sroa.0.0.in.i.sroa.speculated = phi i64 [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %.sroa.0.0.copyload.i1.i, %bb.e ], [ %.sroa.0.0.copyload.i1.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %i.bf = load ptr, ptr %3, align 8, !tbaa !1264
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.0.i, i64 %.sroa.0.0.in.i.sroa.speculated) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2058

bb.g:                                             ; preds = %bb.a, %._crit_edge
  %.sroa.021.0 = phi i64 [ %i.l, %._crit_edge ], [ 1, %bb.a ]
  ret i64 %.sroa.021.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL33collectViableConversionCandidatesRN5clang4SemaEPNS_4ExprENS_8QualTypeERNS_17UnresolvedSetImplERNS_20OverloadCandidateSetE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i64 %2, ptr nofree readonly captures(address) %.0.val, i32 %.8.val, ptr noundef nonnull align 8 dereferenceable(7844) %3) unnamed_addr #5 {
bb.a:
  %i.a = zext i32 %.8.val to i64
  %.idx = shl nuw nsw i64 %i.a, 3
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx
  %.not7 = icmp eq i32 %.8.val, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.08 = phi ptr [ %i.w, %bb.g ], [ %.0.val, %bb.a ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.08, i64 8) ]
  %.0.copyload.i.i.i.i = load i64, ptr %.08, align 8 ; 3 uses
  %i.c = and i64 %.0.copyload.i.i.i.i, -8
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8 ; 3 uses
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit

bb.c:                                             ; preds = %.lr.ph
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1338
  br label %_ZN5clang4Decl14getDeclContextEv.exit

_ZN5clang4Decl14getDeclContextEv.exit:            ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = icmp eq ptr %.0.i, null
  %i.m = getelementptr inbounds i8, ptr %.0.i, i64 -64
  %i.n = select i1 %i.l, ptr null, ptr %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = and i32 %i.p, 126
  %i.r = icmp eq i32 %i.q, 54
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5clang4Decl14getDeclContextEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1335 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5clang4Decl14getDeclContextEv.exit
  %i.u = phi i32 [ %.pre, %bb.d ], [ %i.p, %_ZN5clang4Decl14getDeclContextEv.exit ]
  %.05 = phi ptr [ %i.t, %bb.d ], [ %i.d, %_ZN5clang4Decl14getDeclContextEv.exit ] ; 2 uses
  %i.v = and i32 %i.u, 127
  %.not9 = icmp eq i32 %i.v, 72
  br i1 %.not9, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5clang4Sema30AddTemplateConversionCandidateEPNS_20FunctionTemplateDeclENS_14DeclAccessPairEPNS_13CXXRecordDeclEPNS_4ExprENS_8QualTypeERNS_20OverloadCandidateSetEbbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.05, i64 %.0.copyload.i.i.i.i, ptr noundef %i.n, ptr noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(7844) %3, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %bb.g

.critedge:                                        ; preds = %bb.e
  tail call void @_ZN5clang4Sema22AddConversionCandidateEPNS_17CXXConversionDeclENS_14DeclAccessPairEPNS_13CXXRecordDeclEPNS_4ExprENS_8QualTypeERNS_20OverloadCandidateSetEbbbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.05, i64 %.0.copyload.i.i.i.i, ptr poison, ptr noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(7844) %3, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZN5clang20OverloadCandidateSet18BestViableFunctionERNS_4SemaENS_14SourceLocationERPNS_17OverloadCandidateE(ptr noundef nonnull align 8 dereferenceable(7844) %0, ptr noundef nonnull align 8 dereferenceable(18640) %1, i32 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 1073741823
  %.not = icmp ne i32 %i.c, 0
  %.not17 = icmp sgt i32 %i.b, -1
  %spec.select = and i1 %.not17, %.not
  br i1 %spec.select, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN5clang20OverloadCandidateSet22BestViableFunctionImplERNS_4SemaENS_14SourceLocationERPNS_17OverloadCandidateE(ptr noundef nonnull align 8 dereferenceable(7844) %0, ptr noundef nonnull align 8 dereferenceable(18640) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !1468   ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !515
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !516
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [168 x i8], ptr %i.f, i64 %i.i
  %.not18 = icmp eq ptr %i.e, %i.j
  br i1 %.not18, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.m = tail call noundef zeroext i1 @_ZNK5clang17OverloadCandidate14isPerfectMatchERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(168) %i.e, ptr noundef nonnull align 8 dereferenceable(23904) %i.l)
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.a, align 8
  %i.o = and i32 %i.n, 1073741824
  %.not19 = icmp eq i32 %i.o, 0
  br i1 %.not19, label %_ZN4llvm15isa_and_nonnullIJN5clang17CXXConversionDeclEEPNS1_12FunctionDeclEEEbRKT0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %3, align 8, !tbaa !1468
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1376 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN4llvm15isa_and_nonnullIJN5clang17CXXConversionDeclEEPNS1_12FunctionDeclEEEbRKT0_.exit.thread, label %_ZN4llvm15isa_and_nonnullIJN5clang17CXXConversionDeclEEPNS1_12FunctionDeclEEEbRKT0_.exit

_ZN4llvm15isa_and_nonnullIJN5clang17CXXConversionDeclEEPNS1_12FunctionDeclEEEbRKT0_.exit: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 127
  %i.u = icmp eq i32 %i.t, 38
  br i1 %i.u, label %.critedge, label %_ZN4llvm15isa_and_nonnullIJN5clang17CXXConversionDeclEEPNS1_12FunctionDeclEEEbRKT0_.exit.thread

.critedge:                                        ; preds = %bb.b, %bb.c, %_ZN4llvm15isa_and_nonnullIJN5clang17CXXConversionDeclEEPNS1_12FunctionDeclEEEbRKT0_.exit, %bb.a
  tail call void @_ZN5clang20OverloadCandidateSet34InjectNonDeducedTemplateCandidatesERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(7844) %0, ptr noundef nonnull align 8 dereferenceable(18640) %1)
  %i.v = tail call noundef i32 @_ZN5clang20OverloadCandidateSet22BestViableFunctionImplERNS_4SemaENS_14SourceLocationERPNS_17OverloadCandidateE(ptr noundef nonnull align 8 dereferenceable(7844) %0, ptr noundef nonnull align 8 dereferenceable(18640) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN4llvm15isa_and_nonnullIJN5clang17CXXConversionDeclEEPNS1_12FunctionDeclEEEbRKT0_.exit.thread

_ZN4llvm15isa_and_nonnullIJN5clang17CXXConversionDeclEEPNS1_12FunctionDeclEEEbRKT0_.exit.thread: ; preds = %bb.e, %_ZN4llvm15isa_and_nonnullIJN5clang17CXXConversionDeclEEPNS1_12FunctionDeclEEEbRKT0_.exit, %bb.d, %.critedge
  %.1 = phi i32 [ %i.v, %.critedge ], [ %i.d, %bb.d ], [ %i.d, %_ZN4llvm15isa_and_nonnullIJN5clang17CXXConversionDeclEEPNS1_12FunctionDeclEEEbRKT0_.exit ], [ %i.d, %bb.e ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL16recordConversionRN5clang4SemaENS_14SourceLocationERPNS_4ExprERNS0_27ContextualImplicitConverterENS_8QualTypeEbRNS_14DeclAccessPairE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(10) %3, i64 %4, i1 noundef zeroext %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) unnamed_addr #5 {
bb.a:
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %8 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 8) ]
  %.0.copyload.i.i.i.i.i = load i64, ptr %6, align 8 ; 2 uses
  %i.a = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 127
  switch i32 %i.e, label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit [
    i32 54, label %bb.b
    i32 55, label %bb.b
    i32 77, label %bb.b
    i32 79, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #29
  br label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit

_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit:    ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !1230   ; 2 uses
  %i.h = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #29
  %i.i = tail call noundef i32 @_ZN5clang4Sema25CheckMemberOperatorAccessENS_14SourceLocationEPNS_4ExprES3_NS_14DeclAccessPairE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %i.h, ptr noundef nonnull %i.g, ptr noundef null, i64 %.0.copyload.i.i.i.i.i) #28 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 8, !tbaa !75
  %i.k = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !74  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i8, ptr %i.n, align 16
  %i.p = add i8 %i.o, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.p, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit

bb.c:                                             ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit
  %i.q = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.m) #28
  br label %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit

_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit: ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit, %bb.c
  %.1.i.i = phi ptr [ %i.q, %bb.c ], [ %i.m, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.r, align 8, !tbaa !75 ; 3 uses
  %i.s = and i64 %.sroa.0.0.copyload.i1.i, -16
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !74  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i8, ptr %i.v, align 16
  %i.x = and i8 %i.w, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.x, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !75
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i8, ptr %i.ac, align 16
  %i.ae = and i8 %i.ad, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.ae, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.d
  %i.af = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.u) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit
  %.1.i8.i = phi ptr [ %i.af, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.u, %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.ah = load i24, ptr %i.ag, align 16
  %i.ai = and i24 %i.ah, 1048576
  %.not4.i.i = icmp eq i24 %i.ai, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8
  %i.ak = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !74 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i8, ptr %i.an, align 16
  %i.ap = and i8 %i.ao, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.ap, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aq = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.am) #28
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.am, %.lr.ph.i.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.as = load i24, ptr %i.ar, align 16
  %i.at = and i24 %i.as, 1048576
  %.not.i.i = icmp eq i24 %i.at, 0
  br i1 %.not.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !9

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.au, align 8, !tbaa !75
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.d, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.sroa.0.0.in.i.sroa.speculated = phi i64 [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %.sroa.0.0.copyload.i1.i, %bb.d ], [ %.sroa.0.0.copyload.i1.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !2059, !range !86, !noundef !87
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 13760
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1544
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ba = load ptr, ptr %3, align 8, !tbaa !1264
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, i64 %4, i64 %.sroa.0.0.in.i.sroa.speculated) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.bd = load ptr, ptr %2, align 8, !tbaa !1230
  %i.be = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) #29
  store i64 %i.be, ptr %8, align 8
  %i.bf = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 8) ]
  %9 = load ptr, ptr %2, align 8, !tbaa !1230
  %.0.copyload.i.i.i.i.i28 = load i64, ptr %6, align 8
  %i.bg = and i64 %.0.copyload.i.i.i.i.i28, -8
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = call i64 @_ZN5clang4Sema22BuildCXXMemberCallExprEPNS_4ExprEPNS_9NamedDeclEPNS_17CXXConversionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %9, ptr noundef %i.bh, ptr noundef nonnull %.0.i, i1 noundef zeroext %5) ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.bm = and i64 %i.bi, -2
  %i.bn = inttoptr i64 %i.bm to ptr               ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bo, align 8, !tbaa !75
  %i.bp = load i24, ptr %i.bn, align 8
  %i.bq = lshr i24 %i.bp, 9
  %i.br = and i24 %i.bq, 3
  %i.bs = zext nneg i24 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.0.0.copyload.i.i29 = load i64, ptr %i.bu, align 8, !tbaa !554 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i29 to i32
  %i.bv = load i32, ptr %i.bt, align 8, !tbaa !1552
  %i.bw = icmp ne i32 %i.bv, %.sroa.01.0.extract.trunc.i.i.i.i
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i29, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = icmp ne i32 %i.by, %.sroa.2.0.extract.trunc.i.i.i.i
  %.not3.i.i.i = select i1 %i.bw, i1 true, i1 %i.bz
  %i.ca = load i64, ptr %i.bt, align 8
  %.sroa.01.0.insert.insert.i = select i1 %.not3.i.i.i, i64 %i.ca, i64 0
  %i.cb = call noundef ptr @_ZN5clang16ImplicitCastExpr6CreateERKNS_10ASTContextENS_8QualTypeENS_8CastKindEPNS_4ExprEPKN4llvm11SmallVectorIPNS_16CXXBaseSpecifierELj4EEENS_13ExprValueKindENS_17FPOptionsOverrideE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bl, i64 %.sroa.0.0.copyload.i, i32 noundef 19, ptr noundef nonnull %i.bn, ptr noundef null, i32 noundef %i.bs, i64 %.sroa.01.0.insert.insert.i) #28
  store ptr %i.cb, ptr %2, align 8, !tbaa !1230
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.1 = phi i1 [ true, %bb.f ], [ true, %bb.h ], [ false, %bb.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema20AddOverloadCandidateEPNS_12FunctionDeclENS_14DeclAccessPairEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetEbbbbNS_8CallExpr11ADLCallKindENS4_15MutableArrayRefINS_26ImplicitConversionSequenceEEENS_27OverloadCandidateParamOrderEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(7844) %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i1 noundef zeroext %10, ptr nofree noundef readonly byval(%"class.llvm::MutableArrayRef") align 8 captures(none) %11, i8 noundef signext %12, i1 noundef zeroext %13, i1 noundef zeroext %14) local_unnamed_addr #5 align 2 {
bb.a:
  %15 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %17 = alloca %"class.llvm::MutableArrayRef", align 8 ; 3 uses
  %18 = alloca %"class.clang::ConstraintSatisfaction", align 8 ; 17 uses
  %19 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %20 = alloca %"class.clang::ImplicitConversionSequence", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !75
  %i.c = and i64 %.sroa.0.0.copyload.i, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !74  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i8, ptr %i.f, align 16              ; 2 uses
  %i.h = add i8 %i.g, -25
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.h, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.b, label %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.e) #28 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 16
  br label %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit

_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i8 [ %.pre, %bb.b ], [ %i.g, %bb.a ]
  %.1.i = phi ptr [ %i.i, %bb.b ], [ %i.e, %bb.a ]
  %i.k = icmp eq i8 %i.j, 24
  %spec.select.i.i = select i1 %i.k, ptr %.1.i, ptr null ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = and i32 %i.m, 124
  %i.o = icmp ne i32 %i.n, 36
  %i.p = and i32 %i.m, 39
  %i.q = icmp eq i32 %i.p, 39
  %or.cond372 = or i1 %i.o, %i.q
  br i1 %or.cond372, label %bb.e, label %.critedge212

.critedge212:                                     ; preds = %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.r) #28
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8 ; 3 uses
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge212
  %i.w = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

bb.d:                                             ; preds = %.critedge212
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1338
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

_ZN5clang13CXXMethodDecl9getParentEv.exit:        ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.w, %bb.c ], [ %i.z, %bb.d ] ; 2 uses
  %i.aa = icmp eq ptr %.0.i.i.i, null
  %i.ab = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -64
  %i.ac = select i1 %i.aa, ptr null, ptr %i.ab
  store ptr %3, ptr %16, align 8, !tbaa !1554
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %4, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !1249
  %i.ad = load ptr, ptr %11, align 8, !tbaa !1302
  store ptr %i.ad, ptr %17, align 8, !tbaa !1302
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1303
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !1303
  tail call void @_ZN5clang4Sema18AddMethodCandidateEPNS_13CXXMethodDeclENS_14DeclAccessPairEPNS_13CXXRecordDeclENS_8QualTypeENS_4Expr14ClassificationEN4llvm8ArrayRefIPS7_EERNS_20OverloadCandidateSetEbbNS9_15MutableArrayRefINS_26ImplicitConversionSequenceEEENS_27OverloadCandidateParamOrderEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, i64 %2, ptr noundef %i.ac, i64 0, i32 65536, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %16, ptr noundef nonnull align 8 dereferenceable(7844) %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %17, i8 noundef signext %12, i1 noundef zeroext %14)
  br label %_ZN5clang20OverloadCandidateSet14isNewCandidateEPNS_4DeclENS_27OverloadCandidateParamOrderE.exit.thread319

bb.e:                                             ; preds = %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1264
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(33) %1) #28, !inline_history !14
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sext i8 %12 to i64
  %i.an = or i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 2704 ; 2 uses
  %i.ap = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 2720
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !1325, !range !86, !noalias !2065, !noundef !87
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.f, label %_ZN5clang20OverloadCandidateSet14isNewCandidateEPNS_4DeclENS_27OverloadCandidateParamOrderE.exit

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !1328, !noalias !2065 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 2716 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !1326, !noalias !2065 ; 4 uses
  %i.aw = zext i32 %i.av to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.aw, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i.i.i ; 2 uses
  %.not22.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.critedge.i.i.i
  %.023.i.i.i = phi ptr [ %i.az, %.critedge.i.i.i ], [ %i.at, %bb.f ] ; 2 uses
  %i.ay = load ptr, ptr %.023.i.i.i, align 8, !tbaa !68, !noalias !2065
  %.not15.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not15.i.i.i, label %_ZN5clang20OverloadCandidateSet14isNewCandidateEPNS_4DeclENS_27OverloadCandidateParamOrderE.exit.thread319, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.023.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %i.ax
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.critedge.i.i.i, %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 2712
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1327, !noalias !2065
  %i.bc = icmp ult i32 %i.av, %i.bb
  br i1 %i.bc, label %_ZN5clang20OverloadCandidateSet14isNewCandidateEPNS_4DeclENS_27OverloadCandidateParamOrderE.exit.thread, label %_ZN5clang20OverloadCandidateSet14isNewCandidateEPNS_4DeclENS_27OverloadCandidateParamOrderE.exit

_ZN5clang20OverloadCandidateSet14isNewCandidateEPNS_4DeclENS_27OverloadCandidateParamOrderE.exit.thread: ; preds = %._crit_edge.i.i.i
  %i.bd = add nuw i32 %i.av, 1
  store i32 %i.bd, ptr %i.au, align 4, !tbaa !1326, !noalias !2065
  store ptr %i.ap, ptr %i.ax, align 8, !tbaa !68, !noalias !2065
  br label %bb.g

_ZN5clang20OverloadCandidateSet14isNewCandidateEPNS_4DeclENS_27OverloadCandidateParamOrderE.exit: ; preds = %bb.e, %._crit_edge.i.i.i
  %i.be = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.ao, ptr noundef %i.ap) #28, !noalias !2065
  %i.bf = extractvalue { ptr, i8 } %i.be, 1
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.g, label %_ZN5clang20OverloadCandidateSet14isNewCandidateEPNS_4DeclENS_27OverloadCandidateParamOrderE.exit.thread319

bb.g:                                             ; preds = %_ZN5clang20OverloadCandidateSet14isNewCandidateEPNS_4DeclENS_27OverloadCandidateParamOrderE.exit.thread, %_ZN5clang20OverloadCandidateSet14isNewCandidateEPNS_4DeclENS_27OverloadCandidateParamOrderE.exit
  %i.bh = load i32, ptr %i.l, align 4
  %i.bi = and i32 %i.bh, 127
  %i.bj = icmp eq i32 %i.bi, 39
  %spec.select.i.i231 = select i1 %i.bj, ptr %1, ptr null ; 2 uses
  %.not202 = icmp eq ptr %spec.select.i.i231, null ; 2 uses
  br i1 %.not202, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = and i32 %i.bl, 33554432
  %.not338 = icmp eq i32 %i.bm, 0
  br i1 %.not338, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %1, align 8, !tbaa !1264
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(168) %1) #28, !inline_history !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = and i32 %i.bs, 4194304
  %.not339 = icmp eq i32 %i.bt, 0
  br i1 %.not339, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
end_hunk_3
begin_hunk_4_@_ZN5clang25isBetterOverloadCandidateERNS_4SemaERKNS_17OverloadCandidateES4_NS_14SourceLocationENS_20OverloadCandidateSet16CandidateSetKindEb:bb.a

"_ZZN5clang25isBetterOverloadCandidateERNS_4SemaERKNS_17OverloadCandidateES4_NS_14SourceLocationENS_20OverloadCandidateSet16CandidateSetKindEbENK3$_0clERKNS_26ImplicitConversionSequenceE.exit363": ; preds = %bb.s, %bb.t, %bb.u
  %.0.i361 = phi i1 [ %i.ch, %bb.u ], [ false, %bb.s ], [ %.not.i.i362, %bb.t ] ; 2 uses
  %i.ci = xor i1 %.0.i361, true
  %cond12.not = and i1 %.0.i.ph.ph, %i.ci
  br i1 %cond12.not, label %.thread413, label %"_ZZN5clang25isBetterOverloadCandidateERNS_4SemaERKNS_17OverloadCandidateES4_NS_14SourceLocationENS_20OverloadCandidateSet16CandidateSetKindEbENK3$_0clERKNS_26ImplicitConversionSequenceE.exit363.thread"

"_ZZN5clang25isBetterOverloadCandidateERNS_4SemaERKNS_17OverloadCandidateES4_NS_14SourceLocationENS_20OverloadCandidateSet16CandidateSetKindEbENK3$_0clERKNS_26ImplicitConversionSequenceE.exit363.thread": ; preds = %bb.o, %"_ZZN5clang25isBetterOverloadCandidateERNS_4SemaERKNS_17OverloadCandidateES4_NS_14SourceLocationENS_20OverloadCandidateSet16CandidateSetKindEbENK3$_0clERKNS_26ImplicitConversionSequenceE.exit363"
  %.0.i361621 = phi i1 [ %.0.i361, %"_ZZN5clang25isBetterOverloadCandidateERNS_4SemaERKNS_17OverloadCandidateES4_NS_14SourceLocationENS_20OverloadCandidateSet16CandidateSetKindEbENK3$_0clERKNS_26ImplicitConversionSequenceE.exit363" ], [ false, %bb.o ]
  %.0.i.ph611620 = phi i1 [ %.0.i.ph.ph, %"_ZZN5clang25isBetterOverloadCandidateERNS_4SemaERKNS_17OverloadCandidateES4_NS_14SourceLocationENS_20OverloadCandidateSet16CandidateSetKindEbENK3$_0clERKNS_26ImplicitConversionSequenceE.exit363" ], [ false, %bb.o ]
  %.0.i.ph.not = xor i1 %.0.i.ph611620, true
  %not.brmerge = and i1 %.0.i361621, %.0.i.ph.not
  %.2262 = select i1 %not.brmerge, i1 true, i1 %.0260504 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge508, label %bb.o, !llvm.loop !2298

._crit_edge508:                                   ; preds = %"_ZZN5clang25isBetterOverloadCandidateERNS_4SemaERKNS_17OverloadCandidateES4_NS_14SourceLocationENS_20OverloadCandidateSet16CandidateSetKindEbENK3$_0clERKNS_26ImplicitConversionSequenceE.exit363.thread", %bb.n
  %.0260.lcssa = phi i1 [ %.2262.us, %bb.n ], [ %.2262, %"_ZZN5clang25isBetterOverloadCandidateERNS_4SemaERKNS_17OverloadCandidateES4_NS_14SourceLocationENS_20OverloadCandidateSet16CandidateSetKindEbENK3$_0clERKNS_26ImplicitConversionSequenceE.exit363.thread" ]
  br i1 %.0260.lcssa, label %.thread413, label %.lr.ph549

.lr.ph549:                                        ; preds = %._crit_edge508, %.lr.ph.split
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ck = zext nneg i32 %.0266 to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph549, %bb.ab
  %indvars.iv570 = phi i64 [ %i.ck, %.lr.ph549 ], [ %indvars.iv.next571, %bb.ab ] ; 3 uses
  %.0257547 = phi i1 [ false, %.lr.ph549 ], [ %.1258, %bb.ab ] ; 2 uses
  %.4264546 = phi i1 [ false, %.lr.ph549 ], [ %.5265, %bb.ab ] ; 2 uses
  %i.cl = load ptr, ptr %i.at, align 8, !tbaa !1302
  %i.cm = getelementptr inbounds nuw [152 x i8], ptr %i.cl, i64 %indvars.iv570
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !1302
  %i.co = getelementptr inbounds nuw [152 x i8], ptr %i.cn, i64 %indvars.iv570
  %i.cp = tail call fastcc noundef i32 @_ZL34CompareImplicitConversionSequencesRN5clang4SemaENS_14SourceLocationERKNS_26ImplicitConversionSequenceES5_(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %3, ptr noundef nonnull align 8 dereferenceable(152) %i.cm, ptr noundef nonnull align 8 dereferenceable(152) %i.co)
  switch i32 %i.cp, label %bb.ab [
    i32 -1, label %bb.w
    i32 1, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr %1, align 8, !tbaa !1477  ; 2 uses
  %.not317 = icmp eq ptr %i.cq, null
  br i1 %.not317, label %.thread413, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = load ptr, ptr %2, align 8, !tbaa !1477  ; 2 uses
  %.not318 = icmp eq ptr %i.cr, null
  br i1 %.not318, label %.thread413, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = load i32, ptr %i.d, align 8
  %i.ct = load i32, ptr %i.a, align 8
  %i.cu = xor i32 %i.ct, %i.cs
  %i.cv = and i32 %i.cu, 512
  %.not496 = icmp eq i32 %i.cv, 0
  br i1 %.not496, label %.thread413, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = tail call fastcc noundef zeroext i1 @_ZL14allowAmbiguityRN5clang10ASTContextEPKNS_12FunctionDeclES4_(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cr)
  br i1 %i.cw, label %bb.ab, label %.thread413

bb.ab:                                            ; preds = %bb.aa, %bb.v, %bb.w
  %.5265 = phi i1 [ %.4264546, %bb.v ], [ true, %bb.w ], [ %.4264546, %bb.aa ] ; 2 uses
  %.1258 = phi i1 [ %.0257547, %bb.v ], [ %.0257547, %bb.w ], [ true, %bb.aa ] ; 2 uses
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next571 to i32
  %exitcond572.not = icmp eq i32 %lftr.wideiv, %i.aw
  br i1 %exitcond572.not, label %._crit_edge550, label %bb.v, !llvm.loop !2299

._crit_edge550:                                   ; preds = %bb.ab
  %i.cx = xor i1 %.5265, true
  %i.cy = select i1 %i.cx, i1 true, i1 %.1258
  br i1 %i.cy, label %._crit_edge550.thread, label %.thread413

._crit_edge550.thread:                            ; preds = %bb.k, %._crit_edge550
  %i.cz = icmp eq i32 %4, 2
  br i1 %i.cz, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %._crit_edge550.thread
  %i.da = load ptr, ptr %1, align 8, !tbaa !1477  ; 3 uses
  %.not321 = icmp eq ptr %i.da, null
  br i1 %.not321, label %.thread424, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = load ptr, ptr %2, align 8, !tbaa !1477  ; 3 uses
  %.not322 = icmp eq ptr %i.db, null
  br i1 %.not322, label %.thread424, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 28
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = and i32 %i.dd, 127
  %i.df = icmp eq i32 %i.de, 38
  br i1 %i.df, label %bb.af, label %.thread424

bb.af:                                            ; preds = %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = and i32 %i.dh, 127
  %i.dj = icmp eq i32 %i.di, 38
  br i1 %i.dj, label %bb.ag, label %.thread424

bb.ag:                                            ; preds = %bb.af
  %i.dk = tail call fastcc noundef i32 @_ZL26compareConversionFunctionsRN5clang4SemaEPNS_12FunctionDeclES3_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.da, ptr noundef nonnull %i.db) ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.ah, label %.thread419

.thread419:                                       ; preds = %bb.ag
  %i.dm = icmp eq i32 %i.dk, -1
  br label %.thread413

bb.ah:                                            ; preds = %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.dp = tail call fastcc noundef i32 @_ZL34CompareStandardConversionSequencesRN5clang4SemaENS_14SourceLocationERKNS_26StandardConversionSequenceES5_(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %3, ptr noundef nonnull align 8 dereferenceable(56) %i.dn, ptr noundef nonnull align 8 dereferenceable(56) %i.do) ; 2 uses
  %.not323 = icmp eq i32 %i.dp, 0
  %i.dq = icmp eq i32 %i.dp, -1
  br i1 %.not323, label %.thread424, label %.thread413

bb.ai:                                            ; preds = %._crit_edge550.thread
  %i.dr = icmp eq i32 %4, 3
  %i.ds = icmp eq i32 %i.aw, 1
  %or.cond24 = and i1 %i.dr, %i.ds
  br i1 %or.cond24, label %bb.aj, label %.thread424

bb.aj:                                            ; preds = %bb.ai
  %i.dt = load ptr, ptr %1, align 8, !tbaa !1477  ; 2 uses
  %.not324 = icmp eq ptr %i.dt, null
  br i1 %.not324, label %.thread424, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = load ptr, ptr %2, align 8, !tbaa !1477  ; 2 uses
  %.not325 = icmp eq ptr %i.du, null
  br i1 %.not325, label %.thread424, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = and i32 %i.dw, 127
  %i.dy = icmp eq i32 %i.dx, 39                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = and i32 %i.ea, 127
  %i.ec = icmp eq i32 %i.eb, 39
  %i.ed = xor i1 %i.dy, %i.ec
  br i1 %i.ed, label %.thread413, label %.thread424

.thread424:                                       ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ah, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.ee = load i32, ptr %i.d, align 8
  %i.ef = load i32, ptr %i.a, align 8             ; 2 uses
  %i.eg = xor i32 %i.ef, %i.ee
  %i.eh = and i32 %i.eg, 32
  %.not327 = icmp eq i32 %i.eh, 0
  br i1 %.not327, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.thread424
  %i.ei = and i32 %i.ef, 32
  %i.ej = icmp ne i32 %i.ei, 0
  br label %.thread413

bb.an:                                            ; preds = %.thread424
  %i.ek = load ptr, ptr %1, align 8, !tbaa !1477  ; 2 uses
  %.not328 = icmp eq ptr %i.ek, null
  br i1 %.not328, label %.thread470, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.el = tail call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ek) #28
  %i.em = icmp ne ptr %i.el, null                 ; 3 uses
  %i.en = load ptr, ptr %2, align 8, !tbaa !1477  ; 2 uses
  %.not329 = icmp eq ptr %i.en, null
  br i1 %.not329, label %._crit_edge, label %bb.ap

.thread470:                                       ; preds = %bb.an
  %i.eo = load ptr, ptr %2, align 8, !tbaa !1477  ; 2 uses
  %.not329471 = icmp eq ptr %i.eo, null
  br i1 %.not329471, label %.thread428, label %.thread470._crit_edge

.thread470._crit_edge:                            ; preds = %.thread470
  %i.ep = tail call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.eo) #28
  %.not493 = icmp eq ptr %i.ep, null
  br i1 %.not493, label %.thread428, label %.thread413

._crit_edge:                                      ; preds = %bb.ao
  br i1 %i.em, label %.thread413, label %.thread428

bb.ap:                                            ; preds = %bb.ao
  %i.eq = tail call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.en) #28
  %i.er = icmp ne ptr %i.eq, null                 ; 3 uses
  %i.es = xor i1 %i.em, %i.er
  br i1 %i.es, label %.thread413, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %or.cond26 = and i1 %i.em, %i.er
  br i1 %or.cond26, label %bb.ar, label %.thread428

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %6, align 8
  %i.et = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ev, align 8 ; 3 uses
  %i.ew = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ey = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit

bb.at:                                            ; preds = %bb.ar
  %i.ez = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !1338
  br label %_ZN5clang4Decl14getDeclContextEv.exit

_ZN5clang4Decl14getDeclContextEv.exit:            ; preds = %bb.as, %bb.at
  %.0.i364 = phi ptr [ %i.ey, %bb.as ], [ %i.fb, %bb.at ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 8) ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i364, i64 8
  %i.fd = load i16, ptr %i.fc, align 8
  %i.fe = and i16 %i.fd, 127
  %i.ff = add nsw i16 %i.fe, -63
  %i.fg = icmp ult i16 %i.ff, -3
  %i.fh = getelementptr inbounds i8, ptr %.0.i364, i64 -64
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i.i365 = load i64, ptr %i.fi, align 8
  %i.fj = and i64 %.0.copyload.i.i.i.i.i365, -8
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %.0.copyload.i.i.i.i.i.i.i366 = load i64, ptr %i.fl, align 8 ; 3 uses
  %i.fm = and i64 %.0.copyload.i.i.i.i.i.i.i366, 4
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN5clang4Decl14getDeclContextEv.exit
  %i.fo = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i366 to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit368

bb.av:                                            ; preds = %_ZN5clang4Decl14getDeclContextEv.exit
  %i.fp = and i64 %.0.copyload.i.i.i.i.i.i.i366, -5
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1338
  br label %_ZN5clang4Decl14getDeclContextEv.exit368

_ZN5clang4Decl14getDeclContextEv.exit368:         ; preds = %bb.au, %bb.av
  %.0.i367 = phi ptr [ %i.fo, %bb.au ], [ %i.fr, %bb.av ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i367, i64 8
  %i.ft = load i16, ptr %i.fs, align 8
  %i.fu = and i16 %i.ft, 127
  %i.fv = add nsw i16 %i.fu, -63
  %i.fw = icmp ult i16 %i.fv, -3
  %i.fx = getelementptr inbounds i8, ptr %.0.i367, i64 -64
  %i.fy = load ptr, ptr %1, align 8, !tbaa !1477
  %i.fz = tail call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.fy) #28
  %i.ga = load ptr, ptr %2, align 8, !tbaa !1477
  %i.gb = tail call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ga) #28
  %i.gc = load ptr, ptr %1, align 8, !tbaa !1376
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = and i32 %i.ge, 127
  %i.gg = icmp eq i32 %i.gf, 38
  %i.gh = zext i1 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !1555
  br i1 %i.fg, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN5clang4Decl14getDeclContextEv.exit368
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.gm = tail call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.gl, ptr noundef nonnull %i.fh) #28
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN5clang4Decl14getDeclContextEv.exit368, %bb.aw
  %.sroa.0401.0 = phi i64 [ %i.gm, %bb.aw ], [ 0, %_ZN5clang4Decl14getDeclContextEv.exit368 ]
  br i1 %i.fw, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.gp = tail call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.go, ptr noundef nonnull %i.fx) #28
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.sroa.0399.0 = phi i64 [ %i.gp, %bb.ay ], [ 0, %bb.ax ]
  %i.gq = load i32, ptr %i.d, align 8
  %i.gr = load i32, ptr %i.a, align 8
  %i.gs = xor i32 %i.gr, %i.gq
  %i.gt = and i32 %i.gs, 512
  %i.gu = icmp ne i32 %i.gt, 0
  %i.gv = tail call noundef ptr @_ZN5clang4Sema26getMoreSpecializedTemplateEPNS_20FunctionTemplateDeclES2_NS_14SourceLocationENS_30TemplatePartialOrderingContextEjNS_8QualTypeES5_bb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.fz, ptr noundef %i.gb, i32 %3, i32 %i.gh, i32 noundef %i.gj, i64 %.sroa.0401.0, i64 %.sroa.0399.0, i1 noundef zeroext %i.gu, i1 noundef zeroext %5) #28 ; 2 uses
  %.not333 = icmp eq ptr %i.gv, null
  br i1 %.not333, label %.thread428, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gw = load ptr, ptr %1, align 8, !tbaa !1477
  %i.gx = tail call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.gw) #28
  %i.gy = icmp eq ptr %i.gv, %i.gx
  br label %.thread413

.thread428:                                       ; preds = %.thread470, %.thread470._crit_edge, %bb.az, %._crit_edge, %bb.aq
  %i.gz = load ptr, ptr %1, align 8, !tbaa !1477
  %i.ha = load ptr, ptr %2, align 8, !tbaa !1477
  %i.hb = load i32, ptr %i.d, align 8
  %i.hc = and i32 %i.hb, 512
  %i.hd = icmp ne i32 %i.hc, 0
  %i.he = load i32, ptr %i.a, align 8
  %i.hf = and i32 %i.he, 512
  %i.hg = icmp ne i32 %i.hf, 0
  %i.hh = tail call fastcc noundef ptr @_ZL33getMorePartialOrderingConstrainedRN5clang4SemaEPNS_12FunctionDeclES3_bb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.gz, ptr noundef %i.ha, i1 noundef zeroext %i.hd, i1 noundef zeroext %i.hg) ; 2 uses
  %.not334 = icmp eq ptr %i.hh, null
  br i1 %.not334, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.thread428
  %i.hi = load ptr, ptr %1, align 8, !tbaa !1477
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %.thread413, label %bb.bc

bb.bc:                                            ; preds = %.thread428, %bb.bb
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8), "align"(ptr %2, i64 8) ]
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i.i.i = load i64, ptr %7, align 8
  %i.hk = and i64 %.0.copyload.i.i.i.i, -8        ; 2 uses
  %.not.i.i371 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i371, label %_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit.thread, label %_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit

_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit: ; preds = %bb.bc
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 28
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = and i32 %i.hn, 127
  %i.hp = icmp eq i32 %i.ho, 55                   ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i372 = load i64, ptr %i.hq, align 8
  %i.hr = and i64 %.0.copyload.i.i.i.i372, -8     ; 2 uses
  %.not.i.i373 = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i373, label %_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit._ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit375_crit_edge, label %_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit375

_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit.thread: ; preds = %bb.bc
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i372478 = load i64, ptr %i.hs, align 8
  %i.ht = and i64 %.0.copyload.i.i.i.i372478, -8  ; 2 uses
  %.not.i.i373479 = icmp eq i64 %i.ht, 0
  br i1 %.not.i.i373479, label %.thread487, label %_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit.thread._ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit375_crit_edge

_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit.thread._ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit375_crit_edge: ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit.thread
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 28
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = and i32 %i.hw, 127
  %i.hy = icmp eq i32 %i.hx, 55
  br i1 %i.hy, label %.thread413, label %.thread487

_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit._ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit375_crit_edge: ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit
  br i1 %i.hp, label %.thread413, label %.thread487

_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit375: ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit
  %i.hz = inttoptr i64 %i.hr to ptr
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 28
  %i.ib = load i32, ptr %i.ia, align 4
  %i.ic = and i32 %i.ib, 127
  %i.id = icmp eq i32 %i.ic, 55                   ; 2 uses
  %i.ie = xor i1 %i.hp, %i.id
  br i1 %i.ie, label %.thread413, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit375
  br i1 %i.hp, label %bb.be, label %.thread487

bb.be:                                            ; preds = %bb.bd
  %i.if = load ptr, ptr %1, align 8, !tbaa !1477
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %.0.copyload.i.i.i.i.i.i.i376 = load i64, ptr %i.ig, align 8 ; 3 uses
  %i.ih = and i64 %.0.copyload.i.i.i.i.i.i.i376, 4
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ij = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i376 to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit378

bb.bg:                                            ; preds = %bb.be
  %i.ik = and i64 %.0.copyload.i.i.i.i.i.i.i376, -5
  %i.il = inttoptr i64 %i.ik to ptr
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !1338
  br label %_ZN5clang4Decl14getDeclContextEv.exit378

_ZN5clang4Decl14getDeclContextEv.exit378:         ; preds = %bb.bf, %bb.bg
  %.0.i377 = phi ptr [ %i.ij, %bb.bf ], [ %i.im, %bb.bg ]
  %i.in = getelementptr inbounds i8, ptr %.0.i377, i64 -64 ; 2 uses
  %i.io = load ptr, ptr %2, align 8, !tbaa !1477
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %.0.copyload.i.i.i.i.i.i.i379 = load i64, ptr %i.ip, align 8 ; 3 uses
  %i.iq = and i64 %.0.copyload.i.i.i.i.i.i.i379, 4
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZN5clang4Decl14getDeclContextEv.exit378
  %i.is = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i379 to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit381

bb.bi:                                            ; preds = %_ZN5clang4Decl14getDeclContextEv.exit378
  %i.it = and i64 %.0.copyload.i.i.i.i.i.i.i379, -5
  %i.iu = inttoptr i64 %i.it to ptr
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !1338
  br label %_ZN5clang4Decl14getDeclContextEv.exit381

_ZN5clang4Decl14getDeclContextEv.exit381:         ; preds = %bb.bh, %bb.bi
  %.0.i380 = phi ptr [ %i.is, %bb.bh ], [ %i.iv, %bb.bi ] ; 2 uses
  %i.iw = icmp eq ptr %.0.i380, null
  %i.ix = getelementptr inbounds i8, ptr %.0.i380, i64 -64 ; 2 uses
  %i.iy = select i1 %i.iw, ptr null, ptr %i.ix
  %i.iz = tail call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl13isDerivedFromEPKS0_(ptr noundef nonnull align 8 dereferenceable(144) %i.in, ptr noundef %i.iy) #28
  br i1 %i.iz, label %.thread413, label %bb.bj

bb.bj:                                            ; preds = %_ZN5clang4Decl14getDeclContextEv.exit381
  %i.ja = tail call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl13isDerivedFromEPKS0_(ptr noundef nonnull align 8 dereferenceable(144) %i.ix, ptr noundef nonnull %i.in) #28
  br i1 %i.ja, label %.thread413, label %.thread487

.thread487:                                       ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit.thread, %_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit.thread._ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit375_crit_edge, %_ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit._ZN4llvm15isa_and_nonnullIJN5clang26ConstructorUsingShadowDeclEEPNS1_9NamedDeclEEEbRKT0_.exit375_crit_edge, %bb.bd, %bb.bj
  %i.jb = load i32, ptr %i.d, align 8
  %i.jc = lshr i32 %i.jb, 8
  %i.jd = and i32 %i.jc, 3                        ; 2 uses
  %i.je = load i32, ptr %i.a, align 8
  %i.jf = lshr i32 %i.je, 8
  %i.jg = and i32 %i.jf, 3                        ; 2 uses
  %.not336 = icmp eq i32 %i.jd, %i.jg
  br i1 %.not336, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.thread487
  %i.jh = icmp samesign ult i32 %i.jd, %i.jg
  br label %.thread413

bb.bl:                                            ; preds = %.thread487
  %i.ji = load ptr, ptr %1, align 8, !tbaa !1477  ; 6 uses
  %.not.i.i382 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i382, label %_ZN4llvm16dyn_cast_or_nullIN5clang21CXXDeductionGuideDeclENS1_12FunctionDeclEEEDaPT0_.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 28
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = and i32 %i.jk, 127
  %i.jm = icmp eq i32 %i.jl, 40
  %spec.select.i.i.i = select i1 %i.jm, ptr %i.ji, ptr null
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang21CXXDeductionGuideDeclENS1_12FunctionDeclEEEDaPT0_.exit

_ZN4llvm16dyn_cast_or_nullIN5clang21CXXDeductionGuideDeclENS1_12FunctionDeclEEEDaPT0_.exit: ; preds = %bb.bl, %bb.bm
  %.0.i.i383 = phi ptr [ %spec.select.i.i.i, %bb.bm ], [ null, %bb.bl ] ; 4 uses
  %i.jn = load ptr, ptr %2, align 8, !tbaa !1477  ; 4 uses
  %.not.i.i384 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i384, label %.thread442, label %_ZN4llvm16dyn_cast_or_nullIN5clang21CXXDeductionGuideDeclENS1_12FunctionDeclEEEDaPT0_.exit387

_ZN4llvm16dyn_cast_or_nullIN5clang21CXXDeductionGuideDeclENS1_12FunctionDeclEEEDaPT0_.exit387: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang21CXXDeductionGuideDeclENS1_12FunctionDeclEEEDaPT0_.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 28
  %i.jp = load i32, ptr %i.jo, align 4            ; 2 uses
  %i.jq = and i32 %i.jp, 127
  %i.jr = icmp eq i32 %i.jq, 40
  %i.js = icmp ne ptr %.0.i.i383, null
  %or.cond28 = and i1 %i.js, %i.jr
  br i1 %or.cond28, label %bb.bn, label %.thread442

bb.bn:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang21CXXDeductionGuideDeclENS1_12FunctionDeclEEEDaPT0_.exit387
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i.i383, i64 28
  %i.ju = load i32, ptr %i.jt, align 4
  %i.jv = and i32 %i.ju, 512
  %i.jw = icmp ne i32 %i.jv, 0
  %i.jx = and i32 %i.jp, 512
  %i.jy = icmp ne i32 %i.jx, 0                    ; 2 uses
  %i.jz = xor i1 %i.jw, %i.jy
  br i1 %i.jz, label %.thread413, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i.i383, i64 84
  %i.kb = load i16, ptr %i.ka, align 4
  %i.kc = and i16 %i.kb, 768
  %i.kd = icmp eq i16 %i.kc, 256
  br i1 %i.kd, label %.thread413, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jn, i64 84
  %i.kf = load i16, ptr %i.ke, align 4
  %i.kg = and i16 %i.kf, 768
  %i.kh = icmp eq i16 %i.kg, 256
  br i1 %i.kh, label %.thread413, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i.i383, i64 168
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !2306 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jn, i64 168
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !2306 ; 2 uses
  %i.km = icmp ne ptr %i.kj, null
  %i.kn = icmp ne ptr %i.kl, null
  %or.cond30 = and i1 %i.km, %i.kn
  br i1 %or.cond30, label %bb.br, label %.thread442

bb.br:                                            ; preds = %bb.bq
  %i.ko = tail call noundef i32 @_ZNK5clang12FunctionDecl16getTemplatedKindEv(ptr noundef nonnull align 8 dereferenceable(168) %i.kj) #28
  %i.kp = tail call noundef i32 @_ZNK5clang12FunctionDecl16getTemplatedKindEv(ptr noundef nonnull align 8 dereferenceable(168) %i.kl) #28
  %i.kq = icmp ne i32 %i.kp, 0                    ; 2 uses
  %i.kr = icmp eq i32 %i.ko, 0
  %.not338 = xor i1 %i.kr, %i.kq
  br i1 %.not338, label %..thread442_crit_edge, label %.thread413

..thread442_crit_edge:                            ; preds = %bb.br
  %.pre = load ptr, ptr %1, align 8, !tbaa !1477
  br label %.thread442

.thread442:                                       ; preds = %..thread442_crit_edge, %_ZN4llvm16dyn_cast_or_nullIN5clang21CXXDeductionGuideDeclENS1_12FunctionDeclEEEDaPT0_.exit, %bb.bq, %_ZN4llvm16dyn_cast_or_nullIN5clang21CXXDeductionGuideDeclENS1_12FunctionDeclEEEDaPT0_.exit387
  %i.ks = phi ptr [ %.pre, %..thread442_crit_edge ], [ %i.ji, %_ZN4llvm16dyn_cast_or_nullIN5clang21CXXDeductionGuideDeclENS1_12FunctionDeclEEEDaPT0_.exit ], [ %i.ji, %bb.bq ], [ %i.ji, %_ZN4llvm16dyn_cast_or_nullIN5clang21CXXDeductionGuideDeclENS1_12FunctionDeclEEEDaPT0_.exit387 ] ; 3 uses
  %.not339 = icmp eq ptr %i.ks, null
  br i1 %.not339, label %.thread450, label %bb.bs

bb.bs:                                            ; preds = %.thread442
  %i.kt = load ptr, ptr %2, align 8, !tbaa !1477  ; 2 uses
  %.not340 = icmp eq ptr %i.kt, null
  br i1 %.not340, label %.thread454, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ku = tail call fastcc noundef i32 @_ZL20compareEnableIfAttrsRKN5clang4SemaEPKNS_12FunctionDeclES5_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.ks, ptr noundef nonnull %i.kt) ; 2 uses
  %.not341 = icmp eq i32 %i.ku, 0
  %i.kv = icmp eq i32 %i.ku, 1
  br i1 %.not341, label %bb.bu, label %.thread413

bb.bu:                                            ; preds = %bb.bt
  %.pr = load ptr, ptr %1, align 8, !tbaa !1477   ; 2 uses
  %.not342 = icmp eq ptr %.pr, null
  br i1 %.not342, label %.thread450, label %.thread454

.thread454:                                       ; preds = %bb.bs, %bb.bu
  %i.kw = phi ptr [ %.pr, %bb.bu ], [ %i.ks, %bb.bs ]
  %i.kx = tail call fastcc noundef zeroext i1 @_ZL31functionHasPassObjectSizeParamsPKN5clang12FunctionDeclE(ptr noundef nonnull %i.kw)
  br label %.thread450

.thread450:                                       ; preds = %.thread442, %.thread454, %bb.bu
  %i.ky = phi i1 [ false, %bb.bu ], [ %i.kx, %.thread454 ], [ false, %.thread442 ] ; 2 uses
  %i.kz = load ptr, ptr %2, align 8, !tbaa !1477  ; 2 uses
  %.not343 = icmp eq ptr %i.kz, null
  br i1 %.not343, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.thread450
  %i.la = tail call fastcc noundef zeroext i1 @_ZL31functionHasPassObjectSizeParamsPKN5clang12FunctionDeclE(ptr noundef nonnull %i.kz)
end_hunk_4
begin_hunk_5_@_ZN5clang24TemplateSpecCandidateSet5clearEv:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !516  ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx.i = shl nuw nsw i64 %i.d, 6
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i
  %.not5.i = icmp eq i32 %i.c, 0
  br i1 %.not5.i, label %_ZN5clang24TemplateSpecCandidateSet17destroyCandidatesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  tail call void @_ZN5clang20DeductionFailureInfo7DestroyEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i, label %_ZN5clang24TemplateSpecCandidateSet17destroyCandidatesEv.exit, label %.lr.ph.i, !llvm.loop !34

_ZN5clang24TemplateSpecCandidateSet17destroyCandidatesEv.exit: ; preds = %.lr.ph.i, %bb.a
  store i32 0, ptr %i.b, align 8, !tbaa !516
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang24TemplateSpecCandidateSet14NoteCandidatesERNS_4SemaENS_14SourceLocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1045) %0, ptr noundef nonnull align 8 dereferenceable(18640) %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.1536", align 8 ; 12 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !515
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.c, align 8, !tbaa !516
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 32, ptr %i.d, align 4, !tbaa !517
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !516  ; 3 uses
  %i.g = icmp ugt i32 %i.f, 32
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang21TemplateSpecCandidateEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.b, i64 noundef %i.h, i64 noundef 8) #28
  %.pre = load i32, ptr %i.e, align 8, !tbaa !516
  br label %_ZN4llvm15SmallVectorImplIPN5clang21TemplateSpecCandidateEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang21TemplateSpecCandidateEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.f, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !515    ; 2 uses
  %i.k = zext i32 %i.i to i64
  %.idx = shl nuw nsw i64 %i.k, 6
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not35 = icmp eq i32 %i.i, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang21TemplateSpecCandidateELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang21TemplateSpecCandidateEE7reserveEm.exit
  %.val = load ptr, ptr %3, align 8, !tbaa !515   ; 5 uses
  %.val30 = load i32, ptr %i.c, align 8, !tbaa !516 ; 3 uses
  %i.m = zext i32 %.val30 to i64                  ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.m, 3
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.val30, 0
  br i1 %.not.i.i.i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.o = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = xor i64 %i.p, 126
  call fastcc void @_ZSt16__introsort_loopIPPN5clang21TemplateSpecCandidateElN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_SA_T0_T1_(ptr noundef %.val, ptr noundef nonnull %i.n, i64 noundef %i.q, ptr nonnull readonly %1)
  %i.r = icmp ugt i32 %.val30, 16
  br i1 %i.r, label %.lr.ph23.i.i.i.i.i.i, label %bb.h

.lr.ph23.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 2 uses
  call fastcc void @_ZSt16__insertion_sortIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_SA_T0_(ptr noundef nonnull %.val, ptr noundef nonnull %i.s, ptr nonnull readonly %1)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 256
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_T0_.exit.i.i.i.i.i.i, %.lr.ph23.i.i.i.i.i.i
  %.022.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph23.i.i.i.i.i.i ], [ %i.av, %_ZSt25__unguarded_linear_insertIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_T0_.exit.i.i.i.i.i.i ] ; 6 uses
  %i.u = load ptr, ptr %.022.i.i.i.i.i.i, align 8, !tbaa !1737 ; 6 uses
  %.011.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.022.i.i.i.i.i.i, i64 -8 ; 4 uses
  %.0.val12.i.i.i.i.i.i.i = load ptr, ptr %.011.i.i.i.i.i.i.i, align 8, !tbaa !1737
  %i.v = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayclEPKN5clang21TemplateSpecCandidateES4_(ptr nonnull readonly %1, ptr noundef readonly %i.u, ptr noundef readonly %.0.val12.i.i.i.i.i.i.i)
  br i1 %i.v, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_T0_.exit.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.d
  %i.w = load ptr, ptr %.011.i.i.i.i.i.i.i, align 8, !tbaa !1737
  store ptr %i.w, ptr %.022.i.i.i.i.i.i, align 8, !tbaa !1737
  %.0.i11.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.022.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.0.val.i12.i.i.i.i.i.i = load ptr, ptr %.0.i11.i.i.i.i.i.i, align 8, !tbaa !1737 ; 2 uses
  %i.x = icmp eq ptr %i.u, %.0.val.i12.i.i.i.i.i.i
  br i1 %i.x, label %_ZSt25__unguarded_linear_insertIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_T0_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.z = getelementptr i8, ptr %i.u, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.backedge.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.0.val.i15.i.i.i.i.i.i = phi ptr [ %.0.val.i12.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.0.val.i.i.i.i.i.i.i, %.lr.ph.i.backedge.i.i.i.i.i.i ] ; 5 uses
  %.0.i14.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.backedge.i.i.i.i.i.i ] ; 4 uses
  %.014.i13.i.i.i.i.i.i = phi ptr [ %.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.0.i14.i.i.i.i.i.i, %.lr.ph.i.backedge.i.i.i.i.i.i ] ; 6 uses
  %i.aa = load i16, ptr %i.y, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val.i15.i.i.i.i.i.i, i64 16
  %i.ac = load i16, ptr %i.ab, align 8            ; 2 uses
  %i.ad = xor i16 %i.ac, %i.aa
  %i.ae = and i16 %i.ad, 255
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %switch.lookup

switch.lookup:                                    ; preds = %bb.e
  %i.af = add i16 %i.aa, 255
  %i.ag = and i16 %i.af, 255
  %i.ah = zext nneg i16 %i.ag to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZSt16__insertion_sortIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_SA_T0_.188, i64 %i.ah
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ai = add i16 %i.ac, 255
  %i.aj = and i16 %i.ai, 255
  %i.ak = zext nneg i16 %i.aj to i64
  %switch.gep59 = getelementptr inbounds nuw i8, ptr @switch.table._ZSt16__insertion_sortIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_SA_T0_.188, i64 %i.ak
  %switch.load60 = load i8, ptr %switch.gep59, align 1
  %i.al = icmp ult i8 %switch.load, %switch.load60
  br i1 %i.al, label %.lr.ph.i.backedge.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_T0_.exit.i.i.i.i.i.i

.lr.ph.i.backedge.i.i.i.i.i.i:                    ; preds = %.split..lr.ph.i.backedge_crit_edge.i.i.i.i.i.i, %bb.g, %_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit22.thread.i.i.i.i.i.i.i, %switch.lookup
  %i.am = phi ptr [ %.pre.i.i.i.i.i.i, %.split..lr.ph.i.backedge_crit_edge.i.i.i.i.i.i ], [ %.0.val.i15.i.i.i.i.i.i, %switch.lookup ], [ %.0.val.i15.i.i.i.i.i.i, %_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit22.thread.i.i.i.i.i.i.i ], [ %.0.val.i15.i.i.i.i.i.i, %bb.g ]
  store ptr %i.am, ptr %.014.i13.i.i.i.i.i.i, align 8, !tbaa !1737
  %.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i14.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !1737 ; 2 uses
  %i.an = icmp eq ptr %i.u, %.0.val.i.i.i.i.i.i.i
  br i1 %i.an, label %_ZSt25__unguarded_linear_insertIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_T0_.exit.i.i.i.i.i.i, label %bb.e, !llvm.loop !35

bb.f:                                             ; preds = %bb.e
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !1733 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val15.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_T0_.exit.i.i.i.i.i.i, label %_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit.i.i.i.i.i.i.i

_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.val15.i.i.i.i.i.i.i, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !554 ; 3 uses
  %i.ap = getelementptr i8, ptr %.0.val.i15.i.i.i.i.i.i, i64 8
  %.val14.i.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !1733 ; 2 uses
  %.not.i19.i.i.i.i.i.i.i = icmp eq ptr %.val14.i.i.i.i.i.i.i, null
  br i1 %.not.i19.i.i.i.i.i.i.i, label %_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit22.thread.i.i.i.i.i.i.i, label %_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit22.i.i.i.i.i.i.i

_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit22.i.i.i.i.i.i.i: ; preds = %_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit.i.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i.i.i.i, i64 24
  %.sroa.0.0.copyload.i.i20.i.i.i.i.i.i.i = load i32, ptr %i.aq, align 8, !tbaa !554 ; 2 uses
  %i.ar = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ar, label %_ZSt25__unguarded_linear_insertIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_T0_.exit.i.i.i.i.i.i, label %bb.g

_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit22.thread.i.i.i.i.i.i.i: ; preds = %_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit.i.i.i.i.i.i.i
  %.not8.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_T0_.exit.i.i.i.i.i.i, label %.lr.ph.i.backedge.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit22.i.i.i.i.i.i.i
  %i.as = icmp eq i32 %.sroa.0.0.copyload.i.i20.i.i.i.i.i.i.i, 0
  br i1 %i.as, label %.lr.ph.i.backedge.i.i.i.i.i.i, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.g
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !1738, !nonnull !87, !align !500
  %i.au = call noundef zeroext i1 @_ZNK5clang13SourceManager25isBeforeInTranslationUnitENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(776) %i.at, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i32 %.sroa.0.0.copyload.i.i20.i.i.i.i.i.i.i) #28
  br i1 %i.au, label %.split..lr.ph.i.backedge_crit_edge.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_T0_.exit.i.i.i.i.i.i

.split..lr.ph.i.backedge_crit_edge.i.i.i.i.i.i:   ; preds = %.split.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %.0.i14.i.i.i.i.i.i, align 8, !tbaa !1737
  br label %.lr.ph.i.backedge.i.i.i.i.i.i

_ZSt25__unguarded_linear_insertIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_T0_.exit.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i, %_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit22.thread.i.i.i.i.i.i.i, %_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit22.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.backedge.i.i.i.i.i.i, %switch.lookup, %.lr.ph.i.preheader.i.i.i.i.i.i, %bb.d
  %.09.lcssa.i.i.i.i.i.i.i = phi ptr [ %.022.i.i.i.i.i.i, %bb.d ], [ %.011.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i ], [ %.014.i13.i.i.i.i.i.i, %switch.lookup ], [ %.014.i13.i.i.i.i.i.i, %_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit22.thread.i.i.i.i.i.i.i ], [ %.014.i13.i.i.i.i.i.i, %.split.i.i.i.i.i.i ], [ %.0.i14.i.i.i.i.i.i, %.lr.ph.i.backedge.i.i.i.i.i.i ], [ %.014.i13.i.i.i.i.i.i, %_ZL23GetLocationForCandidatePKN5clang21TemplateSpecCandidateE.exit22.i.i.i.i.i.i.i ], [ %.014.i13.i.i.i.i.i.i, %bb.f ]
  store ptr %i.u, ptr %.09.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !1737
  %i.av = getelementptr inbounds nuw i8, ptr %.022.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.av, %i.n
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorIPN5clang21TemplateSpecCandidateELj32EEEN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEvOT_T0_.exit, label %bb.d, !llvm.loop !2357

bb.h:                                             ; preds = %bb.c
  call fastcc void @_ZSt16__insertion_sortIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_SA_T0_(ptr noundef nonnull %.val, ptr noundef nonnull %i.n, ptr nonnull readonly %1)
  br label %_ZN4llvm4sortIRNS_11SmallVectorIPN5clang21TemplateSpecCandidateELj32EEEN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEvOT_T0_.exit

_ZN4llvm4sortIRNS_11SmallVectorIPN5clang21TemplateSpecCandidateELj32EEEN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEvOT_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIPPN5clang21TemplateSpecCandidateEN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEEvT_T0_.exit.i.i.i.i.i.i, %bb.h
  %.pr = load i32, ptr %i.c, align 8, !tbaa !516  ; 7 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !515   ; 6 uses
  %i.ax = zext i32 %.pr to i64
  %.idx41 = shl nuw nsw i64 %i.ax, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx41
  %.not2837 = icmp eq i32 %.pr, 0
  br i1 %.not2837, label %.critedge, label %.lr.ph40

.lr.ph40:                                         ; preds = %_ZN4llvm4sortIRNS_11SmallVectorIPN5clang21TemplateSpecCandidateELj32EEEN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEvOT_T0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1490, !nonnull !87, !align !500
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !1522
  %.fr42 = freeze i32 %i.bc
  %i.bd = icmp eq i32 %.fr42, 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1044 ; 5 uses
  br i1 %i.bd, label %.lr.ph40.split.preheader, label %.lr.ph40.split.us

.lr.ph40.split.preheader:                         ; preds = %.lr.ph40
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !1737 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bf, i64 8) ]
  %i.bg = load i8, ptr %i.be, align 4, !tbaa !1745, !range !86, !noundef !87
  %i.bh = trunc nuw i8 %i.bg to i1
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bf, align 8
  %i.bi = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1733
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  call fastcc void @_ZL20DiagnoseBadDeductionRN5clang4SemaEPNS_9NamedDeclEPNS_4DeclERNS_20DeductionFailureInfoEjb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.bj, ptr noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(48) %i.bm, i32 noundef 0, i1 noundef zeroext %i.bh)
  %.not28 = icmp eq i32 %.pr, 1
  br i1 %.not28, label %.critedge, label %.lr.ph40.split.1

.lr.ph40.split.us:                                ; preds = %.lr.ph40, %.lr.ph40.split.us
  %.02638.us = phi ptr [ %i.bv, %.lr.ph40.split.us ], [ %i.aw, %.lr.ph40 ] ; 2 uses
  %i.bn = load ptr, ptr %.02638.us, align 8, !tbaa !1737 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bn, i64 8) ]
  %i.bo = load i8, ptr %i.be, align 4, !tbaa !1745, !range !86, !noundef !87
  %i.bp = trunc nuw i8 %i.bo to i1
  %.0.copyload.i.i.i.i.i.i.us = load i64, ptr %i.bn, align 8
  %i.bq = and i64 %.0.copyload.i.i.i.i.i.i.us, -8
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1733
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  call fastcc void @_ZL20DiagnoseBadDeductionRN5clang4SemaEPNS_9NamedDeclEPNS_4DeclERNS_20DeductionFailureInfoEjb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.br, ptr noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %i.bu, i32 noundef 0, i1 noundef zeroext %i.bp)
  %i.bv = getelementptr inbounds nuw i8, ptr %.02638.us, i64 8 ; 2 uses
  %.not28.us = icmp eq ptr %i.bv, %i.ay
  br i1 %.not28.us, label %.critedge, label %.lr.ph40.split.us, !llvm.loop !2358

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang21TemplateSpecCandidateEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang21TemplateSpecCandidateELb1EE9push_backES3_.exit
  %.036 = phi ptr [ %i.cf, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang21TemplateSpecCandidateELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang21TemplateSpecCandidateEE7reserveEm.exit ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1733
  %.not29 = icmp eq ptr %i.bx, null
  br i1 %.not29, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang21TemplateSpecCandidateELb1EE9push_backES3_.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.by = load i32, ptr %i.c, align 8, !tbaa !516 ; 2 uses
  %i.bz = load i32, ptr %i.d, align 4, !tbaa !517
  %.not.i = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i, label %bb.k, label %bb.j, !prof !565

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang21TemplateSpecCandidateELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %.036)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang21TemplateSpecCandidateELb1EE9push_backES3_.exit

bb.k:                                             ; preds = %bb.i
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %3, align 8, !tbaa !515
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %.036, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.c, align 8, !tbaa !516
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.c, align 8, !tbaa !516
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang21TemplateSpecCandidateELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang21TemplateSpecCandidateELb1EE9push_backES3_.exit: ; preds = %bb.k, %bb.j, %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %.036, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2359

.lr.ph40.split.1:                                 ; preds = %.lr.ph40.split.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1737 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ch, i64 8) ]
  %i.ci = load i8, ptr %i.be, align 4, !tbaa !1745, !range !86, !noundef !87
  %i.cj = trunc nuw i8 %i.ci to i1
  %.0.copyload.i.i.i.i.i.i.1 = load i64, ptr %i.ch, align 8
  %i.ck = and i64 %.0.copyload.i.i.i.i.i.i.1, -8
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1733
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  call fastcc void @_ZL20DiagnoseBadDeductionRN5clang4SemaEPNS_9NamedDeclEPNS_4DeclERNS_20DeductionFailureInfoEjb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.cl, ptr noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(48) %i.co, i32 noundef 0, i1 noundef zeroext %i.cj)
  %.not28.1 = icmp eq i32 %.pr, 2
  br i1 %.not28.1, label %.critedge, label %.lr.ph40.split.2

.lr.ph40.split.2:                                 ; preds = %.lr.ph40.split.1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1737 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cq, i64 8) ]
  %i.cr = load i8, ptr %i.be, align 4, !tbaa !1745, !range !86, !noundef !87
  %i.cs = trunc nuw i8 %i.cr to i1
  %.0.copyload.i.i.i.i.i.i.2 = load i64, ptr %i.cq, align 8
  %i.ct = and i64 %.0.copyload.i.i.i.i.i.i.2, -8
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1733
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  call fastcc void @_ZL20DiagnoseBadDeductionRN5clang4SemaEPNS_9NamedDeclEPNS_4DeclERNS_20DeductionFailureInfoEjb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.cu, ptr noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(48) %i.cx, i32 noundef 0, i1 noundef zeroext %i.cs)
  %.not28.2 = icmp eq i32 %.pr, 3
  br i1 %.not28.2, label %.critedge, label %.lr.ph40.split.3

.lr.ph40.split.3:                                 ; preds = %.lr.ph40.split.2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1737 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cz, i64 8) ]
  %i.da = load i8, ptr %i.be, align 4, !tbaa !1745, !range !86, !noundef !87
  %i.db = trunc nuw i8 %i.da to i1
  %.0.copyload.i.i.i.i.i.i.3 = load i64, ptr %i.cz, align 8
  %i.dc = and i64 %.0.copyload.i.i.i.i.i.i.3, -8
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1733
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  call fastcc void @_ZL20DiagnoseBadDeductionRN5clang4SemaEPNS_9NamedDeclEPNS_4DeclERNS_20DeductionFailureInfoEjb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.dd, ptr noundef %i.df, ptr noundef nonnull align 8 dereferenceable(48) %i.dg, i32 noundef 0, i1 noundef zeroext %i.db)
  %.not28.3 = icmp eq i32 %.pr, 4
  br i1 %.not28.3, label %.critedge, label %.lr.ph40.split.4

.lr.ph40.split.4:                                 ; preds = %.lr.ph40.split.3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i32 %2, i32 noundef 6427) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.di = add i32 %.pr, -4
  store i32 %i.di, ptr %i.a, align 4, !tbaa !554
  %i.dj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph40.split.us, %._crit_edge, %.lr.ph40.split.preheader, %.lr.ph40.split.1, %.lr.ph40.split.2, %.lr.ph40.split.3, %_ZN4llvm4sortIRNS_11SmallVectorIPN5clang21TemplateSpecCandidateELj32EEEN12_GLOBAL__N_139CompareTemplateSpecCandidatesForDisplayEEEvOT_T0_.exit, %.lr.ph40.split.4
  %i.dk = load ptr, ptr %3, align 8, !tbaa !515   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.b
  br i1 %i.dl, label %_ZN4llvm11SmallVectorIPN5clang21TemplateSpecCandidateELj32EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.dk) #28
  br label %_ZN4llvm11SmallVectorIPN5clang21TemplateSpecCandidateELj32EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang21TemplateSpecCandidateELj32EED2Ev.exit: ; preds = %.critedge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, -7) i64 @_ZN5clang4Sema30ExtractUnqualifiedFunctionTypeENS_8QualTypeE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = and i64 %1, -16
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !74  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16              ; 2 uses
  %.not.i = icmp eq i8 %i.e, 40
  br i1 %.not.i, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !75
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 16
  %i.l = icmp eq i8 %i.k, 40
  br i1 %i.l, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit: ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #28 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread.sink.split

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit
  %.pre = load ptr, ptr %i.b, align 16, !tbaa !74 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre50 = load i8, ptr %.phi.trans.insert, align 16
  br label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge, %bb.b
  %i.n = phi i8 [ %.pre50, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge ], [ %i.e, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %.pre, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge ], [ %i.c, %bb.b ] ; 4 uses
  %i.p = and i8 %i.n, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i8 %i.p, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i.i.i17 = load i64, ptr %i.q, align 8, !tbaa !75
  %i.r = and i64 %.sroa.0.0.copyload.i.i.i.i17, -16
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i8, ptr %i.u, align 16
  %i.w = and i8 %i.v, -2
  %spec.select.i.i.i.i.i.i.i.i5.i = icmp eq i8 %i.w, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit: ; preds = %bb.c
  %i.x = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.o) #28 ; 2 uses
  %.not14 = icmp eq ptr %i.x, null
  br i1 %.not14, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread_crit_edge, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread_crit_edge: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit
  %.pre51 = load ptr, ptr %i.b, align 16, !tbaa !74 ; 2 uses
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %.pre51, i64 16
  %.pre53 = load i8, ptr %.phi.trans.insert52, align 16
  br label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit
  %.1.i1843 = phi ptr [ %i.x, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit ], [ %i.o, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i1843, i64 16
  %i.z = load i24, ptr %i.y, align 16
  %i.aa = and i24 %i.z, 1048576
  %.not4.i = icmp eq i24 %i.aa, 0
  br i1 %.not4.i, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i
  %.05.i = phi ptr [ %.1.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.1.i1843, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ab, align 8
  %i.ac = and i64 %.0.copyload.i.i.i.i.i.i, -16
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !74 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i8, ptr %i.af, align 16
  %i.ah = and i8 %i.ag, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.ah, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ai = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ae) #28
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.d, %.lr.ph.i
  %.1.i.i = phi ptr [ %i.ai, %bb.d ], [ %i.ae, %.lr.ph.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.ak = load i24, ptr %i.aj, align 16
  %i.al = and i24 %i.ak, 1048576
  %.not.i19 = icmp eq i24 %i.al, 0
  br i1 %.not.i19, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread.sink.split, label %.lr.ph.i, !llvm.loop !9

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread_crit_edge, %bb.c
  %i.am = phi i8 [ %.pre53, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread_crit_edge ], [ %i.n, %bb.c ]
  %i.an = phi ptr [ %.pre51, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread_crit_edge ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i22 = icmp eq i8 %i.am, 30
  br i1 %.not.i22, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.0.0.copyload.i.i.i.i23 = load i64, ptr %i.ao, align 8, !tbaa !75
  %i.ap = and i64 %.sroa.0.0.copyload.i.i.i.i23, -16
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !74
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i8, ptr %i.as, align 16
  %i.au = icmp eq i8 %i.at, 30
  br i1 %i.au, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit: ; preds = %bb.e
  %i.av = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.an) #28 ; 2 uses
  %.not15 = icmp eq ptr %i.av, null
  br i1 %.not15, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread.sink.split

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread.sink.split: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, %bb.a
  %.0.lcssa.i.sink = phi ptr [ %i.c, %bb.a ], [ %i.an, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread ], [ %i.m, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit ], [ %.1.i1843, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread40 ], [ %i.av, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit ], [ %.1.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.sink, i64 32
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.aw, align 16, !tbaa !75
  br label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread: ; preds = %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread.sink.split, %bb.e, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit
  %.sroa.010.2 = phi i64 [ %1, %bb.e ], [ %1, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit ], [ %.sroa.0.0.copyload.i20, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread.sink.split ]
  %i.ax = and i64 %.sroa.010.2, -16
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !75
  %i.bb = and i64 %i.ba, -16
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !74
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = and i64 %i.be, -8
  ret i64 %i.bf
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 16
  %i.c = and i8 %i.b, -2
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i8 %i.c, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !tbaa !75
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i8, ptr %i.h, align 16
  %i.j = and i8 %i.i, -2
  %spec.select.i.i.i.i.i.i.i.i5 = icmp eq i8 %i.j, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %0) #28
  br label %bb.d

end_hunk_5
begin_hunk_6_@_ZN5clang4Sema34ResolveAddressOfOverloadedFunctionEPNS_4ExprENS_8QualTypeEbRNS_14DeclAccessPairEPb:bb.a
  %i.aab = load ptr, ptr %27, align 8, !tbaa !1762, !nonnull !87, !align !500 ; 2 uses
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.aaa, i64 %i.zz
  %i.aad = load ptr, ptr %i.c, align 8, !tbaa !2369
  %i.aae = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aad) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  call void @_ZN5clang8SemaBase5PDiagEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::PartialDiagnostic") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.aaf, i32 noundef 0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.aag = load ptr, ptr %27, align 8, !tbaa !1762, !nonnull !87, !align !500
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  call void @_ZN5clang8SemaBase5PDiagEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::PartialDiagnostic") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.aah, i32 noundef 2956) #28
  %i.aai = load ptr, ptr %i.ax, align 8, !tbaa !515
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !2380
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 40
  %.sroa.0.0.copyload.i.i91.i = load i64, ptr %i.aal, align 8, !tbaa !1249
  %i.aam = load ptr, ptr %18, align 8, !tbaa !559 ; 2 uses
  %.not.i.i.i.i92.i = icmp eq ptr %i.aam, null
  br i1 %.not.i.i.i.i92.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, label %_ZNK5clang17PartialDiagnosticlsINS_15DeclarationNameEvEERKS0_OT_.exit.i.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i: ; preds = %._crit_edge.i90.i
  %i.aan = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !560
  %i.aap = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.aao) ; 2 uses
  store ptr %i.aap, ptr %18, align 8, !tbaa !559
  br label %_ZNK5clang17PartialDiagnosticlsINS_15DeclarationNameEvEERKS0_OT_.exit.i.i

_ZNK5clang17PartialDiagnosticlsINS_15DeclarationNameEvEERKS0_OT_.exit.i.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, %._crit_edge.i90.i
  %i.aaq = phi ptr [ %i.aap, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i ], [ %i.aam, %._crit_edge.i90.i ] ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 1
  %i.aas = load i8, ptr %i.aaq, align 8, !tbaa !1412
  %i.aat = zext i8 %i.aas to i64
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aat
  store i8 9, ptr %i.aau, align 1, !tbaa !75
  %i.aav = load ptr, ptr %18, align 8, !tbaa !559 ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %i.aax = load i8, ptr %i.aav, align 8, !tbaa !1412 ; 2 uses
  %i.aay = add i8 %i.aax, 1
  store i8 %i.aay, ptr %i.aav, align 8, !tbaa !1412
  %i.aaz = zext i8 %i.aax to i64
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aaw, i64 %i.aaz
  store i64 %.sroa.0.0.copyload.i.i91.i, ptr %i.aba, align 8, !tbaa !1249
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.abb = load ptr, ptr %27, align 8, !tbaa !1762, !nonnull !87, !align !500
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  call void @_ZN5clang8SemaBase5PDiagEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::PartialDiagnostic") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.abc, i32 noundef 6383) #28
  %i.abd = load ptr, ptr %19, align 8, !tbaa !559 ; 2 uses
  %.not.i.i.i9.i.i = icmp eq ptr %i.abd, null
  br i1 %.not.i.i.i9.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i10.i.i, label %_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit13.i.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i10.i.i: ; preds = %_ZNK5clang17PartialDiagnosticlsINS_15DeclarationNameEvEERKS0_OT_.exit.i.i
  %i.abe = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !560
  %i.abg = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.abf) ; 2 uses
  store ptr %i.abg, ptr %19, align 8, !tbaa !559
  br label %_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit13.i.i

_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit13.i.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i10.i.i, %_ZNK5clang17PartialDiagnosticlsINS_15DeclarationNameEvEERKS0_OT_.exit.i.i
  %i.abh = phi ptr [ %i.abg, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i10.i.i ], [ %i.abd, %_ZNK5clang17PartialDiagnosticlsINS_15DeclarationNameEvEERKS0_OT_.exit.i.i ] ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 1
  %i.abj = load i8, ptr %i.abh, align 8, !tbaa !1412
  %i.abk = zext i8 %i.abj to i64
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.abk
  store i8 3, ptr %i.abl, align 1, !tbaa !75
  %i.abm = load ptr, ptr %19, align 8, !tbaa !559 ; 4 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abo = load i8, ptr %i.abm, align 8, !tbaa !1412 ; 2 uses
  %i.abp = add i8 %i.abo, 1                       ; 2 uses
  store i8 %i.abp, ptr %i.abm, align 8, !tbaa !1412
  %i.abq = zext i8 %i.abo to i64
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %i.abq
  store i64 0, ptr %i.abr, align 8, !tbaa !1249
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abm, i64 1
  %i.abt = zext i8 %i.abp to i64
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.abt
  store i8 3, ptr %i.abu, align 1, !tbaa !75
  %i.abv = load ptr, ptr %19, align 8, !tbaa !559 ; 3 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  %i.abx = load i8, ptr %i.abv, align 8, !tbaa !1412 ; 2 uses
  %i.aby = add i8 %i.abx, 1
  store i8 %i.aby, ptr %i.abv, align 8, !tbaa !1412
  %i.abz = zext i8 %i.abx to i64
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.abw, i64 %i.abz
  store i64 2, ptr %i.aca, align 8, !tbaa !1249
  %i.acb = load i8, ptr %i.f, align 8, !tbaa !2370, !range !86, !noundef !87
  %i.acc = trunc nuw i8 %i.acb to i1
  %.sroa.0.0.copyload.i93.i = load i64, ptr %i.e, align 8, !tbaa !75
  %i.acd = call ptr @_ZN5clang4Sema18getMostSpecializedENS_21UnresolvedSetIteratorES1_RNS_24TemplateSpecCandidateSetENS_14SourceLocationERKNS_17PartialDiagnosticES7_S7_bNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.aab, ptr %i.aaa, ptr %i.aac, ptr noundef nonnull align 8 dereferenceable(1045) %i.bb, i32 %i.aae, ptr noundef nonnull align 8 dereferenceable(20) %17, ptr noundef nonnull align 8 dereferenceable(20) %18, ptr noundef nonnull align 8 dereferenceable(20) %19, i1 noundef zeroext %i.acc, i64 %.sroa.0.0.copyload.i93.i) #28 ; 4 uses
  %i.ace = load ptr, ptr %19, align 8, !tbaa !559 ; 6 uses
  %.not.i.i.i94.i = icmp eq ptr %i.ace, null
  br i1 %.not.i.i.i94.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit13.i.i
  %i.acf = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !560 ; 4 uses
  %.not.i.i.i14.i.i = icmp eq ptr %i.acg, null
  br i1 %.not.i.i.i14.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ach = icmp uge ptr %i.ace, %i.acg
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acg, i64 14848 ; 2 uses
  %i.acj = icmp ule ptr %i.ace, %i.aci
  %or.cond.i.i.i.i.i.i = select i1 %i.ach, i1 %i.acj, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acg, i64 14976 ; 2 uses
  %i.acl = load i32, ptr %i.ack, align 8, !tbaa !561 ; 2 uses
  %i.acm = add i32 %i.acl, 1
  store i32 %i.acm, ptr %i.ack, align 8, !tbaa !561
  %i.acn = zext i32 %i.acl to i64
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %i.acn
  store ptr %i.ace, ptr %i.aco, align 8, !tbaa !556
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit.i.i

bb.co:                                            ; preds = %bb.cm
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.ace) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.ace, i64 noundef 928) #30
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit.i.i

_ZN5clang19StreamingDiagnosticD2Ev.exit.i.i:      ; preds = %bb.co, %bb.cn, %bb.cl, %_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit13.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.acp = load ptr, ptr %18, align 8, !tbaa !559 ; 6 uses
  %.not.i.i15.i.i = icmp eq ptr %i.acp, null
  br i1 %.not.i.i15.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit18.i.i, label %bb.cp

bb.cp:                                            ; preds = %_ZN5clang19StreamingDiagnosticD2Ev.exit.i.i
  %i.acq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !560 ; 4 uses
  %.not.i.i.i16.i.i = icmp eq ptr %i.acr, null
  br i1 %.not.i.i.i16.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit18.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.acs = icmp uge ptr %i.acp, %i.acr
  %i.act = getelementptr inbounds nuw i8, ptr %i.acr, i64 14848 ; 2 uses
  %i.acu = icmp ule ptr %i.acp, %i.act
  %or.cond.i.i.i.i17.i.i = select i1 %i.acs, i1 %i.acu, i1 false
  br i1 %or.cond.i.i.i.i17.i.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acr, i64 14976 ; 2 uses
  %i.acw = load i32, ptr %i.acv, align 8, !tbaa !561 ; 2 uses
  %i.acx = add i32 %i.acw, 1
  store i32 %i.acx, ptr %i.acv, align 8, !tbaa !561
  %i.acy = zext i32 %i.acw to i64
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.act, i64 %i.acy
  store ptr %i.acp, ptr %i.acz, align 8, !tbaa !556
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit18.i.i

bb.cs:                                            ; preds = %bb.cq
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.acp) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.acp, i64 noundef 928) #30
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit18.i.i

_ZN5clang19StreamingDiagnosticD2Ev.exit18.i.i:    ; preds = %bb.cs, %bb.cr, %bb.cp, %_ZN5clang19StreamingDiagnosticD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.ada = load ptr, ptr %17, align 8, !tbaa !559 ; 6 uses
  %.not.i.i19.i.i = icmp eq ptr %i.ada, null
  br i1 %.not.i.i19.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit22.i.i, label %bb.ct

bb.ct:                                            ; preds = %_ZN5clang19StreamingDiagnosticD2Ev.exit18.i.i
  %i.adb = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !560 ; 4 uses
  %.not.i.i.i20.i.i = icmp eq ptr %i.adc, null
  br i1 %.not.i.i.i20.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit22.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.add = icmp uge ptr %i.ada, %i.adc
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 14848 ; 2 uses
  %i.adf = icmp ule ptr %i.ada, %i.ade
  %or.cond.i.i.i.i21.i.i = select i1 %i.add, i1 %i.adf, i1 false
  br i1 %or.cond.i.i.i.i21.i.i, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adc, i64 14976 ; 2 uses
  %i.adh = load i32, ptr %i.adg, align 8, !tbaa !561 ; 2 uses
  %i.adi = add i32 %i.adh, 1
  store i32 %i.adi, ptr %i.adg, align 8, !tbaa !561
  %i.adj = zext i32 %i.adh to i64
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.ade, i64 %i.adj
  store ptr %i.ada, ptr %i.adk, align 8, !tbaa !556
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit22.i.i

bb.cw:                                            ; preds = %bb.cu
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.ada) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.ada, i64 noundef 928) #30
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit22.i.i

_ZN5clang19StreamingDiagnosticD2Ev.exit22.i.i:    ; preds = %bb.cw, %bb.cv, %bb.ct, %_ZN5clang19StreamingDiagnosticD2Ev.exit18.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.adl = load ptr, ptr %16, align 8, !tbaa !515 ; 2 uses
  %i.adm = load i32, ptr %i.zu, align 8, !tbaa !516
  %i.adn = zext i32 %i.adm to i64
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.adl, i64 %i.adn
  %.not30.i.i = icmp eq ptr %i.acd, %i.ado
  br i1 %.not30.i.i, label %bb.db, label %bb.cz

.lr.ph.i83.i:                                     ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit.i.i, %.lr.ph.preheader.i82.i
  %indvars.iv.i84.i = phi i64 [ 0, %.lr.ph.preheader.i82.i ], [ %indvars.iv.next.i86.i, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit.i.i ] ; 2 uses
  %i.adp = load ptr, ptr %i.ax, align 8, !tbaa !515 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.adp, i64 8) ]
  %i.adq = getelementptr inbounds nuw [16 x i8], ptr %i.adp, i64 %indvars.iv.i84.i ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !2380
  %.0.copyload.i.i.i.i.i85.i = load i64, ptr %i.adq, align 8
  %i.adt = and i64 %.0.copyload.i.i.i.i.i85.i, 3
  %i.adu = ptrtoint ptr %i.ads to i64
  %i.adv = or i64 %i.adt, %i.adu                  ; 2 uses
  %i.adw = load i32, ptr %i.zu, align 8, !tbaa !516 ; 2 uses
  %i.adx = load i32, ptr %i.zv, align 4, !tbaa !517
  %.not.i.i23.i.i = icmp ult i32 %i.adw, %i.adx
  br i1 %.not.i.i23.i.i, label %bb.cy, label %bb.cx, !prof !565

bb.cx:                                            ; preds = %.lr.ph.i83.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 %i.adv)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit.i.i

bb.cy:                                            ; preds = %.lr.ph.i83.i
  %i.ady = zext i32 %i.adw to i64
  %i.adz = load ptr, ptr %16, align 8, !tbaa !515
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %i.adz, i64 %i.ady
  store i64 %i.adv, ptr %i.aea, align 1
  %i.aeb = load i32, ptr %i.zu, align 8, !tbaa !516
  %i.aec = add i32 %i.aeb, 1
  store i32 %i.aec, ptr %i.zu, align 8, !tbaa !516
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit.i.i

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit.i.i: ; preds = %bb.cy, %bb.cx
  %indvars.iv.next.i86.i = add nuw nsw i64 %indvars.iv.i84.i, 1 ; 2 uses
  %.not.i87.i = icmp eq i64 %indvars.iv.next.i86.i, %i.zx
  br i1 %.not.i87.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i83.i, !llvm.loop !2367

bb.cz:                                            ; preds = %_ZN5clang19StreamingDiagnosticD2Ev.exit22.i.i
  call void @llvm.assume(i1 true) [ "align"(ptr %i.acd, i64 8) ]
  %i.aed = ptrtoint ptr %i.acd to i64
  %i.aee = ptrtoint ptr %i.adl to i64
  %i.aef = sub i64 %i.aed, %i.aee
  %i.aeg = ashr exact i64 %i.aef, 3
  %i.aeh = load ptr, ptr %i.ax, align 8, !tbaa !515 ; 2 uses
  %i.aei = getelementptr inbounds nuw [16 x i8], ptr %i.aeh, i64 %i.aeg
  %i.aej = load i64, ptr %i.aei, align 8, !tbaa !75
  store i64 %i.aej, ptr %i.aeh, align 8, !tbaa !75
  %.0.copyload.i.i.i.i.i.i.i95.i = load i64, ptr %i.acd, align 8
  %i.aek = and i64 %.0.copyload.i.i.i.i.i.i.i95.i, -8
  %i.ael = inttoptr i64 %i.aek to ptr
  %i.aem = load ptr, ptr %i.ax, align 8, !tbaa !515 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  store ptr %i.ael, ptr %i.aen, align 8, !tbaa !2380
  %i.aeo = load i32, ptr %i.az, align 8, !tbaa !516
  switch i32 %i.aeo, label %.sink.split.i.i.i98.i [
    i32 1, label %_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE6resizeEm.exit.i99.i
    i32 0, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz
  %i.aep = load i32, ptr %i.ba, align 4, !tbaa !517
  %i.aeq = icmp eq i32 %i.aep, 0
  br i1 %i.aeq, label %_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE7reserveEm.exit.i.i.i100.i, label %.lr.ph.preheader.i.i.i96.i

_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE7reserveEm.exit.i.i.i100.i: ; preds = %bb.da
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull %i.ay, i64 noundef 1, i64 noundef 16) #28
  %.pre.i.i.i101.i = load i32, ptr %i.az, align 8, !tbaa !516 ; 2 uses
  %.not11.i.i.i102.i = icmp eq i32 %.pre.i.i.i101.i, 1
  br i1 %.not11.i.i.i102.i, label %.sink.split.i.i.i98.i, label %_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE7reserveEm.exit.i.i.i100..lr.ph.preheader.i.i.i96_crit_edge.i

_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE7reserveEm.exit.i.i.i100..lr.ph.preheader.i.i.i96_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE7reserveEm.exit.i.i.i100.i
  %.pre135.i = load ptr, ptr %i.ax, align 8, !tbaa !515
  %i.aer = zext i32 %.pre.i.i.i101.i to i64
  br label %.lr.ph.preheader.i.i.i96.i

.lr.ph.preheader.i.i.i96.i:                       ; preds = %_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE7reserveEm.exit.i.i.i100..lr.ph.preheader.i.i.i96_crit_edge.i, %bb.da
  %i.aes = phi ptr [ %.pre135.i, %_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE7reserveEm.exit.i.i.i100..lr.ph.preheader.i.i.i96_crit_edge.i ], [ %i.aem, %bb.da ]
  %.pre-phi.i.i.in52.i.i = phi i64 [ %i.aer, %_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE7reserveEm.exit.i.i.i100..lr.ph.preheader.i.i.i96_crit_edge.i ], [ 0, %bb.da ] ; 2 uses
  %i.aet = getelementptr [16 x i8], ptr %i.aes, i64 %.pre-phi.i.i.in52.i.i
  %i.aeu = shl nuw nsw i64 %.pre-phi.i.i.in52.i.i, 4
  %i.aev = sub nsw i64 16, %i.aeu
  call void @llvm.memset.p0.i64(ptr align 8 %i.aet, i8 0, i64 %i.aev, i1 false)
  br label %.sink.split.i.i.i98.i

.sink.split.i.i.i98.i:                            ; preds = %.lr.ph.preheader.i.i.i96.i, %_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE7reserveEm.exit.i.i.i100.i, %bb.cz
  store i32 1, ptr %i.az, align 8, !tbaa !516
  br label %_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE6resizeEm.exit.i99.i

bb.db:                                            ; preds = %_ZN5clang19StreamingDiagnosticD2Ev.exit22.i.i
  %i.aew = load i8, ptr %i.f, align 8, !tbaa !2370, !range !86, !noundef !87
  %i.aex = load i8, ptr %i.ab, align 1, !tbaa !2374, !range !86, !noundef !87
  %i.aey = or i8 %i.aex, %i.aew
  store i8 %i.aey, ptr %i.ab, align 1, !tbaa !2374
  br label %_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE6resizeEm.exit.i99.i

_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE6resizeEm.exit.i99.i: ; preds = %bb.db, %.sink.split.i.i.i98.i, %bb.cz
  %i.aez = load ptr, ptr %16, align 8, !tbaa !515 ; 2 uses
  %i.afa = icmp eq ptr %i.aez, %i.zt
  br i1 %i.afa, label %_ZN12_GLOBAL__N_125AddressOfFunctionResolver41EliminateAllExceptMostSpecializedTemplateEv.exit.i, label %bb.dc

bb.dc:                                            ; preds = %_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE6resizeEm.exit.i99.i
  call void @free(ptr noundef %i.aez) #28
  br label %_ZN12_GLOBAL__N_125AddressOfFunctionResolver41EliminateAllExceptMostSpecializedTemplateEv.exit.i

_ZN12_GLOBAL__N_125AddressOfFunctionResolver41EliminateAllExceptMostSpecializedTemplateEv.exit.i: ; preds = %bb.dc, %_ZN4llvm15SmallVectorImplISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEEE6resizeEm.exit.i99.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %_ZN12_GLOBAL__N_125AddressOfFunctionResolverC2ERN5clang4SemaEPNS1_4ExprERKNS1_8QualTypeEb.exitthread-pre-split

_ZN12_GLOBAL__N_125AddressOfFunctionResolverC2ERN5clang4SemaEPNS1_4ExprERKNS1_8QualTypeEb.exitthread-pre-split: ; preds = %_ZN12_GLOBAL__N_125AddressOfFunctionResolver41EliminateAllExceptMostSpecializedTemplateEv.exit.i, %_ZN12_GLOBAL__N_125AddressOfFunctionResolver46EliminateLessPartialOrderingConstrainedMatchesEv.exit.i, %_ZN12_GLOBAL__N_125AddressOfFunctionResolver42FindAllFunctionsThatMatchTargetTypeExactlyEv.exit.i, %bb.q, %_ZNK5clang12OverloadExpr25copyTemplateArgumentsIntoERNS_24TemplateArgumentListInfoE.exit.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEELb1EE9push_backES6_.exit.i
  %.val27.pr = load i32, ptr %i.az, align 8, !tbaa !516
  br label %_ZN12_GLOBAL__N_125AddressOfFunctionResolverC2ERN5clang4SemaEPNS1_4ExprERKNS1_8QualTypeEb.exit

_ZN12_GLOBAL__N_125AddressOfFunctionResolverC2ERN5clang4SemaEPNS1_4ExprERKNS1_8QualTypeEb.exit: ; preds = %_ZN12_GLOBAL__N_125AddressOfFunctionResolverC2ERN5clang4SemaEPNS1_4ExprERKNS1_8QualTypeEb.exitthread-pre-split, %_ZN12_GLOBAL__N_125AddressOfFunctionResolver42FindAllFunctionsThatMatchTargetTypeExactlyEv.exit.thread188.i, %bb.bk, %_ZN4llvm6all_ofIRNS_11SmallVectorISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEELj4EEEZN12_GLOBAL__N_125AddressOfFunctionResolver38eliminiateSuboptimalOverloadCandidatesEvEUlRKS7_E_EEbOT_T0_.exit.thread.i.i, %.sink.split.i.i.i.i
  %.val27 = phi i32 [ %.val27.pr, %_ZN12_GLOBAL__N_125AddressOfFunctionResolverC2ERN5clang4SemaEPNS1_4ExprERKNS1_8QualTypeEb.exitthread-pre-split ], [ %i.ph, %_ZN12_GLOBAL__N_125AddressOfFunctionResolver42FindAllFunctionsThatMatchTargetTypeExactlyEv.exit.thread188.i ], [ %.pre.i, %bb.bk ], [ %i.xc, %_ZN4llvm6all_ofIRNS_11SmallVectorISt4pairIN5clang14DeclAccessPairEPNS3_12FunctionDeclEELj4EEEZN12_GLOBAL__N_125AddressOfFunctionResolver38eliminiateSuboptimalOverloadCandidatesEvEUlRKS7_E_EEbOT_T0_.exit.thread.i.i ], [ 1, %.sink.split.i.i.i.i ] ; 3 uses
  br i1 %3, label %bb.dd, label %.thread128

bb.dd:                                            ; preds = %_ZN12_GLOBAL__N_125AddressOfFunctionResolverC2ERN5clang4SemaEPNS1_4ExprERKNS1_8QualTypeEb.exit
  %.val28 = load i8, ptr %i.ab, align 1, !tbaa !2374, !range !86, !noundef !87
  %i.afb = trunc nuw i8 %.val28 to i1             ; 2 uses
  %i.afc = icmp ne i32 %.val27, 0
  %or.cond.not = or i1 %i.afc, %i.afb
  br i1 %or.cond.not, label %bb.dn, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %.val = load i8, ptr %i.j, align 8, !tbaa !2371, !range !86, !noundef !87
  %i.afd = getelementptr inbounds nuw i8, ptr %27, i64 66
  %.val26 = load i8, ptr %i.afd, align 2
  %i.afe = trunc nuw i8 %.val to i1
  %i.aff = trunc nuw i8 %.val26 to i1
  %not. = xor i1 %i.afe, true
  %i.afg = select i1 %not., i1 true, i1 %i.aff
  br i1 %i.afg, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.afh = load ptr, ptr %27, align 8, !tbaa !1762, !nonnull !87, !align !500
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 8
  %i.afj = load ptr, ptr %i.aq, align 8, !tbaa !2375
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 24
  %.sroa.0.0.copyload.i.i.i35 = load i32, ptr %i.afk, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.afi, i32 %.sroa.0.0.copyload.i.i.i35, i32 noundef 2957) #28
  %i.afl = load ptr, ptr %i.d, align 8, !tbaa !2376, !nonnull !87, !align !500
  %i.afm = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.afl)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.afn = load ptr, ptr %i.aq, align 8, !tbaa !2375
  %i.afo = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afn) #29
  store i64 %i.afo, ptr %15, align 8
  %i.afp = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.afm, ptr noundef nonnull align 4 dereferenceable(8) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZNK12_GLOBAL__N_125AddressOfFunctionResolver22ComplainNoMatchesFoundEv.exit

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.afq = load ptr, ptr %27, align 8, !tbaa !1762, !nonnull !87, !align !500
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  %i.afs = load ptr, ptr %i.aq, align 8, !tbaa !2375
  %i.aft = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afs) #29
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.afr, i32 %i.aft, i32 noundef 2958) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.afu = load ptr, ptr %i.aq, align 8, !tbaa !2375
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 16
  %.sroa.0.0.copyload.i.i.i36 = load i64, ptr %i.afv, align 8, !tbaa !1249
  store i64 %.sroa.0.0.copyload.i.i.i36, ptr %12, align 8
  %i.afw = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %i.afx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.afw, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.afy = load ptr, ptr %i.aq, align 8, !tbaa !2375
  %i.afz = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afy) #29
  store i64 %i.afz, ptr %13, align 8
  %i.aga = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.afx, ptr noundef nonnull align 4 dereferenceable(8) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.agb = load i32, ptr %i.be, align 8, !tbaa !516
  %.not.i.i.i37 = icmp eq i32 %i.agb, 0
  br i1 %.not.i.i.i37, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.agc = load ptr, ptr %27, align 8, !tbaa !1762, !nonnull !87, !align !500
  %i.agd = load ptr, ptr %i.aq, align 8, !tbaa !2375
  %.sroa.04.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !75
  call void @_ZN5clang4Sema25NoteAllOverloadCandidatesEPNS_4ExprENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.agc, ptr noundef %i.agd, i64 %.sroa.04.0.copyload.i, i1 noundef zeroext true)
  br label %_ZNK12_GLOBAL__N_125AddressOfFunctionResolver22ComplainNoMatchesFoundEv.exit

bb.di:                                            ; preds = %bb.dg
  %i.age = load ptr, ptr %i.aq, align 8, !tbaa !2375 ; 4 uses
  %i.agf = load i16, ptr %i.age, align 8
  %i.agg = and i16 %i.agf, 511
  %i.agh = icmp eq i16 %i.agg, 24
  %.1.v.i.i.i.i = select i1 %i.agh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.age, i64 %.1.v.i.i.i.i ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.age, i64 4
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !75 ; 2 uses
  %i.agk = zext i32 %i.agj to i64
  %.idx.i = shl nuw nsw i64 %i.agk, 3
  %i.agl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx.i
  %.not1416.i = icmp eq i32 %i.agj, 0
  br i1 %.not1416.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.dm
  %.pre18.i = load ptr, ptr %i.aq, align 8, !tbaa !2375
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.di
  %i.agm = phi ptr [ %.pre18.i, %._crit_edge.loopexit.i ], [ %i.age, %bb.di ]
  %i.agn = load ptr, ptr %27, align 8, !tbaa !1762, !nonnull !87, !align !500
  %i.ago = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.agm) #29
  call void @_ZN5clang24TemplateSpecCandidateSet14NoteCandidatesERNS_4SemaENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(1045) %i.bb, ptr noundef nonnull align 8 dereferenceable(18640) %i.agn, i32 %i.ago)
  br label %_ZNK12_GLOBAL__N_125AddressOfFunctionResolver22ComplainNoMatchesFoundEv.exit

.lr.ph.i:                                         ; preds = %bb.di, %bb.dm
  %.sroa.010.017.i = phi ptr [ %i.ahb, %bb.dm ], [ %.1.i.i.i.i, %bb.di ] ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.010.017.i, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.010.017.i, align 8
  %i.agp = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.agq = inttoptr i64 %i.agp to ptr             ; 3 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 28
  %i.ags = load i32, ptr %i.agr, align 4
  %i.agt = and i32 %i.ags, 127                    ; 2 uses
  switch i32 %i.agt, label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i [
    i32 54, label %bb.dj
    i32 55, label %bb.dj
    i32 77, label %bb.dj
    i32 79, label %bb.dj
  ]

bb.dj:                                            ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.agu = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.agq) #29 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.agu, i64 28
  %.pre.i38 = load i32, ptr %.phi.trans.insert.i, align 4
  %.pre19.i = and i32 %.pre.i38, 127
  br label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i

_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i:  ; preds = %bb.dj, %.lr.ph.i
  %.pre-phi.i = phi i32 [ %i.agt, %.lr.ph.i ], [ %.pre19.i, %bb.dj ]
  %.0.i.i = phi ptr [ %i.agq, %.lr.ph.i ], [ %i.agu, %bb.dj ] ; 2 uses
  %i.agv = add nsw i32 %.pre-phi.i, -41
  %i.agw = icmp ult i32 %i.agv, -6
  br i1 %i.agw, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i
  %i.agx = call fastcc noundef zeroext i1 @_ZL31functionHasPassObjectSizeParamsPKN5clang12FunctionDeclE(ptr noundef nonnull %.0.i.i)
  br i1 %i.agx, label %bb.dm, label %bb.dl

end_hunk_6
begin_hunk_7_@_ZN5clang4Sema23CreateOverloadedUnaryOpENS_14SourceLocationENS_17UnaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprEb:bb.a
  br i1 %.not.i.i125, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !1228, !nonnull !87, !align !500 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 19336
  %.sroa.0.0.copyload.i126 = load i64, ptr %i.ba, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.0.0.copyload.i.i127 = load i64, ptr %i.bc, align 8, !tbaa !554 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i127 to i32
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !1552
  %i.be = icmp ne i32 %i.bd, %.sroa.01.0.extract.trunc.i.i.i.i
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i127, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp ne i32 %i.bg, %.sroa.2.0.extract.trunc.i.i.i.i
  %.not3.i.i.i = select i1 %i.be, i1 true, i1 %i.bh
  %i.bi = load i64, ptr %i.bb, align 8
  %.sroa.01.0.insert.insert.i = select i1 %.not3.i.i.i, i64 %i.bi, i64 0
  %i.bj = call noundef ptr @_ZN5clang13UnaryOperator6CreateERKNS_10ASTContextEPNS_4ExprENS_17UnaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationEbNS_17FPOptionsOverrideE(ptr noundef nonnull align 8 dereferenceable(23904) %i.az, ptr noundef nonnull %.5.ph, i32 noundef %2, i64 %.sroa.0.0.copyload.i126, i32 noundef %.0115, i32 noundef 0, i32 %1, i1 noundef zeroext false, i64 %.sroa.01.0.insert.insert.i) #28
  %i.bk = ptrtoint ptr %i.bj to i64
  br label %bb.bp

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.bm = load ptr, ptr %3, align 8, !tbaa !515   ; 2 uses
  %i.bn = zext i32 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bl, ptr noundef null, i64 0, ptr null, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext true, i64 %i.bp, i64 %i.bq, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bs = icmp eq ptr %i.br, inttoptr (i64 1 to ptr)
  br i1 %i.bs, label %bb.bp, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !1228, !nonnull !87, !align !500 ; 2 uses
  %i.bv = and i64 %i.bt, -2
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 19336
  %.sroa.0.0.copyload.i128 = load i64, ptr %i.bx, align 8, !tbaa !75
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.0.0.copyload.i.i129 = load i64, ptr %i.bz, align 8, !tbaa !554 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i130 = trunc i64 %.sroa.0.0.copyload.i.i129 to i32
  %i.ca = load i32, ptr %i.by, align 8, !tbaa !1552
  %i.cb = icmp ne i32 %i.ca, %.sroa.01.0.extract.trunc.i.i.i.i130
  %.sroa.2.0.extract.shift.i.i.i.i131 = lshr i64 %.sroa.0.0.copyload.i.i129, 32
  %.sroa.2.0.extract.trunc.i.i.i.i132 = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i131 to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = icmp ne i32 %i.cd, %.sroa.2.0.extract.trunc.i.i.i.i132
  %.not3.i.i.i133 = select i1 %i.cb, i1 true, i1 %i.ce
  %i.cf = load i64, ptr %i.by, align 8
  %.sroa.01.0.insert.insert.i134 = select i1 %.not3.i.i.i133, i64 %i.cf, i64 0
  %i.cg = call noundef ptr @_ZN5clang19CXXOperatorCallExpr6CreateERKNS_10ASTContextENS_22OverloadedOperatorKindEPNS_4ExprEN4llvm8ArrayRefIS6_EENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideENS_8CallExpr11ADLCallKindEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bu, i32 noundef %i.c, ptr noundef %i.bw, ptr nonnull %i.a, i64 %.0114, i64 %.sroa.0.0.copyload.i128, i32 noundef 0, i32 %1, i64 %.sroa.01.0.insert.insert.i134, i1 noundef zeroext false, i1 noundef zeroext false) #28
  %i.ch = ptrtoint ptr %i.cg to i64
  br label %bb.bp

bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.ci, ptr %9, align 8, !tbaa !515
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 0, ptr %i.cj, align 8, !tbaa !516
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 16, ptr %i.ck, align 4, !tbaa !517
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 2704
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 2728
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !1328
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 2712
  store i32 16, ptr %i.cn, align 8, !tbaa !1327
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 2716
  store i32 0, ptr %i.co, align 4, !tbaa !1326
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 2720
  store i8 1, ptr %i.cp, align 8, !tbaa !1325
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 2856
  store ptr null, ptr %i.cq, align 8, !tbaa !1330
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 2864 ; 2 uses
  store i32 0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 2872
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 2888
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 2904
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cs, i8 0, i64 16, i1 false)
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !515
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 2896
  store i32 0, ptr %i.cv, align 8, !tbaa !516
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 2900
  store i32 4, ptr %i.cw, align 4, !tbaa !517
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 2936
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 2952 ; 2 uses
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !515
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 2944
  store i32 0, ptr %i.cz, align 8, !tbaa !516
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 2948
  store i32 0, ptr %i.da, align 4, !tbaa !517
  store i32 %1, ptr %i.cy, align 8, !tbaa !554
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 2956
  store i32 1, ptr %i.db, align 4, !tbaa !1329
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 2960
  store i64 0, ptr %i.dc, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 2968
  store i8 0, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !1250
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 2972
  store i32 0, ptr %i.dd, align 4, !tbaa !1318
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 7840
  store i32 0, ptr %i.de, align 8, !tbaa !1451
  call void @_ZN5clang4Sema30AddNonMemberOperatorCandidatesERKNS_17UnresolvedSetImplEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetEPNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr nonnull %i.a, i64 %.0114, ptr noundef nonnull align 8 dereferenceable(7844) %9, ptr noundef null)
  call void @_ZN5clang4Sema27AddMemberOperatorCandidatesENS_22OverloadedOperatorKindENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetENS_27OverloadCandidateParamOrderE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef %i.c, i32 %1, ptr nonnull %i.a, i64 %.0114, ptr noundef nonnull align 8 dereferenceable(7844) %9, i8 noundef signext 0)
  br i1 %5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZN5clang4Sema36AddArgumentDependentLookupCandidatesENS_15DeclarationNameENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEEPNS_24TemplateArgumentListInfoERNS_20OverloadCandidateSetEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.j, i32 %1, ptr nonnull %i.a, i64 %.0114, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(7844) %9, i1 noundef zeroext false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @_ZN5clang4Sema28AddBuiltinOperatorCandidatesENS_22OverloadedOperatorKindENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef %i.c, i32 %1, ptr nonnull %i.a, i64 %.0114, ptr noundef nonnull align 8 dereferenceable(7844) %9)
  %i.df = load i32, ptr %i.cj, align 8, !tbaa !516
  %i.dg = zext i32 %i.df to i64
  %i.dh = load i32, ptr %i.cr, align 8
  %i.di = and i32 %i.dh, 1073741823
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = add nuw nsw i64 %i.dj, %i.dg
  %i.dl = icmp samesign ugt i64 %i.dk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.dm = call noundef i32 @_ZN5clang20OverloadCandidateSet18BestViableFunctionERNS_4SemaENS_14SourceLocationERPNS_17OverloadCandidateE(ptr noundef nonnull align 8 dereferenceable(7844) %9, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  switch i32 %i.dm, label %default.unreachable287 [
    i32 0, label %bb.t
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.ay
  ]

bb.t:                                             ; preds = %bb.s
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !1468 ; 8 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1477 ; 11 uses
  %.not = icmp eq ptr %i.do, null
  br i1 %.not, label %bb.ak, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = and i32 %i.dq, 124
  %.not259 = icmp eq i32 %i.dr, 36
  br i1 %.not259, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %.sroa.036.0.copyload = load i64, ptr %i.ds, align 8, !tbaa !75
  %i.dt = call noundef i32 @_ZN5clang4Sema25CheckMemberOperatorAccessENS_14SourceLocationEPNS_4ExprES3_NS_14DeclAccessPairE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull %.5.ph, ptr noundef null, i64 %.sroa.036.0.copyload) #28 ; 0 uses
  %i.du = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isExplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %i.do) #28
  br i1 %i.du, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dv = call i64 @_ZN5clang4Sema32InitializeExplicitObjectArgumentERS0_PNS_4ExprEPNS_12FunctionDeclE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.5.ph, ptr noundef nonnull %i.do)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dn, i64 8) ]
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ds, align 8
  %i.dw = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = call i64 @_ZN5clang4Sema43PerformImplicitObjectArgumentInitializationEPNS_4ExprENS_19NestedNameSpecifierEPNS_9NamedDeclEPNS_13CXXMethodDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.5.ph, i64 0, ptr noundef %i.dx, ptr noundef nonnull %i.do)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %storemerge = phi i64 [ %i.dy, %bb.x ], [ %i.dv, %bb.w ] ; 2 uses
  %i.dz = icmp eq i64 %storemerge, 1
  br i1 %i.dz, label %.critedge123, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = and i64 %storemerge, -2
  %i.eb = inttoptr i64 %i.ea to ptr               ; 2 uses
  br label %bb.ac

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 120
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1295
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1297
  call void @_ZN5clang17InitializedEntity19InitializeParameterERNS_10ASTContextEPNS_11ParmVarDeclE(ptr dead_on_unwind nonnull writable sret(%"class.clang::InitializedEntity") align 8 %10, ptr noundef nonnull align 8 dereferenceable(23904) %i.ec, ptr noundef %i.ef)
  %i.eg = ptrtoint ptr %.5.ph to i64
  %i.eh = call i64 @_ZN5clang4Sema25PerformCopyInitializationERKNS_17InitializedEntityENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %10, i32 0, i64 %i.eg, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.ei = icmp eq i64 %i.eh, 1
  br i1 %i.ei, label %.critedge123, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ej = and i64 %i.eh, -2
  %i.ek = inttoptr i64 %i.ej to ptr
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.2 = phi ptr [ %i.ek, %bb.ab ], [ %i.eb, %bb.z ]
  %.1117 = phi ptr [ null, %bb.ab ], [ %i.eb, %bb.z ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dn, i64 8) ]
  %23 = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.0.copyload.i.i.i.i.i135 = load i64, ptr %23, align 8
  %i.el = and i64 %.0.copyload.i.i.i.i.i135, -8
  %i.em = inttoptr i64 %i.el to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store i64 0, ptr %11, align 8
  %i.en = call fastcc i64 @_ZL21CreateFunctionRefExprRN5clang4SemaEPNS_12FunctionDeclEPNS_9NamedDeclEPKNS_4ExprEbNS_14SourceLocationERKNS_18DeclarationNameLocE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.do, ptr noundef %i.em, ptr noundef %.1117, i1 noundef zeroext %i.dl, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %11) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %.critedge123, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ep = getelementptr inbounds nuw i8, ptr %i.do, i64 48 ; 3 uses
  %.sroa.0.0.copyload.i.i136 = load i64, ptr %i.ep, align 8, !tbaa !75
  %i.eq = and i64 %.sroa.0.0.copyload.i.i136, -16
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load ptr, ptr %i.er, align 16, !tbaa !74 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i8, ptr %i.et, align 16
  %i.ev = add i8 %i.eu, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ev, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ew = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.es) #28
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit:   ; preds = %bb.ad, %bb.ae
  %.1.i.i = phi ptr [ %i.ew, %bb.ae ], [ %i.es, %bb.ad ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.ex, align 8, !tbaa !75 ; 2 uses
  store i64 %.sroa.0.0.copyload.i1.i, ptr %12, align 8
  %i.ey = call noundef i32 @_ZN5clang4Expr19getValueKindForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i1.i)
  %i.ez = load ptr, ptr %i.d, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.fa = call i64 @_ZNK5clang8QualType20getNonLValueExprTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(23904) %i.ez) #28 ; 2 uses
  store i64 %i.fa, ptr %12, align 8, !tbaa !75
  store ptr %.2, ptr %i.a, align 16, !tbaa !1230
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.fc = and i64 %i.en, -2
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.0.0.copyload.i.i137 = load i64, ptr %i.ff, align 8, !tbaa !554 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i138 = trunc i64 %.sroa.0.0.copyload.i.i137 to i32
  %i.fg = load i32, ptr %i.fe, align 8, !tbaa !1552
  %i.fh = icmp ne i32 %i.fg, %.sroa.01.0.extract.trunc.i.i.i.i138
  %.sroa.2.0.extract.shift.i.i.i.i139 = lshr i64 %.sroa.0.0.copyload.i.i137, 32
  %.sroa.2.0.extract.trunc.i.i.i.i140 = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i139 to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = icmp ne i32 %i.fj, %.sroa.2.0.extract.trunc.i.i.i.i140
  %.not3.i.i.i141 = select i1 %i.fh, i1 true, i1 %i.fk
  %i.fl = load i64, ptr %i.fe, align 8
  %.sroa.01.0.insert.insert.i142 = select i1 %.not3.i.i.i141, i64 %i.fl, i64 0
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dn, i64 104
  %i.fn = load i32, ptr %i.fm, align 8
  %i.fo = and i32 %i.fn, 64
  %i.fp = icmp ne i32 %i.fo, 0
  %i.fq = call noundef ptr @_ZN5clang19CXXOperatorCallExpr6CreateERKNS_10ASTContextENS_22OverloadedOperatorKindEPNS_4ExprEN4llvm8ArrayRefIS6_EENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideENS_8CallExpr11ADLCallKindEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.fb, i32 noundef %i.c, ptr noundef %i.fd, ptr nonnull %i.a, i64 %.0114, i64 %i.fa, i32 noundef %i.ey, i32 %1, i64 %.sroa.01.0.insert.insert.i142, i1 noundef zeroext %i.fp, i1 noundef zeroext false) #28 ; 3 uses
  %.sroa.0.0.copyload.i.i143 = load i64, ptr %i.ep, align 8, !tbaa !75
  %i.fr = and i64 %.sroa.0.0.copyload.i.i143, -16
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load ptr, ptr %i.fs, align 16, !tbaa !74 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i8, ptr %i.fu, align 16
  %i.fw = add i8 %i.fv, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i144 = icmp ult i8 %i.fw, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i144, label %bb.af, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit147

bb.af:                                            ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit
  %i.fx = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ft) #28
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit147

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit147: ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit, %bb.af
  %.1.i.i145 = phi ptr [ %i.fx, %bb.af ], [ %i.ft, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.1.i.i145, i64 24
  %.sroa.0.0.copyload.i1.i146 = load i64, ptr %i.fy, align 8, !tbaa !75
  %i.fz = call noundef zeroext i1 @_ZN5clang4Sema19CheckCallReturnTypeENS_8QualTypeENS_14SourceLocationEPNS_8CallExprEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i1.i146, i32 %1, ptr noundef %i.fq, ptr noundef nonnull %i.do) #28
  br i1 %i.fz, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit147
  %.sroa.0.0.copyload.i148 = load i64, ptr %i.ep, align 8, !tbaa !75
  %i.ga = and i64 %.sroa.0.0.copyload.i148, -16
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load ptr, ptr %i.gb, align 16, !tbaa !74 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load i8, ptr %i.gd, align 16
  %.not.i = icmp eq i8 %i.ge, 24
  br i1 %.not.i, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gf = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.gc) #28
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.ag, %bb.ah
  %.1.i = phi ptr [ %i.gf, %bb.ah ], [ %i.gc, %bb.ag ]
  %i.gg = call noundef zeroext i1 @_ZN5clang4Sema17CheckFunctionCallEPNS_12FunctionDeclEPNS_8CallExprEPKNS_17FunctionProtoTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.do, ptr noundef %i.fq, ptr noundef %.1.i) #28
  br i1 %i.gg, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.gh = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.fq) #28
  %i.gi = call i64 @_ZN5clang4Sema27CheckForImmediateInvocationENS_12ActionResultIPNS_4ExprELb1EEEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.gh, ptr noundef nonnull %i.do) #28
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit147, %bb.ai
  %.sroa.0249.3 = phi i64 [ %i.gi, %bb.ai ], [ 1, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit147 ], [ 1, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.critedge123

bb.ak:                                            ; preds = %bb.t
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.sroa.019.0.copyload = load i64, ptr %i.gj, align 8, !tbaa !75
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !1302
  %i.gm = call i64 @_ZN5clang4Sema25PerformImplicitConversionEPNS_4ExprENS_8QualTypeERKNS_26ImplicitConversionSequenceENS_16AssignmentActionENS_21CheckedConversionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.5.ph, i64 %.sroa.019.0.copyload, ptr noundef nonnull align 8 dereferenceable(152) %i.gl, i32 noundef 1, i32 noundef 4) #28 ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 1
  br i1 %i.gn, label %.critedge123, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.ak
  %i.go = and i64 %i.gm, -2
  %i.gp = inttoptr i64 %i.go to ptr
  br label %bb.bo

bb.al:                                            ; preds = %bb.s
  %i.gq = call fastcc noundef zeroext i1 @_ZL30DiagnoseTwoPhaseOperatorLookupRN5clang4SemaENS_22OverloadedOperatorKindENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef %i.c, i32 %1, ptr nonnull %i.a, i64 %.0114)
  br i1 %i.gq, label %.critedge123, label %bb.bo

bb.am:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase5PDiagEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::PartialDiagnostic") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.gr, i32 noundef 4861) #28
  %i.gs = call { ptr, i64 } @_ZN5clang13UnaryOperator12getOpcodeStrENS_17UnaryOperatorKindE(i32 noundef %2) #28 ; 2 uses
  %i.gt = extractvalue { ptr, i64 } %i.gs, 0
  %i.gu = extractvalue { ptr, i64 } %i.gs, 1
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %14, ptr %i.gt, i64 %i.gu)
  %i.gv = getelementptr inbounds nuw i8, ptr %.5.ph, i64 8
  %.sroa.0.0.copyload.i151 = load i64, ptr %i.gv, align 8, !tbaa !75
  %i.gw = load ptr, ptr %14, align 8, !tbaa !559  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %bb.an

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.am
  %i.gx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !560
  %i.gz = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.gy) ; 2 uses
  store ptr %i.gz, ptr %14, align 8, !tbaa !559
  br label %bb.an

bb.an:                                            ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, %bb.am
  %i.ha = phi ptr [ %i.gz, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.gw, %bb.am ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.hc = load i8, ptr %i.ha, align 8, !tbaa !1412
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hd
  store i8 8, ptr %i.he, align 1, !tbaa !75
  %i.hf = load ptr, ptr %14, align 8, !tbaa !559  ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load i8, ptr %i.hf, align 8, !tbaa !1412 ; 2 uses
  %i.hi = add i8 %i.hh, 1
  store i8 %i.hi, ptr %i.hf, align 8, !tbaa !1412
  %i.hj = zext i8 %i.hh to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hj
  store i64 %.sroa.0.0.copyload.i151, ptr %i.hk, align 8, !tbaa !1249
  %i.hl = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.5.ph) #29 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 416 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 424 ; 3 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !516 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 428
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !517
  %.not.i5.i.i.i = icmp ult i32 %i.ho, %i.hq
  br i1 %.not.i5.i.i.i, label %bb.ap, label %bb.ao, !prof !565

bb.ao:                                            ; preds = %bb.an
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i64 %i.hl, i8 1)
  br label %_ZNK5clang17PartialDiagnosticlsINS_11SourceRangeEvEERKS0_OT_.exit

bb.ap:                                            ; preds = %bb.an
  %i.hr = zext i32 %i.ho to i64
  %i.hs = load ptr, ptr %i.hm, align 8, !tbaa !515
  %i.ht = getelementptr inbounds nuw [12 x i8], ptr %i.hs, i64 %i.hr ; 2 uses
  store i64 %i.hl, ptr %i.ht, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i, align 1
  %i.hu = load i32, ptr %i.hn, align 8, !tbaa !516
  %i.hv = add i32 %i.hu, 1
  store i32 %i.hv, ptr %i.hn, align 8, !tbaa !516
  br label %_ZNK5clang17PartialDiagnosticlsINS_11SourceRangeEvEERKS0_OT_.exit

_ZNK5clang17PartialDiagnosticlsINS_11SourceRangeEvEERKS0_OT_.exit: ; preds = %bb.ao, %bb.ap
  store i32 %1, ptr %13, align 8, !tbaa !554
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.hy = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %i.hw, align 8
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !1546
  store i32 %i.hz, ptr %i.hx, align 8, !tbaa !1546
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !560 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !560
end_hunk_7
begin_hunk_8_@_ZL30DiagnoseTwoPhaseOperatorLookupRN5clang4SemaENS_22OverloadedOperatorKindENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEE:_ZN5clang12CXXScopeSpecD2Ev.exit
  br label %_ZN5clang12LookupResultD2Ev.exit

_ZN5clang12LookupResultD2Ev.exit:                 ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i1 %i.v
}

declare { ptr, i64 } @_ZN5clang13UnaryOperator12getOpcodeStrENS_17UnaryOperatorKindE(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEEC2IRS1_RKS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(20) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !554
  store i32 %i.a, ptr %0, align 8, !tbaa !554
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.b, i8 0, i64 16, i1 false)
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1546
  store i32 %i.e, ptr %i.c, align 8, !tbaa !1546
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !560  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !560
  %i.i = load ptr, ptr %2, align 8, !tbaa !559
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN5clang17PartialDiagnosticC2ERKS0_.exit, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i: ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.g) ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !559
  %i.k = load ptr, ptr %2, align 8, !tbaa !559
  %i.l = tail call noundef nonnull align 8 dereferenceable(928) ptr @_ZN5clang17DiagnosticStorageaSERKS0_(ptr noundef nonnull align 8 dereferenceable(928) %i.j, ptr noundef nonnull align 8 dereferenceable(928) %i.k) ; 0 uses
  br label %_ZN5clang17PartialDiagnosticC2ERKS0_.exit

_ZN5clang17PartialDiagnosticC2ERKS0_.exit:        ; preds = %bb.a, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i
  ret void
}

declare i64 @_ZN5clang4Sema20CreateBuiltinUnaryOpENS_14SourceLocationENS_17UnaryOperatorKindEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema21LookupOverloadedBinOpERNS_20OverloadCandidateSetENS_22OverloadedOperatorKindERKNS_17UnresolvedSetImplEN4llvm8ArrayRefIPNS_4ExprEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(7844) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %3, ptr %4, i64 %5, i1 noundef zeroext %6) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2952
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !554 ; 7 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2968 ; 4 uses
  %.sroa.22.0.copyload.i = load i8, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !1250
  %i.b = trunc i8 %.sroa.22.0.copyload.i to i1
  br i1 %i.b, label %bb.b, label %_ZN5clang30getRewrittenOverloadedOperatorENS_22OverloadedOperatorKindE.exit

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.d [
    i32 16, label %_ZN5clang30getRewrittenOverloadedOperatorENS_22OverloadedOperatorKindE.exit
    i32 32, label %_ZN5clang30getRewrittenOverloadedOperatorENS_22OverloadedOperatorKindE.exit
    i32 17, label %_ZN5clang30getRewrittenOverloadedOperatorENS_22OverloadedOperatorKindE.exit
    i32 33, label %_ZN5clang30getRewrittenOverloadedOperatorENS_22OverloadedOperatorKindE.exit
    i32 31, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZN5clang30getRewrittenOverloadedOperatorENS_22OverloadedOperatorKindE.exit

bb.d:                                             ; preds = %bb.b
  br label %_ZN5clang30getRewrittenOverloadedOperatorENS_22OverloadedOperatorKindE.exit

_ZN5clang30getRewrittenOverloadedOperatorENS_22OverloadedOperatorKindE.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  %.not = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ] ; 2 uses
  %i.c = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 30, %bb.c ], [ 34, %bb.b ], [ 34, %bb.b ], [ 34, %bb.b ], [ 34, %bb.b ] ; 5 uses
  tail call void @_ZN5clang4Sema30AddNonMemberOperatorCandidatesERKNS_17UnresolvedSetImplEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetEPNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(7844) %1, ptr noundef null)
  %.sroa.22.0.copyload.i88 = load i8, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !1250
  %i.d = trunc nuw i8 %.sroa.22.0.copyload.i88 to i1
  br i1 %i.d, label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit, label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit98.thread

_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit: ; preds = %_ZN5clang30getRewrittenOverloadedOperatorENS_22OverloadedOperatorKindE.exit
  switch i32 %2, label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit98 [
    i32 34, label %.critedge
    i32 30, label %.critedge
  ]

_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit98: ; preds = %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit
  switch i32 %i.c, label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit98.thread [
    i32 34, label %.critedge
    i32 30, label %.critedge
  ]

.critedge:                                        ; preds = %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit98, %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit98, %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit, %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit
  %i.e = load <2 x ptr>, ptr %4, align 8, !tbaa !1230
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2972 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1318 ; 3 uses
  %i.h = add i32 %i.g, -4849
  %i.i = icmp ult i32 %i.h, 16
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2872 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !563  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 16                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2880
  %i.o = load i64, ptr %i.n, align 8, !tbaa !564
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.g, !prof !565

bb.f:                                             ; preds = %bb.e
  %i.q = inttoptr i64 %i.m to ptr
  store ptr %i.q, ptr %i.j, align 8, !tbaa !563
  br label %_ZN5clang20OverloadCandidateSet22getPersistentArgsArrayIJNS_4ExprES2_EEEN4llvm15MutableArrayRefIPS2_EEDpPT_.exit

bb.g:                                             ; preds = %bb.e
  %i.r = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 noundef 16, i64 noundef 16, i8 3)
  br label %_ZN5clang20OverloadCandidateSet22getPersistentArgsArrayIJNS_4ExprES2_EEEN4llvm15MutableArrayRefIPS2_EEDpPT_.exit

bb.h:                                             ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2976
  %i.t = zext i32 %i.g to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = add i32 %i.g, 16
  store i32 %i.v, ptr %i.f, align 4, !tbaa !1318
  br label %_ZN5clang20OverloadCandidateSet22getPersistentArgsArrayIJNS_4ExprES2_EEEN4llvm15MutableArrayRefIPS2_EEDpPT_.exit

_ZN5clang20OverloadCandidateSet22getPersistentArgsArrayIJNS_4ExprES2_EEEN4llvm15MutableArrayRefIPS2_EEDpPT_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.0.i.i.i = phi ptr [ %i.k, %bb.f ], [ %i.r, %bb.g ], [ %i.u, %bb.h ] ; 2 uses
  %i.w = shufflevector <2 x ptr> %i.e, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.w, ptr %.0.i.i.i, align 8
  br label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit98.thread

_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit98.thread: ; preds = %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit98, %_ZN5clang30getRewrittenOverloadedOperatorENS_22OverloadedOperatorKindE.exit, %_ZN5clang20OverloadCandidateSet22getPersistentArgsArrayIJNS_4ExprES2_EEEN4llvm15MutableArrayRefIPS2_EEDpPT_.exit
  %.sroa.6121.0 = phi i64 [ 2, %_ZN5clang20OverloadCandidateSet22getPersistentArgsArrayIJNS_4ExprES2_EEEN4llvm15MutableArrayRefIPS2_EEDpPT_.exit ], [ 0, %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit98 ], [ 0, %_ZN5clang30getRewrittenOverloadedOperatorENS_22OverloadedOperatorKindE.exit ] ; 2 uses
  %.sroa.0120.0 = phi ptr [ %.0.i.i.i, %_ZN5clang20OverloadCandidateSet22getPersistentArgsArrayIJNS_4ExprES2_EEEN4llvm15MutableArrayRefIPS2_EEDpPT_.exit ], [ null, %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit98 ], [ null, %_ZN5clang30getRewrittenOverloadedOperatorENS_22OverloadedOperatorKindE.exit ] ; 2 uses
  tail call void @_ZN5clang4Sema27AddMemberOperatorCandidatesENS_22OverloadedOperatorKindENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetENS_27OverloadCandidateParamOrderE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef %2, i32 %.sroa.0.0.copyload.i, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(7844) %1, i8 noundef signext 0)
  %.sroa.22.0.copyload.i101 = load i8, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !1250
  %i.x = trunc nuw i8 %.sroa.22.0.copyload.i101 to i1
  br i1 %i.x, label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit105, label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit105.thread

_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit105: ; preds = %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit98.thread
  switch i32 %2, label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit105.thread [
    i32 34, label %bb.i
    i32 30, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit105, %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit105
  tail call void @_ZN5clang4Sema27AddMemberOperatorCandidatesENS_22OverloadedOperatorKindENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetENS_27OverloadCandidateParamOrderE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef %2, i32 %.sroa.0.0.copyload.i, ptr %.sroa.0120.0, i64 %.sroa.6121.0, ptr noundef nonnull align 8 dereferenceable(7844) %1, i8 noundef signext 1)
  br label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit105.thread

_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit105.thread: ; preds = %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit105, %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit98.thread, %bb.i
  br i1 %.not, label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit112.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit105.thread
  tail call void @_ZN5clang4Sema27AddMemberOperatorCandidatesENS_22OverloadedOperatorKindENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetENS_27OverloadCandidateParamOrderE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef %i.c, i32 %.sroa.0.0.copyload.i, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(7844) %1, i8 noundef signext 0)
  %.sroa.22.0.copyload.i108 = load i8, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !1250
  %i.y = trunc nuw i8 %.sroa.22.0.copyload.i108 to i1
  br i1 %i.y, label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit112, label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit112.thread

_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit112: ; preds = %bb.j
  switch i32 %i.c, label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit112.thread [
    i32 34, label %bb.k
    i32 30, label %bb.k
  ]

bb.k:                                             ; preds = %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit112, %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit112
  tail call void @_ZN5clang4Sema27AddMemberOperatorCandidatesENS_22OverloadedOperatorKindENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetENS_27OverloadCandidateParamOrderE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef %i.c, i32 %.sroa.0.0.copyload.i, ptr %.sroa.0120.0, i64 %.sroa.6121.0, ptr noundef nonnull align 8 dereferenceable(7844) %1, i8 noundef signext 1)
  br label %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit112.thread

_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit112.thread: ; preds = %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit112, %bb.j, %bb.k, %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit105.thread
  %i.z = icmp ne i32 %2, 15
  %or.cond = and i1 %i.z, %6
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit112.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 17856
  %i.ad = sext i32 %2 to i64
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.ad
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = or disjoint i64 %i.af, 6
  tail call void @_ZN5clang4Sema36AddArgumentDependentLookupCandidatesENS_15DeclarationNameENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEEPNS_24TemplateArgumentListInfoERNS_20OverloadCandidateSetEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.ag, i32 %.sroa.0.0.copyload.i, ptr %4, i64 %5, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(7844) %1, i1 noundef zeroext false)
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 17856
  %i.aj = zext nneg i32 %i.c to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.aj
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = or disjoint i64 %i.al, 6
  tail call void @_ZN5clang4Sema36AddArgumentDependentLookupCandidatesENS_15DeclarationNameENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEEPNS_24TemplateArgumentListInfoERNS_20OverloadCandidateSetEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.am, i32 %.sroa.0.0.copyload.i, ptr %4, i64 %5, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(7844) %1, i1 noundef zeroext false)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo14allowsReversedENS_22OverloadedOperatorKindE.exit112.thread
  tail call void @_ZN5clang4Sema28AddBuiltinOperatorCandidatesENS_22OverloadedOperatorKindENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef %2, i32 %.sroa.0.0.copyload.i, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(7844) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema21CreateOverloadedBinOpENS_14SourceLocationENS_18BinaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprES7_bbPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef %8) local_unnamed_addr #5 align 2 {
bb.a:
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %10 = alloca %"class.clang::SourceLocation", align 4 ; 31 uses
  %i.a = alloca [2 x ptr], align 16               ; 46 uses
  %11 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 6 uses
  %12 = alloca %"class.clang::OverloadCandidateSet", align 8 ; 37 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %14 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %15 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %16 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %17 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %18 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %19 = alloca %"class.llvm::SmallVector.1590", align 8 ; 10 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %20 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %21 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %22 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %23 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %24 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %25 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %26 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %27 = alloca %"class.clang::QualType", align 8  ; 5 uses
  %28 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %29 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %30 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %31 = alloca %"class.clang::InitializedEntity", align 8 ; 4 uses
  %32 = alloca %"class.clang::InitializedEntity", align 8 ; 4 uses
  %33 = alloca %"class.clang::InitializedEntity", align 8 ; 4 uses
  %34 = alloca %"class.clang::DeclarationNameLoc", align 8 ; 4 uses
  %35 = alloca %"class.clang::QualType", align 8  ; 5 uses
  %36 = alloca %"struct.clang::sema::AssignedEntity", align 8 ; 5 uses
  %37 = alloca %"class.llvm::APSInt", align 8     ; 8 uses
  %38 = alloca %"struct.clang::Sema::CodeSynthesisContext", align 8 ; 7 uses
  %39 = alloca %"class.llvm::SmallVector.1270", align 8 ; 7 uses
  %40 = alloca %"class.llvm::function_ref.1275", align 8 ; 3 uses
  %41 = alloca %class.anon.1276, align 1          ; 3 uses
  %42 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %43 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %44 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %45 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %46 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %47 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %48 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %49 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %50 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %51 = alloca %"struct.std::pair", align 8       ; 3 uses
  %52 = alloca %"class.clang::PartialDiagnostic", align 8 ; 11 uses
  %53 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %54 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %55 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %56 = alloca %"class.llvm::function_ref.1275", align 8 ; 3 uses
  %57 = alloca %class.anon.1581, align 1          ; 3 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %58 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %59 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %60 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %61 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %62 = alloca %"struct.std::pair", align 8       ; 3 uses
  %63 = alloca %"class.clang::PartialDiagnostic", align 8 ; 11 uses
  %64 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %65 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %66 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %67 = alloca %"class.llvm::function_ref.1275", align 8 ; 3 uses
  %68 = alloca %class.anon.1581, align 1          ; 3 uses
  store i32 %1, ptr %10, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr %4, ptr %i.a, align 16, !tbaa !1230
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 24 uses
  store ptr %5, ptr %i.f, align 8, !tbaa !1230
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1252, !nonnull !87, !align !500
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 65536
  %.not244 = icmp ne i64 %i.j, 0
  %spec.select = and i1 %7, %.not244              ; 2 uses
  %i.k = tail call noundef i32 @_ZN5clang14BinaryOperator21getOverloadedOperatorENS_18BinaryOperatorKindE(i32 noundef %2) #28 ; 9 uses
  %i.l = load i24, ptr %4, align 8
  %i.m = and i24 %i.l, 65536
  %.not513 = icmp eq i24 %i.m, 0
  br i1 %.not513, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load i24, ptr %5, align 8
  %i.o = and i24 %i.n, 65536
  %.not514 = icmp eq i24 %i.o, 0
  br i1 %.not514, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !516
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = add i32 %2, -22
  %i.s = icmp ult i32 %i.r, 10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1228, !nonnull !87, !align !500 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 19336
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8, !tbaa !75 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.x, align 8, !tbaa !554 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.y = load i32, ptr %i.w, align 8, !tbaa !1552
  %i.z = icmp ne i32 %i.y, %.sroa.01.0.extract.trunc.i.i.i.i
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp ne i32 %i.ab, %.sroa.2.0.extract.trunc.i.i.i.i
  %.not3.i.i.i = select i1 %i.z, i1 true, i1 %i.ac
  %i.ad = load i64, ptr %i.w, align 8
  %.sroa.01.0.insert.insert.i = select i1 %.not3.i.i.i, i64 %i.ad, i64 0 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call noundef ptr @_ZN5clang22CompoundAssignOperator6CreateERKNS_10ASTContextEPNS_4ExprES5_NS_18BinaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationENS_17FPOptionsOverrideES7_S7_(ptr noundef nonnull align 8 dereferenceable(23904) %i.u, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %2, i64 %.sroa.0.0.copyload.i, i32 noundef 1, i32 noundef 0, i32 %1, i64 %.sroa.01.0.insert.insert.i, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i) #28
  %i.af = ptrtoint ptr %i.ae to i64
  br label %_ZL27checkPlaceholderForOverloadRN5clang4SemaERPNS_4ExprEPN12_GLOBAL__N_117UnbridgedCastsSetE.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = tail call noundef ptr @_ZN5clang14BinaryOperator6CreateERKNS_10ASTContextEPNS_4ExprES5_NS_18BinaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationENS_17FPOptionsOverrideE(ptr noundef nonnull align 8 dereferenceable(23904) %i.u, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %2, i64 %.sroa.0.0.copyload.i, i32 noundef 0, i32 noundef 0, i32 %1, i64 %.sroa.01.0.insert.insert.i) #28
  %i.ah = ptrtoint ptr %i.ag to i64
  br label %_ZL27checkPlaceholderForOverloadRN5clang4SemaERPNS_4ExprEPN12_GLOBAL__N_117UnbridgedCastsSetE.exit

bb.g:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 17856
  %i.al = sext i32 %i.k to i64
  %i.am = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = or disjoint i64 %i.an, 6                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store i64 %i.ao, ptr %11, align 8, !tbaa !1249
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %1, ptr %i.ap, align 8, !tbaa !554
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i64 %i.ao) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.as = load ptr, ptr %3, align 8, !tbaa !515   ; 2 uses
  %i.at = load i32, ptr %i.p, align 8, !tbaa !516
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ar, ptr noundef null, i64 0, ptr null, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext %6, i64 %i.aw, i64 %i.ax, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.az = icmp eq ptr %i.ay, inttoptr (i64 1 to ptr)
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = load ptr, ptr %i.ai, align 8, !tbaa !1228, !nonnull !87, !align !500 ; 2 uses
  %i.bc = and i64 %i.ba, -2
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 19336
  %.sroa.0.0.copyload.i278 = load i64, ptr %i.be, align 8, !tbaa !75
  %.sroa.0159.0.copyload = load i32, ptr %10, align 4, !tbaa !554
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.0.0.copyload.i.i279 = load i64, ptr %i.bg, align 8, !tbaa !554 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i280 = trunc i64 %.sroa.0.0.copyload.i.i279 to i32
  %i.bh = load i32, ptr %i.bf, align 8, !tbaa !1552
  %i.bi = icmp ne i32 %i.bh, %.sroa.01.0.extract.trunc.i.i.i.i280
  %.sroa.2.0.extract.shift.i.i.i.i281 = lshr i64 %.sroa.0.0.copyload.i.i279, 32
  %.sroa.2.0.extract.trunc.i.i.i.i282 = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i281 to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = icmp ne i32 %i.bk, %.sroa.2.0.extract.trunc.i.i.i.i282
  %.not3.i.i.i283 = select i1 %i.bi, i1 true, i1 %i.bl
  %i.bm = load i64, ptr %i.bf, align 8
  %.sroa.01.0.insert.insert.i284 = select i1 %.not3.i.i.i283, i64 %i.bm, i64 0
  %i.bn = call noundef ptr @_ZN5clang19CXXOperatorCallExpr6CreateERKNS_10ASTContextENS_22OverloadedOperatorKindEPNS_4ExprEN4llvm8ArrayRefIS6_EENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideENS_8CallExpr11ADLCallKindEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bb, i32 noundef %i.k, ptr noundef %i.bd, ptr nonnull %i.a, i64 2, i64 %.sroa.0.0.copyload.i278, i32 noundef 0, i32 %.sroa.0159.0.copyload, i64 %.sroa.01.0.insert.insert.i284, i1 noundef zeroext false, i1 noundef zeroext false) #28
  %i.bo = ptrtoint ptr %i.bn to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.0493.0 = phi i64 [ %i.bo, %bb.h ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %_ZL27checkPlaceholderForOverloadRN5clang4SemaERPNS_4ExprEPN12_GLOBAL__N_117UnbridgedCastsSetE.exit

bb.j:                                             ; preds = %bb.b
  %i.bp = icmp eq i32 %2, 0
  br i1 %i.bp, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bq = tail call i64 @_ZN5clang4Sema20CheckPlaceholderExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %4) #28 ; 2 uses
  %spec.select.i.i = icmp ult i64 %i.bq, 2
  br i1 %spec.select.i.i, label %_ZL27checkPlaceholderForOverloadRN5clang4SemaERPNS_4ExprEPN12_GLOBAL__N_117UnbridgedCastsSetE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = tail call i64 @_ZN5clang4Sema20CheckPlaceholderExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %5) #28 ; 2 uses
  %spec.select.i.i285 = icmp ult i64 %i.br, 2
  br i1 %spec.select.i.i285, label %_ZL27checkPlaceholderForOverloadRN5clang4SemaERPNS_4ExprEPN12_GLOBAL__N_117UnbridgedCastsSetE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = and i64 %i.bq, -2
  %i.bt = inttoptr i64 %i.bs to ptr
end_hunk_8
begin_hunk_9_@_ZN5clang4Sema21CreateOverloadedBinOpENS_14SourceLocationENS_18BinaryOperatorKindERKNS_17UnresolvedSetImplEPNS_4ExprES7_bbPNS_12FunctionDeclE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  %i.kb = load ptr, ptr %i.f, align 8, !tbaa !1230
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %.sroa.0.0.copyload.i314 = load i64, ptr %i.kc, align 8, !tbaa !75
  store i64 %.sroa.0.0.copyload.i314, ptr %23, align 8
  %i.kd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_8QualTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ka, ptr noundef nonnull align 8 dereferenceable(8) %23)
  %i.ke = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIbEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.kd, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  %i.kf = load ptr, ptr %i.a, align 16, !tbaa !1230
  %i.kg = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kf) #29
  store i64 %i.kg, ptr %24, align 8
  %i.kh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ke, ptr noundef nonnull align 4 dereferenceable(8) %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  %i.ki = load ptr, ptr %i.f, align 8, !tbaa !1230
  %i.kj = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ki) #29
  store i64 %i.kj, ptr %25, align 8
  %i.kk = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.kh, ptr noundef nonnull align 4 dereferenceable(8) %25) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.kl = load i8, ptr %i.c, align 1, !tbaa !1250, !range !86, !noundef !87
  %i.km = trunc nuw i8 %i.kl to i1
  %i.kn = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i315 = load i32, ptr %i.kn, align 8, !tbaa !554 ; 2 uses
  br i1 %i.km, label %bb.av, label %bb.bd

bb.av:                                            ; preds = %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %i.js, i32 %.sroa.0.0.copyload.i315, i32 noundef 6380) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %26) #28
  %i.ko = load i32, ptr %i.fj, align 4
  %i.kp = and i32 %i.ko, 124
  %.not537 = icmp eq i32 %i.kp, 36
  br i1 %.not537, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.kq = icmp eq i32 %i.k, 30
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  br i1 %i.kq, label %bb.ax, label %.critedge11

bb.ax:                                            ; preds = %bb.aw
  %i.kr = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl7isConstEv(ptr noundef nonnull align 8 dereferenceable(168) %i.fc)
  br i1 %i.kr, label %.critedge11, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ks = call noundef zeroext i1 @_ZNK5clang12FunctionDecl37hasCXXExplicitFunctionObjectParameterEv(ptr noundef nonnull align 8 dereferenceable(168) %i.fc) #28
  br i1 %i.ks, label %.critedge11, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kt = call i64 @_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %i.fc)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.fc, i64 120
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !1295
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !1297
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  %.sroa.0.0.copyload.i317 = load i64, ptr %i.kx, align 8, !tbaa !75
  store i64 %.sroa.0.0.copyload.i317, ptr %27, align 8
  %i.ky = call i64 @_ZNK5clang8QualType19getNonReferenceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %27)
  %i.kz = and i64 %i.kt, -16
  %i.la = inttoptr i64 %i.kz to ptr
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !75
  %i.ld = and i64 %i.lc, -16
  %i.le = inttoptr i64 %i.ld to ptr
  %i.lf = load ptr, ptr %i.le, align 16, !tbaa !74
  %i.lg = and i64 %i.ky, -16
  %i.lh = inttoptr i64 %i.lg to ptr
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !75
  %i.lk = and i64 %i.lj, -16
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = load ptr, ptr %i.ll, align 16, !tbaa !74
  %i.ln = icmp eq ptr %i.lf, %i.lm
  br i1 %i.ln, label %bb.ba, label %.critedge11

bb.ba:                                            ; preds = %bb.az
  %i.lo = call i64 @_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %i.fc)
  %i.lp = load ptr, ptr %i.a, align 16, !tbaa !1230
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %.sroa.0.0.copyload.i318 = load i64, ptr %i.lq, align 8, !tbaa !75
  %i.lr = and i64 %i.lo, -16
  %i.ls = inttoptr i64 %i.lr to ptr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !75
  %i.lv = and i64 %i.lu, -16
  %i.lw = inttoptr i64 %i.lv to ptr
  %i.lx = load ptr, ptr %i.lw, align 16, !tbaa !74
  %i.ly = and i64 %.sroa.0.0.copyload.i318, -16
  %i.lz = inttoptr i64 %i.ly to ptr
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !75
  %i.mc = and i64 %i.mb, -16
  %i.md = inttoptr i64 %i.mc to ptr
  %i.me = load ptr, ptr %i.md, align 16, !tbaa !74
  %i.mf = icmp eq ptr %i.lx, %i.me
  br i1 %i.mf, label %bb.bb, label %.critedge11

bb.bb:                                            ; preds = %bb.ba
  %i.mg = call i64 @_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %i.fc)
  %i.mh = load ptr, ptr %i.f, align 8, !tbaa !1230
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %.sroa.0.0.copyload.i319 = load i64, ptr %i.mi, align 8, !tbaa !75
  %i.mj = and i64 %i.mg, -16
  %i.mk = inttoptr i64 %i.mj to ptr
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !75
  %i.mn = and i64 %i.mm, -16
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = load ptr, ptr %i.mo, align 16, !tbaa !74
  %i.mq = and i64 %.sroa.0.0.copyload.i319, -16
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !75
  %i.mu = and i64 %i.mt, -16
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = load ptr, ptr %i.mv, align 16, !tbaa !74
  %i.mx = icmp eq ptr %i.mp, %i.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br i1 %i.mx, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %.sroa.0.0.copyload.i320 = load i32, ptr %i.kn, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.js, i32 %.sroa.0.0.copyload.i320, i32 noundef 6378) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %28) #28
  br label %.loopexit

.critedge11:                                      ; preds = %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %.loopexit

bb.bd:                                            ; preds = %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %29, ptr noundef nonnull align 8 dereferenceable(8) %i.js, i32 %.sroa.0.0.copyload.i315, i32 noundef 6381) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %29) #28
  %i.my = load ptr, ptr %19, align 8, !tbaa !515  ; 2 uses
  %i.mz = load i32, ptr %i.ic, align 8, !tbaa !516 ; 2 uses
  %i.na = zext i32 %i.mz to i64
  %.idx536 = shl nuw nsw i64 %i.na, 3
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 %.idx536
  %.not248531 = icmp eq i32 %i.mz, 0
  br i1 %.not248531, label %.loopexit, label %.lr.ph534

.lr.ph534:                                        ; preds = %bb.bd, %.lr.ph534
  %.0232532 = phi ptr [ %i.ne, %.lr.ph534 ], [ %i.my, %bb.bd ] ; 2 uses
  %i.nc = load ptr, ptr %.0232532, align 8, !tbaa !1376
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %.sroa.0.0.copyload.i322 = load i32, ptr %i.nd, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %i.js, i32 %.sroa.0.0.copyload.i322, i32 noundef 6379) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %30) #28
  %i.ne = getelementptr inbounds nuw i8, ptr %.0232532, i64 8 ; 2 uses
  %.not248 = icmp eq ptr %i.ne, %i.nb
  br i1 %.not248, label %.loopexit, label %.lr.ph534

.loopexit:                                        ; preds = %.lr.ph534, %bb.bd, %bb.av, %.critedge11, %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNK5clang20OverloadCandidateSet19OperatorRewriteInfo12isReversibleEv.exit.thread504, %.loopexit, %._crit_edge
  %i.nf = load ptr, ptr %19, align 8, !tbaa !515  ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.ib
  br i1 %i.ng, label %_ZN4llvm11SmallVectorIPN5clang12FunctionDeclELj4EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge.thread
  call void @free(ptr noundef %i.nf) #28
  br label %_ZN4llvm11SmallVectorIPN5clang12FunctionDeclELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang12FunctionDeclELj4EED2Ev.exit: ; preds = %._crit_edge.thread, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %.critedge9

.critedge9:                                       ; preds = %bb.al, %.critedge260, %_ZN4llvm11SmallVectorIPN5clang12FunctionDeclELj4EED2Ev.exit
  %i.nh = icmp eq i32 %i.k, 15                    ; 2 uses
  br i1 %i.nh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.critedge9
  %i.ni = load ptr, ptr %i.a, align 16, !tbaa !1230
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %.sroa.0.0.copyload.i323 = load i64, ptr %i.nj, align 8, !tbaa !75
  %i.nk = load ptr, ptr %i.f, align 8, !tbaa !1230
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %.sroa.0.0.copyload.i324 = load i64, ptr %i.nl, align 8, !tbaa !75
  %.sroa.086.0.copyload = load i32, ptr %10, align 4, !tbaa !554
  call void @_ZN5clang4Sema35diagnoseNullableToNonnullConversionENS_8QualTypeES1_NS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i323, i64 %.sroa.0.0.copyload.i324, i32 %.sroa.086.0.copyload) #28
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.critedge9
  %i.nm = load i32, ptr %i.fj, align 4
  %i.nn = and i32 %i.nm, 124
  %.not538 = icmp eq i32 %i.nn, 36
  br i1 %.not538, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %.sroa.082.0.copyload = load i32, ptr %10, align 4, !tbaa !554
  %i.no = load ptr, ptr %i.a, align 16, !tbaa !1230
  %i.np = load ptr, ptr %i.f, align 8, !tbaa !1230
  %i.nq = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %.sroa.081.0.copyload = load i64, ptr %i.nq, align 8, !tbaa !75
  %i.nr = call noundef i32 @_ZN5clang4Sema25CheckMemberOperatorAccessENS_14SourceLocationEPNS_4ExprES3_NS_14DeclAccessPairE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.082.0.copyload, ptr noundef %i.no, ptr noundef %i.np, i64 %.sroa.081.0.copyload) #28 ; 0 uses
  %i.ns = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isExplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %i.fc) #28
  br i1 %i.ns, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %69 = load ptr, ptr %i.a, align 16, !tbaa !1230
  %i.nt = call i64 @_ZN5clang4Sema32InitializeExplicitObjectArgumentERS0_PNS_4ExprEPNS_12FunctionDeclE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %69, ptr noundef nonnull %i.fc)
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 8) ]
  %70 = load ptr, ptr %i.a, align 16, !tbaa !1230
  %.0.copyload.i.i.i.i.i326 = load i64, ptr %i.nq, align 8
  %i.nu = and i64 %.0.copyload.i.i.i.i.i326, -8
  %i.nv = inttoptr i64 %i.nu to ptr
  %i.nw = call i64 @_ZN5clang4Sema43PerformImplicitObjectArgumentInitializationEPNS_4ExprENS_19NestedNameSpecifierEPNS_9NamedDeclEPNS_13CXXMethodDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %70, i64 0, ptr noundef %i.nv, ptr noundef nonnull %i.fc)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %storemerge253 = phi i64 [ %i.nw, %bb.bj ], [ %i.nt, %bb.bi ] ; 2 uses
  %.0233 = phi i64 [ 0, %bb.bj ], [ 1, %bb.bi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.nz = getelementptr inbounds nuw i8, ptr %i.fc, i64 120
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !1295
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %.0233
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !1297
  call void @_ZN5clang17InitializedEntity19InitializeParameterERNS_10ASTContextEPNS_11ParmVarDeclE(ptr dead_on_unwind nonnull writable sret(%"class.clang::InitializedEntity") align 8 %31, ptr noundef nonnull align 8 dereferenceable(23904) %i.ny, ptr noundef %i.oc)
  %i.od = load ptr, ptr %i.f, align 8, !tbaa !1230
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = call i64 @_ZN5clang4Sema25PerformCopyInitializationERKNS_17InitializedEntityENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %31, i32 0, i64 %i.oe, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  %i.og = icmp eq i64 %storemerge253, 1
  %i.oh = icmp eq i64 %i.of, 1
  %or.cond512 = select i1 %i.og, i1 true, i1 %i.oh
  br i1 %or.cond512, label %.critedge267, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.oi = and i64 %storemerge253, -2
  %i.oj = inttoptr i64 %i.oi to ptr               ; 2 uses
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.om = getelementptr inbounds nuw i8, ptr %i.fc, i64 120 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !1295
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !1297
  call void @_ZN5clang17InitializedEntity19InitializeParameterERNS_10ASTContextEPNS_11ParmVarDeclE(ptr dead_on_unwind nonnull writable sret(%"class.clang::InitializedEntity") align 8 %32, ptr noundef nonnull align 8 dereferenceable(23904) %i.ol, ptr noundef %i.oo)
  %i.op = load ptr, ptr %i.a, align 16, !tbaa !1230
  %i.oq = ptrtoint ptr %i.op to i64
  %i.or = call i64 @_ZN5clang4Sema25PerformCopyInitializationERKNS_17InitializedEntityENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %32, i32 0, i64 %i.oq, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.os = icmp eq i64 %i.or, 1
  br i1 %i.os, label %.critedge267, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.ot = load ptr, ptr %i.ok, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.ou = load ptr, ptr %i.om, align 8, !tbaa !1295
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !1297
  call void @_ZN5clang17InitializedEntity19InitializeParameterERNS_10ASTContextEPNS_11ParmVarDeclE(ptr dead_on_unwind nonnull writable sret(%"class.clang::InitializedEntity") align 8 %33, ptr noundef nonnull align 8 dereferenceable(23904) %i.ot, ptr noundef %i.ow)
  %i.ox = load ptr, ptr %i.f, align 8, !tbaa !1230
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = call i64 @_ZN5clang4Sema25PerformCopyInitializationERKNS_17InitializedEntityENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %33, i32 0, i64 %i.oy, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  %i.pa = icmp eq i64 %i.oz, 1
  br i1 %i.pa, label %.critedge267, label %.thread507

.thread507:                                       ; preds = %bb.bn
  %i.pb = and i64 %i.or, -2
  %i.pc = inttoptr i64 %i.pb to ptr
  br label %bb.bo

bb.bo:                                            ; preds = %.thread507, %bb.bl
  %storemerge520 = phi ptr [ %i.oj, %bb.bl ], [ %i.pc, %.thread507 ]
  %storemerge519.in.in = phi i64 [ %i.of, %bb.bl ], [ %i.oz, %.thread507 ]
  %.1228 = phi ptr [ %i.oj, %bb.bl ], [ null, %.thread507 ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 8) ]
  store ptr %storemerge520, ptr %i.a, align 16, !tbaa !1230
  %storemerge519.in = and i64 %storemerge519.in.in, -2
  %storemerge519 = inttoptr i64 %storemerge519.in to ptr
  store ptr %storemerge519, ptr %i.f, align 8, !tbaa !1230
  %i.pd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.0.copyload.i.i.i.i.i327 = load i64, ptr %i.pd, align 8
  %i.pe = and i64 %.0.copyload.i.i.i.i.i327, -8
  %i.pf = inttoptr i64 %i.pe to ptr
  %.sroa.076.0.copyload = load i32, ptr %10, align 4, !tbaa !554
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  store i64 0, ptr %34, align 8
  %i.pg = call fastcc i64 @_ZL21CreateFunctionRefExprRN5clang4SemaEPNS_12FunctionDeclEPNS_9NamedDeclEPKNS_4ExprEbNS_14SourceLocationERKNS_18DeclarationNameLocE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.fc, ptr noundef %i.pf, ptr noundef %.1228, i1 noundef zeroext %i.ez, i32 %.sroa.076.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %34) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.ph = icmp eq i64 %i.pg, 1
  br i1 %i.ph, label %.critedge267, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  %i.pi = getelementptr inbounds nuw i8, ptr %i.fc, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i328 = load i64, ptr %i.pi, align 8, !tbaa !75
  %i.pj = and i64 %.sroa.0.0.copyload.i.i328, -16
  %i.pk = inttoptr i64 %i.pj to ptr
  %i.pl = load ptr, ptr %i.pk, align 16, !tbaa !74 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load i8, ptr %i.pm, align 16
  %i.po = add i8 %i.pn, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i329 = icmp ult i8 %i.po, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i329, label %bb.bq, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit332

bb.bq:                                            ; preds = %bb.bp
  %i.pp = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.pl) #28
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit332

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit332: ; preds = %bb.bp, %bb.bq
  %.1.i.i330 = phi ptr [ %i.pp, %bb.bq ], [ %i.pl, %bb.bp ]
  %i.pq = getelementptr inbounds nuw i8, ptr %.1.i.i330, i64 24
  %.sroa.0.0.copyload.i1.i331 = load i64, ptr %i.pq, align 8, !tbaa !75 ; 2 uses
  store i64 %.sroa.0.0.copyload.i1.i331, ptr %35, align 8
  %i.pr = call noundef i32 @_ZN5clang4Expr19getValueKindForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i1.i331)
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 7 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.pu = call i64 @_ZNK5clang8QualType20getNonLValueExprTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(23904) %i.pt) #28 ; 2 uses
  store i64 %i.pu, ptr %35, align 8, !tbaa !75
  %i.pv = load ptr, ptr %i.ps, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.pw = and i64 %i.pg, -2
  %i.px = inttoptr i64 %i.pw to ptr
  %.sroa.066.0.copyload = load i32, ptr %10, align 4, !tbaa !554
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.0.0.copyload.i.i333 = load i64, ptr %i.pz, align 8, !tbaa !554 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i334 = trunc i64 %.sroa.0.0.copyload.i.i333 to i32
  %i.qa = load i32, ptr %i.py, align 8, !tbaa !1552
  %i.qb = icmp ne i32 %i.qa, %.sroa.01.0.extract.trunc.i.i.i.i334
  %.sroa.2.0.extract.shift.i.i.i.i335 = lshr i64 %.sroa.0.0.copyload.i.i333, 32
  %.sroa.2.0.extract.trunc.i.i.i.i336 = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i335 to i32
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.qd = load i32, ptr %i.qc, align 4
  %i.qe = icmp ne i32 %i.qd, %.sroa.2.0.extract.trunc.i.i.i.i336
  %.not3.i.i.i337 = select i1 %i.qb, i1 true, i1 %i.qe
  %i.qf = load i64, ptr %i.py, align 8
  %.sroa.01.0.insert.insert.i338 = select i1 %.not3.i.i.i337, i64 %i.qf, i64 0
  %i.qg = load i32, ptr %i.fd, align 8
  %i.qh = and i32 %i.qg, 64
  %i.qi = icmp ne i32 %i.qh, 0
  %i.qj = call noundef ptr @_ZN5clang19CXXOperatorCallExpr6CreateERKNS_10ASTContextENS_22OverloadedOperatorKindEPNS_4ExprEN4llvm8ArrayRefIS6_EENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideENS_8CallExpr11ADLCallKindEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.pv, i32 noundef %.0.i294501, ptr noundef %i.px, ptr nonnull %i.a, i64 2, i64 %i.pu, i32 noundef %i.pr, i32 %.sroa.066.0.copyload, i64 %.sroa.01.0.insert.insert.i338, i1 noundef zeroext %i.qi, i1 noundef zeroext %i.fg) #28 ; 3 uses
  %i.qk = load i32, ptr %i.fj, align 4
  %i.ql = and i32 %i.qk, 124
  %.not539 = icmp eq i32 %i.ql, 36
  br i1 %.not539, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit332
  %i.qm = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isImplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %i.fc) #28
  br i1 %i.qm, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.qn = load ptr, ptr %i.a, align 16, !tbaa !1230
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit332
  %.sroa.0425.0 = phi ptr [ %i.a, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit332 ], [ %i.f, %bb.bs ], [ %i.a, %bb.br ]
  %.sroa.7427.0 = phi i64 [ 2, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit332 ], [ 1, %bb.bs ], [ 2, %bb.br ]
  %.0234 = phi ptr [ null, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit332 ], [ %i.qn, %bb.bs ], [ null, %bb.br ] ; 3 uses
  %.sroa.0.0.copyload.i.i340 = load i64, ptr %i.pi, align 8, !tbaa !75
  %i.qo = and i64 %.sroa.0.0.copyload.i.i340, -16
  %i.qp = inttoptr i64 %i.qo to ptr
  %i.qq = load ptr, ptr %i.qp, align 16, !tbaa !74 ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qs = load i8, ptr %i.qr, align 16
  %i.qt = add i8 %i.qs, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i341 = icmp ult i8 %i.qt, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i341, label %bb.bu, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit344

bb.bu:                                            ; preds = %bb.bt
  %i.qu = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.qq) #28
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit344

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit344: ; preds = %bb.bt, %bb.bu
  %.1.i.i342 = phi ptr [ %i.qu, %bb.bu ], [ %i.qq, %bb.bt ]
  %i.qv = getelementptr inbounds nuw i8, ptr %.1.i.i342, i64 24
  %.sroa.0.0.copyload.i1.i343 = load i64, ptr %i.qv, align 8, !tbaa !75
  %.sroa.059.0.copyload = load i32, ptr %10, align 4, !tbaa !554
  %i.qw = call noundef zeroext i1 @_ZN5clang4Sema19CheckCallReturnTypeENS_8QualTypeENS_14SourceLocationEPNS_8CallExprEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i1.i343, i32 %.sroa.059.0.copyload, ptr noundef %i.qj, ptr noundef nonnull %i.fc) #28
  br i1 %i.qw, label %bb.cm, label %bb.bv

bb.bv:                                            ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit344
  br i1 %i.nh, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.qx = load ptr, ptr %i.a, align 16, !tbaa !1230
  %i.qy = load ptr, ptr %i.f, align 8, !tbaa !1230
  %.sroa.058.0.copyload = load i32, ptr %10, align 4, !tbaa !554
  call void @_ZN5clang4Sema16DiagnoseSelfMoveEPKNS_4ExprES3_NS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.qx, ptr noundef %i.qy, i32 %.sroa.058.0.copyload) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  %i.qz = load ptr, ptr %i.a, align 16, !tbaa !1230
  store ptr %i.qz, ptr %36, align 8, !tbaa !2407
  %i.ra = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.rb = load i32, ptr %i.fj, align 4
  %i.rc = and i32 %i.rb, 124
  %i.rd = icmp eq i32 %i.rc, 36
  %spec.select.i.i345 = select i1 %i.rd, ptr %i.fc, ptr null
  store ptr %spec.select.i.i345, ptr %i.ra, align 8, !tbaa !2408
  %i.re = load ptr, ptr %i.f, align 8, !tbaa !1230
  call void @_ZN5clang4sema23checkAssignmentLifetimeERNS_4SemaERKNS0_14AssignedEntityEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef %i.re) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.not255 = icmp eq ptr %.0234, null
  br i1 %.not255, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.rf = load ptr, ptr %i.ps, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.rg = getelementptr inbounds nuw i8, ptr %.0234, i64 8
  %.sroa.0.0.copyload.i346 = load i64, ptr %i.rg, align 8, !tbaa !75
  %i.rh = call i64 @_ZNK5clang10ASTContext14getPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.rf, i64 %.sroa.0.0.copyload.i346) #28
  %i.ri = load ptr, ptr %i.ps, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.rj = call i64 @_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %i.fc)
  %i.rk = call i64 @_ZNK5clang10ASTContext14getPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ri, i64 %i.rj) #28
  %.sroa.053.0.copyload = load i32, ptr %10, align 4, !tbaa !554
  call void @_ZN5clang4Sema17CheckArgAlignmentENS_14SourceLocationEPNS_9NamedDeclEN4llvm9StringRefENS_8QualTypeES6_(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.053.0.copyload, ptr noundef nonnull %i.fc, ptr nonnull @.str.14, i64 6, i64 %i.rh, i64 %i.rk) #28
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.rl = load i32, ptr %i.fj, align 4
  %i.rm = and i32 %i.rl, 124
  %i.rn = icmp eq i32 %i.rm, 36
  %.sroa.049.0.copyload = load i32, ptr %10, align 4, !tbaa !554
  %i.ro = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qj) #29
  call void @_ZN5clang4Sema9checkCallEPNS_9NamedDeclEPKNS_17FunctionProtoTypeEPKNS_4ExprEN4llvm8ArrayRefIS8_EEbNS_14SourceLocationENS_11SourceRangeENS_16VariadicCallTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.fc, ptr noundef null, ptr noundef %.0234, ptr nonnull %.sroa.0425.0, i64 %.sroa.7427.0, i1 noundef zeroext %i.rn, i32 %.sroa.049.0.copyload, i64 %i.ro, i32 noundef 4) #28
  %i.rp = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.qj) #28 ; 2 uses
  %i.rq = icmp eq i64 %i.rp, 1
  br i1 %i.rq, label %bb.cm, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rr = call i64 @_ZN5clang4Sema27CheckForImmediateInvocationENS_12ActionResultIPNS_4ExprELb1EEEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.rp, ptr noundef nonnull %i.fc) #28 ; 4 uses
  %i.rs = icmp eq i64 %i.rr, 1
  br i1 %i.rs, label %bb.cm, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rt = load i32, ptr %i.fd, align 8            ; 2 uses
  %i.ru = and i32 %i.rt, 256
  %.not256 = icmp ne i32 %i.ru, 0
  %i.rv = icmp eq i32 %i.k, 34
  %or.cond13 = and i1 %i.rv, %i.fg
  %or.cond265 = or i1 %or.cond13, %.not256
  br i1 %or.cond265, label %bb.cc, label %bb.ck

bb.cc:                                            ; preds = %bb.cb
  %i.rw = icmp eq i32 %i.k, 31
  br i1 %i.rw, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %.sroa.044.0.copyload = load i32, ptr %10, align 4, !tbaa !554
  %i.rx = and i64 %i.rr, -2
  %i.ry = inttoptr i64 %i.rx to ptr
  %i.rz = call i64 @_ZN5clang4Sema20CreateBuiltinUnaryOpENS_14SourceLocationENS_17UnaryOperatorKindEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.044.0.copyload, i32 noundef 9, ptr noundef %i.ry, i1 noundef zeroext false) #28
  br label %bb.cj

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  %i.sa = load ptr, ptr %i.ps, align 8, !tbaa !1228, !nonnull !87, !align !500 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 18984
  %.sroa.0.0.copyload.i347 = load i64, ptr %i.sb, align 8, !tbaa !75
  %i.sc = and i64 %.sroa.0.0.copyload.i347, -16
  %i.sd = inttoptr i64 %i.sc to ptr
  %i.se = load ptr, ptr %i.sd, align 16, !tbaa !74
  %i.sf = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.sa, ptr noundef %i.se) #28
  %i.sg = extractvalue { i64, i64 } %i.sf, 0
  %i.sh = trunc i64 %i.sg to i32                  ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i32 %i.sh, ptr %i.si, align 8, !tbaa !91
  %i.sj = icmp ult i32 %i.sh, 65
  br i1 %i.sj, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i64 0, ptr %37, align 8, !tbaa !75
  br label %_ZN4llvm6APSIntC2Ejb.exit

bb.cg:                                            ; preds = %bb.ce
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(13) %37, i64 noundef 0, i1 noundef zeroext false) #28
  br label %_ZN4llvm6APSIntC2Ejb.exit

_ZN4llvm6APSIntC2Ejb.exit:                        ; preds = %bb.cf, %bb.cg
  %i.sk = getelementptr inbounds nuw i8, ptr %37, i64 12
  store i8 0, ptr %i.sk, align 4, !tbaa !90
end_hunk_9
begin_hunk_10_@_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_20CXXSpecialMemberKindEvEERKS1_OT_:bb.a
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  store i64 %i.k, ptr %i.u, align 8, !tbaa !1249
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.x = load i8, ptr %i.w, align 4, !tbaa !1419, !range !86, !noundef !87
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1428 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1264
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #28, !inline_history !10
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ]
  store ptr %i.ag, ptr %2, align 8, !tbaa !1430
  %i.ah = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !554
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1433
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i32, ptr %1, align 4, !tbaa !1788
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !559 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang17PartialDiagnosticlsINS_20CXXSpecialMemberKindEvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !560
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !559
  br label %_ZNK5clang17PartialDiagnosticlsINS_20CXXSpecialMemberKindEvEERKS0_OT_.exit

_ZNK5clang17PartialDiagnosticlsINS_20CXXSpecialMemberKindEvEERKS0_OT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.ap, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.au = sext i32 %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.at, align 8, !tbaa !1412
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 2, ptr %i.ay, align 1, !tbaa !75
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !559 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !1412 ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !1412
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsINS_20CXXSpecialMemberKindEvEERKS0_OT_.exit, %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_20CXXSpecialMemberKindEvEERKS1_OT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_12FunctionDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1376
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !559  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZN5clanglsIPNS_12FunctionDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !560
  %i.i = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.h) ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !559
  br label %_ZN5clanglsIPNS_12FunctionDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit

_ZN5clanglsIPNS_12FunctionDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.j, align 8, !tbaa !1412
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 10, ptr %i.o, align 1, !tbaa !75
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !559  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.p, align 8, !tbaa !1412  ; 2 uses
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %i.p, align 8, !tbaa !1412
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  store i64 %i.k, ptr %i.u, align 8, !tbaa !1249
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.x = load i8, ptr %i.w, align 4, !tbaa !1419, !range !86, !noundef !87
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1428 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1264
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #28, !inline_history !10
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ]
  store ptr %i.ag, ptr %2, align 8, !tbaa !1430
  %i.ah = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !554
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1433
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !1376
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !559 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIPNS_12FunctionDeclEEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !560
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !559
  br label %_ZNK5clang17PartialDiagnosticlsIPNS_12FunctionDeclEEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIPNS_12FunctionDeclEEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.at, align 8, !tbaa !1412
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 10, ptr %i.ay, align 1, !tbaa !75
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !559 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !1412 ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !1412
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIPNS_12FunctionDeclEEERKS0_RKT_.exit, %_ZN5clanglsIPNS_12FunctionDeclEEERKNS_8SemaBase20ImmediateDiagBuilderES6_RKT_.exit
  ret ptr %0
}

declare void @_ZN5clang4Sema19NoteDeletedFunctionEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN5clang19getOperatorSpellingENS_22OverloadedOperatorKindE(i32 noundef) local_unnamed_addr #6

declare noundef ptr @_ZNK5clang20ComparisonCategories17lookupInfoForTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(40), i64) local_unnamed_addr #6

declare noundef ptr @_ZNK5clang22ComparisonCategoryInfo15lookupValueInfoENS_24ComparisonCategoryResultE(ptr noundef nonnull align 8 dereferenceable(113), i8 noundef zeroext) local_unnamed_addr #6

declare i64 @_ZN5clang4Sema24BuildDeclarationNameExprERKNS_12CXXScopeSpecERKNS_19DeclarationNameInfoEPNS_9NamedDeclES8_PKNS_24TemplateArgumentListInfoEb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare i64 @_ZN5clang4Sema18ActOnConditionalOpENS_14SourceLocationES1_PNS_4ExprES3_S3_(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN5clang16PseudoObjectExpr6CreateERKNS_10ASTContextEPNS_4ExprEN4llvm8ArrayRefIS5_EEj(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, ptr, i64, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema34CreateOverloadedArraySubscriptExprENS_14SourceLocationES1_PNS_4ExprEN4llvm15MutableArrayRefIS3_EE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, i32 %2, ptr noundef %3, ptr %4, i64 %5) local_unnamed_addr #5 align 2 {
_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit:
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.1604", align 8 ; 33 uses
  %8 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 6 uses
  %9 = alloca %"class.clang::UnresolvedSet.1606", align 8 ; 7 uses
  %10 = alloca %"class.(anonymous namespace)::UnbridgedCastsSet", align 8 ; 8 uses
  %11 = alloca %"class.clang::OverloadCandidateSet", align 8 ; 35 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"class.llvm::SmallVector.1604", align 8 ; 10 uses
  %13 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 5 uses
  %14 = alloca %"class.clang::QualType", align 8  ; 5 uses
  %15 = alloca %"class.clang::PartialDiagnostic", align 8 ; 14 uses
  %16 = alloca %"class.clang::PartialDiagnostic", align 8 ; 13 uses
  %17 = alloca %"struct.std::pair", align 8       ; 5 uses
  %18 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %19 = alloca %"class.llvm::function_ref.1275", align 8 ; 3 uses
  %20 = alloca %class.anon.1581, align 1          ; 3 uses
  %21 = alloca %"struct.std::pair", align 8       ; 5 uses
  %22 = alloca %"class.clang::PartialDiagnostic", align 8 ; 17 uses
  %23 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %24 = alloca %"class.llvm::function_ref.1275", align 8 ; 3 uses
  %25 = alloca %class.anon.1581, align 1          ; 3 uses
  %26 = alloca %"struct.std::pair", align 8       ; 5 uses
  %27 = alloca %"class.clang::PartialDiagnostic", align 8 ; 15 uses
  %28 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %29 = alloca %"class.llvm::function_ref.1275", align 8 ; 3 uses
  %30 = alloca %class.anon.1581, align 1          ; 3 uses
  %31 = alloca %"struct.std::pair", align 8       ; 5 uses
  %32 = alloca %"class.clang::PartialDiagnostic", align 8 ; 20 uses
  %33 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %34 = alloca %"class.llvm::function_ref.1275", align 8 ; 3 uses
  %35 = alloca %class.anon.1581, align 1          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !515
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 2, ptr %i.d, align 4, !tbaa !517
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %.sroa.gep271 = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %.sroa.gep273 = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %.sroa.gep274 = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  store ptr %3, ptr %i.b, align 8
  store i32 1, ptr %i.c, align 8, !tbaa !516
  %.idx = shl nuw nsw i64 %5, 3
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %.not387 = icmp eq i64 %5, 0
  br i1 %.not387, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103
  %.0388 = phi ptr [ %i.n, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103 ], [ %4, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.f = load ptr, ptr %.0388, align 8, !tbaa !1230 ; 2 uses
  %i.g = load i32, ptr %i.c, align 8, !tbaa !516  ; 2 uses
  %i.h = load i32, ptr %i.d, align 4, !tbaa !517
  %.not.i102 = icmp ult i32 %i.g, %i.h
  br i1 %.not.i102, label %bb.b, label %bb.a, !prof !565

bb.a:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.f)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103

bb.b:                                             ; preds = %.lr.ph
  %i.i = zext i32 %i.g to i64
  %i.j = load ptr, ptr %7, align 8, !tbaa !515
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  store ptr %i.f, ptr %i.k, align 1
  %i.l = load i32, ptr %i.c, align 8, !tbaa !516
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.c, align 8, !tbaa !516
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.0388, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit103
  %i.o = load ptr, ptr %4, align 8, !tbaa !1230
  %i.p = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #29
  %i.q = getelementptr i8, ptr %i.e, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1230
  %i.s = call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #29
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw i64 %i.t, 32
  %i.v = zext i32 %i.p to i64
  %i.w = or disjoint i64 %i.u, %i.v
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %._crit_edge
  %.sroa.10332.0 = phi i64 [ %i.w, %._crit_edge ], [ 0, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %.pn = load ptr, ptr %i.x, align 8, !tbaa !1228, !nonnull !87, !align !500
  %.in.in = getelementptr inbounds nuw i8, ptr %.pn, i64 18544
  %.in = ptrtoint ptr %.in.in to i64
  %i.y = or disjoint i64 %.in, 6                  ; 4 uses
  %i.z = load ptr, ptr %7, align 8, !tbaa !515
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !516
  %i.ab = zext i32 %i.aa to i64
  %i.ac = call noundef zeroext i1 @_ZN5clang4Expr28hasAnyTypeDependentArgumentsEN4llvm8ArrayRefIPS0_EE(ptr %i.z, i64 %i.ab) #28
  br i1 %i.ac, label %bb.c, label %bb.g

bb.c:                                             ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i64 %i.y, ptr %8, align 8, !tbaa !1249
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %1, ptr %i.ad, align 8, !tbaa !554
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i64 %i.y) #28
  %.sroa.2316.0.insert.ext = zext i32 %2 to i64
  %.sroa.2316.0.insert.shift = shl nuw i64 %.sroa.2316.0.insert.ext, 32
  %.sroa.0315.0.insert.ext = zext i32 %1 to i64
  %.sroa.0315.0.insert.insert = or disjoint i64 %.sroa.2316.0.insert.shift, %.sroa.0315.0.insert.ext
  %i.af = inttoptr i64 %.sroa.0315.0.insert.insert to ptr
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.ag, ptr %9, align 8, !tbaa !515
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.ah, align 8, !tbaa !516
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !517
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.ak = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.al = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.aj, ptr noundef null, i64 0, ptr null, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext true, i64 %i.ak, i64 %i.ak, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.an = load ptr, ptr %9, align 8, !tbaa !515   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ag
  br i1 %i.ao, label %_ZN5clang13UnresolvedSetILj0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.an) #28
  br label %_ZN5clang13UnresolvedSetILj0EED2Ev.exit

_ZN5clang13UnresolvedSetILj0EED2Ev.exit:          ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ap = icmp eq ptr %i.al, inttoptr (i64 1 to ptr)
  br i1 %i.ap, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13UnresolvedSetILj0EED2Ev.exit
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !1228, !nonnull !87, !align !500 ; 2 uses
  %i.ar = and i64 %i.am, -2
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %7, align 8, !tbaa !515
  %i.au = load i32, ptr %i.c, align 8, !tbaa !516
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 19336
  %.sroa.0.0.copyload.i = load i64, ptr %i.aw, align 8, !tbaa !75
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ay, align 8, !tbaa !554 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.az = load i32, ptr %i.ax, align 8, !tbaa !1552
  %i.ba = icmp ne i32 %i.az, %.sroa.01.0.extract.trunc.i.i.i.i
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp ne i32 %i.bc, %.sroa.2.0.extract.trunc.i.i.i.i
  %.not3.i.i.i = select i1 %i.ba, i1 true, i1 %i.bd
  %i.be = load i64, ptr %i.ax, align 8
  %.sroa.01.0.insert.insert.i = select i1 %.not3.i.i.i, i64 %i.be, i64 0
  %i.bf = call noundef ptr @_ZN5clang19CXXOperatorCallExpr6CreateERKNS_10ASTContextENS_22OverloadedOperatorKindEPNS_4ExprEN4llvm8ArrayRefIS6_EENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideENS_8CallExpr11ADLCallKindEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.aq, i32 noundef 43, ptr noundef %i.as, ptr %i.at, i64 %i.av, i64 %.sroa.0.0.copyload.i, i32 noundef 0, i32 %2, i64 %.sroa.01.0.insert.insert.i, i1 noundef zeroext false, i1 noundef zeroext false) #28
  %i.bg = ptrtoint ptr %i.bf to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZN5clang13UnresolvedSetILj0EED2Ev.exit, %bb.e
  %.sroa.0381.0 = phi i64 [ %i.bg, %bb.e ], [ 1, %_ZN5clang13UnresolvedSetILj0EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.dg

bb.g:                                             ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bh, ptr %10, align 8, !tbaa !515
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !516
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 2, ptr %i.bj, align 4, !tbaa !517
  %i.bk = load ptr, ptr %7, align 8, !tbaa !515   ; 2 uses
  %i.bl = load i32, ptr %i.c, align 8, !tbaa !516 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %.not10.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not10.not.i, label %.loopexit, label %.lr.ph.i

bb.h:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.not.i = icmp eq i64 %indvars.iv.next.i, %i.bm
  br i1 %.not.not.i, label %.loopexit.loopexit, label %.lr.ph.i, !llvm.loop !37

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.bo = call fastcc noundef zeroext i1 @_ZL27checkPlaceholderForOverloadRN5clang4SemaERPNS_4ExprEPN12_GLOBAL__N_117UnbridgedCastsSetE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 8 dereferenceable(48) %10)
  br i1 %i.bo, label %_ZL31checkArgPlaceholdersForOverloadRN5clang4SemaEN4llvm15MutableArrayRefIPNS_4ExprEEERN12_GLOBAL__N_117UnbridgedCastsSetE.exit, label %bb.h

.loopexit.loopexit:                               ; preds = %bb.h
  %.pre = load ptr, ptr %7, align 8, !tbaa !515
  %.pre389 = load i32, ptr %i.c, align 8, !tbaa !516
  %i.bp = zext i32 %.pre389 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %i.bq = phi i64 [ %i.bp, %.loopexit.loopexit ], [ 0, %bb.g ]
  %i.br = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.bk, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.bs, ptr %11, align 8, !tbaa !515
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !516
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 16, ptr %i.bu, align 4, !tbaa !517
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 2704
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 2728
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !1328
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 2712
  store i32 16, ptr %i.bx, align 8, !tbaa !1327
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 2716
  store i32 0, ptr %i.by, align 4, !tbaa !1326
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 2720
  store i8 1, ptr %i.bz, align 8, !tbaa !1325
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 2856
  store ptr null, ptr %i.ca, align 8, !tbaa !1330
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 2864 ; 3 uses
  store i32 0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 2872
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 2888
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 2904
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cc, i8 0, i64 16, i1 false)
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !515
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 2896
  store i32 0, ptr %i.cf, align 8, !tbaa !516
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 2900
  store i32 4, ptr %i.cg, align 4, !tbaa !517
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 2936
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 2952 ; 2 uses
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !515
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 2944
  store i32 0, ptr %i.cj, align 8, !tbaa !516
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 2948
  store i32 0, ptr %i.ck, align 4, !tbaa !517
  store i32 %1, ptr %i.ci, align 8, !tbaa !554
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 2956
  store i32 1, ptr %i.cl, align 4, !tbaa !1329
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 2960
  store i64 0, ptr %i.cm, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 2968
  store i8 0, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !1250
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 2972
  store i32 0, ptr %i.cn, align 4, !tbaa !1318
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 7840
  store i32 0, ptr %i.co, align 8, !tbaa !1451
  call void @_ZN5clang4Sema27AddMemberOperatorCandidatesENS_22OverloadedOperatorKindENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetENS_27OverloadCandidateParamOrderE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 43, i32 %1, ptr %i.br, i64 %i.bq, ptr noundef nonnull align 8 dereferenceable(7844) %11, i8 noundef signext 0)
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !516
  %i.cq = icmp eq i32 %i.cp, 2
  br i1 %i.cq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.cr = load ptr, ptr %7, align 8, !tbaa !515
  call void @_ZN5clang4Sema28AddBuiltinOperatorCandidatesENS_22OverloadedOperatorKindENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 43, i32 %1, ptr %i.cr, i64 2, ptr noundef nonnull align 8 dereferenceable(7844) %11)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %i.cs = load i32, ptr %i.bt, align 8, !tbaa !516
  %i.ct = zext i32 %i.cs to i64
  %i.cu = load i32, ptr %i.cb, align 8
  %i.cv = and i32 %i.cu, 1073741823
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = add nuw nsw i64 %i.cw, %i.ct
  %i.cy = icmp samesign ugt i64 %i.cx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.cz = call noundef i32 @_ZN5clang20OverloadCandidateSet18BestViableFunctionERNS_4SemaENS_14SourceLocationERPNS_17OverloadCandidateE(ptr noundef nonnull align 8 dereferenceable(7844) %11, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  switch i32 %i.cz, label %default.unreachable452 [
    i32 0, label %bb.k
    i32 1, label %bb.ad
    i32 2, label %bb.bh
    i32 3, label %bb.cm
  ]

bb.k:                                             ; preds = %bb.j
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !1468 ; 7 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1477 ; 10 uses
  %.not92 = icmp eq ptr %i.db, null
  %i.dc = load ptr, ptr %7, align 8, !tbaa !515
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1230 ; 2 uses
  br i1 %.not92, label %bb.ab, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %.sroa.040.0.copyload = load i64, ptr %i.de, align 8, !tbaa !75
  %i.df = call noundef i32 @_ZN5clang4Sema25CheckMemberOperatorAccessENS_14SourceLocationEPNS_4ExprEN4llvm8ArrayRefIS3_EENS_14DeclAccessPairE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %i.dd, ptr %4, i64 %5, i64 %.sroa.040.0.copyload) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.dg, ptr %12, align 8, !tbaa !515
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i32 0, ptr %i.dh, align 8, !tbaa !516
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 2, ptr %i.di, align 4, !tbaa !517
  %i.dj = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isExplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %i.db) #28
  br i1 %i.dj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %36 = load ptr, ptr %7, align 8, !tbaa !515
  %37 = load ptr, ptr %36, align 8, !tbaa !1230
  %i.dk = call i64 @_ZN5clang4Sema32InitializeExplicitObjectArgumentERS0_PNS_4ExprEPNS_12FunctionDeclE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %37, ptr noundef nonnull %i.db) ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = and i64 %i.dk, -2
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load ptr, ptr %7, align 8, !tbaa !515   ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !1230
  %i.dp = load i32, ptr %i.c, align 8, !tbaa !516
  %i.dq = zext i32 %i.dp to i64
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "align"(ptr %i.da, i64 8) ]
  %38 = load ptr, ptr %7, align 8, !tbaa !515
  %39 = load ptr, ptr %38, align 8, !tbaa !1230
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.de, align 8
  %i.dr = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = call i64 @_ZN5clang4Sema43PerformImplicitObjectArgumentInitializationEPNS_4ExprENS_19NestedNameSpecifierEPNS_9NamedDeclEPNS_13CXXMethodDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %39, i64 0, ptr noundef %i.ds, ptr noundef nonnull %i.db) ; 2 uses
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = and i64 %i.dt, -2
  %i.dw = inttoptr i64 %i.dv to ptr
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %i.dw)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.0349.1 = phi ptr [ %i.do, %bb.n ], [ %4, %bb.p ]
  %.sroa.9.1 = phi i64 [ %i.dq, %bb.n ], [ %5, %bb.p ]
  %i.dx = call fastcc noundef zeroext i1 @_ZL42PrepareArgumentsForCallToObjectOfClassTypeRN5clang4SemaERN4llvm15SmallVectorImplIPNS_4ExprEEEPNS_13CXXMethodDeclENS2_15MutableArrayRefIS5_EENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %i.db, ptr %.sroa.0349.1, i64 %.sroa.9.1, i32 %1)
  br i1 %i.dx, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  store i64 %i.y, ptr %13, align 8, !tbaa !1249
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 %1, ptr %i.dy, align 8, !tbaa !554
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i64 %i.y) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %i.da, i64 8) ]
  %.sroa.2292.0.insert.ext = zext i32 %2 to i64
  %.sroa.2292.0.insert.shift = shl nuw i64 %.sroa.2292.0.insert.ext, 32
  %.sroa.0291.0.insert.ext = zext i32 %1 to i64
  %.sroa.0291.0.insert.insert = or disjoint i64 %.sroa.2292.0.insert.shift, %.sroa.0291.0.insert.ext
  %i.ea = inttoptr i64 %.sroa.0291.0.insert.insert to ptr
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !75
  %.0.copyload.i.i.i.i.i104 = load i64, ptr %i.de, align 8
  %i.eb = and i64 %.0.copyload.i.i.i.i.i104, -8
  %i.ec = inttoptr i64 %i.eb to ptr
  %.sroa.0.0.copyload.i105 = load i32, ptr %i.dy, align 8, !tbaa !554
  %i.ed = call fastcc i64 @_ZL21CreateFunctionRefExprRN5clang4SemaEPNS_12FunctionDeclEPNS_9NamedDeclEPKNS_4ExprEbNS_14SourceLocationERKNS_18DeclarationNameLocE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.db, ptr noundef %i.ec, ptr noundef %3, i1 noundef zeroext %i.cy, i32 %.sroa.0.0.copyload.i105, ptr noundef nonnull align 8 dereferenceable(8) %i.dz) ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ef = getelementptr inbounds nuw i8, ptr %i.db, i64 48 ; 3 uses
  %.sroa.0.0.copyload.i.i106 = load i64, ptr %i.ef, align 8, !tbaa !75
  %i.eg = and i64 %.sroa.0.0.copyload.i.i106, -16
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load ptr, ptr %i.eh, align 16, !tbaa !74 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i8, ptr %i.ej, align 16
  %i.el = add i8 %i.ek, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.el, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

bb.t:                                             ; preds = %bb.s
  %i.em = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ei) #28
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit:   ; preds = %bb.s, %bb.t
  %.1.i.i = phi ptr [ %i.em, %bb.t ], [ %i.ei, %bb.s ]
  %i.en = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.en, align 8, !tbaa !75 ; 2 uses
  store i64 %.sroa.0.0.copyload.i1.i, ptr %14, align 8
  %i.eo = call noundef i32 @_ZN5clang4Expr19getValueKindForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i1.i)
  %i.ep = load ptr, ptr %i.x, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.eq = call i64 @_ZNK5clang8QualType20getNonLValueExprTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(23904) %i.ep) #28 ; 2 uses
  store i64 %i.eq, ptr %14, align 8, !tbaa !75
  %i.er = load ptr, ptr %i.x, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.es = and i64 %i.ed, -2
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load ptr, ptr %12, align 8, !tbaa !515
  %i.ev = load i32, ptr %i.dh, align 8, !tbaa !516
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.0.0.copyload.i.i107 = load i64, ptr %i.ey, align 8, !tbaa !554 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i108 = trunc i64 %.sroa.0.0.copyload.i.i107 to i32
  %i.ez = load i32, ptr %i.ex, align 8, !tbaa !1552
  %i.fa = icmp ne i32 %i.ez, %.sroa.01.0.extract.trunc.i.i.i.i108
  %.sroa.2.0.extract.shift.i.i.i.i109 = lshr i64 %.sroa.0.0.copyload.i.i107, 32
  %.sroa.2.0.extract.trunc.i.i.i.i110 = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i109 to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = icmp ne i32 %i.fc, %.sroa.2.0.extract.trunc.i.i.i.i110
  %.not3.i.i.i111 = select i1 %i.fa, i1 true, i1 %i.fd
  %i.fe = load i64, ptr %i.ex, align 8
  %.sroa.01.0.insert.insert.i112 = select i1 %.not3.i.i.i111, i64 %i.fe, i64 0
  %i.ff = call noundef ptr @_ZN5clang19CXXOperatorCallExpr6CreateERKNS_10ASTContextENS_22OverloadedOperatorKindEPNS_4ExprEN4llvm8ArrayRefIS6_EENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideENS_8CallExpr11ADLCallKindEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.er, i32 noundef 43, ptr noundef %i.et, ptr %i.eu, i64 %i.ew, i64 %i.eq, i32 noundef %i.eo, i32 %2, i64 %.sroa.01.0.insert.insert.i112, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 3 uses
  %.sroa.0.0.copyload.i.i113 = load i64, ptr %i.ef, align 8, !tbaa !75
  %i.fg = and i64 %.sroa.0.0.copyload.i.i113, -16
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load ptr, ptr %i.fh, align 16, !tbaa !74 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load i8, ptr %i.fj, align 16
  %i.fl = add i8 %i.fk, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i114 = icmp ult i8 %i.fl, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i114, label %bb.u, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit117

bb.u:                                             ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit
  %i.fm = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.fi) #28
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit117

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit117: ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit, %bb.u
  %.1.i.i115 = phi ptr [ %i.fm, %bb.u ], [ %i.fi, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.1.i.i115, i64 24
  %.sroa.0.0.copyload.i1.i116 = load i64, ptr %i.fn, align 8, !tbaa !75
  %i.fo = call noundef zeroext i1 @_ZN5clang4Sema19CheckCallReturnTypeENS_8QualTypeENS_14SourceLocationEPNS_8CallExprEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i1.i116, i32 %1, ptr noundef %i.ff, ptr noundef nonnull %i.db) #28
  br i1 %i.fo, label %bb.y, label %bb.v

bb.v:                                             ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit117
  %.sroa.0.0.copyload.i118 = load i64, ptr %i.ef, align 8, !tbaa !75
  %i.fp = and i64 %.sroa.0.0.copyload.i118, -16
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = load ptr, ptr %i.fq, align 16, !tbaa !74 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load i8, ptr %i.fs, align 16
  %.not.i120 = icmp eq i8 %i.ft, 24
  br i1 %.not.i120, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fu = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.fr) #28
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.v, %bb.w
  %.1.i = phi ptr [ %i.fu, %bb.w ], [ %i.fr, %bb.v ]
  %i.fv = call noundef zeroext i1 @_ZN5clang4Sema17CheckFunctionCallEPNS_12FunctionDeclEPNS_8CallExprEPKNS_17FunctionProtoTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.db, ptr noundef %i.ff, ptr noundef %.1.i) #28
  br i1 %i.fv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.fw = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.ff) #28
  %i.fx = call i64 @_ZN5clang4Sema27CheckForImmediateInvocationENS_12ActionResultIPNS_4ExprELb1EEEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.fw, ptr noundef nonnull %i.db) #28
  br label %bb.y

bb.y:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit117, %bb.x
  %.sroa.0381.3 = phi i64 [ %i.fx, %bb.x ], [ 1, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit117 ], [ 1, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.r, %bb.y
  %.sroa.0381.4 = phi i64 [ %.sroa.0381.3, %bb.y ], [ 1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.m, %bb.q, %bb.z
  %.sroa.0381.5 = phi i64 [ 1, %bb.q ], [ 1, %bb.m ], [ %.sroa.0381.4, %bb.z ], [ 1, %bb.o ]
  %i.fy = load ptr, ptr %12, align 8, !tbaa !515  ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.dg
  br i1 %i.fz, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fy) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit: ; preds = %.critedge, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.critedge99

bb.ab:                                            ; preds = %bb.k
  %i.ga = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.sroa.015.0.copyload = load i64, ptr %i.ga, align 8, !tbaa !75
  %i.gb = getelementptr inbounds nuw i8, ptr %i.da, i64 48 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !1302
  %i.gd = call i64 @_ZN5clang4Sema25PerformImplicitConversionEPNS_4ExprENS_8QualTypeERKNS_26ImplicitConversionSequenceENS_16AssignmentActionENS_21CheckedConversionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.dd, i64 %.sroa.015.0.copyload, ptr noundef nonnull align 8 dereferenceable(152) %i.gc, i32 noundef 1, i32 noundef 4) #28 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 1
  br i1 %i.ge, label %.critedge99, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gf = and i64 %i.gd, -2
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = load ptr, ptr %7, align 8, !tbaa !515   ; 2 uses
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !1230
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !1230
  %i.gk = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %.sroa.014.0.copyload = load i64, ptr %i.gk, align 8, !tbaa !75
  %i.gl = load ptr, ptr %i.gb, align 8, !tbaa !1302
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 152
  %i.gn = call i64 @_ZN5clang4Sema25PerformImplicitConversionEPNS_4ExprENS_8QualTypeERKNS_26ImplicitConversionSequenceENS_16AssignmentActionENS_21CheckedConversionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.gj, i64 %.sroa.014.0.copyload, ptr noundef nonnull align 8 dereferenceable(152) %i.gm, i32 noundef 1, i32 noundef 4) #28 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %.critedge99, label %.thread386

.thread386:                                       ; preds = %bb.ac
  %i.gp = and i64 %i.gn, -2
  %i.gq = inttoptr i64 %i.gp to ptr               ; 2 uses
  %i.gr = load ptr, ptr %7, align 8, !tbaa !515   ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr %i.gq, ptr %i.gs, align 8, !tbaa !1230
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !1230
  %i.gu = call i64 @_ZN5clang4Sema31CreateBuiltinArraySubscriptExprEPNS_4ExprENS_14SourceLocationES2_S3_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.gt, i32 %1, ptr noundef %i.gq, i32 %2) #28
  br label %.critedge99

bb.ad:                                            ; preds = %bb.j
  %i.gv = load i32, ptr %i.bt, align 8, !tbaa !516
  %.not.i.i = icmp eq i32 %i.gv, 0
  %i.gw = load i32, ptr %i.cb, align 8
  %i.gx = and i32 %i.gw, 1073741823
  %i.gy = icmp eq i32 %i.gx, 0
  %i.gz = select i1 %.not.i.i, i1 %i.gy, i1 false ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.gz, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN5clang8SemaBase5PDiagEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::PartialDiagnostic") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.ha, i32 noundef 4874) #28
  %i.hb = load ptr, ptr %7, align 8, !tbaa !515
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !1230
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.sroa.0.0.copyload.i121 = load i64, ptr %i.hd, align 8, !tbaa !75
  %i.he = load ptr, ptr %15, align 8, !tbaa !559  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %bb.af

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.ae
  %i.hf = load ptr, ptr %.sroa.gep273, align 8, !tbaa !560
  %i.hg = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.hf) ; 2 uses
  store ptr %i.hg, ptr %15, align 8, !tbaa !559
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.hh = phi ptr [ %i.hg, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.he, %bb.ae ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  %i.hj = load i8, ptr %i.hh, align 8, !tbaa !1412
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hk
  store i8 8, ptr %i.hl, align 1, !tbaa !75
  %i.hm = load ptr, ptr %15, align 8, !tbaa !559  ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load i8, ptr %i.hm, align 8, !tbaa !1412 ; 2 uses
  %i.hp = add i8 %i.ho, 1                         ; 2 uses
  store i8 %i.hp, ptr %i.hm, align 8, !tbaa !1412
  %i.hq = zext i8 %i.ho to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hq
  store i64 %.sroa.0.0.copyload.i121, ptr %i.hr, align 8, !tbaa !1249
end_hunk_10
begin_hunk_11_@_ZN5clang4Sema28BuildCallToObjectOfClassTypeEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_:bb.a
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit181

bb.be:                                            ; preds = %bb.bc
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.pp) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.pp, i64 noundef 928) #30
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit181

_ZN5clang19StreamingDiagnosticD2Ev.exit181:       ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit177, %bb.bb, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

default.unreachable:                              ; preds = %.critedge
  unreachable

_ZN5clang19StreamingDiagnosticD2Ev.exit:          ; preds = %.critedge, %bb.am, %bb.al, %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit, %bb.an, %_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEvEERKS0_OT_.exit157, %_ZN5clang19StreamingDiagnosticD2Ev.exit181
  %i.pz = load ptr, ptr %i.b, align 8, !tbaa !1468 ; 8 uses
  %i.qa = load ptr, ptr %14, align 8, !tbaa !515
  %i.qb = load i32, ptr %i.z, align 8, !tbaa !516
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [168 x i8], ptr %i.qa, i64 %i.qc
  %i.qe = icmp eq ptr %i.pz, %i.qd
  br i1 %i.qe, label %bb.ce, label %bb.bf

bb.bf:                                            ; preds = %_ZN5clang19StreamingDiagnosticD2Ev.exit
  %.val = load ptr, ptr %13, align 8, !tbaa !515  ; 3 uses
  %.val116 = load i32, ptr %i.t, align 8, !tbaa !516 ; 2 uses
  %i.qf = zext i32 %.val116 to i64
  %.idx.i = shl nuw nsw i64 %i.qf, 4              ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %.not1.i = icmp eq i32 %.val116, 0
  br i1 %.not1.i, label %_ZN12_GLOBAL__N_117UnbridgedCastsSet7restoreEv.exit, label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %bb.bf
  %i.qh = add nsw i64 %.idx.i, -16                ; 2 uses
  %i.qi = lshr exact i64 %i.qh, 4
  %i.qj = add nuw nsw i64 %i.qi, 1
  %xtraiter = and i64 %i.qj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i182.prol.loopexit, label %.lr.ph.i182.prol

.lr.ph.i182.prol:                                 ; preds = %.lr.ph.i182.preheader, %.lr.ph.i182.prol
  %.02.i.prol = phi ptr [ %i.qn, %.lr.ph.i182.prol ], [ %.val, %.lr.ph.i182.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i182.prol ], [ 0, %.lr.ph.i182.preheader ]
  %i.qk = getelementptr inbounds nuw i8, ptr %.02.i.prol, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !1773
  %i.qm = load ptr, ptr %.02.i.prol, align 8, !tbaa !1774
  store ptr %i.ql, ptr %i.qm, align 8, !tbaa !1230
  %i.qn = getelementptr inbounds nuw i8, ptr %.02.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i182.prol.loopexit, label %.lr.ph.i182.prol, !llvm.loop !2456

.lr.ph.i182.prol.loopexit:                        ; preds = %.lr.ph.i182.prol, %.lr.ph.i182.preheader
  %.02.i.unr = phi ptr [ %.val, %.lr.ph.i182.preheader ], [ %i.qn, %.lr.ph.i182.prol ]
  %i.qo = icmp ult i64 %i.qh, 112
  br i1 %i.qo, label %_ZN12_GLOBAL__N_117UnbridgedCastsSet7restoreEv.exit, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.prol.loopexit, %.lr.ph.i182
  %.02.i = phi ptr [ %i.ru, %.lr.ph.i182 ], [ %.02.i.unr, %.lr.ph.i182.prol.loopexit ] ; 17 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.02.i, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !1773
  %i.qr = load ptr, ptr %.02.i, align 8, !tbaa !1774
  store ptr %i.qq, ptr %i.qr, align 8, !tbaa !1230
  %i.qs = getelementptr inbounds nuw i8, ptr %.02.i, i64 16
  %i.qt = getelementptr inbounds nuw i8, ptr %.02.i, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !1773
  %i.qv = load ptr, ptr %i.qs, align 8, !tbaa !1774
  store ptr %i.qu, ptr %i.qv, align 8, !tbaa !1230
  %i.qw = getelementptr inbounds nuw i8, ptr %.02.i, i64 32
  %i.qx = getelementptr inbounds nuw i8, ptr %.02.i, i64 40
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !1773
  %i.qz = load ptr, ptr %i.qw, align 8, !tbaa !1774
  store ptr %i.qy, ptr %i.qz, align 8, !tbaa !1230
  %i.ra = getelementptr inbounds nuw i8, ptr %.02.i, i64 48
  %i.rb = getelementptr inbounds nuw i8, ptr %.02.i, i64 56
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !1773
  %i.rd = load ptr, ptr %i.ra, align 8, !tbaa !1774
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !1230
  %i.re = getelementptr inbounds nuw i8, ptr %.02.i, i64 64
  %i.rf = getelementptr inbounds nuw i8, ptr %.02.i, i64 72
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !1773
  %i.rh = load ptr, ptr %i.re, align 8, !tbaa !1774
  store ptr %i.rg, ptr %i.rh, align 8, !tbaa !1230
  %i.ri = getelementptr inbounds nuw i8, ptr %.02.i, i64 80
  %i.rj = getelementptr inbounds nuw i8, ptr %.02.i, i64 88
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !1773
  %i.rl = load ptr, ptr %i.ri, align 8, !tbaa !1774
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !1230
  %i.rm = getelementptr inbounds nuw i8, ptr %.02.i, i64 96
  %i.rn = getelementptr inbounds nuw i8, ptr %.02.i, i64 104
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !1773
  %i.rp = load ptr, ptr %i.rm, align 8, !tbaa !1774
  store ptr %i.ro, ptr %i.rp, align 8, !tbaa !1230
  %i.rq = getelementptr inbounds nuw i8, ptr %.02.i, i64 112
  %i.rr = getelementptr inbounds nuw i8, ptr %.02.i, i64 120
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !1773
  %i.rt = load ptr, ptr %i.rq, align 8, !tbaa !1774
  store ptr %i.rs, ptr %i.rt, align 8, !tbaa !1230
  %i.ru = getelementptr inbounds nuw i8, ptr %.02.i, i64 128 ; 2 uses
  %.not.i183.7 = icmp eq ptr %i.ru, %i.qg
  br i1 %.not.i183.7, label %_ZN12_GLOBAL__N_117UnbridgedCastsSet7restoreEv.exit, label %.lr.ph.i182, !llvm.loop !38

_ZN12_GLOBAL__N_117UnbridgedCastsSet7restoreEv.exit: ; preds = %.lr.ph.i182.prol.loopexit, %.lr.ph.i182, %bb.bf
  %i.rv = load ptr, ptr %i.pz, align 8, !tbaa !1477
  %i.rw = icmp eq ptr %i.rv, null
  br i1 %i.rw, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %_ZN12_GLOBAL__N_117UnbridgedCastsSet7restoreEv.exit
  %i.rx = getelementptr inbounds nuw i8, ptr %i.pz, i64 48
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !1302
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 136
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !75
  %i.sb = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 3 uses
  %.sroa.049.0.copyload = load i64, ptr %i.sb, align 8, !tbaa !75
  %i.sc = call noundef i32 @_ZN5clang4Sema25CheckMemberOperatorAccessENS_14SourceLocationEPNS_4ExprES3_NS_14DeclAccessPairE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %3, ptr noundef nonnull %i.ay, ptr noundef null, i64 %.sroa.049.0.copyload) #28 ; 0 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pz, i64 8) ]
  %.0.copyload.i.i.i.i.i184 = load i64, ptr %i.sb, align 8
  %i.sd = and i64 %.0.copyload.i.i.i.i.i184, -8
  %i.se = inttoptr i64 %i.sd to ptr
  %i.sf = call noundef zeroext i1 @_ZN5clang4Sema17DiagnoseUseOfDeclEPNS_9NamedDeclEN4llvm8ArrayRefINS_14SourceLocationEEEPKNS_17ObjCInterfaceDeclEbbPS7_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.se, ptr nonnull %11, i64 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext false) #28
  br i1 %i.sf, label %bb.ce, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.0.copyload.i.i.i.i.i185 = load i64, ptr %i.sb, align 8
  %i.sg = and i64 %.0.copyload.i.i.i.i.i185, -8
  %i.sh = inttoptr i64 %i.sg to ptr
  %i.si = call i64 @_ZN5clang4Sema22BuildCXXMemberCallExprEPNS_4ExprEPNS_9NamedDeclEPNS_17CXXConversionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.ay, ptr noundef %i.sh, ptr noundef %i.sa, i1 noundef zeroext %i.ed) ; 2 uses
  %i.sj = icmp eq i64 %i.si, 1
  br i1 %i.sj, label %bb.ce, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.sk = load ptr, ptr %i.av, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.sl = and i64 %i.si, -2
  %i.sm = inttoptr i64 %i.sl to ptr               ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %.sroa.0.0.copyload.i186 = load i64, ptr %i.sn, align 8, !tbaa !75
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.0.0.copyload.i.i187 = load i64, ptr %i.sp, align 8, !tbaa !554 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i187 to i32
  %i.sq = load i32, ptr %i.so, align 8, !tbaa !1552
  %i.sr = icmp ne i32 %i.sq, %.sroa.01.0.extract.trunc.i.i.i.i
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i187, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.st = load i32, ptr %i.ss, align 4
  %i.su = icmp ne i32 %i.st, %.sroa.2.0.extract.trunc.i.i.i.i
  %.not3.i.i.i = select i1 %i.sr, i1 true, i1 %i.su
  %i.sv = load i64, ptr %i.so, align 8
  %.sroa.01.0.insert.insert.i = select i1 %.not3.i.i.i, i64 %i.sv, i64 0
  %i.sw = call noundef ptr @_ZN5clang16ImplicitCastExpr6CreateERKNS_10ASTContextENS_8QualTypeENS_8CastKindEPNS_4ExprEPKN4llvm11SmallVectorIPNS_16CXXBaseSpecifierELj4EEENS_13ExprValueKindENS_17FPOptionsOverrideE(ptr noundef nonnull align 8 dereferenceable(23904) %i.sk, i64 %.sroa.0.0.copyload.i186, i32 noundef 19, ptr noundef %i.sm, ptr noundef null, i32 noundef 0, i64 %.sroa.01.0.insert.insert.i) #28
  %i.sx = ptrtoint ptr %i.sw to i64
  %i.sy = and i64 %i.sx, -2
  %i.sz = inttoptr i64 %i.sy to ptr
  %.sroa.046.0.copyload = load i32, ptr %11, align 4, !tbaa !554
  %i.ta = call i64 @_ZN5clang4Sema13BuildCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_bb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %i.sz, i32 %.sroa.046.0.copyload, ptr %4, i64 %5, i32 %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #28
  br label %bb.ce

bb.bj:                                            ; preds = %_ZN12_GLOBAL__N_117UnbridgedCastsSet7restoreEv.exit
  %i.tb = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 3 uses
  %.sroa.043.0.copyload = load i64, ptr %i.tb, align 8, !tbaa !75
  %i.tc = call noundef i32 @_ZN5clang4Sema25CheckMemberOperatorAccessENS_14SourceLocationEPNS_4ExprES3_NS_14DeclAccessPairE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %3, ptr noundef nonnull %i.ay, ptr noundef null, i64 %.sroa.043.0.copyload) #28 ; 0 uses
  %i.td = load ptr, ptr %i.pz, align 8, !tbaa !1477 ; 11 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 28
  %i.tf = load i32, ptr %i.te, align 4
  %i.tg = and i32 %i.tf, 128
  %.not = icmp eq i32 %i.tg, 0
  br i1 %.not, label %bb.bk, label %bb.ce

bb.bk:                                            ; preds = %bb.bj
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 48 ; 3 uses
  %.sroa.0.0.copyload.i188 = load i64, ptr %i.th, align 8, !tbaa !75
  %i.ti = and i64 %.sroa.0.0.copyload.i188, -16
  %i.tj = inttoptr i64 %i.ti to ptr
  %i.tk = load ptr, ptr %i.tj, align 16, !tbaa !74 ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tm = load i8, ptr %i.tl, align 16
  %.not.i190 = icmp eq i8 %i.tm, 24
  br i1 %.not.i190, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.tn = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.tk) #28
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.bk, %bb.bl
  %.1.i191 = phi ptr [ %i.tn, %bb.bl ], [ %i.tk, %bb.bk ] ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.1.i191, i64 16 ; 2 uses
  %i.tp = load i64, ptr %i.to, align 16           ; 2 uses
  %i.tq = lshr i64 %i.tp, 48                      ; 3 uses
  %i.tr = trunc nuw nsw i64 %i.tq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  %i.ts = load ptr, ptr %i.av, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 18528
  %i.tu = ptrtoint ptr %i.tt to i64
  %i.tv = or disjoint i64 %i.tu, 6                ; 2 uses
  store i64 %i.tv, ptr %37, align 8, !tbaa !1249
  %i.tw = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i32 %3, ptr %i.tw, align 8, !tbaa !554
  %i.tx = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.tx, i64 %i.tv) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pz, i64 8) ]
  %.sroa.2226.0.insert.ext = zext i32 %6 to i64
  %.sroa.2226.0.insert.shift = shl nuw i64 %.sroa.2226.0.insert.ext, 32
  %.sroa.0225.0.insert.ext = zext i32 %3 to i64
  %.sroa.0225.0.insert.insert = or disjoint i64 %.sroa.2226.0.insert.shift, %.sroa.0225.0.insert.ext
  %i.ty = inttoptr i64 %.sroa.0225.0.insert.insert to ptr
  store ptr %i.ty, ptr %i.tx, align 8, !tbaa !75
  %.0.copyload.i.i.i.i.i192 = load i64, ptr %i.tb, align 8
  %i.tz = and i64 %.0.copyload.i.i.i.i.i192, -8
  %i.ua = inttoptr i64 %i.tz to ptr
  %.sroa.0.0.copyload.i193 = load i32, ptr %i.tw, align 8, !tbaa !554
  %i.ub = call fastcc i64 @_ZL21CreateFunctionRefExprRN5clang4SemaEPNS_12FunctionDeclEPNS_9NamedDeclEPKNS_4ExprEbNS_14SourceLocationERKNS_18DeclarationNameLocE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.td, ptr noundef %i.ua, ptr noundef %.0.ph, i1 noundef zeroext %i.ed, i32 %.sroa.0.0.copyload.i193, ptr noundef nonnull align 8 dereferenceable(8) %i.tx) ; 2 uses
  %i.uc = icmp eq i64 %i.ub, 1
  br i1 %i.uc, label %bb.cd, label %bb.bm

bb.bm:                                            ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  %i.ud = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  store ptr %i.ud, ptr %38, align 8, !tbaa !515
  %i.ue = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 5 uses
  store i32 0, ptr %i.ue, align 8, !tbaa !516
  %i.uf = getelementptr inbounds nuw i8, ptr %38, i64 12 ; 2 uses
  store i32 8, ptr %i.uf, align 4, !tbaa !517
  %i.ug = icmp ugt i64 %i.tp, 2251799813685247
  br i1 %i.ug, label %bb.bn, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.bn:                                            ; preds = %bb.bm
  %i.uh = add nuw nsw i64 %i.tq, 1
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull %i.ud, i64 noundef %i.uh, i64 noundef 8) #28
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  %i.ui = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  store ptr %i.ui, ptr %39, align 8, !tbaa !515
  %i.uj = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i32 0, ptr %i.uj, align 8, !tbaa !516
  %i.uk = getelementptr inbounds nuw i8, ptr %39, i64 12
  store i32 8, ptr %i.uk, align 4, !tbaa !517
  %i.ul = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isExplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %i.td) #28
  br i1 %i.ul, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.um = call fastcc noundef zeroext i1 @_ZL29PrepareExplicitObjectArgumentRN5clang4SemaEPNS_13CXXMethodDeclEPNS_4ExprERN4llvm15MutableArrayRefIS5_EERNS6_15SmallVectorImplIS5_EE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.td, ptr noundef %.0.ph, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %39)
  %.pre345 = load ptr, ptr %12, align 8, !tbaa !1662
  %.pre346 = load i64, ptr %i.c, align 8, !tbaa !1559
  br label %bb.bq

bb.bp:                                            ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %.0.copyload.i.i.i.i.i194 = load i64, ptr %i.tb, align 8
  %i.un = and i64 %.0.copyload.i.i.i.i.i194, -8
  %i.uo = inttoptr i64 %i.un to ptr
  %i.up = call i64 @_ZN5clang4Sema43PerformImplicitObjectArgumentInitializationEPNS_4ExprENS_19NestedNameSpecifierEPNS_9NamedDeclEPNS_13CXXMethodDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.ay, i64 0, ptr noundef %i.uo, ptr noundef nonnull %i.td) ; 2 uses
  %i.uq = icmp eq i64 %i.up, 1                    ; 2 uses
  %spec.select = select i1 %i.uq, i64 %i.r, i64 %i.up
  %i.ur = and i64 %spec.select, -2
  %i.us = inttoptr i64 %i.ur to ptr
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef %i.us)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ut = phi i64 [ %.pre346, %bb.bo ], [ %5, %bb.bp ] ; 3 uses
  %i.uu = phi ptr [ %.pre345, %bb.bo ], [ %4, %bb.bp ] ; 3 uses
  %.197 = phi i1 [ %i.um, %bb.bo ], [ %i.uq, %bb.bp ]
  %i.uv = call fastcc noundef zeroext i1 @_ZL42PrepareArgumentsForCallToObjectOfClassTypeRN5clang4SemaERN4llvm15SmallVectorImplIPNS_4ExprEEEPNS_13CXXMethodDeclENS2_15MutableArrayRefIS5_EENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull %i.td, ptr %i.uu, i64 %i.ut, i32 %3)
  %i.uw = or i1 %.197, %i.uv                      ; 3 uses
  %i.ux = load i64, ptr %i.to, align 16
  %i.uy = and i64 %i.ux, 2147483648
  %.not332 = icmp eq i64 %i.uy, 0
  br i1 %.not332, label %.loopexit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.uz = trunc i64 %i.ut to i32                  ; 2 uses
  %i.va = icmp ult i32 %i.tr, %i.uz
  br i1 %i.va, label %.lr.ph344, label %.loopexit

.lr.ph344:                                        ; preds = %bb.br, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.tq, %bb.br ] ; 2 uses
  %.2341 = phi i1 [ %i.vf, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.uw, %bb.br ]
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %indvars.iv
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !1230
  %i.vd = call i64 @_ZN5clang4Sema32DefaultVariadicArgumentPromotionEPNS_4ExprENS_16VariadicCallTypeEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.vc, i32 noundef 2, ptr noundef null) #28 ; 2 uses
  %i.ve = icmp eq i64 %i.vd, 1
  %i.vf = or i1 %.2341, %i.ve                     ; 2 uses
  %i.vg = and i64 %i.vd, -2
  %i.vh = inttoptr i64 %i.vg to ptr               ; 2 uses
  %i.vi = load i32, ptr %i.ue, align 8, !tbaa !516 ; 2 uses
  %i.vj = load i32, ptr %i.uf, align 4, !tbaa !517
  %.not.i195 = icmp ult i32 %i.vi, %i.vj
  br i1 %.not.i195, label %bb.bt, label %bb.bs, !prof !565

bb.bs:                                            ; preds = %.lr.ph344
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef %i.vh)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.bt:                                            ; preds = %.lr.ph344
  %i.vk = zext i32 %i.vi to i64
  %i.vl = load ptr, ptr %38, align 8, !tbaa !515
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.vl, i64 %i.vk
  store ptr %i.vh, ptr %i.vm, align 1
  %i.vn = load i32, ptr %i.ue, align 8, !tbaa !516
  %i.vo = add i32 %i.vn, 1
  store i32 %i.vo, ptr %i.ue, align 8, !tbaa !516
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.bs, %bb.bt
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.uz
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph344, !llvm.loop !2457

.loopexit:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.br, %bb.bq
  %.3 = phi i1 [ %i.uw, %bb.bq ], [ %i.uw, %bb.br ], [ %i.vf, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ]
  br i1 %.3, label %bb.ca, label %bb.bu

bb.bu:                                            ; preds = %.loopexit
  call void @_ZN5clang4Sema21DiagnoseSentinelCallsEPKNS_9NamedDeclENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.td, i32 %3, ptr %i.uu, i64 %i.ut) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  %.sroa.0.0.copyload.i.i196 = load i64, ptr %i.th, align 8, !tbaa !75
  %i.vp = and i64 %.sroa.0.0.copyload.i.i196, -16
  %i.vq = inttoptr i64 %i.vp to ptr
  %i.vr = load ptr, ptr %i.vq, align 16, !tbaa !74 ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %i.vt = load i8, ptr %i.vs, align 16
  %i.vu = add i8 %i.vt, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i197 = icmp ult i8 %i.vu, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i197, label %bb.bv, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

bb.bv:                                            ; preds = %bb.bu
  %i.vv = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.vr) #28
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit:   ; preds = %bb.bu, %bb.bv
  %.1.i.i198 = phi ptr [ %i.vv, %bb.bv ], [ %i.vr, %bb.bu ]
  %i.vw = getelementptr inbounds nuw i8, ptr %.1.i.i198, i64 24
  %.sroa.0.0.copyload.i1.i199 = load i64, ptr %i.vw, align 8, !tbaa !75 ; 2 uses
  store i64 %.sroa.0.0.copyload.i1.i199, ptr %40, align 8
  %i.vx = call noundef i32 @_ZN5clang4Expr19getValueKindForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i1.i199)
  %i.vy = load ptr, ptr %i.av, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.vz = call i64 @_ZNK5clang8QualType20getNonLValueExprTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(23904) %i.vy) #28 ; 2 uses
  store i64 %i.vz, ptr %40, align 8, !tbaa !75
  %i.wa = load ptr, ptr %i.av, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.wb = and i64 %i.ub, -2
  %i.wc = inttoptr i64 %i.wb to ptr
  %i.wd = load ptr, ptr %38, align 8, !tbaa !515
  %i.we = load i32, ptr %i.ue, align 8, !tbaa !516
  %i.wf = zext i32 %i.we to i64
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.0.0.copyload.i.i200 = load i64, ptr %i.wh, align 8, !tbaa !554 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i201 = trunc i64 %.sroa.0.0.copyload.i.i200 to i32
  %i.wi = load i32, ptr %i.wg, align 8, !tbaa !1552
  %i.wj = icmp ne i32 %i.wi, %.sroa.01.0.extract.trunc.i.i.i.i201
  %.sroa.2.0.extract.shift.i.i.i.i202 = lshr i64 %.sroa.0.0.copyload.i.i200, 32
  %.sroa.2.0.extract.trunc.i.i.i.i203 = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i202 to i32
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.wl = load i32, ptr %i.wk, align 4
  %i.wm = icmp ne i32 %i.wl, %.sroa.2.0.extract.trunc.i.i.i.i203
  %.not3.i.i.i204 = select i1 %i.wj, i1 true, i1 %i.wm
  %i.wn = load i64, ptr %i.wg, align 8
  %.sroa.01.0.insert.insert.i205 = select i1 %.not3.i.i.i204, i64 %i.wn, i64 0
  %i.wo = call noundef ptr @_ZN5clang19CXXOperatorCallExpr6CreateERKNS_10ASTContextENS_22OverloadedOperatorKindEPNS_4ExprEN4llvm8ArrayRefIS6_EENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideENS_8CallExpr11ADLCallKindEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.wa, i32 noundef 42, ptr noundef %i.wc, ptr %i.wd, i64 %i.wf, i64 %i.vz, i32 noundef %i.vx, i32 %6, i64 %.sroa.01.0.insert.insert.i205, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 3 uses
  %.sroa.0.0.copyload.i.i206 = load i64, ptr %i.th, align 8, !tbaa !75
  %i.wp = and i64 %.sroa.0.0.copyload.i.i206, -16
  %i.wq = inttoptr i64 %i.wp to ptr
  %i.wr = load ptr, ptr %i.wq, align 16, !tbaa !74 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wt = load i8, ptr %i.ws, align 16
  %i.wu = add i8 %i.wt, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i207 = icmp ult i8 %i.wu, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i207, label %bb.bw, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit210

bb.bw:                                            ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit
  %i.wv = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.wr) #28
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit210

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit210: ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit, %bb.bw
  %.1.i.i208 = phi ptr [ %i.wv, %bb.bw ], [ %i.wr, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit ]
  %i.ww = getelementptr inbounds nuw i8, ptr %.1.i.i208, i64 24
  %.sroa.0.0.copyload.i1.i209 = load i64, ptr %i.ww, align 8, !tbaa !75
  %i.wx = call noundef zeroext i1 @_ZN5clang4Sema19CheckCallReturnTypeENS_8QualTypeENS_14SourceLocationEPNS_8CallExprEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i1.i209, i32 %3, ptr noundef %i.wo, ptr noundef nonnull %i.td) #28
  br i1 %i.wx, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit210
  %i.wy = call noundef zeroext i1 @_ZN5clang4Sema17CheckFunctionCallEPNS_12FunctionDeclEPNS_8CallExprEPKNS_17FunctionProtoTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.td, ptr noundef %i.wo, ptr noundef nonnull %.1.i191) #28
  br i1 %i.wy, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.wz = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.wo) #28
  %i.xa = call i64 @_ZN5clang4Sema27CheckForImmediateInvocationENS_12ActionResultIPNS_4ExprELb1EEEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.wz, ptr noundef nonnull %i.td) #28
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit210, %bb.by
  %.sroa.0309.0 = phi i64 [ %i.xa, %bb.by ], [ 1, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit210 ], [ 1, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %bb.ca

bb.ca:                                            ; preds = %.loopexit, %bb.bz
  %.sroa.0309.1 = phi i64 [ %.sroa.0309.0, %bb.bz ], [ 1, %.loopexit ]
  %i.xb = load ptr, ptr %39, align 8, !tbaa !515  ; 2 uses
  %i.xc = icmp eq ptr %i.xb, %i.ui
  br i1 %i.xc, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @free(ptr noundef %i.xb) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  %i.xd = load ptr, ptr %38, align 8, !tbaa !515  ; 2 uses
  %i.xe = icmp eq ptr %i.xd, %i.ud
  br i1 %i.xe, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit211, label %bb.cc

bb.cc:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  call void @free(ptr noundef %i.xd) #28
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit211

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit211: ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit211
  %.sroa.0309.2 = phi i64 [ %.sroa.0309.1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit211 ], [ 1, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %_ZN5clang19StreamingDiagnosticD2Ev.exit, %bb.cd
  %.sroa.0309.3 = phi i64 [ %.sroa.0309.2, %bb.cd ], [ 1, %_ZN5clang19StreamingDiagnosticD2Ev.exit ], [ 1, %bb.bg ], [ 1, %bb.bh ], [ %i.ta, %bb.bi ], [ 1, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.xf = load i8, ptr %i.cc, align 1, !tbaa !1251, !range !86, !noundef !87
  %i.xg = trunc nuw i8 %i.xf to i1
  %.pre348 = load i32, ptr %15, align 8           ; 3 uses
  br i1 %i.xg, label %bb.cf, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.cf:                                            ; preds = %bb.ce
  %i.xh = icmp ne i32 %.pre348, 5
  %i.xi = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.xj = load ptr, ptr %i.xi, align 8
  %i.xk = icmp ne ptr %i.xj, null
  %or.cond.i.i = select i1 %i.xh, i1 %i.xk, i1 false
  br i1 %or.cond.i.i, label %bb.cg, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.cg:                                            ; preds = %bb.cf
  %i.xl = load ptr, ptr %i.bw, align 8, !tbaa !1248 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 216
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !1252, !nonnull !87, !align !500
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 40
  %i.xp = load i64, ptr %i.xo, align 8
  %i.xq = and i64 %i.xp, 18014398509481984
  %.not.i.i213 = icmp eq i64 %i.xq, 0
  br i1 %.not.i.i213, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.xl, ptr noundef nonnull align 8 dereferenceable(168) %15) #28
  %.pre347 = load i32, ptr %15, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i: ; preds = %bb.ch, %bb.cf, %bb.ce
  %i.xr = phi i32 [ %.pre347, %bb.ch ], [ %.pre348, %bb.ce ], [ %.pre348, %bb.cf ]
  %i.xs = load i8, ptr %i.cd, align 4, !tbaa !1253, !range !86, !noundef !87
  %i.xt = trunc nuw i8 %i.xs to i1
  %i.xu = icmp eq i32 %i.xr, 5
  %or.cond329 = select i1 %i.xt, i1 %i.xu, i1 false
  br i1 %or.cond329, label %bb.ci, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

bb.ci:                                            ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.xv = load ptr, ptr %i.bw, align 8, !tbaa !1248
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.xv, ptr noundef nonnull align 8 dereferenceable(168) %15) #28
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i: ; preds = %bb.cg, %bb.ci, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.xw = load ptr, ptr %i.bv, align 8, !tbaa !1254 ; 2 uses
  %.not.i212 = icmp eq ptr %i.xw, null
  br i1 %.not.i212, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.xw) #28
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  %i.xx = load ptr, ptr %i.br, align 8, !tbaa !515 ; 2 uses
  %i.xy = icmp eq ptr %i.xx, %i.bs
  br i1 %i.xy, label %_ZN5clang12LookupResultD2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @free(ptr noundef %i.xx) #28
  br label %_ZN5clang12LookupResultD2Ev.exit

_ZN5clang12LookupResultD2Ev.exit:                 ; preds = %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit335, %_ZN5clang12LookupResultD2Ev.exit
  %.sroa.0309.4 = phi i64 [ %.sroa.0309.3, %_ZN5clang12LookupResultD2Ev.exit ], [ 1, %.loopexit335 ]
  call void @_ZN5clang20OverloadCandidateSetD2Ev(ptr noundef nonnull align 8 dead_on_return(7844) dereferenceable(7844) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZL31checkArgPlaceholdersForOverloadRN5clang4SemaEN4llvm15MutableArrayRefIPNS_4ExprEEERN12_GLOBAL__N_117UnbridgedCastsSetE.exit

_ZL31checkArgPlaceholdersForOverloadRN5clang4SemaEN4llvm15MutableArrayRefIPNS_4ExprEEERN12_GLOBAL__N_117UnbridgedCastsSetE.exit: ; preds = %.lr.ph.i, %bb.cm
  %.sroa.0309.5 = phi i64 [ %.sroa.0309.4, %bb.cm ], [ 1, %.lr.ph.i ]
  %i.xz = load ptr, ptr %13, align 8, !tbaa !515  ; 2 uses
  %i.ya = icmp eq ptr %i.xz, %i.s
  br i1 %i.ya, label %_ZN12_GLOBAL__N_117UnbridgedCastsSetD2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZL31checkArgPlaceholdersForOverloadRN5clang4SemaEN4llvm15MutableArrayRefIPNS_4ExprEEERN12_GLOBAL__N_117UnbridgedCastsSetE.exit
  call void @free(ptr noundef %i.xz) #28
  br label %_ZN12_GLOBAL__N_117UnbridgedCastsSetD2Ev.exit

_ZN12_GLOBAL__N_117UnbridgedCastsSetD2Ev.exit:    ; preds = %_ZL31checkArgPlaceholdersForOverloadRN5clang4SemaEN4llvm15MutableArrayRefIPNS_4ExprEEERN12_GLOBAL__N_117UnbridgedCastsSetE.exit, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZL27checkPlaceholderForOverloadRN5clang4SemaERPNS_4ExprEPN12_GLOBAL__N_117UnbridgedCastsSetE.exit

_ZL27checkPlaceholderForOverloadRN5clang4SemaERPNS_4ExprEPN12_GLOBAL__N_117UnbridgedCastsSetE.exit: ; preds = %bb.c, %_ZN12_GLOBAL__N_117UnbridgedCastsSetD2Ev.exit
  %.sroa.0309.6 = phi i64 [ %.sroa.0309.5, %_ZN12_GLOBAL__N_117UnbridgedCastsSetD2Ev.exit ], [ 1, %bb.c ]
  ret i64 %.sroa.0309.6
}

declare i64 @_ZN5clang4Sema13BuildCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_bb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef, i32, ptr, i64, i32, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema24BuildOverloadedArrowExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEPb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, i32 %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 align 2 {
bb.a:
  %5 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %6 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %7 = alloca %"class.llvm::MutableArrayRef", align 8 ; 4 uses
  %8 = alloca %"class.clang::Sema::BoundTypeDiagnoser.2274", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 20 uses
  %9 = alloca %"class.clang::OverloadCandidateSet", align 8 ; 35 uses
  %10 = alloca %"class.clang::LookupResult", align 8 ; 25 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"class.llvm::SmallVector.1270", align 8 ; 7 uses
  %12 = alloca %"class.llvm::function_ref.1275", align 8 ; 3 uses
  %13 = alloca %class.anon.1276, align 1          ; 3 uses
  %14 = alloca %"class.clang::QualType", align 8  ; 6 uses
  %15 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %16 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %18 = alloca %"class.clang::FixItHint", align 8 ; 6 uses
  %19 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %20 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %21 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %22 = alloca %"struct.std::pair", align 8       ; 5 uses
  %23 = alloca %"class.clang::PartialDiagnostic", align 8 ; 13 uses
  %24 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %25 = alloca %"class.llvm::function_ref.1275", align 8 ; 3 uses
  %26 = alloca %class.anon.1581, align 1          ; 3 uses
  %27 = alloca %"struct.std::pair", align 8       ; 5 uses
  %28 = alloca %"class.clang::PartialDiagnostic", align 8 ; 17 uses
  %29 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %30 = alloca %"class.llvm::function_ref.1275", align 8 ; 3 uses
  %31 = alloca %class.anon.1581, align 1          ; 3 uses
  %32 = alloca %"class.clang::DeclarationNameLoc", align 8 ; 4 uses
  %33 = alloca %"class.clang::QualType", align 8  ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !1230
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !tbaa !75
  %i.d = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 16
  %.not.i.i = icmp eq i8 %i.h, 13
  br i1 %.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.g, align 16
  %i.j = and i32 %i.i, 536346624                  ; 2 uses
  %i.k = icmp samesign ult i32 %i.j, 269484033
  %i.l = icmp eq i32 %i.j, 270008320
  %or.cond164 = or i1 %i.k, %i.l
  br i1 %or.cond164, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i64 @_ZN5clang4Sema20CheckPlaceholderExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %2) #28 ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %_ZL27checkPlaceholderForOverloadRN5clang4SemaERPNS_4ExprEPN12_GLOBAL__N_117UnbridgedCastsSetE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !1230
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d
  %i.q = phi ptr [ %2, %bb.a ], [ %2, %bb.b ], [ %i.p, %bb.d ] ; 2 uses
  %i.r = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #29 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1228, !nonnull !87, !align !500
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.u, ptr %9, align 8, !tbaa !515
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !516
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 16, ptr %i.w, align 4, !tbaa !517
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 2704
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 2728
  store ptr %i.y, ptr %i.x, align 8, !tbaa !1328
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 2712
  store i32 16, ptr %i.z, align 8, !tbaa !1327
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 2716
  store i32 0, ptr %i.aa, align 4, !tbaa !1326
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 2720
  store i8 1, ptr %i.ab, align 8, !tbaa !1325
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 2856
  store ptr null, ptr %i.ac, align 8, !tbaa !1330
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 2864 ; 3 uses
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 2872
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 2888
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 2904
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, i8 0, i64 16, i1 false)
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !515
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 2896
  store i32 0, ptr %i.ah, align 8, !tbaa !516
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 2900
  store i32 4, ptr %i.ai, align 4, !tbaa !517
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 2936
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 2952 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !515
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 2944
  store i32 0, ptr %i.al, align 8, !tbaa !516
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 2948
  store i32 0, ptr %i.am, align 4, !tbaa !517
  store i32 %i.r, ptr %i.ak, align 8, !tbaa !554
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 2956
  store i32 1, ptr %i.an, align 4, !tbaa !1329
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 2960
  store i64 0, ptr %i.ao, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 2968
  store i8 0, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !1250
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 2972
  store i32 0, ptr %i.ap, align 4, !tbaa !1318
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 7840
  store i32 0, ptr %i.aq, align 8, !tbaa !1451
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ar, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang4Sema18BoundTypeDiagnoserIJPNS_4ExprEEEE, i64 16), ptr %8, align 8, !tbaa !1264
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 5408, ptr %i.as, align 8, !tbaa !1801
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.at, align 8, !tbaa !1554
  %i.au = call noundef zeroext i1 @_ZN5clang4Sema19RequireCompleteTypeENS_14SourceLocationENS_8QualTypeENS0_16CompleteTypeKindERNS0_13TypeDiagnoserE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %i.r, i64 %.sroa.0.0.copyload.i, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.au, label %bb.bq, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 18512
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = or disjoint i64 %i.aw, 6                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store i32 0, ptr %10, align 8, !tbaa !1246
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.ay, align 4, !tbaa !1247
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !515
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !516
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 8, ptr %i.bc, align 4, !tbaa !517
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store ptr %0, ptr %i.be, align 8, !tbaa !1248
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 120
  store i64 %i.ax, ptr %i.bf, align 8, !tbaa !1249
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 128
  store i32 %3, ptr %i.bg, align 8, !tbaa !554
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i64 %i.ax) #28
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.bi, i8 0, i64 18, i1 false)
  store i8 1, ptr %i.bj, align 2, !tbaa !1627
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 163 ; 3 uses
  store i8 1, ptr %i.bk, align 1, !tbaa !1251
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 164 ; 2 uses
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.bl, align 4, !tbaa !1250
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %10) #28
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !1230
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0.0.copyload.i55 = load i64, ptr %i.bn, align 8, !tbaa !75
  %i.bo = and i64 %.sroa.0.0.copyload.i55, -16
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !74
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.br, align 8, !tbaa !75
  %i.bs = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !74
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !82 ; 2 uses
  %i.bx = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.bw) #28 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.bx, null
  %spec.select.i.i.i = select i1 %.not.not.i.i.i, ptr %i.bw, ptr %i.bx
  %i.by = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 64
  %i.bz = call noundef zeroext i1 @_ZN5clang4Sema19LookupQualifiedNameERNS_12LookupResultEPNS_11DeclContextEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %10, ptr noundef nonnull %i.by, i1 noundef zeroext false) #28 ; 0 uses
  store i8 0, ptr %i.bk, align 1, !tbaa !1251
  %i.ca = load ptr, ptr %i.az, align 8, !tbaa !515 ; 2 uses
  %i.cb = load i32, ptr %i.bb, align 8, !tbaa !516 ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %.idx = shl nuw nsw i64 %i.cc, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx
  %.not162165 = icmp eq i32 %i.cb, 0
  br i1 %.not162165, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5clang4Sema18AddMethodCandidateENS_14DeclAccessPairENS_8QualTypeENS_4Expr14ClassificationEN4llvm8ArrayRefIPS3_EERNS_20OverloadCandidateSetEbNS_27OverloadCandidateParamOrderE.exit, %bb.f
  %i.ce = load i32, ptr %i.v, align 8, !tbaa !516
  %i.cf = zext i32 %i.ce to i64
  %i.cg = load i32, ptr %i.ad, align 8
  %i.ch = and i32 %i.cg, 1073741823
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.ci, %i.cf
  %i.ck = icmp samesign ugt i64 %i.cj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.cl = call noundef i32 @_ZN5clang20OverloadCandidateSet18BestViableFunctionERNS_4SemaENS_14SourceLocationERPNS_17OverloadCandidateE(ptr noundef nonnull align 8 dereferenceable(7844) %9, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  switch i32 %i.cl, label %default.unreachable [
    i32 3, label %bb.ai
    i32 1, label %bb.m
    i32 2, label %bb.v
    i32 0, label %bb.ay
  ]

.lr.ph:                                           ; preds = %bb.f, %_ZN5clang4Sema18AddMethodCandidateENS_14DeclAccessPairENS_8QualTypeENS_4Expr14ClassificationEN4llvm8ArrayRefIPS3_EERNS_20OverloadCandidateSetEbNS_27OverloadCandidateParamOrderE.exit
  %.sroa.0142.0166 = phi ptr [ %i.dk, %_ZN5clang4Sema18AddMethodCandidateENS_14DeclAccessPairENS_8QualTypeENS_4Expr14ClassificationEN4llvm8ArrayRefIPS3_EERNS_20OverloadCandidateSetEbNS_27OverloadCandidateParamOrderE.exit ], [ %i.ca, %bb.f ] ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN5clang4Sema24BuildOverloadedArrowExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEPb:bb.a
  %i.iv = phi ptr [ %i.iu, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i76 ], [ %i.ir, %_ZNK5clang12FunctionDecl17getDeletedMessageEv.exit ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 1
  %i.ix = load i8, ptr %i.iv, align 8, !tbaa !1412
  %i.iy = zext i8 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iy
  store i8 1, ptr %i.iz, align 1, !tbaa !75
  %i.ja = load ptr, ptr %28, align 8, !tbaa !559  ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load i8, ptr %i.ja, align 8, !tbaa !1412 ; 2 uses
  %i.jd = add i8 %i.jc, 1                         ; 2 uses
  store i8 %i.jd, ptr %i.ja, align 8, !tbaa !1412
  %i.je = zext i8 %i.jc to i64
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.je
  store i64 ptrtoint (ptr @.str.18 to i64), ptr %i.jf, align 8, !tbaa !1249
  %i.jg = icmp ne ptr %i.ip, null                 ; 2 uses
  %i.jh = zext i1 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  %i.jj = zext i8 %i.jd to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jj
  store i8 2, ptr %i.jk, align 1, !tbaa !75
  %i.jl = load ptr, ptr %28, align 8, !tbaa !559  ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load i8, ptr %i.jl, align 8, !tbaa !1412 ; 2 uses
  %i.jo = add i8 %i.jn, 1
  store i8 %i.jo, ptr %i.jl, align 8, !tbaa !1412
  %i.jp = zext i8 %i.jn to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jp
  store i64 %i.jh, ptr %i.jq, align 8, !tbaa !1249
  br i1 %i.jg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNK5clang17PartialDiagnosticlsIbvEERKS0_OT_.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ip, i64 20
  %i.js = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !75
  %i.ju = zext i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.ju
  %i.jw = load i32, ptr %i.ip, align 8
  %i.jx = lshr i32 %i.jw, 22
  %i.jy = and i32 %i.jx, 7
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !554
  %i.kb = mul i32 %i.jy, %i.ka
  %i.kc = zext i32 %i.kb to i64
  br label %bb.am

bb.am:                                            ; preds = %_ZNK5clang17PartialDiagnosticlsIbvEERKS0_OT_.exit, %bb.al
  %.sroa.6.0 = phi i64 [ %i.kc, %bb.al ], [ 0, %_ZNK5clang17PartialDiagnosticlsIbvEERKS0_OT_.exit ]
  %.sroa.0124.0 = phi ptr [ %i.jv, %bb.al ], [ null, %_ZNK5clang17PartialDiagnosticlsIbvEERKS0_OT_.exit ]
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %28, ptr %.sroa.0124.0, i64 %.sroa.6.0)
  %i.kd = load ptr, ptr %i.a, align 8, !tbaa !1230
  %i.ke = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kd) #29 ; 2 uses
  %i.kf = load ptr, ptr %28, align 8, !tbaa !559  ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i82, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i85, label %bb.an

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i85: ; preds = %bb.am
  %i.kg = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !560
  %i.ki = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.kh) ; 2 uses
  store ptr %i.ki, ptr %28, align 8, !tbaa !559
  br label %bb.an

bb.an:                                            ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i85, %bb.am
  %i.kj = phi ptr [ %i.ki, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i85 ], [ %i.kf, %bb.am ] ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 416 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 424 ; 3 uses
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !516 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 428
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !517
  %.not.i5.i.i.i83 = icmp ult i32 %i.km, %i.ko
  br i1 %.not.i5.i.i.i83, label %bb.ap, label %bb.ao, !prof !565

bb.ao:                                            ; preds = %bb.an
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, i64 %i.ke, i8 1)
  br label %_ZNK5clang17PartialDiagnosticlsINS_11SourceRangeEvEERKS0_OT_.exit86

bb.ap:                                            ; preds = %bb.an
  %i.kp = zext i32 %i.km to i64
  %i.kq = load ptr, ptr %i.kk, align 8, !tbaa !515
  %i.kr = getelementptr inbounds nuw [12 x i8], ptr %i.kq, i64 %i.kp ; 2 uses
  store i64 %i.ke, ptr %i.kr, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i84 = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i84, align 1
  %i.ks = load i32, ptr %i.kl, align 8, !tbaa !516
  %i.kt = add i32 %i.ks, 1
  store i32 %i.kt, ptr %i.kl, align 8, !tbaa !516
  br label %_ZNK5clang17PartialDiagnosticlsINS_11SourceRangeEvEERKS0_OT_.exit86

_ZNK5clang17PartialDiagnosticlsINS_11SourceRangeEvEERKS0_OT_.exit86: ; preds = %bb.ao, %bb.ap
  store i32 %3, ptr %27, align 8, !tbaa !554
  %i.ku = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.kw = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 0, ptr %i.ku, align 8
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !1546
  store i32 %i.kx, ptr %i.kv, align 8, !tbaa !1546
  %i.ky = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !560 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  store ptr %i.kz, ptr %i.la, align 8, !tbaa !560
  %i.lb = load ptr, ptr %28, align 8, !tbaa !559
  %.not.i.i87 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i87, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEEC2IRS1_RKS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit89, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i88

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i88: ; preds = %_ZNK5clang17PartialDiagnosticlsINS_11SourceRangeEvEERKS0_OT_.exit86
  %i.lc = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.kz) ; 2 uses
  store ptr %i.lc, ptr %i.ku, align 8, !tbaa !559
  %i.ld = load ptr, ptr %28, align 8, !tbaa !559
  %i.le = call noundef nonnull align 8 dereferenceable(928) ptr @_ZN5clang17DiagnosticStorageaSERKS0_(ptr noundef nonnull align 8 dereferenceable(928) %i.lc, ptr noundef nonnull align 8 dereferenceable(928) %i.ld) ; 0 uses
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEEC2IRS1_RKS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit89

_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEEC2IRS1_RKS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit89: ; preds = %_ZNK5clang17PartialDiagnosticlsINS_11SourceRangeEvEERKS0_OT_.exit86, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i88
  store ptr @.str.13, ptr %29, align 8, !tbaa !1464
  %i.lf = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 0, ptr %i.lf, align 8, !tbaa !1465
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  store ptr @_ZN4llvm12function_refIFbRN5clang17OverloadCandidateEEE11callback_fnIZNS1_20OverloadCandidateSet14NoteCandidatesESt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEERNS1_4SemaENS1_28OverloadCandidateDisplayKindENS_8ArrayRefIPNS1_4ExprEEENS_9StringRefES9_S5_Ed_UlS3_E_EEblS3_, ptr %30, align 8, !tbaa !1453
  %i.lg = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.lh = ptrtoint ptr %31 to i64
  store i64 %i.lh, ptr %i.lg, align 8, !tbaa !1454
  call void @_ZN5clang20OverloadCandidateSet14NoteCandidatesESt4pairINS_14SourceLocationENS_17PartialDiagnosticEERNS_4SemaENS_28OverloadCandidateDisplayKindEN4llvm8ArrayRefIPNS_4ExprEEENS8_9StringRefES2_NS8_12function_refIFbRNS_17OverloadCandidateEEEE(ptr noundef nonnull align 8 dereferenceable(7844) %9, ptr nofree noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 0, ptr nonnull %i.a, i64 1, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %29, i32 0, ptr noundef nonnull byval(%"class.llvm::function_ref.1275") align 8 %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  %i.li = load ptr, ptr %i.ku, align 8, !tbaa !559 ; 6 uses
  %.not.i.i.i90 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i90, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit93, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEEC2IRS1_RKS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit89
  %i.lj = load ptr, ptr %i.la, align 8, !tbaa !560 ; 4 uses
  %.not.i.i.i.i91 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i.i91, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit93, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lk = icmp uge ptr %i.li, %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 14848 ; 2 uses
  %i.lm = icmp ule ptr %i.li, %i.ll
  %or.cond.i.i.i.i.i92 = select i1 %i.lk, i1 %i.lm, i1 false
  br i1 %or.cond.i.i.i.i.i92, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 14976 ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !561 ; 2 uses
  %i.lp = add i32 %i.lo, 1
  store i32 %i.lp, ptr %i.ln, align 8, !tbaa !561
  %i.lq = zext i32 %i.lo to i64
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.lq
  store ptr %i.li, ptr %i.lr, align 8, !tbaa !556
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit93

bb.at:                                            ; preds = %bb.ar
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.li) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef 928) #30
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit93

_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit93: ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEEC2IRS1_RKS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit89, %bb.aq, %bb.as, %bb.at
  %i.ls = load ptr, ptr %28, align 8, !tbaa !559  ; 6 uses
  %.not.i.i94 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i94, label %_ZN5clang19StreamingDiagnosticD2Ev.exit97, label %bb.au

bb.au:                                            ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit93
  %i.lt = load ptr, ptr %i.ky, align 8, !tbaa !560 ; 4 uses
  %.not.i.i.i95 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i95, label %_ZN5clang19StreamingDiagnosticD2Ev.exit97, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lu = icmp uge ptr %i.ls, %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 14848 ; 2 uses
  %i.lw = icmp ule ptr %i.ls, %i.lv
  %or.cond.i.i.i.i96 = select i1 %i.lu, i1 %i.lw, i1 false
  br i1 %or.cond.i.i.i.i96, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 14976 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !561 ; 2 uses
  %i.lz = add i32 %i.ly, 1
  store i32 %i.lz, ptr %i.lx, align 8, !tbaa !561
  %i.ma = zext i32 %i.ly to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.ma
  store ptr %i.ls, ptr %i.mb, align 8, !tbaa !556
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit97

bb.ax:                                            ; preds = %bb.av
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.ls) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef 928) #30
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit97

_ZN5clang19StreamingDiagnosticD2Ev.exit97:        ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit93, %bb.au, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %.thread159

default.unreachable:                              ; preds = %._crit_edge
  unreachable

bb.ay:                                            ; preds = %._crit_edge
  %i.mc = load ptr, ptr %i.a, align 8, !tbaa !1230
  %i.md = load ptr, ptr %i.b, align 8, !tbaa !1468 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 3 uses
  %.sroa.023.0.copyload = load i64, ptr %i.me, align 8, !tbaa !75
  %i.mf = call noundef i32 @_ZN5clang4Sema25CheckMemberOperatorAccessENS_14SourceLocationEPNS_4ExprES3_NS_14DeclAccessPairE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %3, ptr noundef %i.mc, ptr noundef null, i64 %.sroa.023.0.copyload) #28 ; 0 uses
  %i.mg = load ptr, ptr %i.md, align 8, !tbaa !1477 ; 8 uses
  %i.mh = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isExplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %i.mg) #28
  br i1 %i.mh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %34 = load ptr, ptr %i.a, align 8, !tbaa !1230
  %i.mi = call i64 @_ZN5clang4Sema32InitializeExplicitObjectArgumentERS0_PNS_4ExprEPNS_12FunctionDeclE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %34, ptr noundef nonnull %i.mg) ; 2 uses
  %i.mj = icmp eq i64 %i.mi, 1
  br i1 %i.mj, label %.thread159, label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "align"(ptr %i.md, i64 8) ]
  %35 = load ptr, ptr %i.a, align 8, !tbaa !1230
  %.0.copyload.i.i.i.i.i98 = load i64, ptr %i.me, align 8
  %i.mk = and i64 %.0.copyload.i.i.i.i.i98, -8
  %i.ml = inttoptr i64 %i.mk to ptr
  %i.mm = call i64 @_ZN5clang4Sema43PerformImplicitObjectArgumentInitializationEPNS_4ExprENS_19NestedNameSpecifierEPNS_9NamedDeclEPNS_13CXXMethodDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %35, i64 0, ptr noundef %i.ml, ptr noundef nonnull %i.mg) ; 2 uses
  %i.mn = icmp eq i64 %i.mm, 1
  br i1 %i.mn, label %.thread159, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %storemerge.in.in = phi i64 [ %i.mi, %bb.az ], [ %i.mm, %bb.ba ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.md, i64 8) ]
  %storemerge.in = and i64 %storemerge.in.in, -2
  %storemerge = inttoptr i64 %storemerge.in to ptr ; 2 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !1230
  %.0.copyload.i.i.i.i.i99 = load i64, ptr %i.me, align 8
  %i.mo = and i64 %.0.copyload.i.i.i.i.i99, -8
  %i.mp = inttoptr i64 %i.mo to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  store i64 0, ptr %32, align 8
  %i.mq = call fastcc i64 @_ZL21CreateFunctionRefExprRN5clang4SemaEPNS_12FunctionDeclEPNS_9NamedDeclEPKNS_4ExprEbNS_14SourceLocationERKNS_18DeclarationNameLocE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.mg, ptr noundef %i.mp, ptr noundef %storemerge, i1 noundef zeroext %i.ck, i32 %3, ptr noundef nonnull align 8 dereferenceable(8) %32) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.mr = icmp eq i64 %i.mq, 1
  br i1 %i.mr, label %.thread159, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mg, i64 48 ; 3 uses
  %.sroa.0.0.copyload.i.i100 = load i64, ptr %i.ms, align 8, !tbaa !75
  %i.mt = and i64 %.sroa.0.0.copyload.i.i100, -16
  %i.mu = inttoptr i64 %i.mt to ptr
  %i.mv = load ptr, ptr %i.mu, align 16, !tbaa !74 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.mx = load i8, ptr %i.mw, align 16
  %i.my = add i8 %i.mx, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.my, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.bd, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

bb.bd:                                            ; preds = %bb.bc
  %i.mz = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.mv) #28
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit:   ; preds = %bb.bc, %bb.bd
  %.1.i.i = phi ptr [ %i.mz, %bb.bd ], [ %i.mv, %bb.bc ]
  %i.na = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.na, align 8, !tbaa !75 ; 2 uses
  store i64 %.sroa.0.0.copyload.i1.i, ptr %33, align 8
  %i.nb = call noundef i32 @_ZN5clang4Expr19getValueKindForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i1.i)
  %i.nc = load ptr, ptr %i.s, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.nd = call i64 @_ZNK5clang8QualType20getNonLValueExprTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(23904) %i.nc) #28 ; 2 uses
  store i64 %i.nd, ptr %33, align 8, !tbaa !75
  %i.ne = load ptr, ptr %i.s, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.nf = and i64 %i.mq, -2
  %i.ng = inttoptr i64 %i.nf to ptr
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.0.0.copyload.i.i101 = load i64, ptr %i.ni, align 8, !tbaa !554 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i101 to i32
  %i.nj = load i32, ptr %i.nh, align 8, !tbaa !1552
  %i.nk = icmp ne i32 %i.nj, %.sroa.01.0.extract.trunc.i.i.i.i
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i101, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = icmp ne i32 %i.nm, %.sroa.2.0.extract.trunc.i.i.i.i
  %.not3.i.i.i = select i1 %i.nk, i1 true, i1 %i.nn
  %i.no = load i64, ptr %i.nh, align 8
  %.sroa.01.0.insert.insert.i = select i1 %.not3.i.i.i, i64 %i.no, i64 0
  %i.np = call noundef ptr @_ZN5clang19CXXOperatorCallExpr6CreateERKNS_10ASTContextENS_22OverloadedOperatorKindEPNS_4ExprEN4llvm8ArrayRefIS6_EENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideENS_8CallExpr11ADLCallKindEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ne, i32 noundef 41, ptr noundef %i.ng, ptr nonnull %i.a, i64 1, i64 %i.nd, i32 noundef %i.nb, i32 %3, i64 %.sroa.01.0.insert.insert.i, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 3 uses
  %.sroa.0.0.copyload.i.i102 = load i64, ptr %i.ms, align 8, !tbaa !75
  %i.nq = and i64 %.sroa.0.0.copyload.i.i102, -16
  %i.nr = inttoptr i64 %i.nq to ptr
  %i.ns = load ptr, ptr %i.nr, align 16, !tbaa !74 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load i8, ptr %i.nt, align 16
  %i.nv = add i8 %i.nu, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i103 = icmp ult i8 %i.nv, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i103, label %bb.be, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit106

bb.be:                                            ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit
  %i.nw = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ns) #28
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit106

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit106: ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit, %bb.be
  %.1.i.i104 = phi ptr [ %i.nw, %bb.be ], [ %i.ns, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit ]
  %i.nx = getelementptr inbounds nuw i8, ptr %.1.i.i104, i64 24
  %.sroa.0.0.copyload.i1.i105 = load i64, ptr %i.nx, align 8, !tbaa !75
  %i.ny = call noundef zeroext i1 @_ZN5clang4Sema19CheckCallReturnTypeENS_8QualTypeENS_14SourceLocationEPNS_8CallExprEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i1.i105, i32 %3, ptr noundef %i.np, ptr noundef nonnull %i.mg) #28
  br i1 %i.ny, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit106
  %.sroa.0.0.copyload.i107 = load i64, ptr %i.ms, align 8, !tbaa !75
  %i.nz = and i64 %.sroa.0.0.copyload.i107, -16
  %i.oa = inttoptr i64 %i.nz to ptr
  %i.ob = load ptr, ptr %i.oa, align 16, !tbaa !74 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.od = load i8, ptr %i.oc, align 16
  %.not.i109 = icmp eq i8 %i.od, 24
  br i1 %.not.i109, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.oe = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ob) #28
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.bf, %bb.bg
  %.1.i = phi ptr [ %i.oe, %bb.bg ], [ %i.ob, %bb.bf ]
  %i.of = call noundef zeroext i1 @_ZN5clang4Sema17CheckFunctionCallEPNS_12FunctionDeclEPNS_8CallExprEPKNS_17FunctionProtoTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.mg, ptr noundef %i.np, ptr noundef %.1.i) #28
  br i1 %i.of, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.og = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.np) #28
  %i.oh = call i64 @_ZN5clang4Sema27CheckForImmediateInvocationENS_12ActionResultIPNS_4ExprELb1EEEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.og, ptr noundef nonnull %i.mg) #28
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit106, %bb.bh
  %.sroa.052.4 = phi i64 [ %i.oh, %bb.bh ], [ 1, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit106 ], [ 1, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %.thread159

.thread159:                                       ; preds = %bb.ba, %bb.az, %bb.bi, %bb.bb, %bb.v, %_ZN5clang19StreamingDiagnosticD2Ev.exit, %_ZN5clang19StreamingDiagnosticD2Ev.exit97, %_ZN4llvm11SmallVectorIPN5clang17OverloadCandidateELj32EED2Ev.exit
  %.sroa.052.7 = phi i64 [ 1, %bb.az ], [ 1, %_ZN5clang19StreamingDiagnosticD2Ev.exit97 ], [ 1, %_ZN4llvm11SmallVectorIPN5clang17OverloadCandidateELj32EED2Ev.exit ], [ 1, %bb.v ], [ 1, %bb.bb ], [ 1, %_ZN5clang19StreamingDiagnosticD2Ev.exit ], [ %.sroa.052.4, %bb.bi ], [ 1, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.oi = load i8, ptr %i.bk, align 1, !tbaa !1251, !range !86, !noundef !87
  %i.oj = trunc nuw i8 %i.oi to i1
  %.pre167 = load i32, ptr %10, align 8           ; 3 uses
  br i1 %i.oj, label %bb.bj, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.bj:                                            ; preds = %.thread159
  %i.ok = icmp ne i32 %.pre167, 5
  %i.ol = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = icmp ne ptr %i.om, null
  %or.cond.i.i = select i1 %i.ok, i1 %i.on, i1 false
  br i1 %or.cond.i.i, label %bb.bk, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.oo = load ptr, ptr %i.be, align 8, !tbaa !1248 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 216
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !1252, !nonnull !87, !align !500
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 40
  %i.os = load i64, ptr %i.or, align 8
  %i.ot = and i64 %i.os, 18014398509481984
  %.not.i.i111 = icmp eq i64 %i.ot, 0
  br i1 %.not.i.i111, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.oo, ptr noundef nonnull align 8 dereferenceable(168) %10) #28
  %.pre = load i32, ptr %10, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i: ; preds = %bb.bl, %bb.bj, %.thread159
  %i.ou = phi i32 [ %.pre, %bb.bl ], [ %.pre167, %.thread159 ], [ %.pre167, %bb.bj ]
  %i.ov = load i8, ptr %i.bl, align 4, !tbaa !1253, !range !86, !noundef !87
  %i.ow = trunc nuw i8 %i.ov to i1
  %i.ox = icmp eq i32 %i.ou, 5
  %or.cond = select i1 %i.ow, i1 %i.ox, i1 false
  br i1 %or.cond, label %bb.bm, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

bb.bm:                                            ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.oy = load ptr, ptr %i.be, align 8, !tbaa !1248
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.oy, ptr noundef nonnull align 8 dereferenceable(168) %10) #28
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i: ; preds = %bb.bk, %bb.bm, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.oz = load ptr, ptr %i.bd, align 8, !tbaa !1254 ; 2 uses
  %.not.i110 = icmp eq ptr %i.oz, null
  br i1 %.not.i110, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.oz) #28
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  %i.pa = load ptr, ptr %i.az, align 8, !tbaa !515 ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.ba
  br i1 %i.pb, label %_ZN5clang12LookupResultD2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @free(ptr noundef %i.pa) #28
  br label %_ZN5clang12LookupResultD2Ev.exit

_ZN5clang12LookupResultD2Ev.exit:                 ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.bq

bb.bq:                                            ; preds = %bb.e, %_ZN5clang12LookupResultD2Ev.exit
  %.sroa.052.8 = phi i64 [ %.sroa.052.7, %_ZN5clang12LookupResultD2Ev.exit ], [ 1, %bb.e ]
  call void @_ZN5clang20OverloadCandidateSetD2Ev(ptr noundef nonnull align 8 dead_on_return(7844) dereferenceable(7844) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZL27checkPlaceholderForOverloadRN5clang4SemaERPNS_4ExprEPN12_GLOBAL__N_117UnbridgedCastsSetE.exit

_ZL27checkPlaceholderForOverloadRN5clang4SemaERPNS_4ExprEPN12_GLOBAL__N_117UnbridgedCastsSetE.exit: ; preds = %bb.c, %bb.bq
  %.sroa.052.9 = phi i64 [ %.sroa.052.8, %bb.bq ], [ 1, %bb.c ]
  ret i64 %.sroa.052.9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_9FixItHintEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !1339
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 0
  %.not2.i.i.i.i.i = select i1 %i.f, i1 true, i1 %i.i
  br i1 %.not2.i.i.i.i.i, label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_9FixItHintEvEERKS1_OT_.exit, label %bb.c

end_hunk_12
begin_hunk_13_@_ZN5clang4Sema24BuildLiteralOperatorCallERNS_12LookupResultERNS_19DeclarationNameInfoEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationEPNS_24TemplateArgumentListInfoE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !559 ; 6 uses
  %.not.i.i.i52 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i52, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEEC2IRS1_RKS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit
  %i.bo = load ptr, ptr %i.bg, align 8, !tbaa !560 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = icmp uge ptr %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 14848 ; 2 uses
  %i.br = icmp ule ptr %i.bn, %i.bq
  %or.cond.i.i.i.i.i = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 14976 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !561 ; 2 uses
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !561
  %i.bv = zext i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bv
  store ptr %i.bn, ptr %i.bw, align 8, !tbaa !556
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.bn) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 928) #30
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit

_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit: ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEEC2IRS1_RKS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit, %bb.d, %bb.f, %bb.g
  %i.bx = load ptr, ptr %9, align 8, !tbaa !559   ; 6 uses
  %.not.i.i53 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i53, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit
  %i.by = load ptr, ptr %i.be, align 8, !tbaa !560 ; 4 uses
  %.not.i.i.i54 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i54, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = icmp uge ptr %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 14848 ; 2 uses
  %i.cb = icmp ule ptr %i.bx, %i.ca
  %or.cond.i.i.i.i = select i1 %i.bz, i1 %i.cb, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 14976 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !561 ; 2 uses
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !561
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cf
  store ptr %i.bx, ptr %i.cg, align 8, !tbaa !556
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.bx) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 928) #30
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

_ZN5clang19StreamingDiagnosticD2Ev.exit:          ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit, %bb.h, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ah

bb.l:                                             ; preds = %_ZNK5clang19DeclarationNameInfo28getCXXLiteralOperatorNameLocEv.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.0.0.copyload.i.i55 = load i32, ptr %i.ch, align 8, !tbaa !554
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase5PDiagEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::PartialDiagnostic") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.ci, i32 noundef 4855) #28
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0.0.copyload.i.i56 = load i64, ptr %i.cj, align 8, !tbaa !1249
  %i.ck = load ptr, ptr %14, align 8, !tbaa !559  ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i58, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i59, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEEC2IS1_RKS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i59: ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !560
  %i.cn = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.cm) ; 2 uses
  store ptr %i.cn, ptr %14, align 8, !tbaa !559
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEEC2IS1_RKS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit

_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEEC2IS1_RKS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit: ; preds = %bb.l, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i59
  %i.co = phi ptr [ %i.cn, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i59 ], [ %i.ck, %bb.l ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.co, align 8, !tbaa !1412
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr
  store i8 9, ptr %i.cs, align 1, !tbaa !75
  %i.ct = load ptr, ptr %14, align 8, !tbaa !559  ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i8, ptr %i.ct, align 8, !tbaa !1412 ; 2 uses
  %i.cw = add i8 %i.cv, 1
  store i8 %i.cw, ptr %i.ct, align 8, !tbaa !1412
  %i.cx = zext i8 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cx
  store i64 %.sroa.0.0.copyload.i.i56, ptr %i.cy, align 8, !tbaa !1249
  store i32 %.sroa.0.0.copyload.i.i55, ptr %13, align 8, !tbaa !554
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !1546
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !1546
  %i.dd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !560 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.de, ptr %i.df, align 8, !tbaa !560
  %i.dg = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.de) ; 2 uses
  store ptr %i.dg, ptr %i.cz, align 8, !tbaa !559
  %i.dh = load ptr, ptr %14, align 8, !tbaa !559
  %i.di = call noundef nonnull align 8 dereferenceable(928) ptr @_ZN5clang17DiagnosticStorageaSERKS0_(ptr noundef nonnull align 8 dereferenceable(928) %i.dg, ptr noundef nonnull align 8 dereferenceable(928) %i.dh) ; 0 uses
  store ptr @.str.13, ptr %15, align 8, !tbaa !1464
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.dj, align 8, !tbaa !1465
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  store ptr @_ZN4llvm12function_refIFbRN5clang17OverloadCandidateEEE11callback_fnIZNS1_20OverloadCandidateSet14NoteCandidatesESt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEERNS1_4SemaENS1_28OverloadCandidateDisplayKindENS_8ArrayRefIPNS1_4ExprEEENS_9StringRefES9_S5_Ed_UlS3_E_EEblS3_, ptr %16, align 8, !tbaa !1453
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dl = ptrtoint ptr %17 to i64
  store i64 %i.dl, ptr %i.dk, align 8, !tbaa !1454
  call void @_ZN5clang20OverloadCandidateSet14NoteCandidatesESt4pairINS_14SourceLocationENS_17PartialDiagnosticEERNS_4SemaENS_28OverloadCandidateDisplayKindEN4llvm8ArrayRefIPNS_4ExprEEENS8_9StringRefES2_NS8_12function_refIFbRNS_17OverloadCandidateEEEE(ptr noundef nonnull align 8 dereferenceable(7844) %7, ptr nofree noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 2, ptr %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %15, i32 0, ptr noundef nonnull byval(%"class.llvm::function_ref.1275") align 8 %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.dm = load ptr, ptr %i.cz, align 8, !tbaa !559 ; 6 uses
  %.not.i.i.i64 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i64, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit67, label %bb.m

bb.m:                                             ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEEC2IS1_RKS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !560 ; 4 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i65, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit67, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = icmp uge ptr %i.dm, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 14848 ; 2 uses
  %i.dq = icmp ule ptr %i.dm, %i.dp
  %or.cond.i.i.i.i.i66 = select i1 %i.do, i1 %i.dq, i1 false
  br i1 %or.cond.i.i.i.i.i66, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 14976 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !561 ; 2 uses
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dr, align 8, !tbaa !561
  %i.du = zext i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.du
  store ptr %i.dm, ptr %i.dv, align 8, !tbaa !556
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit67

bb.p:                                             ; preds = %bb.n
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.dm) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 928) #30
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit67

_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit67: ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEEC2IS1_RKS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit, %bb.m, %bb.o, %bb.p
  %i.dw = load ptr, ptr %14, align 8, !tbaa !559  ; 6 uses
  %.not.i.i68 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i68, label %_ZN5clang19StreamingDiagnosticD2Ev.exit71, label %bb.q

bb.q:                                             ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit67
  %i.dx = load ptr, ptr %i.dd, align 8, !tbaa !560 ; 4 uses
  %.not.i.i.i69 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i69, label %_ZN5clang19StreamingDiagnosticD2Ev.exit71, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = icmp uge ptr %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 14848 ; 2 uses
  %i.ea = icmp ule ptr %i.dw, %i.dz
  %or.cond.i.i.i.i70 = select i1 %i.dy, i1 %i.ea, i1 false
  br i1 %or.cond.i.i.i.i70, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 14976 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !561 ; 2 uses
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !561
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ee
  store ptr %i.dw, ptr %i.ef, align 8, !tbaa !556
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit71

bb.t:                                             ; preds = %bb.r
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.dw) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef 928) #30
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit71

_ZN5clang19StreamingDiagnosticD2Ev.exit71:        ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit67, %bb.q, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.ah

bb.u:                                             ; preds = %_ZNK5clang19DeclarationNameInfo28getCXXLiteralOperatorNameLocEv.exit
  %i.eg = and i32 %i.ah, 1073741823
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = zext i32 %i.ag to i64
  %i.ej = add nuw nsw i64 %i.eh, %i.ei
  %i.ek = icmp samesign ugt i64 %i.ej, 1
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !1468 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.el, i64 8) ]
  %20 = load ptr, ptr %i.el, align 8, !tbaa !1477 ; 6 uses
  %21 = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %21, align 8
  %i.em = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i72 = load i32, ptr %i.eo, align 8, !tbaa !554
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = call fastcc i64 @_ZL21CreateFunctionRefExprRN5clang4SemaEPNS_12FunctionDeclEPNS_9NamedDeclEPKNS_4ExprEbNS_14SourceLocationERKNS_18DeclarationNameLocE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %20, ptr noundef %i.en, ptr noundef null, i1 noundef zeroext %i.ek, i32 %.sroa.0.0.copyload.i72, ptr noundef nonnull align 8 dereferenceable(8) %i.ep) ; 2 uses
  %i.er = icmp eq i64 %i.eq, 1
  br i1 %i.er, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.es = and i64 %4, 4294967295
  %.not108 = icmp eq i64 %i.es, 0
  br i1 %.not108, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.eu = getelementptr inbounds nuw i8, ptr %20, i64 120
  %i.ev = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ez = and i64 %4, 4294967295
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.fa = load ptr, ptr %i.et, align 8, !tbaa !1228, !nonnull !87, !align !500 ; 2 uses
  %i.fb = load ptr, ptr %i.eu, align 8, !tbaa !1295
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1297 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %.sroa.0.0.copyload.i.i73 = load i64, ptr %i.fe, align 8, !tbaa !75, !noalias !2464 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2465)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 2600
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !499, !noalias !2466, !nonnull !87, !align !500
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 96
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !2466
  %i.fj = and i64 %i.fi, 4611686018427387904
  %.not.i.i74 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i74, label %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 28
  %i.fl = load i32, ptr %i.fk, align 4, !noalias !2466
  %i.fm = and i32 %i.fl, 256
  %.not.i.i.i75 = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i.i75, label %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.fd) #28, !noalias !2466 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !515, !noalias !2466 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !516, !noalias !2466 ; 2 uses
  %i.fr = zext i32 %i.fq to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.fr, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.idx.i.i.i.i ; 3 uses
  %.not.i.i.i.i76 = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i.i.i76, label %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.y, %bb.z
  %.sroa.07.1.i.i.i.i.i.i = phi ptr [ %i.fx, %bb.z ], [ %i.fo, %bb.y ] ; 3 uses
  %i.ft = load ptr, ptr %.sroa.07.1.i.i.i.i.i.i, align 8, !tbaa !1299, !noalias !2466
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 36
  %i.fv = load i16, ptr %i.fu, align 4, !noalias !2466
  %i.fw = icmp eq i16 %i.fv, 108
  br i1 %i.fw, label %_ZN5clangneENS_22specific_attr_iteratorINS_14NSConsumedAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fx, %i.fs
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5clangneENS_22specific_attr_iteratorINS_14NSConsumedAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !12

_ZN5clangneENS_22specific_attr_iteratorINS_14NSConsumedAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i.i.i: ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.07.0.i.i.ph.i.i.i.i = phi ptr [ %i.fs, %bb.z ], [ %.sroa.07.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.not7.i.i = icmp eq ptr %.sroa.07.0.i.i.ph.i.i.i.i, %i.fs
  %i.fy = select i1 %.not7.i.i, i64 0, i64 4
  br label %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.i.i

_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.i.i: ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_14NSConsumedAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i.i.i, %bb.y, %bb.x, %bb.w
  %i.fz = phi i64 [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.y ], [ %i.fy, %_ZN5clangneENS_22specific_attr_iteratorINS_14NSConsumedAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i.i.i ]
  store i32 0, ptr %i.ev, align 8, !alias.scope !2466
  store i32 1, ptr %18, align 8, !tbaa !1542, !alias.scope !2466
  %i.ga = and i64 %.sroa.0.0.copyload.i.i73, -16
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load ptr, ptr %i.gb, align 16, !tbaa !74, !noalias !2466 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.gd, align 8, !tbaa !75, !noalias !2466
  %i.ge = and i64 %.sroa.0.0.copyload.i.i.i.i, 15
  %.not.i5.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i5.i.i, label %_ZN5clang17InitializedEntity19InitializeParameterERNS_10ASTContextEPNS_11ParmVarDeclE.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.i.i
  %i.gf = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i73) #28, !noalias !2466
  %i.gg = extractvalue { ptr, i64 } %i.gf, 0
  br label %_ZN5clang17InitializedEntity19InitializeParameterERNS_10ASTContextEPNS_11ParmVarDeclE.exit

_ZN5clang17InitializedEntity19InitializeParameterERNS_10ASTContextEPNS_11ParmVarDeclE.exit: ; preds = %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.i.i, %bb.aa
  %.sroa.03.0.in.in.i.i.i = phi ptr [ %i.gg, %bb.aa ], [ %i.gc, %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.i.i ]
  %.sroa.03.0.in.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i.i to i64
  %.sroa.03.0.i.i.i = and i64 %.sroa.03.0.in.i.i.i, -8
  %i.gh = call i64 @_ZNK5clang10ASTContext27getVariableArrayDecayedTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.fa, i64 %.sroa.03.0.i.i.i) #28, !noalias !2466
  store i64 %i.gh, ptr %i.ex, align 8, !tbaa !75, !alias.scope !2466
  store ptr null, ptr %i.ew, align 8, !tbaa !1543, !alias.scope !2466
  %i.gi = ptrtoint ptr %i.fd to i64
  %i.gj = or disjoint i64 %i.fz, %i.gi
  store i64 %i.gj, ptr %i.ey, align 8, !tbaa !75, !alias.scope !2466
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !1230
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = call i64 @_ZN5clang4Sema25PerformCopyInitializationERKNS_17InitializedEntityENS_14SourceLocationENS_12ActionResultIPNS_4ExprELb1EEEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %18, i32 0, i64 %i.gm, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %_ZN5clang17InitializedEntity19InitializeParameterERNS_10ASTContextEPNS_11ParmVarDeclE.exit
  %i.gp = and i64 %i.gn, -2
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !1230
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.ez
  br i1 %.not, label %.critedge, label %bb.w, !llvm.loop !2463

.critedge:                                        ; preds = %bb.ab, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.gs = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i77 = load i64, ptr %i.gs, align 8, !tbaa !75
  %i.gt = and i64 %.sroa.0.0.copyload.i.i77, -16
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = load ptr, ptr %i.gu, align 16, !tbaa !74 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i8, ptr %i.gw, align 16
  %i.gy = add i8 %i.gx, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.gy, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

bb.ac:                                            ; preds = %.critedge
  %i.gz = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.gv) #28
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit:   ; preds = %.critedge, %bb.ac
  %.1.i.i = phi ptr [ %i.gz, %bb.ac ], [ %i.gv, %.critedge ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.ha, align 8, !tbaa !75 ; 2 uses
  store i64 %.sroa.0.0.copyload.i1.i, ptr %19, align 8
  %i.hb = call noundef i32 @_ZN5clang4Expr19getValueKindForTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i1.i)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.he = call i64 @_ZNK5clang8QualType20getNonLValueExprTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(23904) %i.hd) #28 ; 2 uses
  store i64 %i.he, ptr %19, align 8, !tbaa !75
  %i.hf = load ptr, ptr %i.hc, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.hg = and i64 %i.eq, -2
  %i.hh = inttoptr i64 %i.hg to ptr
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.0.0.copyload.i.i78 = load i64, ptr %i.hj, align 8, !tbaa !554 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i78 to i32
  %i.hk = load i32, ptr %i.hi, align 8, !tbaa !1552
  %i.hl = icmp ne i32 %i.hk, %.sroa.01.0.extract.trunc.i.i.i.i
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i78, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = icmp ne i32 %i.hn, %.sroa.2.0.extract.trunc.i.i.i.i
  %.not3.i.i.i = select i1 %i.hl, i1 true, i1 %i.ho
  %i.hp = load i64, ptr %i.hi, align 8
  %.sroa.01.0.insert.insert.i = select i1 %.not3.i.i.i, i64 %i.hp, i64 0
  %i.hq = call noundef ptr @_ZN5clang18UserDefinedLiteral6CreateERKNS_10ASTContextEPNS_4ExprEN4llvm8ArrayRefIS5_EENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationESB_NS_17FPOptionsOverrideE(ptr noundef nonnull align 8 dereferenceable(23904) %i.hf, ptr noundef %i.hh, ptr nonnull %i.b, i64 %4, i64 %i.he, i32 noundef %i.hb, i32 %5, i32 %.sroa.0.0.i, i64 %.sroa.01.0.insert.insert.i) #28 ; 3 uses
  %.sroa.0.0.copyload.i.i79 = load i64, ptr %i.gs, align 8, !tbaa !75
  %i.hr = and i64 %.sroa.0.0.copyload.i.i79, -16
  %i.hs = inttoptr i64 %i.hr to ptr
  %i.ht = load ptr, ptr %i.hs, align 16, !tbaa !74 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load i8, ptr %i.hu, align 16
  %i.hw = add i8 %i.hv, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i80 = icmp ult i8 %i.hw, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i80, label %bb.ad, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit83

bb.ad:                                            ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit
  %i.hx = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ht) #28
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit83

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit83: ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit, %bb.ad
  %.1.i.i81 = phi ptr [ %i.hx, %bb.ad ], [ %i.ht, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.1.i.i81, i64 24
  %.sroa.0.0.copyload.i1.i82 = load i64, ptr %i.hy, align 8, !tbaa !75
  %i.hz = call noundef zeroext i1 @_ZN5clang4Sema19CheckCallReturnTypeENS_8QualTypeENS_14SourceLocationEPNS_8CallExprEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i1.i82, i32 %.sroa.0.0.i, ptr noundef %i.hq, ptr noundef nonnull %20) #28
  br i1 %i.hz, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit83
  %i.ia = call noundef zeroext i1 @_ZN5clang4Sema17CheckFunctionCallEPNS_12FunctionDeclEPNS_8CallExprEPKNS_17FunctionProtoTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %20, ptr noundef %i.hq, ptr noundef null) #28
  br i1 %i.ia, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ib = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.hq) #28
  %i.ic = call i64 @_ZN5clang4Sema27CheckForImmediateInvocationENS_12ActionResultIPNS_4ExprELb1EEEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.ib, ptr noundef nonnull %20) #28
end_hunk_13
begin_hunk_14_@_ZL24TryUserDefinedConversionRN5clang4SemaEPNS_4ExprENS_8QualTypeEbNS0_15AllowedExplicitEbbbb:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 2944
  store i32 0, ptr %i.ae, align 8, !tbaa !516
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 2948
  store i32 0, ptr %i.af, align 4, !tbaa !517
  store i32 %i.m, ptr %i.ad, align 8, !tbaa !554
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 2956
  store i32 0, ptr %i.ag, align 4, !tbaa !1329
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 2960
  store i64 0, ptr %i.ah, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 2968
  store i8 0, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !1250
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 2972
  store i32 0, ptr %i.ai, align 4, !tbaa !1318
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 7840
  store i32 0, ptr %i.aj, align 8, !tbaa !1451
  %i.ak = call fastcc noundef i32 @_ZL23IsUserDefinedConversionRN5clang4SemaEPNS_4ExprENS_8QualTypeERNS_29UserDefinedConversionSequenceERNS_20OverloadCandidateSetENS0_15AllowedExplicitEb(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef nonnull %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(7844) %7, i32 noundef %5, i1 noundef zeroext %6)
  switch i32 %i.ak, label %.loopexit [
    i32 0, label %bb.c
    i32 3, label %bb.c
    i32 2, label %bb.n
    i32 1, label %bb.t
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.al = load i32, ptr %0, align 8               ; 2 uses
  %i.am = and i32 %i.al, 2147483647
  %i.an = icmp eq i32 %i.am, 3
  br i1 %i.an, label %bb.d, label %_ZN5clang26ImplicitConversionSequence14setUserDefinedEv.exit

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !515 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN5clang26ImplicitConversionSequence14setUserDefinedEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef %i.ap) #28
  br label %_ZN5clang26ImplicitConversionSequence14setUserDefinedEv.exit

_ZN5clang26ImplicitConversionSequence14setUserDefinedEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.as = and i32 %i.al, -2147483648              ; 2 uses
  %i.at = or disjoint i32 %i.as, 2
  store i32 %i.at, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !75 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = and i32 %i.ax, 127
  %i.az = icmp ne i32 %i.ay, 39
  %.not5784 = icmp eq ptr %i.av, null
  %.not57 = or i1 %.not5784, %i.az
  br i1 %.not57, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang26ImplicitConversionSequence14setUserDefinedEv.exit
  %i.ba = load i16, ptr %2, align 8
  %i.bb = and i16 %i.ba, 511
  %.not86 = icmp eq i16 %i.bb, 55
  br i1 %.not86, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1483
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !1482
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = and i64 %i.bi, 34359738360
  %i.bk = icmp eq i64 %i.bj, 8
  br i1 %i.bk, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bl = call noundef zeroext i1 @_ZN5clang4Sema21isInitListConstructorEPKNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef nonnull %i.av) #28
  br i1 %i.bl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = load ptr, ptr %i.bc, align 8, !tbaa !1482
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1765
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.sink = phi ptr [ %i.bn, %bb.i ], [ %2, %bb.h ], [ %2, %bb.g ], [ %2, %bb.f ] ; 2 uses
  %.054 = phi i64 [ 4398046511104, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.bo = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) #29
  %.sroa.081.0.in = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %.sroa.081.0 = load i64, ptr %.sroa.081.0.in, align 8, !tbaa !75 ; 3 uses
  %i.bp = and i64 %.sroa.081.0, -16
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !74 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bs, align 8, !tbaa !75
  %i.bt = and i64 %.sroa.0.0.copyload.i.i, 15
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.081.0) #28
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit:   ; preds = %bb.j, %bb.k
  %.sroa.03.0.in.in.i = phi ptr [ %i.bv, %bb.k ], [ %i.br, %bb.j ]
  %.sroa.03.0.in.i = ptrtoint ptr %.sroa.03.0.in.in.i to i64
  %i.bw = and i64 %.sroa.03.0.in.i, -16
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !75 ; 2 uses
  %i.ca = and i64 %3, -16
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !75
  %i.ce = and i64 %i.cd, -16
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !74
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = and i64 %i.ch, -8                       ; 2 uses
  %i.cj = icmp eq i64 %i.bz, %i.ci                ; 2 uses
  br i1 %i.cj, label %_ZN5clang26ImplicitConversionSequence11setStandardEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit
  %i.ck = call noundef zeroext i1 @_ZN5clang4Sema13IsDerivedFromENS_14SourceLocationENS_8QualTypeES2_(ptr noundef nonnull align 8 dereferenceable(18640) %1, i32 %i.bo, i64 %i.bz, i64 %i.ci) #28
  br i1 %i.ck, label %_ZN5clang26ImplicitConversionSequence11setStandardEv.exit, label %.loopexit

_ZN5clang26ImplicitConversionSequence11setStandardEv.exit: ; preds = %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit, %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.09.0.copyload = load i64, ptr %i.cl, align 8, !tbaa !75
  store i32 %i.as, ptr %0, align 8
  %i.cm = load i64, ptr %i.b, align 8
  %i.cn = and i64 %i.cm, -8778913153024
  %i.co = inttoptr i64 %.sroa.081.0 to ptr
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !76
  %i.cq = inttoptr i64 %3 to ptr                  ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !68
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !68
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !68
  %i.cu = or disjoint i64 %i.cn, %.054            ; 2 uses
  %i.cv = or disjoint i64 %i.cu, 137438953472
  store i64 %i.cv, ptr %i.b, align 8
  store ptr %i.av, ptr %i.f, align 8, !tbaa !75
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.09.0.copyload, ptr %i.cw, align 8, !tbaa !75
  br i1 %i.cj, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZN5clang26ImplicitConversionSequence11setStandardEv.exit
  %i.cx = or disjoint i64 %i.cu, 137438957824
  store i64 %i.cx, ptr %i.b, align 8
  br label %.loopexit

bb.n:                                             ; preds = %bb.b
  %i.cy = load i32, ptr %0, align 8               ; 2 uses
  %i.cz = and i32 %i.cy, 2147483647
  %i.da = icmp eq i32 %i.cz, 3
  br i1 %i.da, label %_ZN5clang26ImplicitConversionSequence12setAmbiguousEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = and i32 %i.cy, -2147483648
  %i.dc = or disjoint i32 %i.db, 3
  store i32 %i.dc, ptr %0, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !515
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.df, align 8, !tbaa !516
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 4, ptr %i.dg, align 4, !tbaa !517
  br label %_ZN5clang26ImplicitConversionSequence12setAmbiguousEv.exit

_ZN5clang26ImplicitConversionSequence12setAmbiguousEv.exit: ; preds = %bb.n, %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i67 = load i64, ptr %i.dh, align 8, !tbaa !75
  %i.di = inttoptr i64 %.sroa.0.0.copyload.i67 to ptr
  store ptr %i.di, ptr %i.b, align 8, !tbaa !1730
  %i.dj = inttoptr i64 %3 to ptr
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !1731
  %i.dl = load i32, ptr %i.o, align 8, !tbaa !516
  %.not88 = icmp eq i32 %i.dl, 0
  br i1 %.not88, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5clang26ImplicitConversionSequence12setAmbiguousEv.exit
  %i.dm = load ptr, ptr %7, align 8, !tbaa !515
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit
  %.05389 = phi ptr [ %i.dm, %.lr.ph ], [ %i.ed, %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit ] ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.05389, i64 104
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = and i32 %i.dr, 2
  %.not56 = icmp eq i32 %i.ds, 0
  br i1 %.not56, label %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "align"(ptr %.05389, i64 8) ]
  %8 = getelementptr inbounds nuw i8, ptr %.05389, i64 8
  %.0.copyload.i.i.i.i.i68 = load i64, ptr %8, align 8
  %i.dt = and i64 %.0.copyload.i.i.i.i.i68, -8
  %i.du = inttoptr i64 %i.dt to ptr               ; 2 uses
  %i.dv = load ptr, ptr %.05389, align 8, !tbaa !1477 ; 2 uses
  %i.dw = load i32, ptr %i.do, align 8, !tbaa !516 ; 2 uses
  %i.dx = load i32, ptr %i.dp, align 4, !tbaa !517
  %.not.i.i = icmp ult i32 %i.dw, %i.dx
  br i1 %.not.i.i, label %bb.s, label %bb.r, !prof !565

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang9NamedDeclEPNS2_12FunctionDeclEELb1EE15growAndPushBackES7_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr %i.du, ptr %i.dv)
  br label %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit

bb.s:                                             ; preds = %bb.q
  %i.dy = zext i32 %i.dw to i64
  %i.dz = load ptr, ptr %i.dn, align 8, !tbaa !515
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.dy ; 2 uses
  store ptr %i.du, ptr %i.ea, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.dv, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.eb = load i32, ptr %i.do, align 8, !tbaa !516
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.do, align 8, !tbaa !516
  br label %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit

_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit: ; preds = %bb.s, %bb.r, %bb.p
  %i.ed = getelementptr inbounds nuw i8, ptr %.05389, i64 168 ; 2 uses
  %i.ee = load ptr, ptr %7, align 8, !tbaa !515
  %i.ef = load i32, ptr %i.o, align 8, !tbaa !516
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [168 x i8], ptr %i.ee, i64 %i.eg
  %.not = icmp eq ptr %i.ed, %i.eh
  br i1 %.not, label %.loopexit, label %bb.p, !llvm.loop !2510

bb.t:                                             ; preds = %bb.b
  %i.ei = load i32, ptr %0, align 8               ; 2 uses
  %i.ej = and i32 %i.ei, 2147483647
  %i.ek = icmp eq i32 %i.ej, 3
  br i1 %i.ek, label %bb.u, label %_ZN5clang26ImplicitConversionSequence6setBadENS_21BadConversionSequence11FailureKindEPNS_4ExprENS_8QualTypeE.exit71

bb.u:                                             ; preds = %bb.t
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !515 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZN5clang26ImplicitConversionSequence6setBadENS_21BadConversionSequence11FailureKindEPNS_4ExprENS_8QualTypeE.exit71, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.em) #28
  br label %_ZN5clang26ImplicitConversionSequence6setBadENS_21BadConversionSequence11FailureKindEPNS_4ExprENS_8QualTypeE.exit71

_ZN5clang26ImplicitConversionSequence6setBadENS_21BadConversionSequence11FailureKindEPNS_4ExprENS_8QualTypeE.exit71: ; preds = %bb.t, %bb.u, %bb.v
  %i.ep = and i32 %i.ei, -2147483648
  %i.eq = or disjoint i32 %i.ep, 5
  store i32 %i.eq, ptr %0, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i69 = load i64, ptr %i.er, align 8, !tbaa !75
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.es, align 8, !tbaa !1362
  %i.et = inttoptr i64 %.sroa.0.0.copyload.i.i.i69 to ptr
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !1363
  %i.ev = inttoptr i64 %3 to ptr
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !1364
  store ptr %2, ptr %i.b, align 8, !tbaa !1365
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit, %_ZN5clang26ImplicitConversionSequence12setAmbiguousEv.exit, %bb.l, %bb.m, %_ZN5clang26ImplicitConversionSequence11setStandardEv.exit, %_ZN5clang26ImplicitConversionSequence14setUserDefinedEv.exit, %_ZN5clang26ImplicitConversionSequence6setBadENS_21BadConversionSequence11FailureKindEPNS_4ExprENS_8QualTypeE.exit71, %bb.b
  call void @_ZN5clang20OverloadCandidateSetD2Ev(ptr noundef nonnull align 8 dead_on_return(7844) dereferenceable(7844) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.w

bb.w:                                             ; preds = %_ZN5clang26ImplicitConversionSequence6setBadENS_21BadConversionSequence11FailureKindEPNS_4ExprENS_8QualTypeE.exit, %.loopexit
  ret void
}

declare i64 @_ZNK5clang10ASTContext21getArrayParameterTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #6

declare i64 @_ZNK5clang18ArrayParameterType20getConstantArrayTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN5clang4Sema42IsStringLiteralToNonConstPointerConversionEPNS_4ExprENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i64) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK5clang4Type16isArithmeticTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL25IsFloatingPointConversionRN5clang4SemaENS_8QualTypeES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, i64 %1, i64 %2) unnamed_addr #5 {
bb.a:
  %i.a = and i64 %1, -16
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !74
  %i.d = tail call noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #28
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %2, -16
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !74
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.g) #28
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 16, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !75
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !74  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.o = load i8, ptr %i.n, align 16
  %i.p = icmp ne i8 %i.o, 13
  %.not7.i.i = icmp eq ptr %i.m, null
  %.not.not.not.i.i.not55 = or i1 %.not7.i.i, %i.p ; 2 uses
  br i1 %.not.not.not.i.i.not55, label %._ZNK5clang4Type14isBFloat16TypeEv.exit.thread_crit_edge, label %_ZNK5clang4Type14isBFloat16TypeEv.exit

._ZNK5clang4Type14isBFloat16TypeEv.exit.thread_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.f, align 16, !tbaa !74
  br label %_ZNK5clang4Type14isBFloat16TypeEv.exit.thread

_ZNK5clang4Type14isBFloat16TypeEv.exit:           ; preds = %bb.c
  %i.q = load i32, ptr %i.n, align 16
  %i.r = and i32 %i.q, 536346624
  %i.s = icmp eq i32 %i.r, 263192576
  %.pre56 = load ptr, ptr %i.f, align 16, !tbaa !74 ; 4 uses
  br i1 %i.s, label %bb.d, label %_ZNK5clang4Type14isBFloat16TypeEv.exit.thread

bb.d:                                             ; preds = %_ZNK5clang4Type14isBFloat16TypeEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.pre56, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i11 = load i64, ptr %i.t, align 8, !tbaa !75
  %i.u = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i11, -16
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !74  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = load i8, ptr %i.x, align 16
  %i.z = icmp eq i8 %i.y, 13
  %.not7.i.i12 = icmp ne ptr %i.w, null
  %.not.not.not.i.i13 = and i1 %.not7.i.i12, %i.z
  br i1 %.not.not.not.i.i13, label %_ZNK5clang4Type13isFloat16TypeEv.exit, label %_ZNK5clang4Type14isBFloat16TypeEv.exit.thread

_ZNK5clang4Type13isFloat16TypeEv.exit:            ; preds = %bb.d
  %i.aa = load i32, ptr %i.x, align 16
  %i.ab = and i32 %i.aa, 536346624
  switch i32 %i.ab, label %_ZNK5clang4Type14isBFloat16TypeEv.exit.thread [
    i32 262668288, label %bb.g
    i32 260571136, label %bb.g
  ]

_ZNK5clang4Type14isBFloat16TypeEv.exit.thread:    ; preds = %_ZNK5clang4Type13isFloat16TypeEv.exit, %._ZNK5clang4Type14isBFloat16TypeEv.exit.thread_crit_edge, %bb.d, %_ZNK5clang4Type14isBFloat16TypeEv.exit
  %i.ac = phi ptr [ %.pre, %._ZNK5clang4Type14isBFloat16TypeEv.exit.thread_crit_edge ], [ %.pre56, %bb.d ], [ %.pre56, %_ZNK5clang4Type13isFloat16TypeEv.exit ], [ %.pre56, %_ZNK5clang4Type14isBFloat16TypeEv.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i21 = load i64, ptr %i.ad, align 8, !tbaa !75
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i21, -16
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !74 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 16
  %i.aj = icmp eq i8 %i.ai, 13
  %.not7.i.i22 = icmp ne ptr %i.ag, null
  %.not.not.not.i.i23 = and i1 %.not7.i.i22, %i.aj
  br i1 %.not.not.not.i.i23, label %_ZNK5clang4Type14isBFloat16TypeEv.exit25, label %_ZNK5clang4Type14isBFloat16TypeEv.exit25.thread

_ZNK5clang4Type14isBFloat16TypeEv.exit25:         ; preds = %_ZNK5clang4Type14isBFloat16TypeEv.exit.thread
  %i.ak = load i32, ptr %i.ah, align 16
  %i.al = and i32 %i.ak, 536346624
  %i.am = icmp ne i32 %i.al, 263192576
  %brmerge = or i1 %.not.not.not.i.i.not55, %i.am
  br i1 %brmerge, label %_ZNK5clang4Type14isBFloat16TypeEv.exit25.thread, label %_ZNK5clang4Type13isFloat16TypeEv.exit31

_ZNK5clang4Type13isFloat16TypeEv.exit31:          ; preds = %_ZNK5clang4Type14isBFloat16TypeEv.exit25
  %i.an = load i32, ptr %i.n, align 16
  %i.ao = and i32 %i.an, 536346624
  switch i32 %i.ao, label %_ZNK5clang4Type14isBFloat16TypeEv.exit25.thread [
    i32 262668288, label %bb.g
    i32 260571136, label %bb.g
  ]

_ZNK5clang4Type14isBFloat16TypeEv.exit25.thread:  ; preds = %_ZNK5clang4Type13isFloat16TypeEv.exit31, %_ZNK5clang4Type14isBFloat16TypeEv.exit25, %_ZNK5clang4Type14isBFloat16TypeEv.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.ar = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.aq, i64 %1) #28 ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.at = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.as, i64 %2) #28 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5clang4Type14isBFloat16TypeEv.exit25.thread
  %i.av = icmp eq ptr %i.at, @_ZN4llvm11APFloatBase11semIEEEquadE
  br i1 %i.av, label %bb.g, label %.thread54

bb.f:                                             ; preds = %_ZNK5clang4Type14isBFloat16TypeEv.exit25.thread
  %i.aw = icmp eq ptr %i.ar, @_ZN4llvm11APFloatBase11semIEEEquadE
  %i.ax = icmp eq ptr %i.at, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %or.cond = and i1 %i.aw, %i.ax
  br i1 %or.cond, label %bb.g, label %.thread54

.thread54:                                        ; preds = %bb.e, %bb.f
  br label %bb.g

bb.g:                                             ; preds = %_ZNK5clang4Type13isFloat16TypeEv.exit31, %_ZNK5clang4Type13isFloat16TypeEv.exit31, %_ZNK5clang4Type13isFloat16TypeEv.exit, %_ZNK5clang4Type13isFloat16TypeEv.exit, %bb.f, %.thread54, %bb.e, %bb.a, %bb.b
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNK5clang4Type13isFloat16TypeEv.exit ], [ false, %bb.b ], [ false, %_ZNK5clang4Type13isFloat16TypeEv.exit31 ], [ false, %_ZNK5clang4Type13isFloat16TypeEv.exit31 ], [ false, %_ZNK5clang4Type13isFloat16TypeEv.exit ], [ true, %.thread54 ], [ false, %bb.f ], [ false, %bb.e ]
end_hunk_14
begin_hunk_15_@_ZL24FindConversionForRefInitRN5clang4SemaERNS_26ImplicitConversionSequenceENS_8QualTypeENS_14SourceLocationEPNS_4ExprES4_bb:bb.a
  %i.he = load ptr, ptr %i.hd, align 16, !tbaa !74 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load i8, ptr %i.hf, align 16
  %i.hh = and i8 %i.hg, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i8 %i.hh, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread202, label %bb.v

bb.v:                                             ; preds = %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit138
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.sroa.0.0.copyload.i.i.i.i140 = load i64, ptr %i.hi, align 8, !tbaa !75
  %i.hj = and i64 %.sroa.0.0.copyload.i.i.i.i140, -16
  %i.hk = inttoptr i64 %i.hj to ptr
  %i.hl = load ptr, ptr %i.hk, align 16, !tbaa !74
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load i8, ptr %i.hm, align 16
  %i.ho = and i8 %i.hn, -2
  %spec.select.i.i.i.i.i.i.i.i5.i = icmp eq i8 %i.ho, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit, label %.critedge5

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit: ; preds = %bb.v
  %i.hp = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.he) #28 ; 2 uses
  %.not75 = icmp eq ptr %i.hp, null
  br i1 %.not75, label %.critedge5, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread202

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread202: ; preds = %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit138, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit
  %.1.i141205 = phi ptr [ %i.hp, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit ], [ %i.he, %_ZNK5clang17CXXConversionDecl17getConversionTypeEv.exit138 ] ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.1.i141205, i64 8
  %.sroa.0.0.copyload.i.i.i.i142 = load i64, ptr %i.hq, align 8, !tbaa !75
  %i.hr = and i64 %.sroa.0.0.copyload.i.i.i.i142, -16
  %i.hs = inttoptr i64 %i.hr to ptr
  %i.ht = load ptr, ptr %i.hs, align 16, !tbaa !74
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load i8, ptr %i.hu, align 16
  %i.hw = icmp eq i8 %i.hv, 42
  br i1 %i.hw, label %.critedge81, label %bb.w

bb.w:                                             ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread202
  %i.hx = getelementptr inbounds nuw i8, ptr %.1.i141205, i64 16
  %i.hy = load i24, ptr %i.hx, align 16
  %i.hz = and i24 %i.hy, 1048576
  %.not4.i143 = icmp eq i24 %i.hz, 0
  br i1 %.not4.i143, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit153, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.w, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i148
  %.05.i145 = phi ptr [ %.1.i.i149, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i148 ], [ %.1.i141205, %bb.w ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.05.i145, i64 32
  %.0.copyload.i.i.i.i.i.i146 = load i64, ptr %i.ia, align 8
  %i.ib = and i64 %.0.copyload.i.i.i.i.i.i146, -16
  %i.ic = inttoptr i64 %i.ib to ptr
  %i.id = load ptr, ptr %i.ic, align 16, !tbaa !74 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load i8, ptr %i.ie, align 16
  %i.ig = and i8 %i.if, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i147 = icmp eq i8 %i.ig, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i147, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i148, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i144
  %i.ih = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.id) #28
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i148

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i148: ; preds = %bb.x, %.lr.ph.i144
  %.1.i.i149 = phi ptr [ %i.ih, %bb.x ], [ %i.id, %.lr.ph.i144 ] ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.1.i.i149, i64 16
  %i.ij = load i24, ptr %i.ii, align 16
  %i.ik = and i24 %i.ij, 1048576
  %.not.i150 = icmp eq i24 %i.ik, 0
  br i1 %.not.i150, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit153, label %.lr.ph.i144, !llvm.loop !9

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit153: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i148, %bb.w
  %.0.lcssa.i151 = phi ptr [ %.1.i141205, %bb.w ], [ %.1.i.i149, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i148 ]
  %i.il = getelementptr inbounds nuw i8, ptr %.0.lcssa.i151, i64 32
  %.sroa.0.0.copyload.i152 = load i64, ptr %i.il, align 16, !tbaa !75
  %i.im = and i64 %.sroa.0.0.copyload.i152, -16
  %i.in = inttoptr i64 %i.im to ptr
  %i.io = load ptr, ptr %i.in, align 16, !tbaa !74
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %.sroa.0.0.copyload.i.i.i.i155 = load i64, ptr %i.ip, align 8, !tbaa !75
  %i.iq = and i64 %.sroa.0.0.copyload.i.i.i.i155, -16
  %i.ir = inttoptr i64 %i.iq to ptr
  %i.is = load ptr, ptr %i.ir, align 16, !tbaa !74
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load i8, ptr %i.it, align 16
  %i.iv = add i8 %i.iu, -23
  %spec.select.i.i.i.i.i.i.i.i.i156 = icmp ult i8 %i.iv, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i156, label %.critedge81, label %.critedge5

.critedge81:                                      ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread202, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit153, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit133
  %.067187 = phi ptr [ %.067188, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit153 ], [ %.067188, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread202 ], [ %.0185, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit133 ]
  %.sroa.015.0.copyload.pre = load i64, ptr %.sroa.0171.0210, align 8, !tbaa !75 ; 2 uses
  br i1 %.not231, label %.critedge81.thread, label %bb.y

.critedge81.thread:                               ; preds = %.thread, %.critedge81
  %.sroa.015.0.copyload = phi i64 [ %.0.copyload.i.i.i.i.i.i, %.thread ], [ %.sroa.015.0.copyload.pre, %.critedge81 ]
  call void @_ZN5clang4Sema30AddTemplateConversionCandidateEPNS_20FunctionTemplateDeclENS_14DeclAccessPairEPNS_13CXXRecordDeclEPNS_4ExprENS_8QualTypeERNS_20OverloadCandidateSetEbbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.0185, i64 %.sroa.015.0.copyload, ptr noundef %i.bg, ptr noundef %4, i64 %2, ptr noundef nonnull align 8 dereferenceable(7844) %8, i1 noundef zeroext false, i1 noundef zeroext %7, i1 noundef zeroext true)
  br label %.critedge5

bb.y:                                             ; preds = %.critedge81
  call void @_ZN5clang4Sema22AddConversionCandidateEPNS_17CXXConversionDeclENS_14DeclAccessPairEPNS_13CXXRecordDeclEPNS_4ExprENS_8QualTypeERNS_20OverloadCandidateSetEbbbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %.067187, i64 %.sroa.015.0.copyload.pre, ptr poison, ptr noundef %4, i64 %2, ptr noundef nonnull align 8 dereferenceable(7844) %8, i1 noundef zeroext false, i1 noundef zeroext %7, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %.critedge5

.critedge5:                                       ; preds = %bb.v, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit, %.critedge81.thread, %bb.y, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit153, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit133, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0171.0210, i64 8 ; 2 uses
  %.not207 = icmp eq ptr %i.iw, %i.ak
  br i1 %.not207, label %._crit_edge, label %bb.b, !llvm.loop !2564

bb.z:                                             ; preds = %._crit_edge
  %i.ix = load ptr, ptr %i.a, align 8, !tbaa !1468 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 112 ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8
  %i.ja = and i64 %i.iz, 68719476736
  %.not73 = icmp eq i64 %i.ja, 0
  br i1 %.not73, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jb = load i32, ptr %1, align 8               ; 3 uses
  %i.jc = and i32 %i.jb, 2147483647
  %i.jd = icmp eq i32 %i.jc, 3
  br i1 %i.jd, label %bb.ab, label %_ZN5clang26ImplicitConversionSequence14setUserDefinedEv.exit

bb.ab:                                            ; preds = %bb.aa
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !515 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZN5clang26ImplicitConversionSequence14setUserDefinedEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.jf) #28
  %.pre.i.i = load i32, ptr %1, align 8
  br label %_ZN5clang26ImplicitConversionSequence14setUserDefinedEv.exit

_ZN5clang26ImplicitConversionSequence14setUserDefinedEv.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.ji = phi i32 [ %i.jb, %bb.aa ], [ %i.jb, %bb.ab ], [ %.pre.i.i, %bb.ac ]
  %i.jj = and i32 %i.ji, -2147483648
  %i.jk = or disjoint i32 %i.jj, 2
  store i32 %i.jk, ptr %1, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !1302
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jo, ptr noundef nonnull align 8 dereferenceable(56) %i.jn, i64 56, i1 false), !tbaa.struct !1359
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jp, ptr noundef nonnull align 8 dereferenceable(56) %i.iy, i64 56, i1 false), !tbaa.struct !1359
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.jr = load i8, ptr %i.jq, align 8
  %i.js = select i1 %i.at, i8 2, i8 0
  %i.jt = and i8 %i.jr, -3
  %i.ju = or disjoint i8 %i.jt, %i.js             ; 2 uses
  store i8 %i.ju, ptr %i.jq, align 8
  %i.jv = load ptr, ptr %i.ix, align 8, !tbaa !1477
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.jv, ptr %i.jw, align 8, !tbaa !75
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !75
  store i64 %i.jz, ptr %i.jy, align 8, !tbaa !75
  %i.ka = and i8 %i.ju, -2
  store i8 %i.ka, ptr %i.jq, align 8
  br label %.loopexit

bb.ad:                                            ; preds = %._crit_edge
  %i.kb = load i32, ptr %1, align 8               ; 2 uses
  %i.kc = and i32 %i.kb, 2147483647
  %i.kd = icmp eq i32 %i.kc, 3
  br i1 %i.kd, label %_ZN5clang26ImplicitConversionSequence12setAmbiguousEv.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ke = and i32 %i.kb, -2147483648
  %i.kf = or disjoint i32 %i.ke, 3
  store i32 %i.kf, ptr %1, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.kh, ptr %i.kg, align 8, !tbaa !515
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.ki, align 8, !tbaa !516
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 4, ptr %i.kj, align 4, !tbaa !517
  br label %_ZN5clang26ImplicitConversionSequence12setAmbiguousEv.exit

_ZN5clang26ImplicitConversionSequence12setAmbiguousEv.exit: ; preds = %bb.ad, %bb.ae
  %i.kk = load i32, ptr %i.m, align 8, !tbaa !516
  %.not211 = icmp eq i32 %i.kk, 0
  br i1 %.not211, label %.loopexit, label %.lr.ph213

.lr.ph213:                                        ; preds = %_ZN5clang26ImplicitConversionSequence12setAmbiguousEv.exit
  %i.kl = load ptr, ptr %8, align 8, !tbaa !515
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 44
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph213, %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit
  %.0212 = phi ptr [ %i.kl, %.lr.ph213 ], [ %i.lc, %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit ] ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0212, i64 104
  %i.kq = load i32, ptr %i.kp, align 8
  %i.kr = and i32 %i.kq, 2
  %.not72 = icmp eq i32 %i.kr, 0
  br i1 %.not72, label %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "align"(ptr %.0212, i64 8) ]
  %9 = getelementptr inbounds nuw i8, ptr %.0212, i64 8
  %.0.copyload.i.i.i.i.i157 = load i64, ptr %9, align 8
  %i.ks = and i64 %.0.copyload.i.i.i.i.i157, -8
  %i.kt = inttoptr i64 %i.ks to ptr               ; 2 uses
  %i.ku = load ptr, ptr %.0212, align 8, !tbaa !1477 ; 2 uses
  %i.kv = load i32, ptr %i.kn, align 8, !tbaa !516 ; 2 uses
  %i.kw = load i32, ptr %i.ko, align 4, !tbaa !517
  %.not.i.i158 = icmp ult i32 %i.kv, %i.kw
  br i1 %.not.i.i158, label %bb.ai, label %bb.ah, !prof !565

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang9NamedDeclEPNS2_12FunctionDeclEELb1EE15growAndPushBackES7_(ptr noundef nonnull align 8 dereferenceable(16) %i.km, ptr %i.kt, ptr %i.ku)
  br label %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit

bb.ai:                                            ; preds = %bb.ag
  %i.kx = zext i32 %i.kv to i64
  %i.ky = load ptr, ptr %i.km, align 8, !tbaa !515
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %i.kx ; 2 uses
  store ptr %i.kt, ptr %i.kz, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store ptr %i.ku, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.la = load i32, ptr %i.kn, align 8, !tbaa !516
  %i.lb = add i32 %i.la, 1
  store i32 %i.lb, ptr %i.kn, align 8, !tbaa !516
  br label %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit

_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit: ; preds = %bb.ai, %bb.ah, %bb.af
  %i.lc = getelementptr inbounds nuw i8, ptr %.0212, i64 168 ; 2 uses
  %i.ld = load ptr, ptr %8, align 8, !tbaa !515
  %i.le = load i32, ptr %i.m, align 8, !tbaa !516
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [168 x i8], ptr %i.ld, i64 %i.lf
  %.not = icmp eq ptr %i.lc, %i.lg
  br i1 %.not, label %.loopexit, label %bb.af, !llvm.loop !2565

bb.aj:                                            ; preds = %._crit_edge
  unreachable

.loopexit:                                        ; preds = %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit, %_ZN5clang26ImplicitConversionSequence12setAmbiguousEv.exit, %._crit_edge, %._crit_edge, %bb.z, %_ZN5clang26ImplicitConversionSequence14setUserDefinedEv.exit
  %.065 = phi i1 [ true, %_ZN5clang26ImplicitConversionSequence14setUserDefinedEv.exit ], [ false, %._crit_edge ], [ false, %bb.z ], [ false, %._crit_edge ], [ true, %_ZN5clang26ImplicitConversionSequence12setAmbiguousEv.exit ], [ true, %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN5clang20OverloadCandidateSetD2Ev(ptr noundef nonnull align 8 dead_on_return(7844) dereferenceable(7844) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret i1 %.065
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5clang4Type5getAsINS_19LValueReferenceTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 16
  %.not = icmp eq i8 %i.b, 42
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.c, align 8, !tbaa !75
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i8, ptr %i.g, align 16
  %i.i = icmp eq i8 %i.h, 42
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %0) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.1 = phi ptr [ %i.j, %bb.c ], [ %0, %bb.a ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang21ObjCObjectPointerType12isObjCIdTypeEv(ptr noundef nonnull align 16 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.a, align 16
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !74  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 16
  %i.g = and i8 %i.f, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.g, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.d) #28
  br label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit

_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit: ; preds = %bb.a, %bb.b
  %.1.i.i = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.j = load i32, ptr %i.i, align 16
  %i.k = icmp ult i32 %i.j, 67108864
  br i1 %i.k, label %bb.c, label %_ZNK5clang14ObjCObjectType19isObjCUnqualifiedIdEv.exit

bb.c:                                             ; preds = %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.l, align 8, !tbaa !75
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !75
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !74  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = load i8, ptr %i.t, align 16
  %i.v = icmp eq i8 %i.u, 13
  %.not7.i.i.i = icmp ne ptr %i.s, null
  %.not.not.not.i.i.i = and i1 %.not7.i.i.i, %i.v
  br i1 %.not.not.not.i.i.i, label %bb.d, label %_ZNK5clang14ObjCObjectType19isObjCUnqualifiedIdEv.exit

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.t, align 16
  %i.x = and i32 %i.w, 536346624
  %i.y = icmp eq i32 %i.x, 265289728
  br label %_ZNK5clang14ObjCObjectType19isObjCUnqualifiedIdEv.exit

_ZNK5clang14ObjCObjectType19isObjCUnqualifiedIdEv.exit: ; preds = %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit, %bb.c, %bb.d
  %i.z = phi i1 [ false, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit ], [ %i.y, %bb.d ], [ false, %bb.c ]
  ret i1 %i.z
}

declare noundef zeroext i1 @_ZNK5clang11ParmVarDecl13hasDefaultArgEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #6

declare i64 @_ZN5clang4Sema22BuildCXXDefaultArgExprENS_14SourceLocationEPNS_12FunctionDeclEPNS_11ParmVarDeclEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640), i32, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef i32 @_ZN5clang4Sema23DeduceTemplateArgumentsEPNS_20FunctionTemplateDeclEPNS_24TemplateArgumentListInfoEN4llvm8ArrayRefIPNS_4ExprEEERPNS_12FunctionDeclERNS_4sema21TemplateDeductionInfoEbbbNS_8QualTypeENS7_14ClassificationEbNS5_12function_refIFbNS6_ISG_EEbEEE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(504), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i64, i32, i1 noundef zeroext, ptr noundef byval(%"class.llvm::function_ref.1811") align 8) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZN4llvm12function_refIFbNS_8ArrayRefIN5clang8QualTypeEEEbEE11callback_fnIZL37AddMethodTemplateCandidateImmediatelyRNS2_4SemaERNS2_20OverloadCandidateSetEPNS2_20FunctionTemplateDeclENS2_14DeclAccessPairEPNS2_13CXXRecordDeclEPNS2_24TemplateArgumentListInfoES3_NS2_4Expr14ClassificationENS1_IPSJ_EEbbNS2_27OverloadCandidateParamOrderEE3$_0EEblS4_b"(i64 noundef %0, ptr nofree readonly captures(none) %1, i64 %2, i1 noundef zeroext %3) #5 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2568, !nonnull !87, !align !500
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2569, !nonnull !87, !align !500
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1602
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2570, !nonnull !87, !align !500 ; 2 uses
  %.sroa.02.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !1554
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1249
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2571, !nonnull !87, !align !500
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2572, !nonnull !87, !align !500
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2573, !nonnull !87
  %i.n = load i8, ptr %i.m, align 1, !tbaa !1250, !range !86, !noundef !87
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2574, !nonnull !87, !align !500
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1443
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2575, !nonnull !87, !align !500
  %.sroa.01.0.copyload.i = load i64, ptr %i.s, align 8, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2576, !nonnull !87, !align !1814
  %.sroa.0.0.copyload.i = load i32, ptr %i.u, align 2, !tbaa !1370
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2577, !nonnull !87
  %i.x = load i8, ptr %i.w, align 1, !tbaa !1603
  %.sroa.2.0.insert.shift.i = select i1 %3, i16 256, i16 0
  %.sroa.0.0.insert.ext.i = zext nneg i8 %i.n to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.y = tail call noundef zeroext i1 @_ZN5clang4Sema28CheckNonDependentConversionsEPNS_20FunctionTemplateDeclEN4llvm8ArrayRefINS_8QualTypeEEENS4_IPNS_4ExprEEERNS_20OverloadCandidateSetERNS3_15MutableArrayRefINS_26ImplicitConversionSequenceEEENS0_32CheckNonDependentConversionsFlagEPNS_13CXXRecordDeclES5_NS7_14ClassificationENS_27OverloadCandidateParamOrderE(ptr noundef nonnull align 8 dereferenceable(18640) %i.b, ptr noundef %i.e, ptr readonly %1, i64 %2, ptr %.sroa.02.0.copyload.i, i64 %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(7844) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i16 %.sroa.0.0.insert.insert.i, ptr noundef %i.q, i64 %.sroa.01.0.copyload.i, i32 %.sroa.0.0.copyload.i, i8 noundef signext %i.x), !inline_history !2566
  ret i1 %i.y
}

declare noundef i32 @_ZNK5clang4Decl16getTemplateDepthEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZN4llvm12function_refIFbNS_8ArrayRefIN5clang8QualTypeEEEbEE11callback_fnIZL39AddTemplateOverloadCandidateImmediatelyRNS2_4SemaERNS2_20OverloadCandidateSetEPNS2_20FunctionTemplateDeclENS2_14DeclAccessPairEPNS2_24TemplateArgumentListInfoENS1_IPNS2_4ExprEEEbbbNS2_8CallExpr11ADLCallKindENS2_27OverloadCandidateParamOrderEbE3$_0EEblS4_b"(i64 noundef %0, ptr nofree readonly captures(none) %1, i64 %2, i1 noundef zeroext %3) #5 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2580, !nonnull !87, !align !500
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2581, !nonnull !87, !align !500
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1602
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2582, !nonnull !87, !align !500 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !1554
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1249
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2583, !nonnull !87, !align !500
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2584, !nonnull !87, !align !500
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2585, !nonnull !87
  %i.n = load i8, ptr %i.m, align 1, !tbaa !1250, !range !86, !noundef !87
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2586, !nonnull !87
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1603
  %.sroa.2.0.insert.shift.i = select i1 %3, i16 256, i16 0
  %.sroa.06.0.insert.ext.i = zext nneg i8 %i.n to i16
  %.sroa.06.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.shift.i, %.sroa.06.0.insert.ext.i
end_hunk_15
begin_hunk_16_@_ZN5clanglsINS_10QualifiersEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_:bb.a
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1264
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(168) %i.z) #28, !inline_history !10
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.ae = phi ptr [ %i.ad, %bb.e ], [ null, %bb.d ]
  store ptr %i.ae, ptr %2, align 8, !tbaa !1430
  %i.af = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !554
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !1433
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !1249
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !559 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsINS_10QualifiersEEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !560
  %i.ap = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ao) ; 2 uses
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !559
  br label %_ZNK5clang17PartialDiagnosticlsINS_10QualifiersEEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsINS_10QualifiersEEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.aq = phi ptr [ %i.ap, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.am, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.aq, align 8, !tbaa !1412
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at
  store i8 7, ptr %i.au, align 1, !tbaa !75
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !559 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i8, ptr %i.av, align 8, !tbaa !1412 ; 2 uses
  %i.ay = add i8 %i.ax, 1
  store i8 %i.ay, ptr %i.av, align 8, !tbaa !1412
  %i.az = zext i8 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.az
  store i64 %.sroa.0.0.copyload.i, ptr %i.ba, align 8, !tbaa !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsINS_10QualifiersEEERKS0_RKT_.exit, %_ZN5clanglsINS_10QualifiersEEERKNS_8SemaBase20ImmediateDiagBuilderES5_RKT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL21DiagnoseBadConversionRN5clang4SemaEPNS_17OverloadCandidateEjb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %11 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %15 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %16 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %18 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  %20 = alloca %"class.clang::QualType", align 8  ; 23 uses
  %21 = alloca %"class.clang::QualType", align 8  ; 16 uses
  %22 = alloca %"class.clang::SourceRange", align 8 ; 16 uses
  %23 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %24 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %25 = alloca %"class.clang::CanQual", align 8   ; 7 uses
  %26 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %27 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i8, align 1                       ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %28 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca i32, align 4                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca i32, align 4                      ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %29 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = alloca i32, align 4                     ; 4 uses
  %i.ac = alloca i32, align 4                     ; 4 uses
  %i.ad = alloca i32, align 4                     ; 4 uses
  %i.ae = alloca i32, align 4                     ; 4 uses
  %i.af = alloca i32, align 4                     ; 4 uses
  %30 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.ag = alloca i32, align 4                     ; 4 uses
  %i.ah = alloca i32, align 4                     ; 4 uses
  %i.ai = alloca i8, align 1                      ; 4 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.clang::PointerAuthQualifier", align 4 ; 4 uses
  %i.aj = alloca i8, align 1                      ; 4 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.clang::PointerAuthQualifier", align 4 ; 4 uses
  %i.ak = alloca i32, align 4                     ; 4 uses
  %35 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %36 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.al = alloca i32, align 4                     ; 4 uses
  %i.am = alloca i32, align 4                     ; 4 uses
  %i.an = alloca i32, align 4                     ; 4 uses
  %37 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.ao = alloca i32, align 4                     ; 4 uses
  %i.ap = alloca i32, align 4                     ; 4 uses
  %i.aq = alloca i32, align 4                     ; 4 uses
  %i.ar = alloca i32, align 4                     ; 4 uses
  %38 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.as = alloca i32, align 4                     ; 4 uses
  %i.at = alloca i32, align 4                     ; 4 uses
  %i.au = alloca i32, align 4                     ; 4 uses
  %i.av = alloca i32, align 4                     ; 4 uses
  %i.aw = alloca i8, align 1                      ; 4 uses
  %39 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.ax = alloca i32, align 4                     ; 4 uses
  %i.ay = alloca i32, align 4                     ; 4 uses
  %i.az = alloca i32, align 4                     ; 4 uses
  %i.ba = alloca i32, align 4                     ; 4 uses
  %i.bb = alloca i32, align 4                     ; 4 uses
  %40 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.bc = alloca i32, align 4                     ; 4 uses
  %i.bd = alloca i32, align 4                     ; 4 uses
  %i.be = alloca i32, align 4                     ; 4 uses
  %i.bf = alloca i32, align 4                     ; 4 uses
  %i.bg = alloca i32, align 4                     ; 4 uses
  %41 = alloca %"class.clang::QualType", align 8  ; 5 uses
  %42 = alloca %"class.clang::QualType", align 8  ; 5 uses
  %43 = alloca %"class.clang::QualType", align 8  ; 5 uses
  %44 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.bh = alloca i32, align 4                     ; 4 uses
  %i.bi = alloca i32, align 4                     ; 4 uses
  %i.bj = alloca i32, align 4                     ; 4 uses
  %i.bk = alloca i32, align 4                     ; 4 uses
  %45 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.bl = alloca i32, align 4                     ; 4 uses
  %i.bm = alloca i32, align 4                     ; 4 uses
  %i.bn = alloca i32, align 4                     ; 4 uses
  %i.bo = alloca i32, align 4                     ; 4 uses
  %46 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %47 = alloca %"class.clang::PartialDiagnostic", align 8 ; 15 uses
  %i.bp = alloca i32, align 4                     ; 4 uses
  %i.bq = alloca i32, align 4                     ; 4 uses
  %i.br = alloca i32, align 4                     ; 4 uses
  %48 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bt = zext i32 %2 to i64
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !1302
  %i.bv = getelementptr inbounds nuw [152 x i8], ptr %i.bu, i64 %i.bt ; 4 uses
  %i.bw = load ptr, ptr %1, align 8, !tbaa !1477  ; 19 uses
  br i1 %3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.bz = and i32 %i.by, 124
  %i.ca = icmp ne i32 %i.bz, 36
  %i.cb = and i32 %i.by, 127
  %i.cc = icmp eq i32 %i.cb, 39
  %or.cond559 = or i1 %i.ca, %i.cc
  br i1 %or.cond559, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cd = icmp eq i32 %2, 0
  br i1 %i.cd, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ce = tail call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isExplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %i.bw) #28
  %not. = xor i1 %i.ce, true
  %i.cf = sext i1 %not. to i32
  %spec.select = add i32 %2, %i.cf
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0198 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.d ] ; 10 uses
  %.0 = phi i32 [ %2, %bb.a ], [ 0, %bb.c ], [ %2, %bb.b ], [ %spec.select, %bb.d ] ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store ptr %i.cg, ptr %19, align 8, !tbaa !1523
  %i.ch = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 18 uses
  store i64 0, ptr %i.ch, align 8, !tbaa !1447
  store i8 0, ptr %i.cg, align 8, !tbaa !75
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ci, align 8
  %i.cj = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = lshr i32 %i.cm, 8
  %i.co = and i32 %i.cn, 3
  %i.cp = call fastcc i64 @_ZN12_GLOBAL__N_125ClassifyOverloadCandidateERN5clang4SemaEPKNS0_9NamedDeclEPKNS0_12FunctionDeclENS0_28OverloadCandidateRewriteKindERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.ck, ptr noundef %i.bw, i32 noundef %i.co, ptr noundef nonnull align 8 dereferenceable(32) %19) ; 3 uses
  %.sroa.072.0.extract.trunc = trunc i64 %i.cp to i32 ; 13 uses
  %.sroa.17.0.extract.shift = lshr i64 %i.cp, 32  ; 2 uses
  %.sroa.17.0.extract.trunc = trunc nuw nsw i64 %.sroa.17.0.extract.shift to i32 ; 13 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !75 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1363
  %i.cu = ptrtoint ptr %i.ct to i64
  store i64 %i.cu, ptr %20, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1364
  %i.cx = ptrtoint ptr %i.cw to i64
  store i64 %i.cx, ptr %21, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  store i32 0, ptr %22, align 8, !tbaa !1339
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 4
  store i32 0, ptr %i.cy, align 4, !tbaa !1339
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bw, i64 120 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1295 ; 3 uses
  %i.db = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.bw) #28
  %i.dc = zext i32 %.0 to i64
  %i.dd = call i32 @llvm.umin.i32(i32 %.0, i32 %i.db)
  %..i = zext i32 %i.dd to i64                    ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %..i ; 3 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = lshr i64 %..i, 2                        ; 2 uses
  %.not.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %bb.i
  %.044.i.i.i.i.i.i = phi i64 [ %i.dp, %bb.i ], [ %i.dg, %bb.e ] ; 2 uses
  %.02943.i.i.i.i.i.i = phi ptr [ %i.do, %bb.i ], [ %i.da, %bb.e ] ; 9 uses
  %.029.val32.i.i.i.i.i.i = load ptr, ptr %.02943.i.i.i.i.i.i, align 8, !tbaa !1297
  %i.dh = call noundef zeroext i1 @_ZNK5clang9ValueDecl15isParameterPackEv(ptr noundef nonnull align 8 dereferenceable(56) %.029.val32.i.i.i.i.i.i) #28
  br i1 %i.dh, label %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i.i = load ptr, ptr %i.di, align 8, !tbaa !1297
  %i.dj = call noundef zeroext i1 @_ZNK5clang9ValueDecl15isParameterPackEv(ptr noundef nonnull align 8 dereferenceable(56) %.val31.i.i.i.i.i.i) #28
  br i1 %i.dj, label %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dk = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i.i = load ptr, ptr %i.dk, align 8, !tbaa !1297
  %i.dl = call noundef zeroext i1 @_ZNK5clang9ValueDecl15isParameterPackEv(ptr noundef nonnull align 8 dereferenceable(56) %.val30.i.i.i.i.i.i) #28
  br i1 %i.dl, label %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit624", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dm = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !tbaa !1297
  %i.dn = call noundef zeroext i1 @_ZNK5clang9ValueDecl15isParameterPackEv(ptr noundef nonnull align 8 dereferenceable(56) %.val.i.i.i.i.i.i) #28
  br i1 %i.dn, label %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit626", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.do = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 32 ; 3 uses
  %i.dp = add nsw i64 %.044.i.i.i.i.i.i, -1
  %i.dq = icmp sgt i64 %.044.i.i.i.i.i.i, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !2672

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.i
  %.pre.i.i.i.i.i.i = ptrtoint ptr %i.do to i64
  %.pre49.i.i.i.i.i.i = sub i64 %i.df, %.pre.i.i.i.i.i.i
  %i.dr = ashr exact i64 %.pre49.i.i.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.e
  %.pre-phi50.i.i.i.i.i.i = phi i64 [ %i.dr, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %..i, %bb.e ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.do, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.da, %bb.e ] ; 5 uses
  switch i64 %.pre-phi50.i.i.i.i.i.i, label %bb.o [
    i64 3, label %bb.j
    i64 2, label %bb.l
    i64 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !1297
  %i.ds = call noundef zeroext i1 @_ZNK5clang9ValueDecl15isParameterPackEv(ptr noundef nonnull align 8 dereferenceable(56) %.029.val.i.i.i.i.i.i) #28
  br i1 %i.ds, label %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.dt, %bb.k ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !1297
  %i.du = call noundef zeroext i1 @_ZNK5clang9ValueDecl15isParameterPackEv(ptr noundef nonnull align 8 dereferenceable(56) %.1.val.i.i.i.i.i.i) #28
  br i1 %i.du, label %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.dv, %bb.m ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !1297
  %i.dw = call noundef zeroext i1 @_ZNK5clang9ValueDecl15isParameterPackEv(ptr noundef nonnull align 8 dereferenceable(56) %.2.val.i.i.i.i.i.i) #28
  br i1 %i.dw, label %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit", label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i
  br label %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.f
  %i.dx = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit624": ; preds = %bb.g
  %i.dy = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit626": ; preds = %bb.h
  %i.dz = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit624", %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit626", %bb.j, %bb.l, %bb.n, %bb.o
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.l ], [ %i.de, %bb.o ], [ %.2.i.i.i.i.i.i, %bb.n ], [ %.029.lcssa.i.i.i.i.i.i, %bb.j ], [ %i.dz, %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit626" ], [ %i.dx, %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.dy, %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit624" ], [ %.02943.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.ea = icmp ne ptr %i.de, %.028.i.i.i.i.i.i
  %or.cond = or i1 %.0198, %i.ea
  br i1 %or.cond, label %bb.r, label %bb.p

bb.p:                                             ; preds = %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit"
  %i.eb = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.bw) #28
  %i.ec = icmp ult i32 %.0, %i.eb
  br i1 %i.ec, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ed = load ptr, ptr %i.cz, align 8, !tbaa !1295
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dc
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1297 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1264
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = call i64 %i.ei(ptr noundef nonnull align 8 dereferenceable(104) %i.ef) #29
  store i64 %i.ej, ptr %22, align 8, !tbaa !554
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %"_ZN4llvm6any_ofINS_15MutableArrayRefIPN5clang11ParmVarDeclEEEZL21DiagnoseBadConversionRNS2_4SemaEPNS2_17OverloadCandidateEjbE3$_0EEbOT_T0_.exit"
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 19344
  %.sroa.0.0.copyload.i = load i64, ptr %i.em, align 8, !tbaa !75
  %.0.copyload.i.i.i.i = load i64, ptr %20, align 8 ; 3 uses
  %i.en = icmp eq i64 %.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i
  br i1 %i.en, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.eo = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #29 ; 3 uses
  %i.ep = load i16, ptr %i.eo, align 8
  %i.eq = and i16 %i.ep, 511
  %i.er = icmp eq i16 %i.eq, 4
  br i1 %i.er, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1728
  %i.eu = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %i.et) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0522 = phi ptr [ %i.eu, %bb.t ], [ %i.eo, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  %i.ev = getelementptr inbounds nuw i8, ptr %.0522, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ev, align 8, !tbaa !1249
  store i64 %.sroa.0.0.copyload.i.i, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.0.0.copyload.i234 = load i32, ptr %i.ex, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %i.ew, i32 %.sroa.0.0.copyload.i234, i32 noundef 6397) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store i32 %.sroa.072.0.extract.trunc, ptr %i.h, align 4, !tbaa !554
  %i.ey = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %24, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  store i32 %.sroa.17.0.extract.trunc, ptr %i.i, align 4, !tbaa !554
  %i.ez = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ey, ptr noundef nonnull align 4 dereferenceable(4) %i.i) ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 120
  %i.fb = load i8, ptr %i.fa, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fe = load ptr, ptr %19, align 8, !tbaa !1323
  %i.ff = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.fd, ptr %i.fe, i64 %i.ff)
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit

bb.w:                                             ; preds = %bb.u
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 128
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 132
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !1419, !range !86, !noundef !87
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.x, label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit

bb.x:                                             ; preds = %bb.w
  %i.fk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.ez) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1428 ; 3 uses
  %.not.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1264
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = call noundef ptr %i.fp(ptr noundef nonnull align 8 dereferenceable(168) %i.fm) #28, !inline_history !11
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i: ; preds = %bb.y, %bb.x
  %i.fr = phi ptr [ %i.fq, %bb.y ], [ null, %bb.x ]
  store ptr %i.fr, ptr %18, align 8, !tbaa !1430
  %i.fs = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.fk, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.fs, 0
  %i.ft = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.fu = load i32, ptr %i.fg, align 8, !tbaa !554
  %i.fv = zext i32 %i.fu to i64
  %i.fw = load ptr, ptr %i.ft, align 8, !tbaa !1433
  %i.fx = getelementptr inbounds nuw [32 x i8], ptr %i.fw, i64 %i.fv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %19, align 8, !tbaa !1323
  %i.ga = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.fy, ptr %i.fz, i64 %i.ga)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit

_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit: ; preds = %bb.v, %bb.w, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i
  %i.gb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ez, ptr noundef nonnull align 4 dereferenceable(8) %22)
  %i.gc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.gb, ptr noundef nonnull align 8 dereferenceable(8) %21)
  %i.gd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_15DeclarationNameEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.gc, ptr noundef nonnull align 8 dereferenceable(8) %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  %i.ge = add i32 %.0, 1
  store i32 %i.ge, ptr %i.j, align 4, !tbaa !554
  %i.gf = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.gd, ptr noundef nonnull align 4 dereferenceable(4) %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %24) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  %.0.copyload.i.i.i.i.i235 = load i64, ptr %i.ci, align 8
  %i.gg = and i64 %.0.copyload.i.i.i.i.i235, -8   ; 2 uses
  %i.gh = inttoptr i64 %i.gg to ptr               ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 28
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = and i32 %i.gj, 127
  %i.gl = icmp ne i32 %i.gk, 55
  %.not5.i = icmp eq i64 %i.gg, 0
  %.not.i236 = or i1 %.not5.i, %i.gl
  br i1 %.not.i236, label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %.sroa.0.0.copyload.i.i237 = load i32, ptr %i.gm, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.ew, i32 %.sroa.0.0.copyload.i.i237, i32 noundef 6417) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  %i.gn = call noundef ptr @_ZNK5clang26ConstructorUsingShadowDecl21getNominatedBaseClassEv(ptr noundef nonnull align 8 dereferenceable(104) %i.gh) #28
  store ptr %i.gn, ptr %i.g, align 8, !tbaa !1443
  %i.go = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_13CXXRecordDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit

_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit: ; preds = %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.dt

bb.aa:                                            ; preds = %bb.r
  %i.gp = and i64 %.0.copyload.i.i.i.i, -16
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !75 ; 3 uses
  %i.gt = and i64 %.0.copyload.i.i.i.i, 7
  %i.gu = or i64 %i.gs, %i.gt                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  %.sroa.066.0.copyload = load i64, ptr %21, align 8, !tbaa !75 ; 2 uses
  %i.gv = and i64 %.sroa.066.0.copyload, -16
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !75 ; 4 uses
  %i.gz = and i64 %.sroa.066.0.copyload, 7
  %i.ha = or i64 %i.gy, %i.gz                     ; 4 uses
  store i64 %i.ha, ptr %25, align 8
  %i.hb = icmp ult i64 %i.gy, 16                  ; 2 uses
  br i1 %i.hb, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hc = and i64 %i.gy, -16
  %i.hd = inttoptr i64 %i.hc to ptr
  %i.he = load ptr, ptr %i.hd, align 16, !tbaa !74 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 16
  %i.hh = and i8 %i.hg, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.hh, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_13ReferenceTypeEEENS_8CanProxyIT_EEv.exit, label %bb.ad

_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_13ReferenceTypeEEENS_8CanProxyIT_EEv.exit: ; preds = %bb.ab
  %i.hi = load i24, ptr %i.hf, align 16
  %i.hj = and i24 %i.hi, 1048576
  %.not4.i.i = icmp eq i24 %i.hj, 0
  br i1 %.not4.i.i, label %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_13ReferenceTypeEEENS_8CanProxyIT_EEv.exit, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %i.he, %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_13ReferenceTypeEEENS_8CanProxyIT_EEv.exit ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i2.i = load i64, ptr %i.hk, align 8
  %i.hl = and i64 %.0.copyload.i.i.i.i.i.i2.i, -16
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = load ptr, ptr %i.hm, align 16, !tbaa !74 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load i8, ptr %i.ho, align 16
  %i.hq = and i8 %i.hp, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.hq, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.hr = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.hn) #28
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.ac, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.hr, %bb.ac ], [ %i.hn, %.lr.ph.i.i ] ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.ht = load i24, ptr %i.hs, align 16
  %i.hu = and i24 %i.ht, 1048576
  %.not.i.i242 = icmp eq i24 %i.hu, 0
  br i1 %.not.i.i242, label %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread.sink.split, label %.lr.ph.i.i, !llvm.loop !9

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.hv = icmp ult i64 %i.gs, 16
  br i1 %i.hv, label %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hw = and i64 %i.gs, -16
  %i.hx = inttoptr i64 %i.hw to ptr
  %i.hy = load ptr, ptr %i.hx, align 16, !tbaa !74 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load i8, ptr %i.hz, align 16
  %i.ib = icmp ne i8 %i.ia, 40
  %brmerge = or i1 %i.hb, %i.ib
  br i1 %brmerge, label %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ic = and i64 %i.gy, -16
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = load ptr, ptr %i.id, align 16, !tbaa !74 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load i8, ptr %i.if, align 16
  %i.ih = icmp eq i8 %i.ig, 40
  br i1 %i.ih, label %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit254, label %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread

_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit254: ; preds = %bb.af
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %.sroa.0.0.copyload.i.i259 = load i64, ptr %i.ii, align 16, !tbaa !75
  br label %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread.sink.split

_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread.sink.split: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_13ReferenceTypeEEENS_8CanProxyIT_EEv.exit, %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit254
  %.sink632 = phi ptr [ %i.ie, %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit254 ], [ %i.he, %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_13ReferenceTypeEEENS_8CanProxyIT_EEv.exit ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %.sroa.0483.2.ph = phi i64 [ %.sroa.0.0.copyload.i.i259, %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit254 ], [ %i.gu, %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_13ReferenceTypeEEENS_8CanProxyIT_EEv.exit ], [ %i.gu, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.sink632, i64 32
  %.sroa.0.0.copyload.i.i262 = load i64, ptr %i.ij, align 16, !tbaa !75 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i262, ptr %25, align 8, !tbaa !75
  br label %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread

_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread: ; preds = %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread.sink.split, %bb.ae, %bb.af, %bb.ad
  %.0.copyload.i.i.i.i.i.i263 = phi i64 [ %i.ha, %bb.ae ], [ %i.ha, %bb.ad ], [ %i.ha, %bb.af ], [ %.sroa.0.0.copyload.i.i262, %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread.sink.split ]
  %.sroa.0483.2 = phi i64 [ %i.gu, %bb.ae ], [ %i.gu, %bb.ad ], [ %i.gu, %bb.af ], [ %.sroa.0483.2.ph, %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread.sink.split ] ; 5 uses
  %i.ik = and i64 %.0.copyload.i.i.i.i.i.i263, -16
  %i.il = inttoptr i64 %i.ik to ptr
  %i.im = load ptr, ptr %i.il, align 16, !tbaa !74
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = and i64 %.sroa.0483.2, -16
  %i.ip = inttoptr i64 %i.io to ptr               ; 4 uses
  %i.iq = load ptr, ptr %i.ip, align 16, !tbaa !74
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = xor i64 %i.ir, %i.in
  %i.it = icmp ult i64 %i.is, 8
  br i1 %i.it, label %bb.ag, label %bb.bo

bb.ag:                                            ; preds = %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread
  %i.iu = load ptr, ptr %i.ek, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.iv = call noundef zeroext i1 @_ZNK5clang8QualType22isAtLeastAsQualifiedAsES0_RKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 %.sroa.0483.2, ptr noundef nonnull align 8 dereferenceable(23904) %i.iu)
  br i1 %i.iv, label %bb.bo, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iw = and i64 %.sroa.0483.2, 8
  %.not.i.i266 = icmp eq i64 %i.iw, 0
  br i1 %.not.i.i266, label %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ix, align 8, !tbaa !1249
  br label %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit

_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit: ; preds = %bb.ah, %bb.ai
  %.sroa.0.0.i.i267 = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.iy = and i64 %.sroa.0483.2, 7
  %i.iz = or i64 %.sroa.0.0.i.i267, %i.iy
  %.0.copyload.i.i.i.i.i.i268 = load i64, ptr %25, align 8 ; 3 uses
  %i.ja = and i64 %.0.copyload.i.i.i.i.i.i268, 8
  %.not.i.i269 = icmp eq i64 %i.ja, 0
  br i1 %.not.i.i269, label %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit272, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit
  %i.jb = and i64 %.0.copyload.i.i.i.i.i.i268, -16
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %.sroa.0.0.copyload.i.i.i270 = load i64, ptr %i.jd, align 8, !tbaa !1249
  br label %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit272

_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit272: ; preds = %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit, %bb.aj
  %.sroa.0.0.i.i271 = phi i64 [ %.sroa.0.0.copyload.i.i.i270, %bb.aj ], [ 0, %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit ] ; 2 uses
  %i.je = and i64 %.0.copyload.i.i.i.i.i.i268, 7
  %i.jf = or i64 %.sroa.0.0.i.i271, %i.je
  %i.jg = trunc i64 %i.iz to i32                  ; 4 uses
  %i.jh = lshr i32 %i.jg, 9                       ; 3 uses
  %i.ji = trunc i64 %i.jf to i32                  ; 4 uses
  %i.jj = lshr i32 %i.ji, 9                       ; 3 uses
  %.not = icmp eq i32 %i.jh, %i.jj
  br i1 %.not, label %bb.ax, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit272
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  br i1 %.0198, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %.sroa.0.0.copyload.i273 = load i32, ptr %i.jl, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %i.jk, i32 %.sroa.0.0.copyload.i273, i32 noundef 6387) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  store i32 %.sroa.072.0.extract.trunc, ptr %i.k, align 4, !tbaa !554
  %i.jm = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %26, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  store i32 %.sroa.17.0.extract.trunc, ptr %i.l, align 4, !tbaa !554
  %i.jn = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.jm, ptr noundef nonnull align 4 dereferenceable(4) %i.l) ; 7 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 120
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.jq = trunc nuw i8 %i.jp to i1
end_hunk_16
begin_hunk_17_@_ZL21DiagnoseBadConversionRN5clang4SemaEPNS_17OverloadCandidateEjb:bb.a
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 128
  %i.la = getelementptr inbounds nuw i8, ptr %i.ks, i64 132
  %i.lb = load i8, ptr %i.la, align 4, !tbaa !1419, !range !86, !noundef !87
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %bb.at, label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit282

bb.at:                                            ; preds = %bb.as
  %i.ld = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.ks) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.le = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !1428 ; 3 uses
  %.not.i.i279 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i279, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i280, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !1264
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = call noundef ptr %i.li(ptr noundef nonnull align 8 dereferenceable(168) %i.lf) #28, !inline_history !11
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i280

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i280: ; preds = %bb.au, %bb.at
  %i.lk = phi ptr [ %i.lj, %bb.au ], [ null, %bb.at ]
  store ptr %i.lk, ptr %15, align 8, !tbaa !1430
  %i.ll = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ld, ptr noundef nonnull align 8 dereferenceable(8) %15)
  %.fca.0.extract.i.i281 = extractvalue { ptr, i8 } %i.ll, 0
  %i.lm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i281, i64 8
  %i.ln = load i32, ptr %i.kz, align 8, !tbaa !554
  %i.lo = zext i32 %i.ln to i64
  %i.lp = load ptr, ptr %i.lm, align 8, !tbaa !1433
  %i.lq = getelementptr inbounds nuw [32 x i8], ptr %i.lp, i64 %i.lo
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %19, align 8, !tbaa !1323
  %i.lt = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.lr, ptr %i.ls, i64 %i.lt)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit282

_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit282: ; preds = %bb.ar, %bb.as, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i280
  %i.lu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ks, ptr noundef nonnull align 4 dereferenceable(8) %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #28
  store i32 %i.jh, ptr %i.q, align 4, !tbaa !1823
  %i.lv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_6LangASEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.lu, ptr noundef nonnull align 4 dereferenceable(4) %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #28
  store i32 %i.jj, ptr %i.r, align 4, !tbaa !1823
  %i.lw = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_6LangASEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.lv, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #28
  %.0.copyload.i.i.i.i.i283 = load i64, ptr %21, align 8
  %i.lx = and i64 %.0.copyload.i.i.i.i.i283, -16
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = load ptr, ptr %i.ly, align 16, !tbaa !74
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ma, align 8, !tbaa !75
  %i.mb = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.mc = inttoptr i64 %i.mb to ptr
  %i.md = load ptr, ptr %i.mc, align 16, !tbaa !74
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = load i8, ptr %i.me, align 16
  %i.mg = and i8 %i.mf, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.mg, 42
  %i.mh = zext i1 %spec.select.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.mh, ptr %i.s, align 1, !tbaa !1250
  %i.mi = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.lw, ptr noundef nonnull align 1 dereferenceable(1) %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #28
  %i.mj = add i32 %.0, 1
  store i32 %i.mj, ptr %i.t, align 4, !tbaa !554
  %i.mk = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.mi, ptr noundef nonnull align 4 dereferenceable(4) %i.t) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.av

bb.av:                                            ; preds = %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit282, %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit277
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  %.0.copyload.i.i.i.i.i284 = load i64, ptr %i.ci, align 8
  %i.ml = and i64 %.0.copyload.i.i.i.i.i284, -8   ; 2 uses
  %i.mm = inttoptr i64 %i.ml to ptr               ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 28
  %i.mo = load i32, ptr %i.mn, align 4
  %i.mp = and i32 %i.mo, 127
  %i.mq = icmp ne i32 %i.mp, 55
  %.not5.i285 = icmp eq i64 %i.ml, 0
  %.not.i286 = or i1 %.not5.i285, %i.mq
  br i1 %.not.i286, label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %.sroa.0.0.copyload.i.i287 = load i32, ptr %i.ms, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.mr, i32 %.sroa.0.0.copyload.i.i287, i32 noundef 6417) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.mt = call noundef ptr @_ZNK5clang26ConstructorUsingShadowDecl21getNominatedBaseClassEv(ptr noundef nonnull align 8 dereferenceable(104) %i.mm) #28
  store ptr %i.mt, ptr %i.f, align 8, !tbaa !1443
  %i.mu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_13CXXRecordDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288

bb.ax:                                            ; preds = %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit272
  %i.mv = lshr i32 %i.jg, 6
  %i.mw = and i32 %i.mv, 7                        ; 2 uses
  %i.mx = lshr i32 %i.ji, 6
  %i.my = and i32 %i.mx, 7                        ; 2 uses
  %.not214 = icmp eq i32 %i.mw, %i.my
  br i1 %.not214, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.0.0.copyload.i289 = load i32, ptr %i.na, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.mz, i32 %.sroa.0.0.copyload.i289, i32 noundef 6398) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #28
  store i32 %.sroa.072.0.extract.trunc, ptr %i.u, align 4, !tbaa !554
  %i.nb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %28, ptr noundef nonnull align 4 dereferenceable(4) %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #28
  store i32 %.sroa.17.0.extract.trunc, ptr %i.v, align 4, !tbaa !554
  %i.nc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.nb, ptr noundef nonnull align 4 dereferenceable(4) %i.v) ; 7 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 120
  %i.ne = load i8, ptr %i.nd, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.nh = load ptr, ptr %19, align 8, !tbaa !1323
  %i.ni = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.ng, ptr %i.nh, i64 %i.ni)
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit293

bb.ba:                                            ; preds = %bb.ay
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nc, i64 128
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 132
  %i.nl = load i8, ptr %i.nk, align 4, !tbaa !1419, !range !86, !noundef !87
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.bb, label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit293

bb.bb:                                            ; preds = %bb.ba
  %i.nn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.nc) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.no = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !1428 ; 3 uses
  %.not.i.i290 = icmp eq ptr %i.np, null
  br i1 %.not.i.i290, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i291, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !1264
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = call noundef ptr %i.ns(ptr noundef nonnull align 8 dereferenceable(168) %i.np) #28, !inline_history !11
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i291

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i291: ; preds = %bb.bc, %bb.bb
  %i.nu = phi ptr [ %i.nt, %bb.bc ], [ null, %bb.bb ]
  store ptr %i.nu, ptr %13, align 8, !tbaa !1430
  %i.nv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.nn, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %.fca.0.extract.i.i292 = extractvalue { ptr, i8 } %i.nv, 0
  %i.nw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i292, i64 8
  %i.nx = load i32, ptr %i.nj, align 8, !tbaa !554
  %i.ny = zext i32 %i.nx to i64
  %i.nz = load ptr, ptr %i.nw, align 8, !tbaa !1433
  %i.oa = getelementptr inbounds nuw [32 x i8], ptr %i.nz, i64 %i.ny
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = load ptr, ptr %19, align 8, !tbaa !1323
  %i.od = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.ob, ptr %i.oc, i64 %i.od)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit293

_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit293: ; preds = %bb.az, %bb.ba, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i291
  %i.oe = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.nc, ptr noundef nonnull align 4 dereferenceable(8) %22)
  %i.of = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.oe, ptr noundef nonnull align 8 dereferenceable(8) %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #28
  store i32 %i.mw, ptr %i.w, align 4, !tbaa !1825
  %i.og = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_10Qualifiers12ObjCLifetimeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.of, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #28
  store i32 %i.my, ptr %i.x, align 4, !tbaa !1825
  %i.oh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_10Qualifiers12ObjCLifetimeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.og, ptr noundef nonnull align 4 dereferenceable(4) %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #28
  %i.oi = zext i1 %.0198 to i32
  store i32 %i.oi, ptr %i.y, align 4, !tbaa !554
  %i.oj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.oh, ptr noundef nonnull align 4 dereferenceable(4) %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #28
  %i.ok = add i32 %.0, 1
  store i32 %i.ok, ptr %i.z, align 4, !tbaa !554
  %i.ol = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.oj, ptr noundef nonnull align 4 dereferenceable(4) %i.z) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %28) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  %.0.copyload.i.i.i.i.i294 = load i64, ptr %i.ci, align 8
  %i.om = and i64 %.0.copyload.i.i.i.i.i294, -8   ; 2 uses
  %i.on = inttoptr i64 %i.om to ptr               ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 28
  %i.op = load i32, ptr %i.oo, align 4
  %i.oq = and i32 %i.op, 127
  %i.or = icmp ne i32 %i.oq, 55
  %.not5.i295 = icmp eq i64 %i.om, 0
  %.not.i296 = or i1 %.not5.i295, %i.or
  br i1 %.not.i296, label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288, label %bb.bd

bb.bd:                                            ; preds = %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit293
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %.sroa.0.0.copyload.i.i297 = load i32, ptr %i.os, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.mz, i32 %.sroa.0.0.copyload.i.i297, i32 noundef 6417) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.ot = call noundef ptr @_ZNK5clang26ConstructorUsingShadowDecl21getNominatedBaseClassEv(ptr noundef nonnull align 8 dereferenceable(104) %i.on) #28
  store ptr %i.ot, ptr %i.e, align 8, !tbaa !1443
  %i.ou = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_13CXXRecordDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288

bb.be:                                            ; preds = %bb.ax
  %i.ov = lshr i32 %i.jg, 4
  %i.ow = and i32 %i.ov, 3                        ; 2 uses
  %i.ox = lshr i32 %i.ji, 4
  %i.oy = and i32 %i.ox, 3                        ; 2 uses
  %.not215 = icmp eq i32 %i.ow, %i.oy
  br i1 %.not215, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.0.0.copyload.i299 = load i32, ptr %i.pa, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %29, ptr noundef nonnull align 8 dereferenceable(8) %i.oz, i32 %.sroa.0.0.copyload.i299, i32 noundef 6395) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #28
  store i32 %.sroa.072.0.extract.trunc, ptr %i.aa, align 4, !tbaa !554
  %i.pb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %29, ptr noundef nonnull align 4 dereferenceable(4) %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #28
  store i32 %.sroa.17.0.extract.trunc, ptr %i.ab, align 4, !tbaa !554
  %i.pc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.pb, ptr noundef nonnull align 4 dereferenceable(4) %i.ab)
  %i.pd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.pc, ptr noundef nonnull align 8 dereferenceable(32) %19)
  %i.pe = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.pd, ptr noundef nonnull align 4 dereferenceable(8) %22)
  %i.pf = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.pe, ptr noundef nonnull align 8 dereferenceable(8) %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #28
  store i32 %i.ow, ptr %i.ac, align 4, !tbaa !1827
  %i.pg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_10Qualifiers2GCEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.pf, ptr noundef nonnull align 4 dereferenceable(4) %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #28
  store i32 %i.oy, ptr %i.ad, align 4, !tbaa !1827
  %i.ph = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_10Qualifiers2GCEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.pg, ptr noundef nonnull align 4 dereferenceable(4) %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #28
  %i.pi = zext i1 %.0198 to i32
  store i32 %i.pi, ptr %i.ae, align 4, !tbaa !554
  %i.pj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ph, ptr noundef nonnull align 4 dereferenceable(4) %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #28
  %i.pk = add i32 %.0, 1
  store i32 %i.pk, ptr %i.af, align 4, !tbaa !554
  %i.pl = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.pj, ptr noundef nonnull align 4 dereferenceable(4) %i.af) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %29) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  %.0.copyload.i.i.i.i.i300 = load i64, ptr %i.ci, align 8
  %i.pm = and i64 %.0.copyload.i.i.i.i.i300, -8
  %i.pn = inttoptr i64 %i.pm to ptr
  call fastcc void @_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.pn)
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288

bb.bg:                                            ; preds = %bb.be
  %i.po = lshr i64 %.sroa.0.0.i.i267, 32          ; 2 uses
  %i.pp = trunc nuw i64 %i.po to i32              ; 3 uses
  %i.pq = lshr i64 %.sroa.0.0.i.i271, 32          ; 2 uses
  %i.pr = trunc nuw i64 %i.pq to i32              ; 3 uses
  %i.ps = and i32 %i.pp, 65472
  %i.pt = icmp eq i32 %i.ps, 65472
  %spec.select.i.i301 = select i1 %i.pt, i32 0, i32 %i.pp
  %i.pu = and i32 %i.pr, 65472
  %i.pv = icmp eq i32 %i.pu, 65472
  %spec.select.i2.i = select i1 %i.pv, i32 0, i32 %i.pr
  %i.pw = icmp eq i32 %spec.select.i.i301, %spec.select.i2.i
  br i1 %i.pw, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.0.0.copyload.i302 = load i32, ptr %i.py, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %i.px, i32 %.sroa.0.0.copyload.i302, i32 noundef 6399) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #28
  store i32 %.sroa.072.0.extract.trunc, ptr %i.ag, align 4, !tbaa !554
  %i.pz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %30, ptr noundef nonnull align 4 dereferenceable(4) %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #28
  store i32 %.sroa.17.0.extract.trunc, ptr %i.ah, align 4, !tbaa !554
  %i.qa = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.pz, ptr noundef nonnull align 4 dereferenceable(4) %i.ah)
  %i.qb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.qa, ptr noundef nonnull align 8 dereferenceable(32) %19)
  %i.qc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.qb, ptr noundef nonnull align 8 dereferenceable(8) %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #28
  %i.qd = icmp ne i64 %i.po, 0
  %i.qe = zext i1 %i.qd to i8
  store i8 %i.qe, ptr %i.ai, align 1, !tbaa !1250
  %i.qf = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.qc, ptr noundef nonnull align 1 dereferenceable(1) %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  store i32 %i.pp, ptr %32, align 4
  call void @_ZNK5clang20PointerAuthQualifier11getAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 4 dereferenceable(4) %32) #28
  %i.qg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #28
  %i.qh = icmp ne i64 %i.pq, 0
  %i.qi = zext i1 %i.qh to i8
  store i8 %i.qi, ptr %i.aj, align 1, !tbaa !1250
  %i.qj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.qg, ptr noundef nonnull align 1 dereferenceable(1) %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  store i32 %i.pr, ptr %34, align 4
  call void @_ZNK5clang20PointerAuthQualifier11getAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 4 dereferenceable(4) %34) #28
  %i.qk = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.qj, ptr noundef nonnull align 8 dereferenceable(32) %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #28
  %i.ql = add i32 %.0, 1
  store i32 %i.ql, ptr %i.ak, align 4, !tbaa !554
  %i.qm = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.qk, ptr noundef nonnull align 4 dereferenceable(4) %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  %.not216 = icmp eq ptr %i.cr, null
  br i1 %.not216, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qn = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr) #29
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %storemerge = phi i64 [ %i.qn, %bb.bi ], [ 0, %bb.bh ]
  store i64 %storemerge, ptr %35, align 8
  %i.qo = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.qm, ptr noundef nonnull align 4 dereferenceable(8) %35) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #28
  %i.qp = load ptr, ptr %33, align 8, !tbaa !1323 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bj
  %i.qs = load i64, ptr %i.qq, align 8, !tbaa !75
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #28
  %i.qu = load ptr, ptr %31, align 8, !tbaa !1323 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !75
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %30) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  %.0.copyload.i.i.i.i.i306 = load i64, ptr %i.ci, align 8
  %i.qz = and i64 %.0.copyload.i.i.i.i.i306, -8
  %i.ra = inttoptr i64 %i.qz to ptr
  call fastcc void @_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.ra)
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288

bb.bk:                                            ; preds = %bb.bg
  %i.rb = and i32 %i.jg, 7
  %i.rc = xor i32 %i.ji, -1
  %i.rd = and i32 %i.rb, %i.rc                    ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  br i1 %.0198, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  %.sroa.0.0.copyload.i307 = load i32, ptr %i.rf, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %36, ptr noundef nonnull align 8 dereferenceable(8) %i.re, i32 %.sroa.0.0.copyload.i307, i32 noundef 6393) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #28
  store i32 %.sroa.072.0.extract.trunc, ptr %i.al, align 4, !tbaa !554
  %i.rg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %36, ptr noundef nonnull align 4 dereferenceable(4) %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #28
  store i32 %.sroa.17.0.extract.trunc, ptr %i.am, align 4, !tbaa !554
  %i.rh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.rg, ptr noundef nonnull align 4 dereferenceable(4) %i.am)
  %i.ri = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.rh, ptr noundef nonnull align 8 dereferenceable(32) %19)
  %i.rj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ri, ptr noundef nonnull align 8 dereferenceable(8) %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #28
  %i.rk = add nsw i32 %i.rd, -1
  store i32 %i.rk, ptr %i.an, align 4, !tbaa !554
  %i.rl = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.rj, ptr noundef nonnull align 4 dereferenceable(4) %i.an) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %36) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  %.sroa.0.0.copyload.i308 = load i32, ptr %i.rf, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %37, ptr noundef nonnull align 8 dereferenceable(8) %i.re, i32 %.sroa.0.0.copyload.i308, i32 noundef 6392) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #28
  store i32 %.sroa.072.0.extract.trunc, ptr %i.ao, align 4, !tbaa !554
  %i.rm = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %37, ptr noundef nonnull align 4 dereferenceable(4) %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #28
  store i32 %.sroa.17.0.extract.trunc, ptr %i.ap, align 4, !tbaa !554
  %i.rn = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.rm, ptr noundef nonnull align 4 dereferenceable(4) %i.ap)
  %i.ro = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.rn, ptr noundef nonnull align 8 dereferenceable(32) %19)
  %i.rp = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ro, ptr noundef nonnull align 4 dereferenceable(8) %22)
  %i.rq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.rp, ptr noundef nonnull align 8 dereferenceable(8) %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #28
  %i.rr = add nsw i32 %i.rd, -1
  store i32 %i.rr, ptr %i.aq, align 4, !tbaa !554
  %i.rs = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.rq, ptr noundef nonnull align 4 dereferenceable(4) %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #28
  %i.rt = add i32 %.0, 1
  store i32 %i.rt, ptr %i.ar, align 4, !tbaa !554
  %i.ru = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.rs, ptr noundef nonnull align 4 dereferenceable(4) %i.ar) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  %.0.copyload.i.i.i.i.i309 = load i64, ptr %i.ci, align 8
  %i.rv = and i64 %.0.copyload.i.i.i.i.i309, -8
  %i.rw = inttoptr i64 %i.rv to ptr
  call fastcc void @_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.rw)
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288

bb.bo:                                            ; preds = %bb.ag, %_ZNK5clang12CanProxyBaseINS_4TypeEE5getAsINS_11PointerTypeEEENS_8CanProxyIT_EEv.exit.thread
  %i.rx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 3 uses
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !75
  %.off = add i32 %i.ry, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.0.0.copyload.i310 = load i32, ptr %i.sa, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %38, ptr noundef nonnull align 8 dereferenceable(8) %i.rz, i32 %.sroa.0.0.copyload.i310, i32 noundef 6401) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #28
  store i32 %.sroa.072.0.extract.trunc, ptr %i.as, align 4, !tbaa !554
  %i.sb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %38, ptr noundef nonnull align 4 dereferenceable(4) %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #28
  store i32 %.sroa.17.0.extract.trunc, ptr %i.at, align 4, !tbaa !554
  %i.sc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.sb, ptr noundef nonnull align 4 dereferenceable(4) %i.at) ; 7 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 120
  %i.se = load i8, ptr %i.sd, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.sf = trunc nuw i8 %i.se to i1
  br i1 %i.sf, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 32
  %i.sh = load ptr, ptr %19, align 8, !tbaa !1323
  %i.si = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.sg, ptr %i.sh, i64 %i.si)
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit314

bb.br:                                            ; preds = %bb.bp
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sc, i64 128
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sc, i64 132
  %i.sl = load i8, ptr %i.sk, align 4, !tbaa !1419, !range !86, !noundef !87
  %i.sm = trunc nuw i8 %i.sl to i1
  br i1 %i.sm, label %bb.bs, label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit314

bb.bs:                                            ; preds = %bb.br
  %i.sn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.sc) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.so = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !1428 ; 3 uses
  %.not.i.i311 = icmp eq ptr %i.sp, null
  br i1 %.not.i.i311, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i312, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !1264
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 32
  %i.ss = load ptr, ptr %i.sr, align 8
  %i.st = call noundef ptr %i.ss(ptr noundef nonnull align 8 dereferenceable(168) %i.sp) #28, !inline_history !11
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i312

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i312: ; preds = %bb.bt, %bb.bs
  %i.su = phi ptr [ %i.st, %bb.bt ], [ null, %bb.bs ]
  store ptr %i.su, ptr %11, align 8, !tbaa !1430
  %i.sv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.sn, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %.fca.0.extract.i.i313 = extractvalue { ptr, i8 } %i.sv, 0
  %i.sw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i313, i64 8
  %i.sx = load i32, ptr %i.sj, align 8, !tbaa !554
  %i.sy = zext i32 %i.sx to i64
  %i.sz = load ptr, ptr %i.sw, align 8, !tbaa !1433
  %i.ta = getelementptr inbounds nuw [32 x i8], ptr %i.sz, i64 %i.sy
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load ptr, ptr %19, align 8, !tbaa !1323
  %i.td = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.tb, ptr %i.tc, i64 %i.td)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit314

_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit314: ; preds = %bb.bq, %bb.br, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #28
  %i.te = zext i1 %.0198 to i32
  store i32 %i.te, ptr %i.au, align 4, !tbaa !554
  %i.tf = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.sc, ptr noundef nonnull align 4 dereferenceable(4) %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #28
  %i.tg = add i32 %.0, 1
  store i32 %i.tg, ptr %i.av, align 4, !tbaa !554
  %i.th = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.tf, ptr noundef nonnull align 4 dereferenceable(4) %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #28
  %i.ti = load i32, ptr %i.rx, align 8, !tbaa !75
  %i.tj = icmp eq i32 %i.ti, 4
  %i.tk = zext i1 %i.tj to i8
  store i8 %i.tk, ptr %i.aw, align 1, !tbaa !1250
  %i.tl = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.th, ptr noundef nonnull align 1 dereferenceable(1) %i.aw)
  %i.tm = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.tl, ptr noundef nonnull align 4 dereferenceable(8) %22) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %38) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  %.0.copyload.i.i.i.i.i315 = load i64, ptr %i.ci, align 8
  %i.tn = and i64 %.0.copyload.i.i.i.i.i315, -8   ; 2 uses
  %i.to = inttoptr i64 %i.tn to ptr               ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 28
  %i.tq = load i32, ptr %i.tp, align 4
  %i.tr = and i32 %i.tq, 127
  %i.ts = icmp ne i32 %i.tr, 55
  %.not5.i316 = icmp eq i64 %i.tn, 0
  %.not.i317 = or i1 %.not5.i316, %i.ts
  br i1 %.not.i317, label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288, label %bb.bu

bb.bu:                                            ; preds = %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit314
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.tt = getelementptr inbounds nuw i8, ptr %i.to, i64 24
  %.sroa.0.0.copyload.i.i318 = load i32, ptr %i.tt, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.rz, i32 %.sroa.0.0.copyload.i.i318, i32 noundef 6417) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.tu = call noundef ptr @_ZNK5clang26ConstructorUsingShadowDecl21getNominatedBaseClassEv(ptr noundef nonnull align 8 dereferenceable(104) %i.to) #28
  store ptr %i.tu, ptr %i.d, align 8, !tbaa !1443
  %i.tv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_13CXXRecordDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288

bb.bv:                                            ; preds = %bb.bo
  %.not217 = icmp eq ptr %i.cr, null
  br i1 %.not217, label %bb.cd, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.tw = load i16, ptr %i.cr, align 8
  %i.tx = and i16 %i.tw, 511
  %i.ty = icmp eq i16 %i.tx, 55
  br i1 %i.ty, label %bb.bx, label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.0.0.copyload.i320 = load i32, ptr %i.ua, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %39, ptr noundef nonnull align 8 dereferenceable(8) %i.tz, i32 %.sroa.0.0.copyload.i320, i32 noundef 6396) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #28
  store i32 %.sroa.072.0.extract.trunc, ptr %i.ax, align 4, !tbaa !554
  %i.ub = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %39, ptr noundef nonnull align 4 dereferenceable(4) %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #28
  store i32 %.sroa.17.0.extract.trunc, ptr %i.ay, align 4, !tbaa !554
  %i.uc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ub, ptr noundef nonnull align 4 dereferenceable(4) %i.ay) ; 7 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 120
  %i.ue = load i8, ptr %i.ud, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.uf = trunc nuw i8 %i.ue to i1
  br i1 %i.uf, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uc, i64 32
  %i.uh = load ptr, ptr %19, align 8, !tbaa !1323
  %i.ui = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.ug, ptr %i.uh, i64 %i.ui)
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit324

bb.bz:                                            ; preds = %bb.bx
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uc, i64 128
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uc, i64 132
  %i.ul = load i8, ptr %i.uk, align 4, !tbaa !1419, !range !86, !noundef !87
  %i.um = trunc nuw i8 %i.ul to i1
  br i1 %i.um, label %bb.ca, label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit324

bb.ca:                                            ; preds = %bb.bz
  %i.un = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.uc) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !1428 ; 3 uses
  %.not.i.i321 = icmp eq ptr %i.up, null
  br i1 %.not.i.i321, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i322, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !1264
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 32
  %i.us = load ptr, ptr %i.ur, align 8
  %i.ut = call noundef ptr %i.us(ptr noundef nonnull align 8 dereferenceable(168) %i.up) #28, !inline_history !11
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i322

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i322: ; preds = %bb.cb, %bb.ca
  %i.uu = phi ptr [ %i.ut, %bb.cb ], [ null, %bb.ca ]
  store ptr %i.uu, ptr %9, align 8, !tbaa !1430
  %i.uv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.un, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %.fca.0.extract.i.i323 = extractvalue { ptr, i8 } %i.uv, 0
  %i.uw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i323, i64 8
  %i.ux = load i32, ptr %i.uj, align 8, !tbaa !554
  %i.uy = zext i32 %i.ux to i64
  %i.uz = load ptr, ptr %i.uw, align 8, !tbaa !1433
  %i.va = getelementptr inbounds nuw [32 x i8], ptr %i.uz, i64 %i.uy
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vc = load ptr, ptr %19, align 8, !tbaa !1323
  %i.vd = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.vb, ptr %i.vc, i64 %i.vd)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit324

_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit324: ; preds = %bb.by, %bb.bz, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i322
  %i.ve = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.uc, ptr noundef nonnull align 4 dereferenceable(8) %22)
  %i.vf = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ve, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %i.vg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.vf, ptr noundef nonnull align 8 dereferenceable(8) %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #28
  %i.vh = zext i1 %.0198 to i32
  store i32 %i.vh, ptr %i.az, align 4, !tbaa !554
  %i.vi = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.vg, ptr noundef nonnull align 4 dereferenceable(4) %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #28
  %i.vj = add i32 %.0, 1
  store i32 %i.vj, ptr %i.ba, align 4, !tbaa !554
  %i.vk = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.vi, ptr noundef nonnull align 4 dereferenceable(4) %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #28
  %i.vl = load i32, ptr %i.rx, align 8, !tbaa !75 ; 2 uses
  %i.vm = icmp eq i32 %i.vl, 5
  %i.vn = icmp eq i32 %i.vl, 6
  %i.vo = select i1 %i.vn, i32 2, i32 0
  %i.vp = select i1 %i.vm, i32 1, i32 %i.vo
  store i32 %i.vp, ptr %i.bb, align 4, !tbaa !554
  %i.vq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.vk, ptr noundef nonnull align 4 dereferenceable(4) %i.bb) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %39) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  %.0.copyload.i.i.i.i.i325 = load i64, ptr %i.ci, align 8
  %i.vr = and i64 %.0.copyload.i.i.i.i.i325, -8   ; 2 uses
  %i.vs = inttoptr i64 %i.vr to ptr               ; 3 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 28
  %i.vu = load i32, ptr %i.vt, align 4
  %i.vv = and i32 %i.vu, 127
  %i.vw = icmp ne i32 %i.vv, 55
  %.not5.i326 = icmp eq i64 %i.vr, 0
  %.not.i327 = or i1 %.not5.i326, %i.vw
  br i1 %.not.i327, label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288, label %bb.cc

bb.cc:                                            ; preds = %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit324
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vs, i64 24
  %.sroa.0.0.copyload.i.i328 = load i32, ptr %i.vx, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.tz, i32 %.sroa.0.0.copyload.i.i328, i32 noundef 6417) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.vy = call noundef ptr @_ZNK5clang26ConstructorUsingShadowDecl21getNominatedBaseClassEv(ptr noundef nonnull align 8 dereferenceable(104) %i.vs) #28
  store ptr %i.vy, ptr %i.c, align 8, !tbaa !1443
  %i.vz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_13CXXRecordDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288

bb.cd:                                            ; preds = %bb.bw, %bb.bv
  %.0.copyload.i.i.i.i.i.i330 = load i64, ptr %20, align 8
  %i.wa = and i64 %.0.copyload.i.i.i.i.i.i330, -16
  %i.wb = inttoptr i64 %i.wa to ptr
  %i.wc = load ptr, ptr %i.wb, align 16, !tbaa !74 ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  %i.we = load i8, ptr %i.wd, align 16
  %i.wf = and i8 %i.we, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.wf, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.wg, align 8, !tbaa !75
  %i.wh = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.wi = inttoptr i64 %i.wh to ptr
  %i.wj = load ptr, ptr %i.wi, align 16, !tbaa !74
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %i.wl = load i8, ptr %i.wk, align 16
  %i.wm = and i8 %i.wl, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.wm, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.ce
  %i.wn = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.wc) #28 ; 2 uses
  %.not.i331 = icmp eq ptr %i.wn, null
  br i1 %.not.i331, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.cd
  %.1.i8.i = phi ptr [ %i.wn, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.wc, %bb.cd ] ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.wp = load i24, ptr %i.wo, align 16
  %i.wq = and i24 %i.wp, 1048576
  %.not4.i.i332 = icmp eq i24 %i.wq, 0
  br i1 %.not4.i.i332, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i333

.lr.ph.i.i333:                                    ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i337
  %.05.i.i334 = phi ptr [ %.1.i.i.i338, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i337 ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.wr = getelementptr inbounds nuw i8, ptr %.05.i.i334, i64 32
  %.0.copyload.i.i.i.i.i.i.i335 = load i64, ptr %i.wr, align 8
  %i.ws = and i64 %.0.copyload.i.i.i.i.i.i.i335, -16
  %i.wt = inttoptr i64 %i.ws to ptr
  %i.wu = load ptr, ptr %i.wt, align 16, !tbaa !74 ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 16
  %i.ww = load i8, ptr %i.wv, align 16
  %i.wx = and i8 %i.ww, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i336 = icmp eq i8 %i.wx, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i336, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i337, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i333
  %i.wy = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.wu) #28
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i337

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i337: ; preds = %bb.cf, %.lr.ph.i.i333
  %.1.i.i.i338 = phi ptr [ %i.wy, %bb.cf ], [ %i.wu, %.lr.ph.i.i333 ] ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.1.i.i.i338, i64 16
  %i.xa = load i24, ptr %i.wz, align 16
  %i.xb = and i24 %i.xa, 1048576
  %.not.i.i339 = icmp eq i24 %i.xb, 0
  br i1 %.not.i.i339, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i333, !llvm.loop !9

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i337, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i340 = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i338, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i337 ]
  %i.xc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i340, i64 32
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.ce, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.sroa.0.0.in.i = phi ptr [ %i.xc, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %20, %bb.ce ], [ %20, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !tbaa !75
  %i.xd = and i64 %.sroa.0.0.i, -16
  %i.xe = inttoptr i64 %i.xd to ptr               ; 3 uses
  %i.xf = load ptr, ptr %i.xe, align 16, !tbaa !74 ; 4 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xh = load i8, ptr %i.xg, align 16
  %.not.i342 = icmp eq i8 %i.xh, 40
  br i1 %.not.i342, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread530, label %bb.cg

bb.cg:                                            ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %.sroa.0.0.copyload.i.i.i.i343 = load i64, ptr %i.xi, align 8, !tbaa !75
  %i.xj = and i64 %.sroa.0.0.copyload.i.i.i.i343, -16
  %i.xk = inttoptr i64 %i.xj to ptr
  %i.xl = load ptr, ptr %i.xk, align 16, !tbaa !74
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %i.xn = load i8, ptr %i.xm, align 16
  %i.xo = icmp eq i8 %i.xn, 40
  br i1 %i.xo, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit: ; preds = %bb.cg
  %i.xp = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.xf) #28 ; 2 uses
  %.not218 = icmp eq ptr %i.xp, null
  br i1 %.not218, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread530

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread530: ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit
  %.1.i533 = phi ptr [ %i.xp, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit ], [ %i.xf, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit ]
  %i.xq = getelementptr inbounds nuw i8, ptr %.1.i533, i64 32
  %.sroa.0.0.copyload.i344 = load i64, ptr %i.xq, align 16, !tbaa !75
  %.pre = and i64 %.sroa.0.0.copyload.i344, -16
  %.pre578 = inttoptr i64 %.pre to ptr
  br label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread: ; preds = %bb.cg, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread530, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit
  %.pre-phi579 = phi ptr [ %i.xe, %bb.cg ], [ %.pre578, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread530 ], [ %i.xe, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit ]
  %i.xr = load ptr, ptr %.pre-phi579, align 8, !tbaa !74
  %i.xs = call noundef zeroext i1 @_ZNK5clang4Type16isIncompleteTypeEPPNS_9NamedDeclE(ptr noundef nonnull align 16 dereferenceable(24) %i.xr, ptr noundef null) #28
  br i1 %i.xs, label %bb.ch, label %bb.cn

bb.ch:                                            ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.0.0.copyload.i346 = load i32, ptr %i.xu, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %40, ptr noundef nonnull align 8 dereferenceable(8) %i.xt, i32 %.sroa.0.0.copyload.i346, i32 noundef 6391) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #28
  store i32 %.sroa.072.0.extract.trunc, ptr %i.bc, align 4, !tbaa !554
  %i.xv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %40, ptr noundef nonnull align 4 dereferenceable(4) %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #28
  store i32 %.sroa.17.0.extract.trunc, ptr %i.bd, align 4, !tbaa !554
  %i.xw = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.xv, ptr noundef nonnull align 4 dereferenceable(4) %i.bd) ; 7 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 120
  %i.xy = load i8, ptr %i.xx, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.xz = trunc nuw i8 %i.xy to i1
  br i1 %i.xz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xw, i64 32
  %i.yb = load ptr, ptr %19, align 8, !tbaa !1323
  %i.yc = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.ya, ptr %i.yb, i64 %i.yc)
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit350

bb.cj:                                            ; preds = %bb.ch
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xw, i64 128
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xw, i64 132
  %i.yf = load i8, ptr %i.ye, align 4, !tbaa !1419, !range !86, !noundef !87
  %i.yg = trunc nuw i8 %i.yf to i1
  br i1 %i.yg, label %bb.ck, label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit350

bb.ck:                                            ; preds = %bb.cj
  %i.yh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.xw) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xw, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !1428 ; 3 uses
  %.not.i.i347 = icmp eq ptr %i.yj, null
  br i1 %.not.i.i347, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i348, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !1264
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 32
  %i.ym = load ptr, ptr %i.yl, align 8
  %i.yn = call noundef ptr %i.ym(ptr noundef nonnull align 8 dereferenceable(168) %i.yj) #28, !inline_history !11
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i348

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i348: ; preds = %bb.cl, %bb.ck
  %i.yo = phi ptr [ %i.yn, %bb.cl ], [ null, %bb.ck ]
  store ptr %i.yo, ptr %7, align 8, !tbaa !1430
  %i.yp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.yh, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %.fca.0.extract.i.i349 = extractvalue { ptr, i8 } %i.yp, 0
  %i.yq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i349, i64 8
  %i.yr = load i32, ptr %i.yd, align 8, !tbaa !554
  %i.ys = zext i32 %i.yr to i64
  %i.yt = load ptr, ptr %i.yq, align 8, !tbaa !1433
  %i.yu = getelementptr inbounds nuw [32 x i8], ptr %i.yt, i64 %i.ys
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.yw = load ptr, ptr %19, align 8, !tbaa !1323
  %i.yx = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.yv, ptr %i.yw, i64 %i.yx)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit350

_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit350: ; preds = %bb.ci, %bb.cj, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i348
  %i.yy = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.xw, ptr noundef nonnull align 4 dereferenceable(8) %22)
  %i.yz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.yy, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %i.za = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.yz, ptr noundef nonnull align 8 dereferenceable(8) %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #28
  %i.zb = zext i1 %.0198 to i32
  store i32 %i.zb, ptr %i.be, align 4, !tbaa !554
  %i.zc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.za, ptr noundef nonnull align 4 dereferenceable(4) %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #28
  %i.zd = add i32 %.0, 1
  store i32 %i.zd, ptr %i.bf, align 4, !tbaa !554
  %i.ze = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.zc, ptr noundef nonnull align 4 dereferenceable(4) %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg) #28
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !2673
  store i32 %i.zg, ptr %i.bg, align 4, !tbaa !554
  %i.zh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ze, ptr noundef nonnull align 4 dereferenceable(4) %i.bg) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %40) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  %.0.copyload.i.i.i.i.i351 = load i64, ptr %i.ci, align 8
  %i.zi = and i64 %.0.copyload.i.i.i.i.i351, -8   ; 2 uses
  %i.zj = inttoptr i64 %i.zi to ptr               ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 28
  %i.zl = load i32, ptr %i.zk, align 4
  %i.zm = and i32 %i.zl, 127
  %i.zn = icmp ne i32 %i.zm, 55
  %.not5.i352 = icmp eq i64 %i.zi, 0
  %.not.i353 = or i1 %.not5.i352, %i.zn
  br i1 %.not.i353, label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288, label %bb.cm

bb.cm:                                            ; preds = %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit350
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zj, i64 24
  %.sroa.0.0.copyload.i.i354 = load i32, ptr %i.zo, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.xt, i32 %.sroa.0.0.copyload.i.i354, i32 noundef 6417) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.zp = call noundef ptr @_ZNK5clang26ConstructorUsingShadowDecl21getNominatedBaseClassEv(ptr noundef nonnull align 8 dereferenceable(104) %i.zj) #28
  store ptr %i.zp, ptr %i.b, align 8, !tbaa !1443
  %i.zq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_13CXXRecordDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288

bb.cn:                                            ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread
  %.0.copyload.i.i.i.i.i356 = load i64, ptr %20, align 8
  %i.zr = and i64 %.0.copyload.i.i.i.i.i356, -16
  %i.zs = inttoptr i64 %i.zr to ptr               ; 2 uses
  %i.zt = load ptr, ptr %i.zs, align 16, !tbaa !74 ; 4 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  %i.zv = load i8, ptr %i.zu, align 16
  %.not.i357 = icmp eq i8 %i.zv, 40
  br i1 %.not.i357, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread536, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %.sroa.0.0.copyload.i.i.i.i358 = load i64, ptr %i.zw, align 8, !tbaa !75
  %i.zx = and i64 %.sroa.0.0.copyload.i.i.i.i358, -16
  %i.zy = inttoptr i64 %i.zx to ptr
  %i.zz = load ptr, ptr %i.zy, align 16, !tbaa !74
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  %i.aab = load i8, ptr %i.aaa, align 16
  %i.aac = icmp eq i8 %i.aab, 40
  br i1 %i.aac, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360: ; preds = %bb.co
  %i.aad = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.zt) #28 ; 2 uses
  %.not219 = icmp eq ptr %i.aad, null
  br i1 %.not219, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread_crit_edge, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread536

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread_crit_edge: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360
  %.0.copyload.i.i.i.i.i374.pre = load i64, ptr %20, align 8
  %.pre580 = and i64 %.0.copyload.i.i.i.i.i374.pre, -16
  %.pre582 = inttoptr i64 %.pre580 to ptr
  br label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread536: ; preds = %bb.cn, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360
  %.1.i359539 = phi ptr [ %i.aad, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360 ], [ %i.zt, %bb.cn ]
  %.0.copyload.i.i.i.i.i361 = load i64, ptr %21, align 8
  %i.aae = and i64 %.0.copyload.i.i.i.i.i361, -16
  %i.aaf = inttoptr i64 %i.aae to ptr
  %i.aag = load ptr, ptr %i.aaf, align 16, !tbaa !74 ; 4 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %i.aai = load i8, ptr %i.aah, align 16
  %.not.i362 = icmp eq i8 %i.aai, 40
  br i1 %.not.i362, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread542, label %bb.cp

bb.cp:                                            ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread536
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %.sroa.0.0.copyload.i.i.i.i363 = load i64, ptr %i.aaj, align 8, !tbaa !75
  %i.aak = and i64 %.sroa.0.0.copyload.i.i.i.i363, -16
  %i.aal = inttoptr i64 %i.aak to ptr
  %i.aam = load ptr, ptr %i.aal, align 16, !tbaa !74
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %i.aao = load i8, ptr %i.aan, align 16
  %i.aap = icmp eq i8 %i.aao, 40
  br i1 %i.aap, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365: ; preds = %bb.cp
  %i.aaq = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.aag) #28 ; 2 uses
  %.not225 = icmp eq ptr %i.aaq, null
  br i1 %.not225, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread542

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread542: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread536, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365
  %.1.i364545 = phi ptr [ %i.aaq, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365 ], [ %i.aag, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread536 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  %i.aar = getelementptr inbounds nuw i8, ptr %.1.i364545, i64 32 ; 3 uses
  %.sroa.0.0.copyload.i366 = load i64, ptr %i.aar, align 16, !tbaa !75
  store i64 %.sroa.0.0.copyload.i366, ptr %41, align 8
  %i.aas = getelementptr inbounds nuw i8, ptr %.1.i359539, i64 32 ; 3 uses
  %.sroa.0.0.copyload.i367 = load i64, ptr %i.aas, align 16, !tbaa !75
  %i.aat = load ptr, ptr %i.ek, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.aau = call noundef zeroext i1 @_ZNK5clang8QualType22isAtLeastAsQualifiedAsES0_RKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 %.sroa.0.0.copyload.i367, ptr noundef nonnull align 8 dereferenceable(23904) %i.aat)
  br i1 %i.aau, label %bb.cq, label %.critedge

bb.cq:                                            ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread542
  %.sroa.0.0.copyload.i368 = load i64, ptr %i.aas, align 16, !tbaa !75
  %i.aav = and i64 %.sroa.0.0.copyload.i368, -16
  %i.aaw = inttoptr i64 %i.aav to ptr
  %i.aax = load ptr, ptr %i.aaw, align 16, !tbaa !74
  %i.aay = call noundef zeroext i1 @_ZNK5clang4Type16isIncompleteTypeEPPNS_9NamedDeclE(ptr noundef nonnull align 16 dereferenceable(24) %i.aax, ptr noundef null) #28
  br i1 %i.aay, label %.critedge, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.sroa.0.0.copyload.i370 = load i64, ptr %i.aar, align 16, !tbaa !75
  %i.aaz = and i64 %.sroa.0.0.copyload.i370, -16
  %i.aba = inttoptr i64 %i.aaz to ptr
  %i.abb = load ptr, ptr %i.aba, align 16, !tbaa !74
  %i.abc = call noundef zeroext i1 @_ZNK5clang4Type16isIncompleteTypeEPPNS_9NamedDeclE(ptr noundef nonnull align 16 dereferenceable(24) %i.abb, ptr noundef null) #28
  br i1 %i.abc, label %.critedge, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.sroa.0.0.copyload.i372 = load i64, ptr %i.aar, align 16, !tbaa !75
  %.sroa.0.0.copyload.i373 = load i64, ptr %i.aas, align 16, !tbaa !75
  %i.abd = call noundef zeroext i1 @_ZN5clang4Sema13IsDerivedFromENS_14SourceLocationENS_8QualTypeES2_(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 0, i64 %.sroa.0.0.copyload.i372, i64 %.sroa.0.0.copyload.i373) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br i1 %i.abd, label %select.unfold552, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread

.critedge:                                        ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread542, %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread_crit_edge, %bb.co
  %.pre-phi583 = phi ptr [ %.pre582, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread_crit_edge ], [ %i.zs, %bb.co ]
  %i.abe = load ptr, ptr %.pre-phi583, align 8, !tbaa !74 ; 4 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  %i.abg = load i8, ptr %i.abf, align 16
  %.not.i375 = icmp eq i8 %i.abg, 31
  br i1 %.not.i375, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread548, label %bb.ct

bb.ct:                                            ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %.sroa.0.0.copyload.i.i.i.i376 = load i64, ptr %i.abh, align 8, !tbaa !75
  %i.abi = and i64 %.sroa.0.0.copyload.i.i.i.i376, -16
  %i.abj = inttoptr i64 %i.abi to ptr
  %i.abk = load ptr, ptr %i.abj, align 16, !tbaa !74
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  %i.abm = load i8, ptr %i.abl, align 16
  %i.abn = icmp eq i8 %i.abm, 31
  br i1 %i.abn, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit: ; preds = %bb.ct
  %i.abo = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.abe) #28 ; 2 uses
  %.not220 = icmp eq ptr %i.abo, null
  br i1 %.not220, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread548

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread548: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit
  %.1.i377551 = phi ptr [ %i.abo, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit ], [ %i.abe, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit360.thread ] ; 2 uses
  %.0.copyload.i.i.i.i.i378 = load i64, ptr %21, align 8
  %i.abp = and i64 %.0.copyload.i.i.i.i.i378, -16
  %i.abq = inttoptr i64 %i.abp to ptr
  %i.abr = load ptr, ptr %i.abq, align 16, !tbaa !74
  %i.abs = call noundef ptr @_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.abr) ; 3 uses
  %.not222 = icmp eq ptr %i.abs, null
  br i1 %.not222, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread, label %bb.cu

bb.cu:                                            ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread548
  %i.abt = call noundef ptr @_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv(ptr noundef nonnull align 16 dereferenceable(40) %.1.i377551) ; 2 uses
  %.not223 = icmp eq ptr %i.abt, null
  br i1 %.not223, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.abu = call noundef ptr @_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv(ptr noundef nonnull align 16 dereferenceable(40) %i.abs) ; 2 uses
  %.not224 = icmp eq ptr %i.abu, null
  br i1 %.not224, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abs, i64 32
  %.sroa.0.0.copyload.i379 = load i64, ptr %i.abv, align 16, !tbaa !75
  store i64 %.sroa.0.0.copyload.i379, ptr %42, align 8
  %i.abw = getelementptr inbounds nuw i8, ptr %.1.i377551, i64 32
  %.sroa.0.0.copyload.i380 = load i64, ptr %i.abw, align 16, !tbaa !75
  %i.abx = load ptr, ptr %i.ek, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.aby = call noundef zeroext i1 @_ZNK5clang8QualType22isAtLeastAsQualifiedAsES0_RKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 %.sroa.0.0.copyload.i380, ptr noundef nonnull align 8 dereferenceable(23904) %i.abx)
  br i1 %i.aby, label %bb.cx, label %.critedge3

bb.cx:                                            ; preds = %bb.cw
  %i.abz = call noundef zeroext i1 @_ZNK5clang17ObjCInterfaceDecl14isSuperClassOfEPKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.abt, ptr noundef nonnull %i.abu)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  br i1 %i.abz, label %select.unfold552, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread

.critedge3:                                       ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  br label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread: ; preds = %bb.ct, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit
  %.0.copyload.i.i.i.i.i381 = load i64, ptr %21, align 8
  %i.aca = and i64 %.0.copyload.i.i.i.i.i381, -16
  %i.acb = inttoptr i64 %i.aca to ptr
  %i.acc = load ptr, ptr %i.acb, align 16, !tbaa !74
  %i.acd = call noundef ptr @_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.acc) ; 4 uses
  %.not221 = icmp eq ptr %i.acd, null
  br i1 %.not221, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread, label %bb.cy

bb.cy:                                            ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  %i.ace = call i64 @_ZNK5clang13ReferenceType14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(40) %i.acd)
  store i64 %i.ace, ptr %43, align 8
  %.sroa.016.0.copyload = load i64, ptr %20, align 8, !tbaa !75
  %i.acf = load ptr, ptr %i.ek, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.acg = call noundef zeroext i1 @_ZNK5clang8QualType22isAtLeastAsQualifiedAsES0_RKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 %.sroa.016.0.copyload, ptr noundef nonnull align 8 dereferenceable(23904) %i.acf)
  br i1 %i.acg, label %bb.cz, label %.critedge5

bb.cz:                                            ; preds = %bb.cy
  %.0.copyload.i.i.i.i.i382 = load i64, ptr %20, align 8
  %i.ach = and i64 %.0.copyload.i.i.i.i.i382, -16
  %i.aci = inttoptr i64 %i.ach to ptr
  %i.acj = load ptr, ptr %i.aci, align 16, !tbaa !74
  %i.ack = call noundef zeroext i1 @_ZNK5clang4Type16isIncompleteTypeEPPNS_9NamedDeclE(ptr noundef nonnull align 16 dereferenceable(24) %i.acj, ptr noundef null) #28
  br i1 %i.ack, label %.critedge5, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.acl = call i64 @_ZNK5clang13ReferenceType14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(40) %i.acd)
  %i.acm = and i64 %i.acl, -16
  %i.acn = inttoptr i64 %i.acm to ptr
  %i.aco = load ptr, ptr %i.acn, align 16, !tbaa !74
  %i.acp = call noundef zeroext i1 @_ZNK5clang4Type16isIncompleteTypeEPPNS_9NamedDeclE(ptr noundef nonnull align 16 dereferenceable(24) %i.aco, ptr noundef null) #28
  br i1 %i.acp, label %.critedge5, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.acq = call i64 @_ZNK5clang13ReferenceType14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(40) %i.acd)
  %.sroa.014.0.copyload = load i64, ptr %20, align 8, !tbaa !75
  %i.acr = call noundef zeroext i1 @_ZN5clang4Sema13IsDerivedFromENS_14SourceLocationENS_8QualTypeES2_(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 0, i64 %i.acq, i64 %.sroa.014.0.copyload) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  br i1 %i.acr, label %select.unfold552, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread

.critedge5:                                       ; preds = %bb.cy, %bb.cz, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  br label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread

select.unfold552:                                 ; preds = %bb.cx, %bb.db, %bb.cs
  %.6 = phi i32 [ 2, %bb.db ], [ 0, %bb.cs ], [ 1, %bb.cx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.0.0.copyload.i384 = load i32, ptr %i.act, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %44, ptr noundef nonnull align 8 dereferenceable(8) %i.acs, i32 %.sroa.0.0.copyload.i384, i32 noundef 6389) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh) #28
  store i32 %.sroa.072.0.extract.trunc, ptr %i.bh, align 4, !tbaa !554
  %i.acu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %44, ptr noundef nonnull align 4 dereferenceable(4) %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi) #28
  store i32 %.sroa.17.0.extract.trunc, ptr %i.bi, align 4, !tbaa !554
  %i.acv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.acu, ptr noundef nonnull align 4 dereferenceable(4) %i.bi) ; 7 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 120
  %i.acx = load i8, ptr %i.acw, align 8, !tbaa !1417, !range !86, !noundef !87
  %i.acy = trunc nuw i8 %i.acx to i1
  br i1 %i.acy, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %select.unfold552
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acv, i64 32
  %i.ada = load ptr, ptr %19, align 8, !tbaa !1323
  %i.adb = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.acz, ptr %i.ada, i64 %i.adb)
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit388

bb.dd:                                            ; preds = %select.unfold552
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acv, i64 128
  %i.add = getelementptr inbounds nuw i8, ptr %i.acv, i64 132
  %i.ade = load i8, ptr %i.add, align 4, !tbaa !1419, !range !86, !noundef !87
  %i.adf = trunc nuw i8 %i.ade to i1
  br i1 %i.adf, label %bb.de, label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit388

bb.de:                                            ; preds = %bb.dd
  %i.adg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.acv) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !1428 ; 3 uses
  %.not.i.i385 = icmp eq ptr %i.adi, null
  br i1 %.not.i.i385, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i386, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !1264
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 32
  %i.adl = load ptr, ptr %i.adk, align 8
  %i.adm = call noundef ptr %i.adl(ptr noundef nonnull align 8 dereferenceable(168) %i.adi) #28, !inline_history !11
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i386

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i386: ; preds = %bb.df, %bb.de
  %i.adn = phi ptr [ %i.adm, %bb.df ], [ null, %bb.de ]
  store ptr %i.adn, ptr %5, align 8, !tbaa !1430
  %i.ado = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.adg, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.fca.0.extract.i.i387 = extractvalue { ptr, i8 } %i.ado, 0
  %i.adp = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i387, i64 8
  %i.adq = load i32, ptr %i.adc, align 8, !tbaa !554
  %i.adr = zext i32 %i.adq to i64
  %i.ads = load ptr, ptr %i.adp, align 8, !tbaa !1433
  %i.adt = getelementptr inbounds nuw [32 x i8], ptr %i.ads, i64 %i.adr
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 8
  %i.adv = load ptr, ptr %19, align 8, !tbaa !1323
  %i.adw = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.adu, ptr %i.adv, i64 %i.adw)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit388

_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit388: ; preds = %bb.dc, %bb.dd, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i386
  %i.adx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.acv, ptr noundef nonnull align 4 dereferenceable(8) %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj) #28
  store i32 %.6, ptr %i.bj, align 4, !tbaa !554
  %i.ady = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.adx, ptr noundef nonnull align 4 dereferenceable(4) %i.bj)
  %i.adz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ady, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %i.aea = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.adz, ptr noundef nonnull align 8 dereferenceable(8) %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk) #28
  %i.aeb = add i32 %.0, 1
  store i32 %i.aeb, ptr %i.bk, align 4, !tbaa !554
  %i.aec = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.aea, ptr noundef nonnull align 4 dereferenceable(4) %i.bk) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %44) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  %.0.copyload.i.i.i.i.i389 = load i64, ptr %i.ci, align 8
  %i.aed = and i64 %.0.copyload.i.i.i.i.i389, -8  ; 2 uses
  %i.aee = inttoptr i64 %i.aed to ptr             ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 28
  %i.aeg = load i32, ptr %i.aef, align 4
  %i.aeh = and i32 %i.aeg, 127
  %i.aei = icmp ne i32 %i.aeh, 55
  %.not5.i390 = icmp eq i64 %i.aed, 0
  %.not.i391 = or i1 %.not5.i390, %i.aei
  br i1 %.not.i391, label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288, label %bb.dg

bb.dg:                                            ; preds = %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit388
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aee, i64 24
  %.sroa.0.0.copyload.i.i392 = load i32, ptr %i.aej, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.acs, i32 %.sroa.0.0.copyload.i.i392, i32 noundef 6417) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.aek = call noundef ptr @_ZNK5clang26ConstructorUsingShadowDecl21getNominatedBaseClassEv(ptr noundef nonnull align 8 dereferenceable(104) %i.aee) #28
  store ptr %i.aek, ptr %i.a, align 8, !tbaa !1443
  %i.ael = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_13CXXRecordDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread: ; preds = %bb.cp, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread, %.critedge, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365, %bb.cs, %bb.db, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread548, %bb.cu, %bb.cv, %bb.cx, %.critedge3, %.critedge5
  %i.aem = load ptr, ptr %i.ip, align 16, !tbaa !74
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 16
  %i.aeo = load i8, ptr %i.aen, align 16
  %i.aep = icmp eq i8 %i.aeo, 31
  br i1 %i.aep, label %bb.dh, label %.critedge232

bb.dh:                                            ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread
  %.sroa.0.0.copyload.i.i.i395 = load i64, ptr %25, align 8, !tbaa !75 ; 2 uses
  %i.aeq = and i64 %.sroa.0.0.copyload.i.i.i395, -16
  %i.aer = inttoptr i64 %i.aeq to ptr             ; 2 uses
  %i.aes = load ptr, ptr %i.aer, align 16, !tbaa !74
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 16
  %i.aeu = load i8, ptr %i.aet, align 16
  %i.aev = icmp eq i8 %i.aeu, 40
  br i1 %i.aev, label %bb.di, label %.critedge232

bb.di:                                            ; preds = %bb.dh
  %i.aew = and i64 %.sroa.0483.2, 8
  %.not.i.i397 = icmp eq i64 %i.aew, 0
  br i1 %.not.i.i397, label %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit400, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aex = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %.sroa.0.0.copyload.i.i.i398 = load i64, ptr %i.aex, align 8, !tbaa !1249
  %i.aey = trunc i64 %.sroa.0.0.copyload.i.i.i398 to i32
  %i.aez = lshr i32 %i.aey, 6
  %i.afa = and i32 %i.aez, 7
  br label %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit400

_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit400: ; preds = %bb.di, %bb.dj
  %.sroa.0.0.i.i399 = phi i32 [ %i.afa, %bb.dj ], [ 0, %bb.di ]
  %i.afb = and i64 %.sroa.0.0.copyload.i.i.i395, 8
  %.not.i.i402 = icmp eq i64 %i.afb, 0
  br i1 %.not.i.i402, label %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit405, label %bb.dk

bb.dk:                                            ; preds = %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit400
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aer, i64 24
  %.sroa.0.0.copyload.i.i.i403 = load i64, ptr %i.afc, align 8, !tbaa !1249
  %i.afd = trunc i64 %.sroa.0.0.copyload.i.i.i403 to i32
  %i.afe = lshr i32 %i.afd, 6
  %i.aff = and i32 %i.afe, 7
  br label %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit405

_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit405: ; preds = %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit400, %bb.dk
  %.sroa.0.0.i.i404 = phi i32 [ %i.aff, %bb.dk ], [ 0, %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit400 ]
  %.not227 = icmp eq i32 %.sroa.0.0.i.i399, %.sroa.0.0.i.i404
  br i1 %.not227, label %.critedge232, label %bb.dl

bb.dl:                                            ; preds = %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit405
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #28
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.afh = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.0.0.copyload.i406 = load i32, ptr %i.afh, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %45, ptr noundef nonnull align 8 dereferenceable(8) %i.afg, i32 %.sroa.0.0.copyload.i406, i32 noundef 6388) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl) #28
  store i32 %.sroa.072.0.extract.trunc, ptr %i.bl, align 4, !tbaa !554
  %i.afi = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %45, ptr noundef nonnull align 4 dereferenceable(4) %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm) #28
  store i32 %.sroa.17.0.extract.trunc, ptr %i.bm, align 4, !tbaa !554
  %i.afj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.afi, ptr noundef nonnull align 4 dereferenceable(4) %i.bm)
  %i.afk = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.afj, ptr noundef nonnull align 8 dereferenceable(32) %19)
  %i.afl = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.afk, ptr noundef nonnull align 4 dereferenceable(8) %22)
  %i.afm = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.afl, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %i.afn = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.afm, ptr noundef nonnull align 8 dereferenceable(8) %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn) #28
  %i.afo = zext i1 %.0198 to i32
  store i32 %i.afo, ptr %i.bn, align 4, !tbaa !554
  %i.afp = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.afn, ptr noundef nonnull align 4 dereferenceable(4) %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo) #28
  %i.afq = add i32 %.0, 1
  store i32 %i.afq, ptr %i.bo, align 4, !tbaa !554
  %i.afr = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.afp, ptr noundef nonnull align 4 dereferenceable(4) %i.bo) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %45) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  %.0.copyload.i.i.i.i.i407 = load i64, ptr %i.ci, align 8
  %i.afs = and i64 %.0.copyload.i.i.i.i.i407, -8
  %i.aft = inttoptr i64 %i.afs to ptr
  call fastcc void @_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.aft)
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288

.critedge232:                                     ; preds = %_ZNK5clang7CanQualINS_4TypeEE13getQualifiersEv.exit405, %bb.dh, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit365.thread
  br i1 %3, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.critedge232
  %i.afu = call fastcc noundef zeroext i1 @_ZL33checkAddressOfFunctionIsAvailableRN5clang4SemaEPKNS_12FunctionDeclEbbNS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.bw, i1 noundef zeroext true, i1 noundef zeroext true, i32 0)
  br i1 %i.afu, label %bb.dn, label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288

bb.dn:                                            ; preds = %bb.dm, %.critedge232
  %i.afv = load ptr, ptr %i.ek, align 8, !tbaa !1228, !nonnull !87, !align !500 ; 3 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 23104
  %.sroa.0.0.copyload.i408 = load i64, ptr %i.afw, align 8, !tbaa !75
  %.0.copyload.i.i.i.i409 = load i64, ptr %20, align 8
  %i.afx = icmp eq i64 %.0.copyload.i.i.i.i409, %.sroa.0.0.copyload.i408
  br i1 %i.afx, label %bb.do, label %.critedge7

bb.do:                                            ; preds = %bb.dn
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afv, i64 2600
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !499, !nonnull !87, !align !500
  %i.aga = load i64, ptr %i.afz, align 8
  %i.agb = and i64 %i.aga, 4096
  %.not.i411 = icmp eq i64 %i.agb, 0
  %.v.i = select i1 %.not.i411, i64 18984, i64 18904
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afv, i64 %.v.i
  %.sroa.0.0.copyload.i412 = load i64, ptr %i.agc, align 8, !tbaa !75
  %.0.copyload.i.i.i.i414 = load i64, ptr %21, align 8
  %i.agd = icmp eq i64 %.0.copyload.i.i.i.i414, %.sroa.0.0.copyload.i412
  br i1 %i.agd, label %bb.dp, label %.critedge7

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.agf = load ptr, ptr %i.cq, align 8, !tbaa !75
  %i.agg = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.agf) #29
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %46, ptr noundef nonnull align 8 dereferenceable(8) %i.age, i32 %i.agg, i32 noundef 3004) #28
  %i.agh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_4ExprEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %46, ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
  %i.agi = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.agh, ptr noundef nonnull align 8 dereferenceable(8) %21) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %46) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288

.critedge7:                                       ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  %i.agj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @_ZN5clang8SemaBase5PDiagEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::PartialDiagnostic") align 8 %47, ptr noundef nonnull align 8 dereferenceable(8) %i.agj, i32 noundef 6390) #28
  %i.agk = load ptr, ptr %47, align 8, !tbaa !559 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.agk, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit418

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %.critedge7
  %i.agl = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !560
  %i.agn = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.agm) ; 2 uses
  store ptr %i.agn, ptr %47, align 8, !tbaa !559
  br label %_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit418

_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit418: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, %.critedge7
  %i.ago = phi ptr [ %i.agn, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.agk, %.critedge7 ] ; 2 uses
  %i.agp = and i64 %i.cp, 4294967295
  %i.agq = getelementptr inbounds nuw i8, ptr %i.ago, i64 1
  %i.agr = load i8, ptr %i.ago, align 8, !tbaa !1412
  %i.ags = zext i8 %i.agr to i64
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agq, i64 %i.ags
  store i8 3, ptr %i.agt, align 1, !tbaa !75
  %i.agu = load ptr, ptr %47, align 8, !tbaa !559 ; 4 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 16
  %i.agw = load i8, ptr %i.agu, align 8, !tbaa !1412 ; 2 uses
  %i.agx = add i8 %i.agw, 1                       ; 2 uses
  store i8 %i.agx, ptr %i.agu, align 8, !tbaa !1412
  %i.agy = zext i8 %i.agw to i64
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %i.agy
  store i64 %i.agp, ptr %i.agz, align 8, !tbaa !1249
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agu, i64 1
  %i.ahb = zext i8 %i.agx to i64
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 %i.ahb
  store i8 3, ptr %i.ahc, align 1, !tbaa !75
  %i.ahd = load ptr, ptr %47, align 8, !tbaa !559 ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  %i.ahf = load i8, ptr %i.ahd, align 8, !tbaa !1412 ; 2 uses
  %i.ahg = add i8 %i.ahf, 1
  store i8 %i.ahg, ptr %i.ahd, align 8, !tbaa !1412
  %i.ahh = zext i8 %i.ahf to i64
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %i.ahe, i64 %i.ahh
  store i64 %.sroa.17.0.extract.shift, ptr %i.ahi, align 8, !tbaa !1249
  %i.ahj = load ptr, ptr %19, align 8, !tbaa !1323
  %i.ahk = load i64, ptr %i.ch, align 8, !tbaa !1447
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %47, ptr %i.ahj, i64 %i.ahk)
  %i.ahl = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK5clang17PartialDiagnosticlsINS_11SourceRangeEEERKS0_RKT_(ptr noundef nonnull align 8 dereferenceable(20) %47, ptr noundef nonnull align 4 dereferenceable(8) %22)
  %i.ahm = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEEERKS0_RKT_(ptr noundef nonnull align 8 dereferenceable(20) %i.ahl, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %i.ahn = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEEERKS0_RKT_(ptr noundef nonnull align 8 dereferenceable(20) %i.ahm, ptr noundef nonnull align 8 dereferenceable(8) %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp) #28
  %i.aho = zext i1 %.0198 to i32
  store i32 %i.aho, ptr %i.bp, align 4, !tbaa !554
  %i.ahp = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_(ptr noundef nonnull align 8 dereferenceable(20) %i.ahn, ptr noundef nonnull align 4 dereferenceable(4) %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq) #28
  %i.ahq = add i32 %.0, 1
  store i32 %i.ahq, ptr %i.bq, align 4, !tbaa !554
  %i.ahr = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_(ptr noundef nonnull align 8 dereferenceable(20) %i.ahp, ptr noundef nonnull align 4 dereferenceable(4) %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br) #28
  %i.ahs = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !2673
  store i32 %i.aht, ptr %i.br, align 4, !tbaa !554
  %i.ahu = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_(ptr noundef nonnull align 8 dereferenceable(20) %i.ahr, ptr noundef nonnull align 4 dereferenceable(4) %i.br) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp) #28
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i419 = load i32, ptr %i.ahv, align 8, !tbaa !554 ; 2 uses
  %i.ahw = icmp eq i32 %.sroa.0.0.copyload.i419, 0
  br i1 %i.ahw, label %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.thread, label %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit

_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit: ; preds = %_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit418
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !1738, !nonnull !87, !align !500
  %i.ahz = call noundef i32 @_ZNK5clang13SourceManager21getFileCharacteristicENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776) %i.ahy, i32 %.sroa.0.0.copyload.i419) #28
  switch i32 %i.ahz, label %.loopexit [
    i32 3, label %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.thread
    i32 0, label %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.thread
  ]

_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.thread: ; preds = %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit, %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit, %_ZNK5clang17PartialDiagnosticlsIjvEERKS0_OT_.exit418
  %i.aia = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !1560 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !1560 ; 2 uses
  %.not561570 = icmp eq ptr %i.aib, %i.aid
  br i1 %.not561570, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.thread
  %i.aie = getelementptr inbounds nuw i8, ptr %47, i64 8
  br label %bb.dq

bb.dq:                                            ; preds = %.lr.ph, %_ZNK5clang17PartialDiagnosticlsINS_9FixItHintEEERKS0_RKT_.exit
  %.sroa.0427.0571 = phi ptr [ %i.aib, %.lr.ph ], [ %i.aip, %_ZNK5clang17PartialDiagnosticlsINS_9FixItHintEEERKS0_RKT_.exit ] ; 4 uses
  %i.aif = load i32, ptr %.sroa.0427.0571, align 4, !tbaa !1339
  %i.aig = icmp eq i32 %i.aif, 0
  %i.aih = getelementptr inbounds nuw i8, ptr %.sroa.0427.0571, i64 4
  %i.aii = load i32, ptr %i.aih, align 4
  %i.aij = icmp eq i32 %i.aii, 0
  %.not2.i.i.i.i = select i1 %i.aig, i1 true, i1 %i.aij
  br i1 %.not2.i.i.i.i, label %_ZNK5clang17PartialDiagnosticlsINS_9FixItHintEEERKS0_RKT_.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aik = load ptr, ptr %47, align 8, !tbaa !559 ; 2 uses
  %.not.i.i.i420 = icmp eq ptr %i.aik, null
  br i1 %.not.i.i.i420, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i421, label %bb.ds

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i421: ; preds = %bb.dr
  %i.ail = load ptr, ptr %i.aie, align 8, !tbaa !560
  %i.aim = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ail) ; 2 uses
  store ptr %i.aim, ptr %47, align 8, !tbaa !559
  br label %bb.ds

bb.ds:                                            ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i421, %bb.dr
  %i.ain = phi ptr [ %i.aim, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i421 ], [ %i.aik, %bb.dr ]
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 528
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aio, ptr noundef nonnull align 8 dereferenceable(57) %.sroa.0427.0571)
  br label %_ZNK5clang17PartialDiagnosticlsINS_9FixItHintEEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsINS_9FixItHintEEERKS0_RKT_.exit: ; preds = %bb.dq, %bb.ds
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.0427.0571, i64 64 ; 2 uses
  %.not561 = icmp eq ptr %i.aip, %i.aid
  br i1 %.not561, label %.loopexit, label %bb.dq

.loopexit:                                        ; preds = %_ZNK5clang17PartialDiagnosticlsINS_9FixItHintEEERKS0_RKT_.exit, %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.thread, %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit
  %.sroa.0.0.copyload.i422 = load i32, ptr %i.ahv, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationERKNS_17PartialDiagnosticE(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %48, ptr noundef nonnull align 8 dereferenceable(8) %i.agj, i32 %.sroa.0.0.copyload.i422, ptr noundef nonnull align 8 dereferenceable(20) %47) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %48) #28
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  %.0.copyload.i.i.i.i.i423 = load i64, ptr %i.ci, align 8
  %i.aiq = and i64 %.0.copyload.i.i.i.i.i423, -8
  %i.air = inttoptr i64 %i.aiq to ptr
  call fastcc void @_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.air)
  call void @_ZN5clang19StreamingDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %47) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  br label %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288

_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288: ; preds = %bb.dm, %.loopexit, %bb.dp, %bb.dl, %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit350, %bb.cm, %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit388, %bb.dg, %bb.cc, %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit324, %bb.bu, %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit314, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %bb.bn, %bb.av, %bb.aw, %_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_.exit293, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %bb.dt

bb.dt:                                            ; preds = %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit288, %_ZN12_GLOBAL__N_133MaybeEmitInheritedConstructorNoteERN5clang4SemaEPKNS0_4DeclE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.ais = load ptr, ptr %19, align 8, !tbaa !1323 ; 2 uses
  %i.ait = icmp eq ptr %i.ais, %i.cg
  br i1 %i.ait, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424: ; preds = %bb.dt
  %i.aiu = load i64, ptr %i.cg, align 8, !tbaa !75
  %i.aiv = add i64 %i.aiu, 1
  call void @_ZdlPvm(ptr noundef %i.ais, i64 noundef %i.aiv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

end_hunk_17
begin_hunk_18_@_ZN4llvm23SmallVectorTemplateBaseIN5clang21TemplateSpecCandidateELb1EE18growAndEmplaceBackIJEEERS2_DpOT_:bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !515
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -64
  ret ptr %i.n
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang21TemplateSpecCandidateELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"struct.clang::TemplateSpecCandidate", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !2677
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !516
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 64) #28
  %i.f = load ptr, ptr %0, align 8, !tbaa !515
  %i.g = load i32, ptr %i.a, align 8, !tbaa !516
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !516
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !516
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48), i64, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL22DiagnoseTwoPhaseLookupRN5clang4SemaENS_14SourceLocationERKNS_12CXXScopeSpecERNS_12LookupResultENS_20OverloadCandidateSet16CandidateSetKindEPNS_24TemplateArgumentListInfoEN4llvm8ArrayRefIPNS_4ExprEEEPPNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(168) %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5, ptr %.0.val, i64 %.8.val, ptr nofree noundef writeonly captures(address_is_null) %6) unnamed_addr #5 {
bb.a:
  %7 = alloca %"class.clang::OverloadCandidateSet", align 8 ; 30 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %8 = alloca %"class.llvm::SmallSetVector.2116", align 8 ; 10 uses
  %9 = alloca %"class.llvm::SmallSetVector.2127", align 8 ; 10 uses
  %10 = alloca %"class.llvm::SmallSetVector.2116", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %13 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %15 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %17 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %18 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %19 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12616
  %i.f = load i32, ptr %i.e, align 8, !tbaa !516
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 13768
  %i.h = load i32, ptr %i.g, align 8, !tbaa !2680
  %i.i = icmp ugt i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %2, align 8, !tbaa !1339
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 0
  %.not2.i.i = select i1 %i.k, i1 true, i1 %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.o, align 8
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  %or.cond = select i1 %.not2.i.i, i1 %.not.i, i1 false
  br i1 %or.cond, label %bb.c, label %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1336 ; 2 uses
  %.not10 = icmp eq ptr %i.q, null
  br i1 %.not10, label %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 166 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN5clang11DeclContext9getParentEv.exit
  %.06711 = phi ptr [ %i.q, %.lr.ph ], [ %.0.i.i99, %_ZN5clang11DeclContext9getParentEv.exit ] ; 5 uses
  %i.u = tail call noundef zeroext i1 @_ZNK5clang11DeclContext20isTransparentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %.06711) #28
  br i1 %i.u, label %bb.ac, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call noundef zeroext i1 @_ZN5clang4Sema19LookupQualifiedNameERNS_12LookupResultEPNS_11DeclContextEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %3, ptr noundef nonnull %.06711, i1 noundef zeroext false) #28 ; 0 uses
  %i.w = load i32, ptr %i.r, align 8, !tbaa !516  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 163
  store i8 0, ptr %i.x, align 1, !tbaa !1251
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 164
  store i8 0, ptr %i.y, align 4, !tbaa !1253
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.z, ptr %7, align 8, !tbaa !515
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !516
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 16, ptr %i.ab, align 4, !tbaa !517
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 2704
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 2728
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !1328
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 2712
  store i32 16, ptr %i.ae, align 8, !tbaa !1327
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 2716
  store i32 0, ptr %i.af, align 4, !tbaa !1326
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 2720
  store i8 1, ptr %i.ag, align 8, !tbaa !1325
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 2856
  store ptr null, ptr %i.ah, align 8, !tbaa !1330
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 2864
  store i32 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 2872
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 2888
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 2904
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i8 0, i64 16, i1 false)
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !515
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 2896
  store i32 0, ptr %i.am, align 8, !tbaa !516
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 2900
  store i32 4, ptr %i.an, align 4, !tbaa !517
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 2936
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 2952 ; 2 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !515
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 2944
  store i32 0, ptr %i.aq, align 8, !tbaa !516
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 2948
  store i32 0, ptr %i.ar, align 4, !tbaa !517
  store i32 %1, ptr %i.ap, align 8, !tbaa !554
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 2956
  store i32 %4, ptr %i.as, align 4, !tbaa !1329
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 2960
  store i64 0, ptr %i.at, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 2968
  store i8 0, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !1250
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 2972
  store i32 0, ptr %i.au, align 4, !tbaa !1318
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 7840
  store i32 0, ptr %i.av, align 8, !tbaa !1451
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !515 ; 2 uses
  %i.ay = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.ay, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.sroa.08.012.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.ax, %bb.f ] ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %.sroa.08.012.i, align 8, !tbaa !75
  call fastcc void @_ZL26AddOverloadedCallCandidateRN5clang4SemaENS_14DeclAccessPairEPNS_24TemplateArgumentListInfoEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.01.0.copyload.i, ptr noundef %5, ptr %.0.val, i64 %.8.val, ptr noundef nonnull align 8 dereferenceable(7844) %7, i1 noundef zeroext false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 8 ; 2 uses
  %.not.i84 = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i84, label %_ZN5clang4Sema27AddOverloadedCallCandidatesERNS_12LookupResultEPNS_24TemplateArgumentListInfoEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetE.exit, label %.lr.ph.i, !llvm.loop !36

_ZN5clang4Sema27AddOverloadedCallCandidatesERNS_12LookupResultEPNS_24TemplateArgumentListInfoEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetE.exit: ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bb = call noundef i32 @_ZN5clang20OverloadCandidateSet18BestViableFunctionERNS_4SemaENS_14SourceLocationERPNS_17OverloadCandidateE(ptr noundef nonnull align 8 dereferenceable(7844) %7, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.06711, i64 8
  %i.bd = load i16, ptr %i.bc, align 8
  %i.be = and i16 %i.bd, 127
  %i.bf = add nsw i16 %i.be, -63
  %i.bg = icmp ult i16 %i.bf, -3
  %i.bh = getelementptr inbounds i8, ptr %.06711, i64 -64
  br i1 %i.bg, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZN5clang4Sema27AddOverloadedCallCandidatesERNS_12LookupResultEPNS_24TemplateArgumentListInfoEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetE.exit
  %.not77 = icmp eq ptr %6, null
  br i1 %.not77, label %bb.af, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.bh, ptr %6, align 8, !tbaa !1443
  %i.bi = icmp eq i32 %i.bb, 0
  br i1 %i.bi, label %bb.i, label %bb.af

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %3, align 8, !tbaa !1246
  store i32 0, ptr %i.r, align 8, !tbaa !516
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !1254 ; 2 uses
  %.not.i85 = icmp eq ptr %i.bj, null
  br i1 %.not.i85, label %_ZN5clang12LookupResult5clearEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.bj) #28
  br label %_ZN5clang12LookupResult5clearEv.exit

_ZN5clang12LookupResult5clearEv.exit:             ; preds = %bb.i, %bb.j
  store i8 0, ptr %i.t, align 2, !tbaa !1340
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1468 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 8) ]
  %20 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.0.copyload.i.i.i.i = load i64, ptr %20, align 8 ; 2 uses
  %i.bl = and i64 %.0.copyload.i.i.i.i, -8
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = trunc i64 %.0.copyload.i.i.i.i to i8
  %i.bo = and i8 %i.bn, 3
  call void @_ZN5clang12LookupResult7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE(ptr noundef nonnull align 8 dereferenceable(168) %3, ptr noundef %i.bm, i8 noundef zeroext %i.bo)
  call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %3) #28
  br label %bb.af

.critedge:                                        ; preds = %_ZN5clang4Sema27AddOverloadedCallCandidatesERNS_12LookupResultEPNS_24TemplateArgumentListInfoEN4llvm8ArrayRefIPNS_4ExprEEERNS_20OverloadCandidateSetE.exit
  %.not78.old = icmp eq i32 %i.bb, 0
  br i1 %.not78.old, label %bb.k, label %bb.af

bb.k:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %8, i8 0, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !515
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i32 0, ptr %i.br, align 8, !tbaa !516
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 16, ptr %i.bs, align 4, !tbaa !517
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %9, i8 0, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !515
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 0, ptr %i.bv, align 8, !tbaa !516
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i32 16, ptr %i.bw, align 4, !tbaa !517
  call void @_ZN5clang4Sema34FindAssociatedClassesAndNamespacesENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEERNS2_14SmallSetVectorIPNS_11DeclContextELj16EEERNS7_IPNS_13CXXRecordDeclELj16EEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr %.0.val, i64 %.8.val, ptr noundef nonnull align 8 dereferenceable(168) %8, ptr noundef nonnull align 8 dereferenceable(168) %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %10, i8 0, i64 24, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !515
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store i32 0, ptr %i.bz, align 8, !tbaa !516
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 16, ptr %i.ca, align 4, !tbaa !517
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 5 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cb, align 8, !tbaa !1249 ; 2 uses
  %i.cc = and i64 %.sroa.0.0.copyload.i.i, 7
  %i.cd = icmp eq i64 %i.cc, 6
  br i1 %i.cd, label %_ZL24canBeDeclaredInNamespaceRKN5clang15DeclarationNameE.exit, label %_ZL24canBeDeclaredInNamespaceRKN5clang15DeclarationNameE.exit.thread

_ZL24canBeDeclaredInNamespaceRKN5clang15DeclarationNameE.exit: ; preds = %bb.k
  %i.ce = and i64 %.sroa.0.0.copyload.i.i, -8
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !1487
  %i.ch = add i32 %i.cg, -5
  %i.ci = icmp ult i32 %i.ch, -4
  br i1 %i.ci, label %_ZL24canBeDeclaredInNamespaceRKN5clang15DeclarationNameE.exit.thread, label %.loopexit

_ZL24canBeDeclaredInNamespaceRKN5clang15DeclarationNameE.exit.thread: ; preds = %bb.k, %_ZL24canBeDeclaredInNamespaceRKN5clang15DeclarationNameE.exit
  %i.cj = call noundef ptr @_ZNK5clang4Sema15getStdNamespaceEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #28 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.bp, align 8, !tbaa !515 ; 3 uses
  %i.cm = load i32, ptr %i.br, align 8, !tbaa !516 ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %.idx = shl nuw nsw i64 %i.cn, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx ; 2 uses
  %.not7912 = icmp eq i32 %i.cm, 0
  br i1 %.not7912, label %.loopexit, label %.lr.ph14

.lr.ph14:                                         ; preds = %_ZL24canBeDeclaredInNamespaceRKN5clang15DeclarationNameE.exit.thread
  %i.cp = icmp eq ptr %i.cj, null
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  br i1 %i.cp, label %.lr.ph14.split.us, label %.lr.ph14.split

.lr.ph14.split.us:                                ; preds = %.lr.ph14, %bb.m
  %.07313.us = phi ptr [ %i.dc, %bb.m ], [ %i.cl, %.lr.ph14 ] ; 3 uses
  %i.cr = load ptr, ptr %.07313.us, align 8, !tbaa !1771 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i16, ptr %i.cs, align 8
  %i.cu = and i16 %i.ct, 127
  %.not6.us = icmp eq i16 %i.cu, 78
  br i1 %.not6.us, label %bb.l, label %.critedge83.thread.us

bb.l:                                             ; preds = %.lr.ph14.split.us
  %i.cv = getelementptr inbounds i8, ptr %i.cr, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @_ZNK5clang9NamedDecl24getQualifiedNameAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %i.cv) #28
  %i.cw = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.68, i64 noundef 0, i64 noundef 2) #28
  %.not7.us = icmp eq i64 %i.cw, -1
  %i.cx = load ptr, ptr %11, align 8, !tbaa !1323 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cq
  br i1 %i.cy, label %.critedge83.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us: ; preds = %bb.l
  %i.cz = load i64, ptr %i.cq, align 8, !tbaa !75
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #30
  br label %.critedge83.us

.critedge83.us:                                   ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br i1 %.not7.us, label %.critedge83.thread.us, label %bb.m

.critedge83.thread.us:                            ; preds = %.critedge83.us, %.lr.ph14.split.us
  %i.db = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang11DeclContextENS_11SmallVectorIS3_Lj16EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj16EE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(168) %10, ptr noundef nonnull align 8 dereferenceable(8) %.07313.us) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.critedge83.thread.us, %.critedge83.us
  %i.dc = getelementptr inbounds nuw i8, ptr %.07313.us, i64 8 ; 2 uses
  %.not79.us = icmp eq ptr %i.dc, %i.co
  br i1 %.not79.us, label %.loopexit, label %.lr.ph14.split.us, !llvm.loop !2678

.lr.ph14.split:                                   ; preds = %.lr.ph14, %bb.p
  %.07313 = phi ptr [ %i.dq, %bb.p ], [ %i.cl, %.lr.ph14 ] ; 4 uses
  %i.dd = load ptr, ptr %.07313, align 8, !tbaa !1771
  %i.de = call noundef zeroext i1 @_ZNK5clang11DeclContext8EnclosesEPKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef %i.dd) #28
  br i1 %i.de, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph14.split
  %i.df = load ptr, ptr %.07313, align 8, !tbaa !1771 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i16, ptr %i.dg, align 8
  %i.di = and i16 %i.dh, 127
  %.not6 = icmp eq i16 %i.di, 78
  br i1 %.not6, label %bb.o, label %.critedge83.thread

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds i8, ptr %i.df, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @_ZNK5clang9NamedDecl24getQualifiedNameAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %i.dj) #28
  %i.dk = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.68, i64 noundef 0, i64 noundef 2) #28
  %.not7 = icmp eq i64 %i.dk, -1
  %i.dl = load ptr, ptr %11, align 8, !tbaa !1323 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cq
  br i1 %i.dm, label %.critedge83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.dn = load i64, ptr %i.cq, align 8, !tbaa !75
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #30
  br label %.critedge83

.critedge83:                                      ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br i1 %.not7, label %.critedge83.thread, label %bb.p

.critedge83.thread:                               ; preds = %bb.n, %.critedge83
  %i.dp = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang11DeclContextENS_11SmallVectorIS3_Lj16EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj16EE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(168) %10, ptr noundef nonnull align 8 dereferenceable(8) %.07313) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %.critedge83.thread, %.critedge83, %.lr.ph14.split
  %i.dq = getelementptr inbounds nuw i8, ptr %.07313, i64 8 ; 2 uses
  %.not79 = icmp eq ptr %i.dq, %i.co
  br i1 %.not79, label %.loopexit, label %.lr.ph14.split, !llvm.loop !2678

.loopexit:                                        ; preds = %bb.p, %bb.m, %_ZL24canBeDeclaredInNamespaceRKN5clang15DeclarationNameE.exit.thread, %_ZL24canBeDeclaredInNamespaceRKN5clang15DeclarationNameE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 128
  %.sroa.0.0.copyload.i.i88 = load i32, ptr %i.ds, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.dr, i32 %.sroa.0.0.copyload.i.i88, i32 noundef 4417) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %.sroa.0.0.copyload.i.i89 = load i64, ptr %i.cb, align 8, !tbaa !1249
  store i64 %.sroa.0.0.copyload.i.i89, ptr %13, align 8
  %i.dt = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.du = load i32, ptr %i.bz, align 8, !tbaa !516
  switch i32 %i.du, label %bb.s [
    i32 0, label %bb.q
    i32 1, label %bb.r
  ]

bb.q:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !1468
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1477
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.dx, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.dr, i32 %.sroa.0.0.copyload.i, i32 noundef 6313) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %.sroa.0.0.copyload.i.i90 = load i64, ptr %i.cb, align 8, !tbaa !1249
  store i64 %.sroa.0.0.copyload.i.i90, ptr %15, align 8
  %i.dy = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_15DeclarationNameEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef nonnull align 8 dereferenceable(8) %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !554
  %i.dz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.dy, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.t

bb.r:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !1468
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1477
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %.sroa.0.0.copyload.i91 = load i32, ptr %i.ec, align 8, !tbaa !554
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.dr, i32 %.sroa.0.0.copyload.i91, i32 noundef 6313) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
end_hunk_18

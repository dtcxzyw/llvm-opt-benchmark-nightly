Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaStmt?download=true
inline.NumInlined: 9372
inline.NumDeleted: 4766
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5clang4Sema21ActOnFinishSwitchStmtENS_14SourceLocationEPNS_4StmtES3_:_ZNK5clang4Sema14getCurFunctionEv.exit281
  %25 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %26 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %27 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %28 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %29 = alloca %"class.clang::QualType", align 8  ; 9 uses
  %30 = alloca %"class.llvm::SmallVector.1389", align 8 ; 25 uses
  %31 = alloca %"class.std::vector.1394", align 8 ; 20 uses
  %32 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %33 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %34 = alloca %"class.llvm::APSInt", align 8     ; 13 uses
  %35 = alloca %"struct.std::pair.1400", align 8  ; 10 uses
  %36 = alloca %"struct.std::pair.1400", align 8  ; 13 uses
  %37 = alloca %"class.llvm::APSInt", align 8     ; 19 uses
  %38 = alloca %"struct.clang::Expr::EvalResult", align 8 ; 12 uses
  %39 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %40 = alloca %"class.llvm::SmallString", align 8 ; 13 uses
  %41 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 10 uses
  %42 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 12 uses
  %43 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %44 = alloca %"class.std::vector.1415", align 8 ; 12 uses
  %45 = alloca %"class.llvm::APSInt", align 8     ; 17 uses
  %46 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %47 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %48 = alloca %"class.llvm::APSInt", align 8     ; 13 uses
  %49 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 10 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %51 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %52 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 11 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %54 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %55 = alloca %"class.llvm::SmallVector.1426", align 8 ; 16 uses
  %56 = alloca %"class.llvm::APSInt", align 8     ; 11 uses
  %57 = alloca %"struct.std::pair.1432", align 8  ; 13 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %58 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %59 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %60 = alloca %"class.llvm::APSInt", align 8     ; 11 uses
  %61 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %62 = alloca %"class.llvm::SmallVector.1434", align 8 ; 10 uses
  %63 = alloca %"class.llvm::APSInt", align 8     ; 11 uses
  %64 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %65 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 9 uses
  %66 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %67 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !759  ; 2 uses
  %.not.i.i = icmp ne i32 %i.g, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !758
  %i.j = zext i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !835  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !758
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !759  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %.0.copyload.i.i.i = load i64, ptr %i.t, align 8
  %i.u = and i64 %.0.copyload.i.i.i, 4
  %i.v = icmp ne i64 %i.u, 0
  %i.w = add i32 %i.q, -1
  store i32 %i.w, ptr %i.p, align 8, !tbaa !759
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.ic, label %bb.a

bb.a:                                             ; preds = %_ZNK5clang4Sema14getCurFunctionEv.exit281
  %i.x = load i16, ptr %3, align 8
  %i.y = and i16 %i.x, 511
  %i.z = icmp eq i16 %i.y, 146
  br i1 %i.z, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 %i.ab, i32 noundef 2939) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 3, ptr %i.c, align 4, !tbaa !747
  %i.ac = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %28, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !742, !nonnull !743, !align !744
  %i.af = call noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(23904) %i.ae, i32 noundef 8) #27 ; 6 uses
  %i.ag = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.ah = load i16, ptr %i.af, align 8
  %i.ai = and i16 %i.ah, -512
  %i.aj = or disjoint i16 %i.ai, 245              ; 2 uses
  store i16 %i.aj, ptr %i.af, align 8
  %i.ak = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !745, !range !746, !noundef !743
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.c, label %_ZN5clang8NullStmtC2ENS_14SourceLocationEb.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 245) #27
  %.pre.i = load i16, ptr %i.af, align 8
  br label %_ZN5clang8NullStmtC2ENS_14SourceLocationEb.exit

_ZN5clang8NullStmtC2ENS_14SourceLocationEb.exit:  ; preds = %bb.b, %bb.c
  %i.am = phi i16 [ %i.aj, %bb.b ], [ %.pre.i, %bb.c ]
  %i.an = and i16 %i.am, -513
  store i16 %i.an, ptr %i.af, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %i.ag, ptr %i.ao, align 4, !tbaa !747
  br label %bb.d

bb.d:                                             ; preds = %_ZN5clang8NullStmtC2ENS_14SourceLocationEb.exit, %bb.a
  %.0550 = phi ptr [ %i.af, %_ZN5clang8NullStmtC2ENS_14SourceLocationEb.exit ], [ %3, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = load i16, ptr %2, align 8               ; 2 uses
  %i.ar = lshr i16 %i.aq, 9
  %.lobit.i.i.i = and i16 %i.ar, 1
  %i.as = lshr i16 %i.aq, 10
  %.lobit1.i.i.i = and i16 %i.as, 1
  %narrow.i.i.i = add nuw nsw i16 %.lobit.i.i.i, %.lobit1.i.i.i
  %i.at = zext nneg i16 %narrow.i.i.i to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.0550, ptr %i.av, align 8, !tbaa !822
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !822 ; 12 uses
  %.not251 = icmp eq ptr %i.aw, null
  br i1 %.not251, label %bb.ic, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ax, align 8, !tbaa !750 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  %i.ay = load i16, ptr %i.aw, align 8            ; 2 uses
  %i.az = and i16 %i.ay, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i16 %i.az, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !809 ; 2 uses
  %.pre.i283 = load i16, ptr %i.bb, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0551 = phi ptr [ %i.bb, %bb.f ], [ %i.aw, %bb.e ] ; 2 uses
  %i.bc = phi i16 [ %.pre.i283, %bb.f ], [ %i.ay, %bb.e ]
  %i.bd = and i16 %i.bc, 511
  %.not18.i = icmp eq i16 %i.bd, 81
  br i1 %.not18.i, label %.lr.ph.i, label %_ZL30GetTypeBeforeIntegralPromotionRPKN5clang4ExprE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.1552 = phi ptr [ %i.bh, %bb.h ], [ %.0551, %bb.g ] ; 3 uses
  %i.be = load i32, ptr %.1552, align 8
  %i.bf = and i32 %i.be, 66584576
  %.not13.i = icmp eq i32 %i.bf, 14155776
  br i1 %.not13.i, label %bb.h, label %_ZL30GetTypeBeforeIntegralPromotionRPKN5clang4ExprE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.1552, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !818 ; 3 uses
  %i.bi = load i16, ptr %i.bh, align 8
  %i.bj = and i16 %i.bi, 511
  %.not.i = icmp eq i16 %i.bj, 81
  br i1 %.not.i, label %.lr.ph.i, label %_ZL30GetTypeBeforeIntegralPromotionRPKN5clang4ExprE.exit

_ZL30GetTypeBeforeIntegralPromotionRPKN5clang4ExprE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %.2553 = phi ptr [ %.0551, %bb.g ], [ %.1552, %.lr.ph.i ], [ %i.bh, %bb.h ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.2553, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bk, align 8, !tbaa !750
  store i64 %.sroa.0.0.copyload.i.i, ptr %29, align 8
  %i.bl = load i24, ptr %i.aw, align 8
  %i.bm = and i24 %i.bl, 196608
  %or.cond605 = icmp ne i24 %i.bm, 0              ; 3 uses
  br i1 %or.cond605, label %.thread562, label %bb.i

.thread562:                                       ; preds = %_ZL30GetTypeBeforeIntegralPromotionRPKN5clang4ExprE.exit
  %i.bn = and i64 %.sroa.0.0.copyload.i, -16
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !821
  %i.bq = call noundef zeroext i1 @_ZNK5clang4Type32isSignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bp) #27
  br label %bb.j

bb.i:                                             ; preds = %_ZL30GetTypeBeforeIntegralPromotionRPKN5clang4ExprE.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !742, !nonnull !743, !align !744
  %i.bt = call noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bs, i64 %.sroa.0.0.copyload.i) #27
  %i.bu = and i64 %.sroa.0.0.copyload.i, -16
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !821
  %i.bx = call noundef zeroext i1 @_ZNK5clang4Type32isSignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bw) #27
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !742, !nonnull !743, !align !744
  %.sroa.0160.0.copyload = load i64, ptr %29, align 8, !tbaa !750
  %i.bz = call noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.by, i64 %.sroa.0160.0.copyload) #27
  br label %bb.j

bb.j:                                             ; preds = %.thread562, %bb.i
  %i.ca = phi i1 [ %i.bx, %bb.i ], [ %i.bq, %.thread562 ] ; 5 uses
  %i.cb = phi i32 [ %i.bt, %bb.i ], [ 0, %.thread562 ] ; 10 uses
  %i.cc = phi i32 [ %i.bz, %bb.i ], [ 0, %.thread562 ] ; 2 uses
  %.0.copyload.i.i.i.i.i284 = load i64, ptr %29, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i284, -16
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !821
  %i.cg = call noundef zeroext i1 @_ZNK5clang4Type32isSignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cf) #27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  %i.ch = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  store ptr %i.ch, ptr %30, align 8, !tbaa !758
  %i.ci = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 13 uses
  store i32 0, ptr %i.ci, align 8, !tbaa !759
  %i.cj = getelementptr inbounds nuw i8, ptr %30, i64 12 ; 2 uses
  store i32 64, ptr %i.cj, align 4, !tbaa !1296
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0225614 = load ptr, ptr %i.ck, align 8, !tbaa !1859 ; 2 uses
  %i.cl = icmp eq ptr %.0225614, null
  %.not253615 = or i1 %i.cl, %or.cond605
  br i1 %.not253615, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %34, i64 12 ; 4 uses
  %.sink7.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.sink7.i.sroa.gep5.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.cq = xor i1 %i.ca, true
  %i.cr = zext i1 %i.cq to i8                     ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %35, i64 12 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %36, i64 12
  %i.cz = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.da = ptrtoint ptr %36 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %.thread565
  %.0225619 = phi ptr [ %.0225614, %.lr.ph ], [ %.0225, %.thread565 ] ; 10 uses
  %.0215617 = phi ptr [ null, %.lr.ph ], [ %.2217571, %.thread565 ] ; 4 uses
  %.0219616 = phi i8 [ 0, %.lr.ph ], [ %.3222570, %.thread565 ] ; 4 uses
  %i.db = load i16, ptr %.0225619, align 8
  %i.dc = and i16 %i.db, 511
  %.not594 = icmp eq i16 %i.dc, 137
  br i1 %.not594, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not256 = icmp eq ptr %.0215617, null
  br i1 %.not256, label %.thread565, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dd = getelementptr inbounds nuw i8, ptr %.0225619, i64 4
  %.sroa.0.0.copyload.i.i285 = load i32, ptr %i.dd, align 4, !tbaa !747
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %32, ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i32 %.sroa.0.0.copyload.i.i285, i32 noundef 4314) #27
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %32) #27
  %i.de = getelementptr inbounds nuw i8, ptr %.0215617, i64 4
  %.sroa.0.0.copyload.i.i286 = load i32, ptr %i.de, align 4, !tbaa !747
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %33, ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i32 %.sroa.0.0.copyload.i.i286, i32 noundef 109) #27
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %33) #27
  br label %.thread565

bb.n:                                             ; preds = %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %.0225619, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !822 ; 4 uses
  %i.dh = load i24, ptr %i.dg, align 8            ; 2 uses
  %i.di = and i24 %i.dh, 131072
  %.not595 = icmp eq i24 %i.di, 0
  br i1 %.not595, label %bb.o, label %.thread578

bb.o:                                             ; preds = %bb.n
  %i.dj = trunc i24 %i.dh to i16                  ; 2 uses
  %i.dk = and i16 %i.dj, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i287 = icmp eq i16 %i.dk, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i287, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !809 ; 2 uses
  %.pre.i294 = load i16, ptr %i.dm, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0554 = phi ptr [ %i.dm, %bb.p ], [ %i.dg, %bb.o ] ; 2 uses
  %i.dn = phi i16 [ %.pre.i294, %bb.p ], [ %i.dj, %bb.o ]
  %i.do = and i16 %i.dn, 511
  %.not18.i289 = icmp eq i16 %i.do, 81
  br i1 %.not18.i289, label %.lr.ph.i291, label %_ZL30GetTypeBeforeIntegralPromotionRPKN5clang4ExprE.exit295

.lr.ph.i291:                                      ; preds = %bb.q, %bb.r
  %.1555 = phi ptr [ %i.ds, %bb.r ], [ %.0554, %bb.q ] ; 3 uses
  %i.dp = load i32, ptr %.1555, align 8
  %i.dq = and i32 %i.dp, 66584576
  %.not13.i292 = icmp eq i32 %i.dq, 14155776
  br i1 %.not13.i292, label %bb.r, label %_ZL30GetTypeBeforeIntegralPromotionRPKN5clang4ExprE.exit295

bb.r:                                             ; preds = %.lr.ph.i291
  %i.dr = getelementptr inbounds nuw i8, ptr %.1555, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !818 ; 3 uses
  %i.dt = load i16, ptr %i.ds, align 8
  %i.du = and i16 %i.dt, 511
  %.not.i293 = icmp eq i16 %i.du, 81
  br i1 %.not.i293, label %.lr.ph.i291, label %_ZL30GetTypeBeforeIntegralPromotionRPKN5clang4ExprE.exit295

_ZL30GetTypeBeforeIntegralPromotionRPKN5clang4ExprE.exit295: ; preds = %.lr.ph.i291, %bb.r, %bb.q
  %.2556 = phi ptr [ %.0554, %bb.q ], [ %.1555, %.lr.ph.i291 ], [ %i.ds, %bb.r ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  %i.dv = load ptr, ptr %i.cm, align 8, !tbaa !742, !nonnull !743, !align !744
  call void @_ZNK5clang4Expr21EvaluateKnownConstIntERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %34, ptr noundef nonnull align 8 dereferenceable(16) %.2556, ptr noundef nonnull align 8 dereferenceable(23904) %i.dv) #27
  %i.dw = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dg) #26
  call fastcc void @_ZL14checkCaseValueRN5clang4SemaENS_14SourceLocationERKN4llvm6APSIntEjb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %i.dw, ptr noundef nonnull align 8 dereferenceable(13) %34, i32 noundef %i.cc, i1 noundef zeroext %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %.sroa.0.0.copyload.i.i296 = load i64, ptr %i.bk, align 8, !tbaa !750 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i296, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.dx = getelementptr inbounds nuw i8, ptr %.2556, i64 8
  %.sroa.0.0.copyload.i19.i = load i64, ptr %i.dx, align 8, !tbaa !750 ; 2 uses
  store i64 %.sroa.0.0.copyload.i19.i, ptr %24, align 8
  %i.dy = and i64 %.sroa.0.0.copyload.i.i296, -16
  %i.dz = inttoptr i64 %i.dy to ptr               ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 16, !tbaa !821
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.eb, align 8, !tbaa !750
  %i.ec = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load ptr, ptr %i.ed, align 16, !tbaa !821 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i8, ptr %i.ef, align 16
  %i.eh = icmp eq i8 %i.eg, 47
  %i.ei = and i64 %.sroa.0.0.copyload.i19.i, -16
  %i.ej = inttoptr i64 %i.ei to ptr               ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 16, !tbaa !821
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.0.0.copyload.i.i.i.i21.i = load i64, ptr %i.el, align 8, !tbaa !750
  %i.em = and i64 %.sroa.0.0.copyload.i.i.i.i21.i, -16
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = load ptr, ptr %i.en, align 16, !tbaa !821 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load i8, ptr %i.ep, align 16
  %i.er = icmp eq i8 %i.eq, 47
  %i.es = icmp ne ptr %i.ee, null
  %i.et = and i1 %i.es, %i.eh
  %i.eu = icmp ne ptr %i.eo, null
  %i.ev = and i1 %i.eu, %i.er
  %or.cond.i = and i1 %i.et, %i.ev
  br i1 %or.cond.i, label %bb.s, label %_ZL26checkEnumTypesInSwitchStmtRN5clang4SemaEPKNS_4ExprES4_.exit

bb.s:                                             ; preds = %_ZL30GetTypeBeforeIntegralPromotionRPKN5clang4ExprE.exit295
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !1353 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1860 ; 2 uses
  %i.fa = and i64 %i.ez, 7
  %i.fb = icmp ne i64 %i.fa, 0
  %.not26.i = icmp ult i64 %i.ez, 8
  %.not.i297 = or i1 %.not26.i, %i.fb
  br i1 %.not.i297, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 120
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.fc, align 8 ; 2 uses
  %i.fd = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %.not.i.i299 = icmp ne i64 %i.fd, 0
  %i.fe = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %.not1627.i = icmp eq i64 %i.fe, 0
  %.not16.i = or i1 %.not.i.i299, %.not1627.i
  br i1 %.not16.i, label %_ZL26checkEnumTypesInSwitchStmtRN5clang4SemaEPKNS_4ExprES4_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !1353 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !1860 ; 2 uses
  %i.fj = and i64 %i.fi, 7
  %i.fk = icmp ne i64 %i.fj, 0
  %.not1728.i = icmp ult i64 %i.fi, 8
  %.not17.i = or i1 %.not1728.i, %i.fk
  br i1 %.not17.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 120
  %.0.copyload.i.i.i.i.i.i.i24.i = load i64, ptr %i.fl, align 8 ; 2 uses
  %i.fm = and i64 %.0.copyload.i.i.i.i.i.i.i24.i, 4
  %.not.i25.i = icmp ne i64 %i.fm, 0
  %i.fn = and i64 %.0.copyload.i.i.i.i.i.i.i24.i, -5
  %.not1829.i = icmp eq i64 %i.fn, 0
  %.not18.i298 = or i1 %.not.i25.i, %.not1829.i
  br i1 %.not18.i298, label %_ZL26checkEnumTypesInSwitchStmtRN5clang4SemaEPKNS_4ExprES4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !750
  %i.fq = and i64 %i.fp, -16
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = load ptr, ptr %i.fr, align 16, !tbaa !821
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !750
  %i.fv = and i64 %i.fu, -16
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load ptr, ptr %i.fw, align 16, !tbaa !821
  %i.fy = icmp eq ptr %i.fs, %i.fx
  br i1 %i.fy, label %_ZL26checkEnumTypesInSwitchStmtRN5clang4SemaEPKNS_4ExprES4_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  %i.fz = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.2556) #26
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i32 %i.fz, i32 noundef 6880) #27
  %i.ga = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %25, ptr noundef nonnull align 8 dereferenceable(8) %23)
  %i.gb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ga, ptr noundef nonnull align 8 dereferenceable(8) %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.gc = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.2553) #26
  store i64 %i.gc, ptr %26, align 8
  %i.gd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.gb, ptr noundef nonnull align 4 dereferenceable(8) %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  %i.ge = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.2556) #26
  store i64 %i.ge, ptr %27, align 8
  %i.gf = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.gd, ptr noundef nonnull align 4 dereferenceable(8) %27) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %_ZL26checkEnumTypesInSwitchStmtRN5clang4SemaEPKNS_4ExprES4_.exit

_ZL26checkEnumTypesInSwitchStmtRN5clang4SemaEPKNS_4ExprES4_.exit: ; preds = %_ZL30GetTypeBeforeIntegralPromotionRPKN5clang4ExprE.exit295, %bb.t, %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  %i.gg = load i8, ptr %i.co, align 4, !tbaa !848, !range !746, !noalias !1861, !noundef !743
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %_ZN4llvm5APIntD2Ev.exit2.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %_ZL26checkEnumTypesInSwitchStmtRN5clang4SemaEPKNS_4ExprES4_.exit
  call void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %21, ptr noundef nonnull align 8 dereferenceable(13) %34, i32 noundef %i.cb) #27, !noalias !1861
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit.i

_ZN4llvm5APIntD2Ev.exit2.i.i:                     ; preds = %_ZL26checkEnumTypesInSwitchStmtRN5clang4SemaEPKNS_4ExprES4_.exit
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %22, ptr noundef nonnull align 8 dereferenceable(13) %34, i32 noundef %i.cb) #27, !noalias !1861
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit.i

_ZNK4llvm6APSInt10extOrTruncEj.exit.i:            ; preds = %_ZN4llvm5APIntD2Ev.exit2.i.i, %_ZN4llvm5APIntD2Ev.exit.i.i
  %.sink7.i.sroa.phi.i = phi ptr [ %.sink7.i.sroa.gep.i, %_ZN4llvm5APIntD2Ev.exit2.i.i ], [ %.sink7.i.sroa.gep5.i, %_ZN4llvm5APIntD2Ev.exit.i.i ]
  %.sink7.i.i = phi ptr [ %22, %_ZN4llvm5APIntD2Ev.exit2.i.i ], [ %21, %_ZN4llvm5APIntD2Ev.exit.i.i ]
  %i.gi = load i32, ptr %.sink7.i.sroa.phi.i, align 8, !tbaa !846, !noalias !1861 ; 5 uses
  %i.gj = load i64, ptr %.sink7.i.i, align 8, !noalias !1861 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.gk = load i32, ptr %i.cp, align 8, !tbaa !846
  %i.gl = icmp ult i32 %i.gk, 65
  br i1 %i.gl, label %_ZL12AdjustAPSIntRN4llvm6APSIntEjb.exit, label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm6APSInt10extOrTruncEj.exit.i
  %i.gm = load ptr, ptr %34, align 8, !tbaa !750  ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %_ZL12AdjustAPSIntRN4llvm6APSIntEjb.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.gm) #28
  br label %_ZL12AdjustAPSIntRN4llvm6APSIntEjb.exit

_ZL12AdjustAPSIntRN4llvm6APSIntEjb.exit:          ; preds = %_ZNK4llvm6APSInt10extOrTruncEj.exit.i, %bb.y, %bb.z
  store i64 %i.gj, ptr %34, align 8
  store i32 %i.gi, ptr %i.cp, align 8, !tbaa !846
  store i8 %i.cr, ptr %i.co, align 4, !tbaa !848
  %i.go = load i16, ptr %.0225619, align 8
  %i.gp = and i16 %i.go, 512
  %.not.i300 = icmp eq i16 %i.gp, 0
  br i1 %.not.i300, label %_ZN5clang8CaseStmt6getRHSEv.exit.thread, label %_ZN5clang8CaseStmt6getRHSEv.exit

_ZN5clang8CaseStmt6getRHSEv.exit:                 ; preds = %_ZL12AdjustAPSIntRN4llvm6APSIntEjb.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %.0225619, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !822 ; 2 uses
  %.not255 = icmp eq ptr %i.gr, null
  br i1 %.not255, label %_ZN5clang8CaseStmt6getRHSEv.exit.thread, label %_ZN5clang8CaseStmt6getRHSEv.exit302

_ZN5clang8CaseStmt6getRHSEv.exit302:              ; preds = %_ZN5clang8CaseStmt6getRHSEv.exit
  %i.gs = load i24, ptr %i.gr, align 8
  %i.gt = and i24 %i.gs, 131072
  %.not596 = icmp eq i24 %i.gt, 0
  br i1 %.not596, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %_ZN5clang8CaseStmt6getRHSEv.exit302
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  store i32 %i.gi, ptr %i.cs, align 8, !tbaa !846, !alias.scope !1862
  %i.gu = icmp ult i32 %i.gi, 65
  br i1 %i.gu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.gj, ptr %35, align 8, !tbaa !750, !alias.scope !1862
  br label %_ZSt9make_pairIRN4llvm6APSIntERPN5clang8CaseStmtEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit

bb.ac:                                            ; preds = %bb.aa
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(13) %34) #27
  %.pre = load i8, ptr %i.co, align 4, !tbaa !848, !range !746, !noalias !1862
  br label %_ZSt9make_pairIRN4llvm6APSIntERPN5clang8CaseStmtEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit

_ZSt9make_pairIRN4llvm6APSIntERPN5clang8CaseStmtEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit: ; preds = %bb.ab, %bb.ac
  %i.gv = phi i8 [ %i.cr, %bb.ab ], [ %.pre, %bb.ac ]
  store i8 %i.gv, ptr %i.ct, align 4, !tbaa !848, !alias.scope !1862
  store ptr %.0225619, ptr %i.cu, align 8, !tbaa !1356, !alias.scope !1862
  %i.gw = load ptr, ptr %i.cv, align 8, !tbaa !1359 ; 6 uses
  %i.gx = load ptr, ptr %i.cw, align 8, !tbaa !1360
  %.not.i.i303 = icmp eq ptr %i.gw, %i.gx
  br i1 %.not.i.i303, label %_ZNSt6vectorISt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESaIS6_EE9push_backEOS6_.exit, label %_ZNSt6vectorISt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %_ZSt9make_pairIRN4llvm6APSIntERPN5clang8CaseStmtEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = load i32, ptr %i.cs, align 8, !tbaa !846
  store i32 %i.gz, ptr %i.gy, align 8, !tbaa !846
  %i.ha = load i64, ptr %35, align 8
  store i64 %i.ha, ptr %i.gw, align 8
  store i32 0, ptr %i.cs, align 8, !tbaa !846
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.hc = load i8, ptr %i.ct, align 4, !tbaa !848, !range !746, !noundef !743
  store i8 %i.hc, ptr %i.hb, align 4, !tbaa !848
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.he = load ptr, ptr %i.cu, align 8, !tbaa !1356
  store ptr %i.he, ptr %i.hd, align 8, !tbaa !1356
  %i.hf = load ptr, ptr %i.cv, align 8, !tbaa !1359
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  store ptr %i.hg, ptr %i.cv, align 8, !tbaa !1359
  br label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit

_ZNSt6vectorISt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZSt9make_pairIRN4llvm6APSIntERPN5clang8CaseStmtEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit
  call void @_ZNSt6vectorISt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr %i.gw, ptr noundef nonnull align 8 dereferenceable(24) %35)
  %.pre693 = load i32, ptr %i.cs, align 8, !tbaa !846
  %i.hh = icmp ugt i32 %.pre693, 64
  br i1 %i.hh, label %bb.ad, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit

bb.ad:                                            ; preds = %_ZNSt6vectorISt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESaIS6_EE9push_backEOS6_.exit
  %i.hi = load ptr, ptr %35, align 8, !tbaa !750  ; 2 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.hi) #28
  br label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit

_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESaIS6_EE9push_backEOS6_.exit, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.al

_ZN5clang8CaseStmt6getRHSEv.exit.thread:          ; preds = %_ZL12AdjustAPSIntRN4llvm6APSIntEjb.exit, %_ZN5clang8CaseStmt6getRHSEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  store i32 %i.gi, ptr %i.cx, align 8, !tbaa !846, !alias.scope !1863
  %i.hk = icmp ult i32 %i.gi, 65
  br i1 %i.hk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN5clang8CaseStmt6getRHSEv.exit.thread
  store i64 %i.gj, ptr %36, align 8, !tbaa !750, !alias.scope !1863
  br label %_ZSt9make_pairIRN4llvm6APSIntERPN5clang8CaseStmtEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit304

bb.ag:                                            ; preds = %_ZN5clang8CaseStmt6getRHSEv.exit.thread
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(13) %34) #27
  %.pre694 = load i8, ptr %i.co, align 4, !tbaa !848, !range !746, !noalias !1863
  br label %_ZSt9make_pairIRN4llvm6APSIntERPN5clang8CaseStmtEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit304

_ZSt9make_pairIRN4llvm6APSIntERPN5clang8CaseStmtEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit304: ; preds = %bb.af, %bb.ag
  %i.hl = phi i8 [ %i.cr, %bb.af ], [ %.pre694, %bb.ag ]
  store i8 %i.hl, ptr %i.cy, align 4, !tbaa !848, !alias.scope !1863
  store ptr %.0225619, ptr %i.cz, align 8, !tbaa !1356, !alias.scope !1863
  %i.hm = load i32, ptr %i.ci, align 8, !tbaa !759 ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  %i.ho = add nuw nsw i64 %i.hn, 1                ; 2 uses
  %i.hp = load i32, ptr %i.cj, align 4, !tbaa !1296
  %.not.i.i.not.i = icmp ult i32 %i.hm, %i.hp
  %.pre3.i = load ptr, ptr %30, align 8, !tbaa !758 ; 4 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_6APSIntEPN5clang8CaseStmtEELb0EE9push_backEOS6_.exit, label %bb.ah, !prof !1331

bb.ah:                                            ; preds = %_ZSt9make_pairIRN4llvm6APSIntERPN5clang8CaseStmtEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit304
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %.pre3.i, i64 %i.hn
  %i.hr = icmp uge ptr %36, %.pre3.i
  %i.hs = icmp ult ptr %36, %i.hq
  %spec.select.i.i.i.i.i = and i1 %i.hr, %i.hs
  br i1 %spec.select.i.i.i.i.i, label %bb.ai, label %.critedge.i.i.i, !prof !1361

bb.ai:                                            ; preds = %bb.ah
  %i.ht = ptrtoint ptr %.pre3.i to i64
  %i.hu = sub i64 %i.da, %i.ht
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_6APSIntEPN5clang8CaseStmtEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %30, i64 noundef %i.ho)
  %i.hv = load ptr, ptr %30, align 8, !tbaa !758  ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 %i.hu
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_6APSIntEPN5clang8CaseStmtEELb0EE9push_backEOS6_.exit

.critedge.i.i.i:                                  ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_6APSIntEPN5clang8CaseStmtEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %30, i64 noundef %i.ho)
  %.pre.i305 = load ptr, ptr %30, align 8, !tbaa !758
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_6APSIntEPN5clang8CaseStmtEELb0EE9push_backEOS6_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_6APSIntEPN5clang8CaseStmtEELb0EE9push_backEOS6_.exit: ; preds = %_ZSt9make_pairIRN4llvm6APSIntERPN5clang8CaseStmtEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit304, %bb.ai, %.critedge.i.i.i
  %i.hx = phi ptr [ %.pre3.i, %_ZSt9make_pairIRN4llvm6APSIntERPN5clang8CaseStmtEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit304 ], [ %i.hv, %bb.ai ], [ %.pre.i305, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %36, %_ZSt9make_pairIRN4llvm6APSIntERPN5clang8CaseStmtEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit304 ], [ %i.hw, %bb.ai ], [ %36, %.critedge.i.i.i ] ; 4 uses
  %i.hy = load i32, ptr %i.ci, align 8, !tbaa !759
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %i.hx, i64 %i.hz ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 8 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !846
  store i32 %i.id, ptr %i.ib, align 8, !tbaa !846
  %i.ie = load i64, ptr %.016.i.i.i, align 8
  store i64 %i.ie, ptr %i.ia, align 8
  store i32 0, ptr %i.ic, align 8, !tbaa !846
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.ig = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 12
  %i.ih = load i8, ptr %i.ig, align 4, !tbaa !848, !range !746, !noundef !743
  store i8 %i.ih, ptr %i.if, align 4, !tbaa !848
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ij = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !1356
  store ptr %i.ik, ptr %i.ii, align 8, !tbaa !1356
  %i.il = load i32, ptr %i.ci, align 8, !tbaa !759
  %i.im = add i32 %i.il, 1
  store i32 %i.im, ptr %i.ci, align 8, !tbaa !759
  %i.in = load i32, ptr %i.cx, align 8, !tbaa !846
  %i.io = icmp ugt i32 %i.in, 64
  br i1 %i.io, label %bb.aj, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit306

bb.aj:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_6APSIntEPN5clang8CaseStmtEELb0EE9push_backEOS6_.exit
  %i.ip = load ptr, ptr %36, align 8, !tbaa !750  ; 2 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit306, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.ip) #28
  br label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit306

_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit306: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_6APSIntEPN5clang8CaseStmtEELb0EE9push_backEOS6_.exit, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit306, %_ZN5clang8CaseStmt6getRHSEv.exit302
  %.1206 = phi i8 [ 1, %_ZN5clang8CaseStmt6getRHSEv.exit302 ], [ 0, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit306 ], [ 0, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit ] ; 2 uses
  %i.ir = phi i1 [ false, %_ZN5clang8CaseStmt6getRHSEv.exit302 ], [ true, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit306 ], [ true, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEED2Ev.exit ]
  %i.is = load i32, ptr %i.cp, align 8, !tbaa !846
  %i.it = icmp ugt i32 %i.is, 64
  br i1 %i.it, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.iu = load ptr, ptr %34, align 8, !tbaa !750  ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.iu) #28
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br i1 %i.ir, label %.thread565, label %._crit_edge

.thread565:                                       ; preds = %bb.l, %bb.m, %bb.ao
  %.4572 = phi i8 [ %.1206, %bb.ao ], [ 0, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %.2217571 = phi ptr [ %.0215617, %bb.ao ], [ %.0225619, %bb.m ], [ %.0225619, %bb.l ] ; 2 uses
  %.3222570 = phi i8 [ %.0219616, %bb.ao ], [ 1, %bb.m ], [ %.0219616, %bb.l ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0225619, i64 16
  %.0225 = load ptr, ptr %i.iw, align 8, !tbaa !1859 ; 2 uses
  %i.ix = icmp eq ptr %.0225, null
  %i.iy = trunc nuw i8 %.4572 to i1
  %.not253 = select i1 %i.ix, i1 true, i1 %i.iy
  br i1 %.not253, label %._crit_edge, label %bb.k, !llvm.loop !1815

._crit_edge:                                      ; preds = %bb.ao, %.thread565
  %.0219.lcssa = phi i8 [ %.3222570, %.thread565 ], [ %.0219616, %bb.ao ] ; 3 uses
  %.0215.lcssa = phi ptr [ %.2217571, %.thread565 ], [ %.0215617, %bb.ao ] ; 2 uses
  %.5 = phi i8 [ %.4572, %.thread565 ], [ %.1206, %bb.ao ]
  %i.iz = trunc nuw i8 %.5 to i1
  br i1 %i.iz, label %.thread578, label %bb.ap

._crit_edge.thread:                               ; preds = %bb.j
  br i1 %or.cond605, label %.thread578, label %.thread

.thread:                                          ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  %i.ja = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i32 1, ptr %i.ja, align 8, !tbaa !846
  store i64 0, ptr %37, align 8, !tbaa !750
  %i.jb = getelementptr inbounds nuw i8, ptr %37, i64 12 ; 2 uses
  store i8 0, ptr %i.jb, align 4, !tbaa !848
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  %i.jc = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  store i32 1, ptr %i.jc, align 8, !tbaa !846
  store i64 0, ptr %37, align 8, !tbaa !750
  %i.jd = getelementptr inbounds nuw i8, ptr %37, i64 12 ; 3 uses
  store i8 0, ptr %i.jd, align 4, !tbaa !848
  %.not257 = icmp eq ptr %.0215.lcssa, null
  br i1 %.not257, label %bb.aq, label %bb.ax

bb.aq:                                            ; preds = %.thread, %bb.ap
  %i.je = phi ptr [ %i.jb, %.thread ], [ %i.jd, %bb.ap ] ; 2 uses
  %i.jf = phi ptr [ %i.ja, %.thread ], [ %i.jc, %bb.ap ] ; 3 uses
  %.0219.lcssa816824 = phi i8 [ 0, %.thread ], [ %.0219.lcssa, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  store i8 0, ptr %38, align 8, !tbaa !1866
  %i.jg = getelementptr inbounds nuw i8, ptr %38, i64 1
  store i8 0, ptr %i.jg, align 1, !tbaa !1867
  %i.jh = getelementptr inbounds nuw i8, ptr %38, i64 2
  store i8 0, ptr %i.jh, align 2, !tbaa !1868
  %i.ji = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr null, ptr %i.ji, align 8, !tbaa !1869
  %i.jj = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  store i32 0, ptr %i.jj, align 8, !tbaa !1873
  %i.jk = getelementptr inbounds nuw i8, ptr %38, i64 20 ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 4
  %i.jm = and i8 %i.jl, -2
  store i8 %i.jm, ptr %i.jk, align 4
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !742, !nonnull !743, !align !744
  %i.jp = call noundef zeroext i1 @_ZNK5clang4Expr13EvaluateAsIntERNS0_10EvalResultERKNS_10ASTContextENS0_15SideEffectsKindEb(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %38, ptr noundef nonnull align 8 dereferenceable(23904) %i.jo, i32 noundef 2, i1 noundef zeroext false) #27
  %i.jq = load i32, ptr %i.jj, align 8, !tbaa !1873
  %i.jr = icmp eq i32 %i.jq, 2
  br i1 %i.jr, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.js = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 2 uses
  %i.jt = load i32, ptr %i.jf, align 8, !tbaa !846
  %i.ju = icmp ult i32 %i.jt, 65
  br i1 %i.ju, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.jv = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !846 ; 2 uses
  %i.jx = icmp ult i32 %i.jw, 65
  br i1 %i.jx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jy = load i64, ptr %i.js, align 8, !tbaa !750
  store i64 %i.jy, ptr %37, align 8, !tbaa !750
  store i32 %i.jw, ptr %i.jf, align 8, !tbaa !846
  br label %_ZN4llvm6APSIntaSERKS0_.exit

bb.au:                                            ; preds = %bb.as, %bb.ar
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %37, ptr noundef nonnull align 8 dereferenceable(13) %i.js) #27
  br label %_ZN4llvm6APSIntaSERKS0_.exit

_ZN4llvm6APSIntaSERKS0_.exit:                     ; preds = %bb.at, %bb.au
  %i.jz = getelementptr inbounds nuw i8, ptr %38, i64 36
  %i.ka = load i8, ptr %i.jz, align 4, !tbaa !848, !range !746, !noundef !743
  store i8 %i.ka, ptr %i.je, align 4, !tbaa !848
  br label %bb.av

bb.av:                                            ; preds = %_ZN4llvm6APSIntaSERKS0_.exit, %bb.aq
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %39, ptr noundef nonnull align 8 dereferenceable(8) %i.kb, i32 %1, i32 noundef 7670) #27
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %39) #27
  %i.kc = load i32, ptr %i.jj, align 8, !tbaa !1873
  %switch.i.i = icmp ult i32 %i.kc, 2
  br i1 %switch.i.i, label %_ZN5clang4Expr10EvalResultD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.jj) #27
  br label %_ZN5clang4Expr10EvalResultD2Ev.exit

_ZN5clang4Expr10EvalResultD2Ev.exit:              ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN5clang4Expr10EvalResultD2Ev.exit, %bb.ap
  %.not257825 = phi i1 [ false, %bb.ap ], [ true, %_ZN5clang4Expr10EvalResultD2Ev.exit ] ; 2 uses
  %i.kd = phi ptr [ %i.jd, %bb.ap ], [ %i.je, %_ZN5clang4Expr10EvalResultD2Ev.exit ] ; 2 uses
  %i.ke = phi ptr [ %i.jc, %bb.ap ], [ %i.jf, %_ZN5clang4Expr10EvalResultD2Ev.exit ]
  %.0219.lcssa816823 = phi i8 [ %.0219.lcssa, %bb.ap ], [ %.0219.lcssa816824, %_ZN5clang4Expr10EvalResultD2Ev.exit ] ; 2 uses
  %.0215.lcssa817821 = phi ptr [ %.0215.lcssa, %bb.ap ], [ null, %_ZN5clang4Expr10EvalResultD2Ev.exit ]
  %.0230 = phi i1 [ false, %bb.ap ], [ %i.jp, %_ZN5clang4Expr10EvalResultD2Ev.exit ] ; 2 uses
  %i.kf = zext i1 %.0230 to i8                    ; 2 uses
  %i.kg = load ptr, ptr %30, align 8, !tbaa !758  ; 2 uses
  %i.kh = load i32, ptr %i.ci, align 8, !tbaa !759
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.ki
  call void @_ZSt13__stable_sortIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS6_SC_EEEEvT_SG_T0_(ptr noundef %i.kg, ptr noundef %i.kj, ptr nonnull @_ZL11CmpCaseValsRKSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEES7_)
  %i.kk = load i32, ptr %i.ci, align 8, !tbaa !759 ; 2 uses
  %.not.i307 = icmp eq i32 %i.kk, 0
  br i1 %.not.i307, label %.loopexit, label %.preheader606

.preheader606:                                    ; preds = %bb.ax
  %i.kl = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 6 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %42, i64 120 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %42, i64 128 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %42, i64 132 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %41, i64 120
  %i.kv = getelementptr inbounds nuw i8, ptr %41, i64 128
  %i.kw = getelementptr inbounds nuw i8, ptr %41, i64 132
  %i.kx = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.ky = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.kz = zext i32 %i.kk to i64
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader606, %bb.cc
  %indvars.iv = phi i64 [ 0, %.preheader606 ], [ %indvars.iv.next, %bb.cc ] ; 7 uses
  %.5224628 = phi i8 [ %.0219.lcssa816823, %.preheader606 ], [ %.6, %bb.cc ] ; 3 uses
  %.0231627 = phi i8 [ %i.kf, %.preheader606 ], [ %.1232, %bb.cc ]
  %i.la = trunc nuw i8 %.0231627 to i1
  br i1 %i.la, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.lb = load ptr, ptr %30, align 8, !tbaa !758
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %i.lb, i64 %indvars.iv ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !846
  %i.lf = icmp ult i32 %i.le, 65
  br i1 %i.lf, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.lg = load i64, ptr %i.lc, align 8, !tbaa !750
  %i.lh = load i64, ptr %37, align 8, !tbaa !750
  %i.li = icmp eq i64 %i.lg, %i.lh
  br label %_ZNK4llvm6APSInteqERKS0_.exit

bb.bb:                                            ; preds = %bb.az
  %i.lj = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %i.lc, ptr noundef nonnull align 8 dereferenceable(13) %37) #26
  br label %_ZNK4llvm6APSInteqERKS0_.exit

_ZNK4llvm6APSInteqERKS0_.exit:                    ; preds = %bb.ba, %bb.bb
  %.0.i.i.i = phi i1 [ %i.li, %bb.ba ], [ %i.lj, %bb.bb ]
  %not..0.i.i.i = xor i1 %.0.i.i.i, true
  %spec.select = zext i1 %not..0.i.i.i to i8
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK4llvm6APSInteqERKS0_.exit, %bb.ay
  %.1232 = phi i8 [ 0, %bb.ay ], [ %spec.select, %_ZNK4llvm6APSInteqERKS0_.exit ] ; 2 uses
  %.not259 = icmp eq i64 %indvars.iv, 0
  br i1 %.not259, label %bb.cc, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lk = load ptr, ptr %30, align 8, !tbaa !758  ; 2 uses
end_hunk_0

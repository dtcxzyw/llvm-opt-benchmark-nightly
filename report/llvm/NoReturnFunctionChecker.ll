Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NoReturnFunctionChecker?download=true
inline.NumInlined: 728
inline.NumDeleted: 490
begin_hunk_0_@_ZN5clang4ento5check8PostCall10_checkCallIN12_GLOBAL__N_123NoReturnFunctionCheckerEEEvPvRKNS0_9CallEventERNS0_14CheckerContextE:bb.a
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = and i32 %i.f, 127
  %i.h = add nsw i32 %i.g, -35
  %i.i = icmp ult i32 %i.h, 6
  br i1 %i.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.thread.i

_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i: ; preds = %bb.b
  %i.j = and i32 %i.f, 256
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_20AnalyzerNoReturnAttrEEEbv.exit.thread109.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.d) #14 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !36   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i ; 2 uses
  %.not.i.i26.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i26.i, label %_ZNK5clang4Decl7hasAttrINS_20AnalyzerNoReturnAttrEEEbv.exit.thread109.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %.sroa.07.1.i.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.q = load ptr, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.s = load i16, ptr %i.r, align 4
  %i.t = icmp eq i16 %i.s, 138
  br i1 %i.t, label %_ZNK5clang4Decl7hasAttrINS_20AnalyzerNoReturnAttrEEEbv.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_20AnalyzerNoReturnAttrEEEbv.exit.thread109.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNK5clang4Decl7hasAttrINS_20AnalyzerNoReturnAttrEEEbv.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i = icmp eq ptr %.sroa.07.1.i.i.i.i.i, %i.p
  br i1 %.not.i, label %_ZNK5clang4Decl7hasAttrINS_20AnalyzerNoReturnAttrEEEbv.exit.thread109.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.thread.i

_ZNK5clang4Decl7hasAttrINS_20AnalyzerNoReturnAttrEEEbv.exit.thread109.i: ; preds = %bb.d, %_ZNK5clang4Decl7hasAttrINS_20AnalyzerNoReturnAttrEEEbv.exit.i, %bb.c, %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i
  %i.v = tail call noundef zeroext i1 @_ZNK5clang12FunctionDecl10isNoReturnEv(ptr noundef nonnull align 8 dereferenceable(168) %i.d) #14
  %i.w = zext i1 %i.v to i8
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.thread.i

_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.thread.i: ; preds = %_ZNK5clang4Decl7hasAttrINS_20AnalyzerNoReturnAttrEEEbv.exit.thread109.i, %_ZNK5clang4Decl7hasAttrINS_20AnalyzerNoReturnAttrEEEbv.exit.i, %bb.b, %bb.a
  %.0.i = phi i8 [ %i.w, %_ZNK5clang4Decl7hasAttrINS_20AnalyzerNoReturnAttrEEEbv.exit.thread109.i ], [ 1, %_ZNK5clang4Decl7hasAttrINS_20AnalyzerNoReturnAttrEEEbv.exit.i ], [ 0, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(72) %1) #14, !inline_history !510 ; 3 uses
  %.not.i.i27.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i27.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.thread.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.i

_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.i: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.thread.i
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = and i16 %i.ab, 511
  %i.ad = add nsw i16 %i.ac, -96
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.ad, -5
  %i.ae = trunc nuw i8 %.0.i to i1
  %or.cond.i = or i1 %spec.select.i.i.i.i.i.i.i.i.i.i, %i.ae
  br i1 %or.cond.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !513 ; 2 uses
  %.not24.i = icmp eq ptr %i.ag, null
  br i1 %.not24.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ah, align 8, !tbaa !39
  %i.ai = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !516 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.am = load i8, ptr %i.al, align 16            ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.am, 40
  br i1 %.not.i.i.i.i, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread28.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !39
  %i.ao = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !516
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i8, ptr %i.ar, align 16
  %i.at = icmp eq i8 %i.as, 40
  br i1 %i.at, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i.i.i, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.i.i.i

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i.i.i: ; preds = %bb.g
  %i.au = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ak) #14 ; 2 uses
  %.not.i.i30.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i30.i, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge.i.i.i, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread28.i.i.i

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge.i.i.i: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i.i.i
  %.pre.i.i.i = load i8, ptr %i.al, align 16
  br label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.i.i.i

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread28.i.i.i: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i.i.i, %bb.f
  %.1.i31.i.i.i = phi ptr [ %i.au, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i.i.i ], [ %i.ak, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i31.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.av, align 16, !tbaa !39
  %i.aw = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !516 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i8, ptr %i.az, align 16
  %i.bb = add i8 %i.ba, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bb, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %.critedge.sink.split.i.i.i

bb.h:                                             ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread28.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.0.0.copyload.i.i.i.i19.i.i.i = load i64, ptr %i.bc, align 8, !tbaa !39
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i.i19.i.i.i, -16
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !516
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i8, ptr %i.bg, align 16
  %i.bi = add i8 %i.bh, -23
  %spec.select.i.i.i.i.i.i.i.i5.i.i.i.i = icmp ult i8 %i.bi, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i.i.i, label %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit.i.i.i, label %.thread.i

_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit.i.i.i: ; preds = %bb.h
  %i.bj = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ay) #14 ; 2 uses
  %.not15.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not15.i.i.i, label %.thread.i, label %.critedge.sink.split.i.i.i

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.i.i.i: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge.i.i.i, %bb.g
  %i.bk = phi i8 [ %.pre.i.i.i, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge.i.i.i ], [ %i.am, %bb.g ]
  %i.bl = add i8 %i.bk, -25
  %spec.select.i.i.i.i.i.i.i.i.i20.i.i.i = icmp ult i8 %i.bl, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i20.i.i.i, label %bb.i, label %.critedge.sink.split.i.i.i

bb.i:                                             ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.i.i.i
  %.sroa.0.0.copyload.i.i.i.i22.i.i.i = load i64, ptr %i.an, align 8, !tbaa !39
  %i.bm = and i64 %.sroa.0.0.copyload.i.i.i.i22.i.i.i, -16
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load ptr, ptr %i.bn, align 16, !tbaa !516
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i8, ptr %i.bp, align 16
  %i.br = add i8 %i.bq, -23
  %spec.select.i.i.i.i.i.i.i.i5.i23.i.i.i = icmp ult i8 %i.br, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i23.i.i.i, label %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit24.i.i.i, label %.thread.i

_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit24.i.i.i: ; preds = %bb.i
  %i.bs = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ak) #14 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not14.i.i.i, label %.thread.i, label %.critedge.sink.split.i.i.i

.critedge.sink.split.i.i.i:                       ; preds = %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit24.i.i.i, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.i.i.i, %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit.i.i.i, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread28.i.i.i
  %.1.i1837.sink.i.i.i = phi ptr [ %i.ay, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread28.i.i.i ], [ %i.bj, %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit.i.i.i ], [ %i.bs, %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit24.i.i.i ], [ %i.ak, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i1837.sink.i.i.i, i64 16
  %i.bu = load i64, ptr %i.bt, align 16
  %i.bv = lshr i64 %i.bu, 40
  %i.bw = trunc i64 %i.bv to i8
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.thread.i

_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.thread.i: ; preds = %.critedge.sink.split.i.i.i, %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.i, %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.thread.i
  %.2.i = phi i8 [ %.0.i, %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.i ], [ %.0.i, %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.thread.i ], [ %i.bw, %.critedge.sink.split.i.i.i ]
  %i.bx = trunc i8 %.2.i to i1
  br i1 %i.bx, label %.thread236.i, label %.thread.i

.thread.i:                                        ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.thread.i, %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit24.i.i.i, %bb.i, %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit.i.i.i, %bb.h, %bb.e
  %i.by = tail call noundef zeroext i1 @_ZNK5clang4ento9CallEvent17isGlobalCFunctionEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr null, i64 0) #14
  br i1 %i.by, label %bb.j, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

bb.j:                                             ; preds = %.thread.i
  %i.bz = load ptr, ptr %1, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(72) %1) #14, !inline_history !511 ; 3 uses
  %.not.i.i.i31.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i31.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = and i32 %i.ce, 124
  %i.cg = add nsw i32 %i.cf, -20
  %i.ch = icmp ult i32 %i.cg, 64
  br i1 %i.ch, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.i.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.i.i: ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !44 ; 2 uses
  %i.ck = and i64 %i.cj, 7
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = and i64 %i.cj, -8                       ; 2 uses
  %.not25.i = icmp eq i64 %i.cm, 0
  %or.cond264.i = or i1 %i.cl, %.not25.i
  br i1 %or.cond264.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.i.i
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !47 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 30 uses
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !49 ; 2 uses
  %5 = and i64 %i.cr, 4294967295                  ; 3 uses
  %trunc.i = trunc i64 %i.cr to i32               ; 3 uses
  switch i32 %trunc.i, label %6 [
    i32 4, label %bb.m
    i32 5, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.cs = load i32, ptr %i.cq, align 1
  %i.ct = icmp ne i32 %i.cs, 1953069157
  %i.cu = zext i1 %i.ct to i32
  %.not.i.i32.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i32.i, label %.thread236.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

bb.n:                                             ; preds = %bb.l
  %i.cv = load i32, ptr %i.cq, align 1
  %i.cw = xor i32 %i.cv, 1768841584
  %i.cx = getelementptr i8, ptr %i.cq, i64 4
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i32
  %i.da = xor i32 %i.cz, 99
  %i.db = or i32 %i.cw, %i.da
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = zext i1 %i.dc to i32
  %.not.i.i38.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i38.i, label %.thread236.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = load i32, ptr %i.cq, align 1
  %i.df = xor i32 %i.de, 1869771365
  %i.dg = getelementptr i8, ptr %i.cq, i64 4
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i32
  %i.dj = xor i32 %i.di, 114
  %i.dk = or i32 %i.df, %i.dj
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = zext i1 %i.dl to i32
  %.not.i.i46.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i46.i, label %.thread236.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

6:                                                ; preds = %bb.l
  %.not.i.i.i.i52.i = icmp eq i64 %5, 6
  br i1 %.not.i.i.i.i52.i, label %bb.p, label %7

bb.p:                                             ; preds = %6
  %i.dn = load i32, ptr %i.cq, align 1
  %i.do = xor i32 %i.dn, 1702064961
  %i.dp = getelementptr i8, ptr %i.cq, i64 4
  %i.dq = load i16, ptr %i.dp, align 1
  %i.dr = zext i16 %i.dq to i32
  %i.ds = xor i32 %i.dr, 29810
  %i.dt = or i32 %i.do, %i.ds
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = zext i1 %i.du to i32
  %.not.i.i54.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i54.i, label %.thread236.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dw = load i32, ptr %i.cq, align 1
  %i.dx = xor i32 %i.dw, 1701865850
  %i.dy = getelementptr i8, ptr %i.cq, i64 4
  %i.dz = load i16, ptr %i.dy, align 1
  %i.ea = zext i16 %i.dz to i32
  %i.eb = xor i32 %i.ea, 29298
  %i.ec = or i32 %i.dx, %i.eb
  %i.ed = icmp ne i32 %i.ec, 0
  %i.ee = zext i1 %i.ed to i32
  %.not.i.i62.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i62.i, label %.thread236.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

7:                                                ; preds = %6
  switch i32 %trunc.i, label %8 [
    i32 7, label %bb.r
    i32 8, label %bb.s
  ]

bb.r:                                             ; preds = %7
  %i.ef = load i32, ptr %i.cq, align 1
  %i.eg = xor i32 %i.ef, 1718842209
  %i.eh = getelementptr i8, ptr %i.cq, i64 3
  %i.ei = load i32, ptr %i.eh, align 1
  %i.ej = xor i32 %i.ei, 1818845542
  %i.ek = or i32 %i.eg, %i.ej
  %i.el = icmp ne i32 %i.ek, 0
  %i.em = zext i1 %i.el to i32
  %.not.i.i70.i = icmp eq i32 %i.em, 0
  br i1 %.not.i.i70.i, label %.thread236.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

bb.s:                                             ; preds = %7
  %i.en = load i64, ptr %i.cq, align 1
  %i.eo = icmp ne i64 %i.en, 8245935278391255652
  %i.ep = zext i1 %i.eo to i32
  %.not.i.i78.i = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i78.i, label %.thread236.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eq = load i64, ptr %i.cq, align 1
  %i.er = icmp ne i64 %i.eq, 8390880602276061023
  %i.es = zext i1 %i.er to i32
  %.not.i.i86.i = icmp eq i32 %i.es, 0
  br i1 %.not.i.i86.i, label %.thread236.i, label %bb.v

8:                                                ; preds = %7
  %.not.i.i.i.i92.i = icmp eq i64 %5, 9
  br i1 %.not.i.i.i.i92.i, label %bb.u, label %9

bb.u:                                             ; preds = %8
  %i.et = load i64, ptr %i.cq, align 1
  %i.eu = xor i64 %i.et, 8390880602276061023
  %i.ev = getelementptr i8, ptr %i.cq, i64 8
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i64
  %i.ey = xor i64 %i.ex, 50
  %i.ez = or i64 %i.eu, %i.ey
  %i.fa = icmp ne i64 %i.ez, 0
  %i.fb = zext i1 %i.fa to i32
  %.not.i.i94.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i94.i, label %.thread236.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

bb.v:                                             ; preds = %bb.t
  %i.fc = load i64, ptr %i.cq, align 1
  %i.fd = icmp ne i64 %i.fc, 8390880602276067167
  %i.fe = zext i1 %i.fd to i32
  %.not.i.i102.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i.i102.i, label %.thread236.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

9:                                                ; preds = %8
  switch i32 %trunc.i, label %bb.aa [
    i32 12, label %bb.w
    i32 13, label %bb.x
    i32 14, label %bb.y
  ]

bb.w:                                             ; preds = %9
  %i.ff = load i64, ptr %i.cq, align 1
  %i.fg = xor i64 %i.ff, 8390880602276061023
  %i.fh = getelementptr i8, ptr %i.cq, i64 8
  %i.fi = load i32, ptr %i.fh, align 1
  %i.fj = zext i32 %i.fi to i64
  %i.fk = xor i64 %i.fj, 1853125215
  %i.fl = or i64 %i.fg, %i.fk
  %i.fm = icmp ne i64 %i.fl, 0
  %i.fn = zext i1 %i.fm to i32
  %.not.i.i110.i = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i110.i, label %.thread236.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

bb.x:                                             ; preds = %9
  %i.fo = load i64, ptr %i.cq, align 1
  %i.fp = xor i64 %i.fo, 8390880602276061023
  %i.fq = getelementptr i8, ptr %i.cq, i64 5
  %i.fr = load i64, ptr %i.fq, align 1
  %i.fs = xor i64 %i.fr, 7811882120966861413
  %i.ft = or i64 %i.fp, %i.fs
  %i.fu = icmp ne i64 %i.ft, 0
  %i.fv = zext i1 %i.fu to i32
  %.not.i.i118.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i118.i, label %.thread236.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

bb.y:                                             ; preds = %9
  %i.fw = load i64, ptr %i.cq, align 1
  %i.fx = xor i64 %i.fw, 7016438221977580644
  %i.fy = getelementptr i8, ptr %i.cq, i64 6
  %i.fz = load i64, ptr %i.fy, align 1
  %i.ga = xor i64 %i.fz, 7811882121302335839
  %i.gb = or i64 %i.fx, %i.ga
  %i.gc = icmp ne i64 %i.gb, 0
  %i.gd = zext i1 %i.gc to i32
  %.not.i.i126.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i126.i, label %.thread236.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ge = load i64, ptr %i.cq, align 1
  %i.gf = xor i64 %i.ge, 7809651190515333497
  %i.gg = getelementptr i8, ptr %i.cq, i64 6
  %i.gh = load i64, ptr %i.gg, align 1
  %i.gi = xor i64 %i.gh, 8245935278391258209
  %i.gj = or i64 %i.gf, %i.gi
  %i.gk = icmp ne i64 %i.gj, 0
  %i.gl = zext i1 %i.gk to i32
  %.not.i.i134.i = icmp eq i32 %i.gl, 0
  br i1 %.not.i.i134.i, label %.thread236.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

bb.aa:                                            ; preds = %9
  %.not.i.i.i.i140.i = icmp eq i64 %5, 26
  br i1 %.not.i.i.i.i140.i, label %bb.ab, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.gm = load i128, ptr %i.cq, align 1
  %i.gn = xor i128 %i.gm, 144103787688798041228012935949295245407
  %i.go = getelementptr i8, ptr %i.cq, i64 10
  %i.gp = load i128, ptr %i.go, align 1
  %i.gq = xor i128 %i.gp, 152058611959406831674961242799995252335
  %i.gr = or i128 %i.gn, %i.gq
  %i.gs = icmp ne i128 %i.gr, 0
  %i.gt = zext i1 %i.gs to i32
  %.not.i.i142.i = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i142.i, label %.thread236.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gu = load i128, ptr %i.cq, align 1
  %i.gv = xor i128 %i.gu, 144103787688798041228012935949296354399
  %i.gw = getelementptr i8, ptr %i.cq, i64 10
  %i.gx = load i128, ptr %i.gw, align 1
  %i.gy = xor i128 %i.gx, 152058611959406831674961242799995252335
  %i.gz = or i128 %i.gv, %i.gy
  %i.ha = icmp ne i128 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %.not.i.i150.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i.i150.i, label %.thread236.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hc = load i128, ptr %i.cq, align 1
  %i.hd = xor i128 %i.hc, 144103787688798041228012935949296292959
  %i.he = getelementptr i8, ptr %i.cq, i64 10
  %i.hf = load i128, ptr %i.he, align 1
  %i.hg = xor i128 %i.hf, 152058611959406831674961242799995252335
  %i.hh = or i128 %i.hd, %i.hg
  %i.hi = icmp ne i128 %i.hh, 0
  %i.hj = zext i1 %i.hi to i32
  %.not.i.i158.i = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i158.i, label %.thread236.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

.thread236.i:                                     ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.thread.i
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !63
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !66 ; 9 uses
  %.not.i.i162.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i162.i, label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit, label %bb.ae

bb.ae:                                            ; preds = %.thread236.i
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hn) #14
  %i.ho = load ptr, ptr %i.hk, align 8, !tbaa !63 ; 2 uses
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hn) #14
  %.pre.i.i = load ptr, ptr %i.hk, align 8, !tbaa !63
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.hp, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.hq, i64 48, i1 false), !tbaa.struct !69
  %.not19.i.i = icmp eq ptr %i.ho, null
  %spec.select.i.i = select i1 %.not19.i.i, ptr %.pre.i.i, ptr %i.ho
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !70, !nonnull !20, !align !71
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hn) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.hn, ptr %3, align 8, !tbaa !66
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hn) #14
  %i.ht = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %spec.select.i.i, i1 noundef zeroext true) #14 ; 0 uses
  %i.hu = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i3.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hu) #14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hn) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hn) #14
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hn) #14
  br label %_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

_ZNK12_GLOBAL__N_123NoReturnFunctionChecker13checkPostCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit: ; preds = %.thread.i, %bb.j, %bb.k, %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.i.i, %bb.m, %bb.o, %bb.q, %bb.r, %bb.u, %bb.v, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ad, %.thread236.i, %bb.ag
  ret void
}

declare noundef zeroext i1 @_ZNK5clang12FunctionDecl10isNoReturnEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK5clang4ento9CallEvent17isGlobalCFunctionEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang4ento14CheckerContext12generateSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !66     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  store ptr %i.a, ptr %4, align 8, !tbaa !66
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !66   ; 3 uses
  store ptr %.pr, ptr %4, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.e = phi ptr [ %i.a, %.thread ], [ %.pr, %bb.b ]
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.e) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.b, %bb.c
  %i.f = call noundef ptr @_ZN5clang4ento14CheckerContext17addTransitionImplEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEbPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3)
  %i.g = load ptr, ptr %4, align 8, !tbaa !66     ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.g, null
  br i1 %.not.i.i3, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.g) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %bb.d
  ret ptr %i.f
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #5

declare noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang4ento14CheckerContext17addTransitionImplEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEbPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nofree noundef align 8 dereferenceable(8) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %6 = alloca %"class.clang::ProgramPoint", align 8 ; 9 uses
  %7 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !66     ; 8 uses
  %.not26 = icmp eq ptr %i.a, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !63 ; 4 uses
  br i1 %.not26, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = icmp ne ptr %i.a, %i.c
  %i.e = icmp ne ptr %4, null                     ; 2 uses
  %or.cond = or i1 %i.e, %i.d
  %or.cond3 = or i1 %2, %or.cond
  br i1 %or.cond3, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.f, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !520, !noalias !519
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i.i.i.i2.i = load i64, ptr %i.j, align 8, !noalias !519
  %i.k = and i64 %.0.copyload.i.i.i.i2.i, 6
  store ptr %i.h, ptr %6, align 8, !tbaa !520, !alias.scope !519
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load <2 x i64>, ptr %i.i, align 8, !noalias !519
  %i.n = and <2 x i64> %i.m, <i64 -1, i64 -2>
  store <2 x i64> %i.n, ptr %i.l, align 8, !alias.scope !519
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.p = ptrtoint ptr %4 to i64
  %i.q = and i64 %i.p, -7
  %i.r = or disjoint i64 %i.k, %i.q
  store i64 %i.r, ptr %i.o, align 8, !alias.scope !519
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !alias.scope !519
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !tbaa.struct !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not19 = icmp eq ptr %3, null
  %spec.select = select i1 %.not19, ptr %.pre, ptr %3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70, !nonnull !20, !align !71 ; 2 uses
  br i1 %2, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit22

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i: ; preds = %bb.f
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8, !tbaa !66
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.a) #14
  %i.v = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %spec.select, i1 noundef zeroext true) #14
end_hunk_0

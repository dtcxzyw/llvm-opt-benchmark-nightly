Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CheckSecuritySyntaxOnly?download=true
inline.NumInlined: 1834
inline.NumDeleted: 820
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN12_GLOBAL__N_17WalkAST15checkCall_getpwEPKN5clang8CallExprEPKNS1_12FunctionDeclE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread: ; preds = %bb.f, %bb.c, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread33, %bb.d, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_17WalkAST16checkCall_mktempEPKN5clang8CallExprEPKNS1_12FunctionDeclE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %6 = alloca %"class.llvm::ArrayRef.1294", align 8 ; 3 uses
  %7 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %8 = alloca %"class.llvm::ArrayRef.1295", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !494, !nonnull !29, !align !49
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.d = load i8, ptr %i.c, align 1, !tbaa !864, !range !28, !noundef !29
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12_GLOBAL__N_17WalkAST17checkCall_mkstempEPKN5clang8CallExprEPKNS1_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2)
  br label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !tbaa !484
  %i.g = and i64 %.sroa.0.0.copyload.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !502 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 16
  %.not.i = icmp eq i8 %i.k, 24
  br i1 %.not.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread31, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !484
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !502
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i8, ptr %i.p, align 16
  %i.r = icmp eq i8 %i.q, 24
  br i1 %i.r, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.d
  %i.s = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.i) #17 ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread31

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread31: ; preds = %bb.c, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %.1.i34 = phi ptr [ %i.s, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit ], [ %i.i, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i34, i64 16
  %i.u = load i64, ptr %i.t, align 16
  %.mask = and i64 %i.u, -281474976710656
  %.not12 = icmp eq i64 %.mask, 281474976710656
  br i1 %.not12, label %bb.e, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread

bb.e:                                             ; preds = %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread31
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i34, i64 48
  %.sroa.0.0.copyload.i14 = load i64, ptr %i.v, align 16, !tbaa !484
  %i.w = and i64 %.sroa.0.0.copyload.i14, -16
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !502 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i8, ptr %i.z, align 16
  %.not.i16 = icmp eq i8 %i.aa, 40
  br i1 %.not.i16, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload.i.i.i.i17 = load i64, ptr %i.ab, align 8, !tbaa !484
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i17, -16
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !502
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i8, ptr %i.af, align 16
  %i.ah = icmp eq i8 %i.ag, 40
  br i1 %i.ah, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit: ; preds = %bb.f
  %i.ai = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.y) #17 ; 2 uses
  %.not13 = icmp eq ptr %i.ai, null
  br i1 %.not13, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread37

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread37: ; preds = %bb.e, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit
  %.1.i1840 = phi ptr [ %i.ai, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit ], [ %i.y, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.i1840, i64 32
  %.sroa.0.0.copyload.i19 = load i64, ptr %i.aj, align 16, !tbaa !484 ; 2 uses
  %i.ak = and i64 %.sroa.0.0.copyload.i19, -16
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !502 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 8, !tbaa !484
  %i.ao = and i64 %.sroa.0.0.copyload.i.i, 15
  %.not.i21 = icmp eq i64 %i.ao, 0
  br i1 %.not.i21, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread37
  %i.ap = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i19) #17
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit:   ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread37, %bb.g
  %.sroa.03.0.in.in.i = phi ptr [ %i.aq, %bb.g ], [ %i.am, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread37 ]
  %.sroa.03.0.in.i = ptrtoint ptr %.sroa.03.0.in.in.i to i64
  %.sroa.03.0.i = and i64 %.sroa.03.0.in.i, -8
  %i.ar = load ptr, ptr %0, align 8, !tbaa !495, !nonnull !29, !align !49
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !78, !nonnull !29, !align !49 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef nonnull align 8 dereferenceable(23904) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #17, !inline_history !3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 18912
  %.sroa.0.0.copyload.i22 = load i64, ptr %i.ay, align 8, !tbaa !484
  %.not41 = icmp eq i64 %.sroa.03.0.i, %.sroa.0.0.copyload.i22
  br i1 %.not41, label %bb.h, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread

bb.h:                                             ; preds = %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.az = load ptr, ptr %0, align 8, !tbaa !495, !nonnull !29, !align !49
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !78, !nonnull !29, !align !49 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef nonnull align 8 dereferenceable(776) ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #17, !inline_history !2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !473
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = or i64 %i.bi, 4
  call void @_ZN5clang4ento22PathDiagnosticLocation11createBeginEPKNS_4StmtERKNS_13SourceManagerEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(776) %i.bf, i64 %i.bj) #17
  %i.bk = load ptr, ptr %0, align 8, !tbaa !495, !nonnull !29, !align !49
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !473
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !552
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !494, !nonnull !29, !align !49 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  %.sroa.0.0.copyload = load ptr, ptr %i.bp, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !26
  store ptr @.str.7, ptr %4, align 8, !tbaa !556
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 8, ptr %i.bq, align 8, !tbaa !557
  store ptr @.str.73, ptr %5, align 8, !tbaa !556
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 114, ptr %i.br, align 8, !tbaa !557
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !486
  %i.bu = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #20
  store i64 %i.bu, ptr %7, align 8
  store ptr %7, ptr %6, align 8, !tbaa !560
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.bv, align 8, !tbaa !561
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @_ZN5clang4ento11BugReporter15EmitBasicReportEPKNS_4DeclENS0_14CheckerNameRefEN4llvm9StringRefES7_S7_NS0_22PathDiagnosticLocationENS6_8ArrayRefINS_11SourceRangeEEENS9_INS_9FixItHintEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.bk, ptr noundef %i.bn, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr nonnull @.str.72, i64 50, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %4, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %5, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1294") align 8 %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1295") align 8 %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread: ; preds = %bb.f, %bb.d, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread31, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_17WalkAST17checkCall_mkstempEPKN5clang8CallExprEPKNS1_12FunctionDeclE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.clang::Expr::EvalResult", align 8 ; 13 uses
  %4 = alloca %"class.llvm::APSInt", align 8      ; 9 uses
  %5 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallString", align 8 ; 8 uses
  %7 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 20 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %10 = alloca %"class.llvm::ArrayRef.1294", align 8 ; 3 uses
  %11 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %12 = alloca %"class.llvm::ArrayRef.1295", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !494, !nonnull !29, !align !49
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.d = load i8, ptr %i.c, align 2, !tbaa !867, !range !28, !noundef !29
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !488
  %i.h = and i64 %i.g, -8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !491  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 9 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !493  ; 2 uses
  %i.n = and i64 %i.m, 4294967295                 ; 5 uses
  %trunc = trunc i64 %i.m to i32
  switch i32 %trunc, label %_ZN4llvm12StringSwitchISt4pairIiiES2_E4CaseENS_13StringLiteralES2_.exit94 [
    i32 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i32 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i64
    i32 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i90
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.o = load i32, ptr %i.l, align 1
  %i.p = xor i32 %i.o, 1702128493
  %i.q = getelementptr i8, ptr %i.l, i64 4
  %i.r = load i16, ptr %i.q, align 1
  %i.s = zext i16 %i.r to i32
  %i.t = xor i32 %i.s, 28781
  %i.u = or i32 %i.p, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt4pairIiiES2_E4CaseENS_13StringLiteralES2_.exit94, label %_ZN4llvm12StringSwitchISt4pairIiiES2_E4CaseENS_13StringLiteralES2_.exit81.thread163

_ZN4llvmneENS_9StringRefES0_.exit.i.i64:          ; preds = %bb.b
  %i.x = load i32, ptr %i.l, align 1
  %i.y = xor i32 %i.x, 1953721197
  %i.z = getelementptr i8, ptr %i.l, i64 3
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 %i.aa, 1886217588
  %i.ac = or i32 %i.y, %i.ab
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %.not.i.i66 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i66, label %_ZN4llvm12StringSwitchISt4pairIiiES2_E4CaseENS_13StringLiteralES2_.exit94, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i77

_ZN4llvmneENS_9StringRefES0_.exit.i.i77:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i64
  %i.af = load i32, ptr %i.l, align 1
  %i.ag = xor i32 %i.af, 1952738157
  %i.ah = getelementptr i8, ptr %i.l, i64 3
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = xor i32 %i.ai, 1886217588
  %i.ak = or i32 %i.ag, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %.not.i.i79 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i79, label %_ZN4llvm12StringSwitchISt4pairIiiES2_E4CaseENS_13StringLiteralES2_.exit94, label %_ZN4llvm12StringSwitchISt4pairIiiES2_E4CaseENS_13StringLiteralES2_.exit81.thread163

_ZN4llvm12StringSwitchISt4pairIiiES2_E4CaseENS_13StringLiteralES2_.exit81.thread163: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i77, %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  br label %_ZN4llvm12StringSwitchISt4pairIiiES2_E4CaseENS_13StringLiteralES2_.exit94

_ZN4llvmneENS_9StringRefES0_.exit.i.i90:          ; preds = %bb.b
  %i.an = load i64, ptr %i.l, align 1
  %i.ao = icmp ne i64 %i.an, 8318268794266151789
  %i.ap = zext i1 %i.ao to i32
  %.not.i.i92 = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not.i.i92, i64 4294967296, i64 -1
  br label %_ZN4llvm12StringSwitchISt4pairIiiES2_E4CaseENS_13StringLiteralES2_.exit94

_ZN4llvm12StringSwitchISt4pairIiiES2_E4CaseENS_13StringLiteralES2_.exit94: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i90, %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i77, %_ZN4llvmneENS_9StringRefES0_.exit.i.i64, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvm12StringSwitchISt4pairIiiES2_E4CaseENS_13StringLiteralES2_.exit81.thread163
  %.sroa.17.3 = phi i64 [ -1, %_ZN4llvm12StringSwitchISt4pairIiiES2_E4CaseENS_13StringLiteralES2_.exit81.thread163 ], [ -4294967296, %_ZN4llvmneENS_9StringRefES0_.exit.i.i77 ], [ %i.aq, %_ZN4llvmneENS_9StringRefES0_.exit.i.i90 ], [ -1, %bb.b ], [ -4294967296, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ -4294967296, %_ZN4llvmneENS_9StringRefES0_.exit.i.i64 ] ; 4 uses
  %.sroa.030.0.extract.trunc = trunc i64 %.sroa.17.3 to i32
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.17.3, 32
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !870
  %.not = icmp sgt i32 %i.as, %.sroa.030.0.extract.trunc
  br i1 %.not, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %_ZN4llvm12StringSwitchISt4pairIiiES2_E4CaseENS_13StringLiteralES2_.exit94
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load i32, ptr %1, align 8
  %i.av = lshr i32 %i.au, 19
  %i.aw = and i32 %i.av, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ax ; 2 uses
  %i.az = and i64 %.sroa.17.3, 4294967295
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !568
  %i.bc = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #20 ; 6 uses
  %i.bd = load i16, ptr %i.bc, align 8
  %i.be = and i16 %i.bd, 511
  %.not169 = icmp eq i16 %i.be, 9
  br i1 %.not169, label %bb.d, label %bb.ak

bb.d:                                             ; preds = %bb.c
  %i.bf = load i32, ptr %i.bc, align 8
  %i.bg = and i32 %i.bf, 29360128
  %.not52 = icmp eq i32 %i.bg, 4194304
  br i1 %.not52, label %bb.e, label %bb.ak

bb.e:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !484
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !53 ; 3 uses
  %i.bo = icmp sgt i64 %.sroa.17.3, -1
  br i1 %i.bo, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.5.0.extract.shift
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i8 0, ptr %3, align 8, !tbaa !873
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.br, align 1, !tbaa !874
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 0, ptr %i.bs, align 2, !tbaa !875
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.bt, align 8, !tbaa !876
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 0, ptr %i.bu, align 8, !tbaa !880
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 4
  %i.bx = and i8 %i.bw, -2
  store i8 %i.bx, ptr %i.bv, align 4
  %i.by = load ptr, ptr %0, align 8, !tbaa !495, !nonnull !29, !align !49
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !78, !nonnull !29, !align !49 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call noundef nonnull align 8 dereferenceable(23904) ptr %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #17, !inline_history !3
  %i.cf = call noundef zeroext i1 @_ZNK5clang4Expr13EvaluateAsIntERNS0_10EvalResultERKNS_10ASTContextENS0_15SideEffectsKindEb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(23904) %i.ce, i32 noundef 0, i1 noundef zeroext false) #17
  br i1 %i.cf, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !882 ; 3 uses
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !882
  %i.ck = icmp ult i32 %i.cj, 65
  br i1 %i.ck, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cl = load i64, ptr %i.cg, align 8, !tbaa !484 ; 2 uses
  store i64 %i.cl, ptr %4, align 8, !tbaa !484
  %i.cm = inttoptr i64 %i.cl to ptr
  br label %_ZN4llvm6APSIntC2ERKS0_.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(13) %i.cg) #17
  %.pre.pre = load i32, ptr %i.ch, align 8, !tbaa !882
  %.pre175.pre = load ptr, ptr %4, align 8
  br label %_ZN4llvm6APSIntC2ERKS0_.exit

_ZN4llvm6APSIntC2ERKS0_.exit:                     ; preds = %bb.h, %bb.i
  %.pre175 = phi ptr [ %i.cm, %bb.h ], [ %.pre175.pre, %bb.i ] ; 4 uses
  %.pre = phi i32 [ %i.cj, %bb.h ], [ %.pre.pre, %bb.i ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !884, !range !28, !noundef !29 ; 2 uses
  store i8 %i.cp, ptr %i.cn, align 4, !tbaa !884
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK4llvm6APSInt10isNegativeEv.exit.thread, label %_ZNK4llvm6APSInt10isNegativeEv.exit

_ZNK4llvm6APSInt10isNegativeEv.exit:              ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit
  %i.cr = add i32 %.pre, -1                       ; 2 uses
  %i.cs = and i32 %i.cr, 63
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl nuw i64 1, %i.ct
  %i.cv = icmp ult i32 %.pre, 65
  %i.cw = lshr i32 %i.cr, 6
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre175, i64 %i.cx
  %.in.i.i.i.i = select i1 %i.cv, ptr %4, ptr %i.cy
  %i.cz = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !484
  %i.da = and i64 %i.cu, %i.cz
  %.not170 = icmp eq i64 %i.da, 0
  br i1 %.not170, label %_ZNK4llvm6APSInt10isNegativeEv.exit.thread, label %bb.j

_ZNK4llvm6APSInt10isNegativeEv.exit.thread:       ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit, %_ZNK4llvm6APSInt10isNegativeEv.exit
  %i.db = icmp ult i32 %.pre, 65
  %spec.select.i101 = select i1 %i.db, ptr %4, ptr %.pre175
  %.0.i = load i64, ptr %spec.select.i101, align 8, !tbaa !484
  %i.dc = trunc i64 %.0.i to i32                  ; 2 uses
  %i.dd = call i32 @llvm.usub.sat.i32(i32 %i.bn, i32 %i.dc)
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm6APSInt10isNegativeEv.exit, %_ZNK4llvm6APSInt10isNegativeEv.exit.thread
  %i.de = phi i1 [ true, %_ZNK4llvm6APSInt10isNegativeEv.exit.thread ], [ false, %_ZNK4llvm6APSInt10isNegativeEv.exit ]
  %.043 = phi i32 [ %i.dd, %_ZNK4llvm6APSInt10isNegativeEv.exit.thread ], [ %i.bn, %_ZNK4llvm6APSInt10isNegativeEv.exit ]
  %.042 = phi i32 [ %i.dc, %_ZNK4llvm6APSInt10isNegativeEv.exit.thread ], [ 0, %_ZNK4llvm6APSInt10isNegativeEv.exit ]
  %i.df = icmp ult i32 %.pre, 65
  %i.dg = icmp eq ptr %.pre175, null
  %or.cond = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %.pre175) #19
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.dh = load i32, ptr %i.bu, align 8, !tbaa !880
  %switch.i.i = icmp ult i32 %i.dh, 2
  br i1 %switch.i.i, label %_ZN5clang4Expr10EvalResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bu) #17
  br label %_ZN5clang4Expr10EvalResultD2Ev.exit

_ZN5clang4Expr10EvalResultD2Ev.exit:              ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %i.de, label %bb.m, label %bb.ak

bb.m:                                             ; preds = %_ZN5clang4Expr10EvalResultD2Ev.exit, %bb.e
  %.245 = phi i32 [ %.043, %_ZN5clang4Expr10EvalResultD2Ev.exit ], [ %i.bn, %bb.e ] ; 3 uses
  %.2 = phi i32 [ %.042, %_ZN5clang4Expr10EvalResultD2Ev.exit ], [ 0, %bb.e ] ; 3 uses
  %.not173 = icmp eq i32 %.245, 0
  br i1 %.not173, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext i32 %.245 to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %.245, 8
  br i1 %min.iters.check, label %.lr.ph.preheader190, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %vec.phi188 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dp, %vector.body ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %wide.load = load <4 x i8>, ptr %i.di, align 1, !tbaa !484
  %wide.load189 = load <4 x i8>, ptr %i.dj, align 1, !tbaa !484
  %i.dk = icmp eq <4 x i8> %wide.load, splat (i8 88)
  %i.dl = icmp eq <4 x i8> %wide.load189, splat (i8 88)
  %i.dm = zext <4 x i1> %i.dk to <4 x i32>
  %i.dn = zext <4 x i1> %i.dl to <4 x i32>
  %i.do = add <4 x i32> %vec.phi, %i.dm           ; 2 uses
  %i.dp = add <4 x i32> %vec.phi188, %i.dn        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !865

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dp, %i.do
  %i.dr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader190

.lr.ph.preheader190:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.046171.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.dr, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.dr, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.ds = icmp ugt i32 %spec.select.lcssa, 5
  br i1 %i.ds, label %bb.ak, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader190, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader190 ] ; 2 uses
end_hunk_0

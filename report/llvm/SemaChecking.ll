Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaChecking?download=true
inline.NumInlined: 16706
inline.NumDeleted: 6578
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5clang4Sema26CheckUnsequencedOperationsEPKNS_4ExprE:_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema18CheckCompletedExprEPNS_4ExprENS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2536 ; 3 uses
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 8
  %i.c = and i16 %i.b, 511
  %i.d = icmp eq i16 %i.c, 63
  %i.e = zext i1 %i.d to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i8 [ 1, %bb.a ], [ %i.e, %bb.b ]
  %i.g = load i8, ptr %i.a, align 8, !tbaa !1203, !range !1111, !noundef !734
  store i8 %i.f, ptr %i.a, align 8, !tbaa !1203
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1152
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1149
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [792 x i8], ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -792
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1202
  switch i32 %i.o, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i [
    i32 0, label %_ZN5clang4Sema24CheckImplicitConversionsEPNS_4ExprENS_14SourceLocationE.exit
    i32 3, label %_ZN5clang4Sema24CheckImplicitConversionsEPNS_4ExprENS_14SourceLocationE.exit
    i32 1, label %_ZN5clang4Sema24CheckImplicitConversionsEPNS_4ExprENS_14SourceLocationE.exit
  ]

_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i:   ; preds = %bb.c
  %i.p = load i24, ptr %1, align 8
  %i.q = and i24 %i.p, 196608
  %or.cond.not.i = icmp eq i24 %i.q, 0
  br i1 %or.cond.not.i, label %bb.d, label %_ZN5clang4Sema24CheckImplicitConversionsEPNS_4ExprENS_14SourceLocationE.exit

bb.d:                                             ; preds = %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i
  tail call void @_ZN5clang4Sema16CheckArrayAccessEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1)
  tail call fastcc void @_ZL26AnalyzeImplicitConversionsRN5clang4SemaEPNS_4ExprENS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, i32 %2)
  br label %_ZN5clang4Sema24CheckImplicitConversionsEPNS_4ExprENS_14SourceLocationE.exit

_ZN5clang4Sema24CheckImplicitConversionsEPNS_4ExprENS_14SourceLocationE.exit: ; preds = %bb.c, %bb.c, %bb.c, %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.i, %bb.d
  %i.r = load i24, ptr %1, align 8
  %i.s = and i24 %i.r, 32768
  %.not = icmp eq i24 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5clang4Sema24CheckImplicitConversionsEPNS_4ExprENS_14SourceLocationE.exit
  tail call void @_ZN5clang4Sema26CheckUnsequencedOperationsEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5clang4Sema24CheckImplicitConversionsEPNS_4ExprENS_14SourceLocationE.exit
  br i1 %3, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i24, ptr %1, align 8
  %i.u = and i24 %i.t, 131072
  %.not8 = icmp eq i24 %i.u, 0
  br i1 %.not8, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5clang4Sema19CheckForIntOverflowEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  store i8 %i.g, ptr %i.a, align 8, !tbaa !1203
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema27CheckBitFieldInitializationENS_14SourceLocationEPNS_9FieldDeclEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZL25AnalyzeBitFieldAssignmentRN5clang4SemaEPNS_9FieldDeclEPNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %2, ptr noundef %3, i32 %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL25AnalyzeBitFieldAssignmentRN5clang4SemaEPNS_9FieldDeclEPNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %2, i32 %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca %"struct.clang::Expr::EvalResult", align 8 ; 12 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %8 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %9 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %11 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %13 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %14 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %15 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %16 = alloca %"class.llvm::APSInt", align 8     ; 14 uses
  %17 = alloca %"class.clang::SourceLocation", align 4 ; 5 uses
  %18 = alloca %"class.llvm::APSInt", align 8     ; 11 uses
  %19 = alloca %"class.llvm::APSInt", align 8     ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %23 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %24 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !1769
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 128
  %.not150 = icmp eq i32 %i.h, 0
  br i1 %.not150, label %bb.b, label %bb.ax

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !1129
  %i.j = and i64 %.sroa.0.0.copyload.i, -16
  %i.k = inttoptr i64 %i.j to ptr                 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !1324
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !1129
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !1324 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load i8, ptr %i.q, align 16
  %i.s = icmp eq i8 %i.r, 13
  %.not6.i = icmp ne ptr %i.p, null
  %.not.not.not.i = and i1 %.not6.i, %i.s
  br i1 %.not.not.not.i, label %_ZNK5clang4Type13isBooleanTypeEv.exit, label %_ZNK5clang4Type13isBooleanTypeEv.exit.thread

_ZNK5clang4Type13isBooleanTypeEv.exit:            ; preds = %bb.b
  %i.t = load i32, ptr %i.q, align 16
  %i.u = and i32 %i.t, 536346624
  %i.v = icmp eq i32 %i.u, 237502464
  br i1 %i.v, label %bb.ax, label %_ZNK5clang4Type13isBooleanTypeEv.exit.thread

_ZNK5clang4Type13isBooleanTypeEv.exit.thread:     ; preds = %bb.b, %_ZNK5clang4Type13isBooleanTypeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.w = load ptr, ptr %i.k, align 16, !tbaa !1324
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.0.0.copyload.i.i.i.i93 = load i64, ptr %i.x, align 8, !tbaa !1129
  %i.y = and i64 %.sroa.0.0.copyload.i.i.i.i93, -16
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !1324 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i8, ptr %i.ab, align 16
  %i.ad = icmp ne i8 %i.ac, 47
  %.not6.i94 = icmp eq ptr %i.aa, null
  %.not.not.i = or i1 %.not6.i94, %i.ad
  br i1 %.not.not.i, label %_ZNK5clang9FieldDecl11getBitWidthEv.exit.thread, label %select.unfold

select.unfold:                                    ; preds = %_ZNK5clang4Type13isBooleanTypeEv.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1334 ; 2 uses
  %i.ag = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.af) #31 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ag, null
  %spec.select = select i1 %.not.not.i.i.i, ptr %i.af, ptr %i.ag ; 3 uses
  store ptr %spec.select, ptr %i.b, align 8, !tbaa !1771
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !736, !nonnull !734, !align !735
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 8192
  %.not79 = icmp eq i64 %i.ak, 0
  br i1 %.not79, label %_ZNK5clang9FieldDecl11getBitWidthEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %select.unfold
  %i.al = getelementptr inbounds nuw i8, ptr %spec.select, i64 128
  %.sroa.0.0.copyload.i.i.i.i96 = load i64, ptr %i.al, align 8 ; 2 uses
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i96, 4
  %.not.i.i.i.i = icmp eq i64 %i.am, 0
  %i.an = and i64 %.sroa.0.0.copyload.i.i.i.i96, -5
  %.not80151 = icmp eq i64 %i.an, 0
  %.not80 = or i1 %.not.i.i.i.i, %.not80151
  br i1 %.not80, label %bb.d, label %_ZNK5clang9FieldDecl11getBitWidthEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %spec.select, i64 72
  %i.ap = load i40, ptr %i.ao, align 8            ; 2 uses
  %i.aq = and i40 %i.ap, 2139095040
  %.not81 = icmp ne i40 %i.aq, 0
  %i.ar = and i40 %i.ap, 547608330240
  %i.as = icmp eq i40 %i.ar, 0
  %or.cond158 = and i1 %.not81, %i.as
  br i1 %or.cond158, label %bb.e, label %_ZNK5clang9FieldDecl11getBitWidthEv.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.at, i32 %3, i32 noundef 7380) #31
  %i.au = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_8EnumDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %_ZNK5clang9FieldDecl11getBitWidthEv.exit.thread

_ZNK5clang9FieldDecl11getBitWidthEv.exit.thread:  ; preds = %_ZNK5clang4Type13isBooleanTypeEv.exit.thread, %select.unfold, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = lshr i32 %i.aw, 2
  %i.ay = and i32 %i.ax, 3
  %.off.i = add nsw i32 %i.ay, -1
  %switch.i = icmp ult i32 %.off.i, 2
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.in.i = select i1 %switch.i, ptr %i.bb, ptr %i.az
  %i.bc = load ptr, ptr %.in.i, align 8, !tbaa !1129
  %i.bd = load i24, ptr %i.bc, align 8
  %i.be = and i24 %i.bd, 196608
  %or.cond178 = icmp eq i24 %i.be, 0
  br i1 %or.cond178, label %bb.f, label %bb.ax

bb.f:                                             ; preds = %_ZNK5clang9FieldDecl11getBitWidthEv.exit.thread
  %i.bf = load i24, ptr %2, align 8
  %i.bg = and i24 %i.bf, 196608
  %or.cond149.not = icmp eq i24 %i.bg, 0
  br i1 %or.cond149.not, label %bb.g, label %bb.ax

bb.g:                                             ; preds = %bb.f
  %i.bh = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #32 ; 6 uses
  %i.bi = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i8 0, ptr %6, align 8, !tbaa !1303
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 0, ptr %i.bj, align 1, !tbaa !1304
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 0, ptr %i.bk, align 2, !tbaa !1305
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.bl, align 8, !tbaa !1306
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i32 0, ptr %i.bm, align 8, !tbaa !1310
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = and i8 %i.bo, -2
  store i8 %i.bp, ptr %i.bn, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !737, !nonnull !734, !align !735
  %i.bs = call noundef zeroext i1 @_ZNK5clang4Expr13EvaluateAsIntERNS0_10EvalResultERKNS_10ASTContextENS0_15SideEffectsKindEb(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(23904) %i.br, i32 noundef 2, i1 noundef zeroext false) #31
  br i1 %i.bs, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.0.0.copyload.i103 = load i64, ptr %i.bt, align 8, !tbaa !1129
  %i.bu = and i64 %.sroa.0.0.copyload.i103, -16
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !1324
  %i.bx = call noundef ptr @_ZNK5clang4Type13getAsEnumDeclEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bw) ; 3 uses
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !1771
  %.not82 = icmp eq ptr %i.bx, null
  br i1 %.not82, label %bb.i, label %.thread140

bb.i:                                             ; preds = %bb.h
  %i.by = call noundef ptr @_ZNK5clang4Decl7getAttrINS_17PreferredTypeAttrEEEPT_v(ptr noundef nonnull align 8 dereferenceable(33) %1) ; 3 uses
  %.not83 = icmp eq ptr %i.by, null
  br i1 %.not83, label %thread-pre-split.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2524
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ca, align 8, !tbaa !1129
  %i.cb = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load ptr, ptr %i.cc, align 16, !tbaa !1324
  %i.ce = call noundef ptr @_ZNK5clang4Type13getAsEnumDeclEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cd) ; 3 uses
  store ptr %i.ce, ptr %i.c, align 8, !tbaa !1771
  %.not84 = icmp eq ptr %i.ce, null
  br i1 %.not84, label %thread-pre-split.thread, label %.thread140

.thread140:                                       ; preds = %bb.h, %thread-pre-split
  %i.cf = phi ptr [ %i.ce, %thread-pre-split ], [ %i.bx, %bb.h ]
  %.072143 = phi ptr [ %i.by, %thread-pre-split ], [ null, %bb.h ] ; 6 uses
  %i.cg = load ptr, ptr %i.k, align 16, !tbaa !1324
  %i.ch = call noundef zeroext i1 @_ZNK5clang4Type32isSignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cg) #31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.cj = load i40, ptr %i.ci, align 8            ; 2 uses
  %i.ck = and i40 %i.cj, 547608330240
  %i.cl = icmp ne i40 %i.ck, 0                    ; 3 uses
  %i.cm = zext i1 %i.cl to i8
  store i8 %i.cm, ptr %i.d, align 1, !tbaa !1203
  %.not = xor i1 %i.cl, true                      ; 2 uses
  %or.cond = or i1 %i.ch, %.not
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread140
  %i.cn = icmp eq ptr %.072143, null
  %i.co = select i1 %i.cn, i32 7779, i32 7533
  br label %bb.m

bb.k:                                             ; preds = %.thread140
  %i.cp = trunc i40 %i.cj to i32
  %i.cq = lshr i32 %i.cp, 23
  %i.cr = icmp eq i32 %i.cq, %i.bi
  %i.cs = and i1 %i.cr, %.not
  %or.cond161 = and i1 %i.cs, %i.ch
  br i1 %or.cond161, label %bb.l, label %.thread144

bb.l:                                             ; preds = %bb.k
  %i.ct = icmp eq ptr %.072143, null
  %i.cu = select i1 %i.ct, i32 7630, i32 7532
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.073 = phi i32 [ %i.co, %bb.j ], [ %i.cu, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i32 %3, i32 noundef %.073) #31
  %i.cw = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_9FieldDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_8EnumDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cw, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !1769 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cz, align 8 ; 3 uses
  %i.da = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i107 = icmp eq i64 %i.da, 0
  br i1 %.not.i107, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1460
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

bb.o:                                             ; preds = %bb.m
  %i.df = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit: ; preds = %bb.n, %bb.o
  %i.dg = phi ptr [ %i.de, %bb.n ], [ %i.df, %bb.o ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %.not86 = icmp eq ptr %i.dg, null
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  br i1 %.not86, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit
  %.sroa.0.0.copyload.i108 = load i64, ptr %i.dg, align 8, !tbaa !1129
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = inttoptr i64 %.sroa.0.0.copyload.i108 to ptr
  store ptr %i.di, ptr %9, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.dh, ptr %i.dj, align 8
  %i.dk = call i64 @_ZNK5clang7TypeLoc14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #32
  br label %bb.q

bb.q:                                             ; preds = %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit, %bb.p
  %storemerge = phi i64 [ %i.dk, %bb.p ], [ 0, %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit ]
  store i64 %storemerge, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.dl = call i32 @_ZNK5clang14DeclaratorDecl19getTypeSpecStartLocEv(ptr noundef nonnull align 8 dereferenceable(68) %i.cy) #31
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i32 %i.dl, i32 noundef 5972) #31
  %i.dm = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIbEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %i.dn = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.dm, ptr noundef nonnull align 4 dereferenceable(8) %8) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %.not87 = icmp eq ptr %.072143, null
  br i1 %.not87, label %.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.do = getelementptr inbounds nuw i8, ptr %.072143, i64 24
  %.sroa.0.0.copyload.i.i109 = load i64, ptr %i.do, align 8, !tbaa !1103
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i109 to i32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i32 %.sroa.0.0.extract.trunc.i, i32 noundef 5959) #31
  %i.dp = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_8EnumDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.split

.split:                                           ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %.pre = load i8, ptr %i.d, align 1, !tbaa !1203, !range !1111
  %i.dq = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  br i1 %i.dq, label %bb.s, label %bb.t

.thread144:                                       ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  br i1 %i.cl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.split, %.thread144
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !1771
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.dt = load i40, ptr %i.ds, align 8            ; 2 uses
  %i.du = trunc i40 %i.dt to i32
  %i.dv = lshr i32 %i.du, 23
  %i.dw = and i32 %i.dv, 255
  %i.dx = add nuw nsw i32 %i.dw, 1
  %i.dy = lshr i40 %i.dt, 31
  %i.dz = trunc nuw nsw i40 %i.dy to i32
  %i.ea = and i32 %i.dz, 255
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.dx, i32 %i.ea)
  br label %bb.u

bb.t:                                             ; preds = %.split, %.thread144
end_hunk_0

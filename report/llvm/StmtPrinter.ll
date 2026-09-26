Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StmtPrinter?download=true
inline.NumInlined: 4763
inline.NumDeleted: 2318
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_111StmtPrinter32VisitCXXDependentScopeMemberExprEPN5clang27CXXDependentScopeMemberExprE:bb.a
  store ptr %i.bf, ptr %i.ax, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

_ZN4llvm11raw_ostreamlsEPKc.exit12:               ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit, %bb.m, %bb.l, %_ZNK5clang27CXXDependentScopeMemberExpr18hasTemplateKeywordEv.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clanglsERN4llvm11raw_ostreamENS_19DeclarationNameInfoE(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull byval(%"struct.clang::DeclarationNameInfo") align 8 %i.bh) #19 ; 0 uses
  %i.bj = load i32, ptr %1, align 8
  %i.bk = and i32 %i.bj, 1048576
  %.not.i.i13 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i13, label %_ZNK5clang27CXXDependentScopeMemberExpr23hasExplicitTemplateArgsEv.exit.thread, label %_ZNK5clang27CXXDependentScopeMemberExpr23hasExplicitTemplateArgsEv.exit

_ZNK5clang27CXXDependentScopeMemberExpr23hasExplicitTemplateArgsEv.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !490
  %.not24 = icmp eq i32 %i.bm, 0
  br i1 %.not24, label %_ZNK5clang27CXXDependentScopeMemberExpr23hasExplicitTemplateArgsEv.exit.thread, label %_ZNK5clang27CXXDependentScopeMemberExpr18template_argumentsEv.exit

_ZNK5clang27CXXDependentScopeMemberExpr18template_argumentsEv.exit: ; preds = %_ZNK5clang27CXXDependentScopeMemberExpr23hasExplicitTemplateArgsEv.exit
  %i.bn = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !499
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @_ZN5clang25printTemplateArgumentListERN4llvm11raw_ostreamENS0_8ArrayRefINS_19TemplateArgumentLocEEERKNS_14PrintingPolicyEPKNS_21TemplateParameterListE(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr nonnull %i.br, i64 %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef null) #19
  br label %_ZNK5clang27CXXDependentScopeMemberExpr23hasExplicitTemplateArgsEv.exit.thread

_ZNK5clang27CXXDependentScopeMemberExpr23hasExplicitTemplateArgsEv.exit.thread: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12, %_ZNK5clang27CXXDependentScopeMemberExpr18template_argumentsEv.exit, %_ZNK5clang27CXXDependentScopeMemberExpr23hasExplicitTemplateArgsEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111StmtPrinter18VisitCXXDeleteExprEPN5clang13CXXDeleteExprE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = and i32 %i.a, 524288
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !447
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !448  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 2
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull @.str.132, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  store i16 14906, ptr %i.g, align 1
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !448
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.n, ptr %i.f, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.c, %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !447
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !448  ; 2 uses
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ult i64 %i.v, 7
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.x = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull @.str.135, i64 noundef 7) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.s, ptr noundef nonnull align 1 dereferenceable(7) @.str.135, i64 7, i1 false)
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !448
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  store ptr %i.z, ptr %i.r, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

_ZN4llvm11raw_ostreamlsEPKc.exit6:                ; preds = %bb.e, %bb.f
  %i.aa = load i32, ptr %1, align 8
  %i.ab = and i32 %i.aa, 1048576
  %.not14 = icmp eq i32 %i.ab, 0
  br i1 %.not14, label %_ZN4llvm11raw_ostreamlsEPKc.exit9, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit6
  %i.ac = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !447
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !448 ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ult i64 %i.aj, 3
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull @.str.136, i64 noundef 3) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ag, ptr noundef nonnull align 1 dereferenceable(3) @.str.136, i64 3, i1 false)
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !448
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  store ptr %i.an, ptr %i.af, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

_ZN4llvm11raw_ostreamlsEPKc.exit9:                ; preds = %bb.i, %bb.h, %_ZN4llvm11raw_ostreamlsEPKc.exit6
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !939 ; 3 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !432 ; 3 uses
  %.not.i13 = icmp eq ptr %i.ar, null
  br i1 %.not.i13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !442
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.as) #19, !inline_history !476
  br i1 %i.aw, label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_111StmtPrinterEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ap), !inline_history !476
  br label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9
  %i.ax = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !447
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !448 ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ult i64 %i.be, 11
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull @.str.5, i64 noundef 11) #19 ; 0 uses
  br label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.bb, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false)
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !448
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 11
  store ptr %i.bi, ptr %i.ba, align 8, !tbaa !448
  br label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit

_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit: ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111StmtPrinter21VisitCXXConstructExprEPN5clang16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = and i32 %i.a, 6291456
  %or.cond.not = icmp eq i32 %i.b, 2097152
  br i1 %or.cond.not, label %bb.b, label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !447
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !448  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull @.str.16, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  store i8 123, ptr %i.g, align 1
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !448
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.f, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.c, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !552  ; 3 uses
  %.not35 = icmp eq i32 %i.m, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = zext i32 %i.m to i64
  %i.p = load i16, ptr %1, align 8
  %i.q = and i16 %i.p, 511
  %.not.i.i.i.peel = icmp eq i16 %i.q, 118
  %spec.select.v.i.i.i.peel = select i1 %.not.i.i.i.peel, i64 48, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.peel
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !461  ; 3 uses
  %i.t = load i16, ptr %i.s, align 8
  %i.u = and i16 %i.t, 511
  %i.v = icmp eq i16 %i.u, 116
  br i1 %i.v, label %._crit_edge, label %.split.peel

.split.peel:                                      ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !432  ; 3 uses
  %.not.i31.peel = icmp eq ptr %i.w, null
  br i1 %.not.i31.peel, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split.peel
  %i.x = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !442
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.x) #19, !inline_history !476
  br i1 %i.ab, label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit.peel, label %bb.f

bb.f:                                             ; preds = %bb.e, %.split.peel
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_111StmtPrinterEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.s), !inline_history !476
  br label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit.peel

_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit.peel: ; preds = %bb.f, %bb.e
  %.not.peel = icmp eq i32 %i.m, 1
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit.peel, %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit ], [ 1, %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit.peel ] ; 3 uses
  %i.ac = load i16, ptr %1, align 8
  %i.ad = and i16 %i.ac, 511
  %.not.i.i.i = icmp eq i16 %i.ad, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !461
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = and i16 %i.ah, 511
  %i.aj = icmp eq i16 %i.ai, 116
  br i1 %i.aj, label %._crit_edge, label %.split14

.split14:                                         ; preds = %.peel.next
  %i.ak = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !447
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !448 ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp ult i64 %i.ar, 2
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split14
  %i.at = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull @.str.10, i64 noundef 2) #19 ; 0 uses
  br label %.split

bb.h:                                             ; preds = %.split14
  store i16 8236, ptr %i.ao, align 1
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !448
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store ptr %i.av, ptr %i.an, align 8, !tbaa !448
  br label %.split

.split:                                           ; preds = %bb.h, %bb.g
  %i.aw = load i16, ptr %1, align 8
  %i.ax = and i16 %i.aw, 511
  %.not.i.i.i22 = icmp eq i16 %i.ax, 118
  %spec.select.v.i.i.i23 = select i1 %.not.i.i.i22, i64 48, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i23
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %phi.call = load ptr, ptr %i.az, align 8, !tbaa !461 ; 3 uses
  %.not.i = icmp eq ptr %phi.call, null
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.split
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !432 ; 3 uses
  %.not.i31 = icmp eq ptr %i.ba, null
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !442
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull %phi.call, ptr noundef nonnull align 8 dereferenceable(48) %i.bb) #19, !inline_history !476
  br i1 %i.bf, label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_111StmtPrinterEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %phi.call), !inline_history !476
  br label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit

bb.l:                                             ; preds = %.split
  %i.bg = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !447
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !448 ; 2 uses
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp ult i64 %i.bn, 11
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull @.str.5, i64 noundef 11) #19 ; 0 uses
  br label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.bk, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false)
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !448
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 11
  store ptr %i.br, ptr %i.bj, align 8, !tbaa !448
  br label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit

_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !940

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit, %.peel.next, %.lr.ph, %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit.peel, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.bs = load i32, ptr %1, align 8
  %i.bt = and i32 %i.bs, 6291456
  %or.cond34.not = icmp eq i32 %i.bt, 2097152
  br i1 %or.cond34.not, label %bb.o, label %_ZN4llvm11raw_ostreamlsEPKc.exit27

bb.o:                                             ; preds = %._crit_edge
  %i.bu = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !447
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !448 ; 2 uses
  %i.bz = icmp eq ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef nonnull @.str.17, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit27

bb.q:                                             ; preds = %bb.o
  store i8 125, ptr %i.by, align 1
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !448
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit27

_ZN4llvm11raw_ostreamlsEPKc.exit27:               ; preds = %bb.q, %bb.p, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111StmtPrinter27VisitCXXTemporaryObjectExprEPN5clang22CXXTemporaryObjectExprE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !433
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.d, align 8, !tbaa !481
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !482
  call void @_ZNK5clang8QualType5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.f = load i32, ptr %1, align 8                ; 2 uses
  %i.g = and i32 %i.f, 4194304
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.f, 2097152
  %.not34 = icmp eq i32 %i.h, 0
  %i.i = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !447
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !448  ; 3 uses
  %i.n = icmp eq ptr %i.k, %i.m                   ; 2 uses
  br i1 %.not34, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull @.str.16, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.c
  store i8 123, ptr %i.m, align 1
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !448
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.q, ptr %i.l, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull @.str.15, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.f
  store i8 40, ptr %i.m, align 1
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !448
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.l, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.a
  %i.u = load i16, ptr %1, align 8
  %i.v = and i16 %i.u, 511
  %.not.i.i = icmp eq i16 %i.v, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !552  ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not3539 = icmp eq i32 %i.y, 0
  br i1 %.not3539, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit
  %.sroa.029.040 = phi ptr [ %i.w, %.lr.ph ], [ %i.bm, %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit ] ; 4 uses
  %i.ac = load ptr, ptr %.sroa.029.040, align 8, !tbaa !473
  %i.ad = call noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #19
  br i1 %i.ad, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i16, ptr %1, align 8
  %i.af = and i16 %i.ae, 511
  %.not.i.i12 = icmp eq i16 %i.af, 118
  %spec.select.v.i.i13 = select i1 %.not.i.i12, i64 48, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i13
  %.not36 = icmp eq ptr %.sroa.029.040, %i.ag
  br i1 %.not36, label %_ZN4llvm11raw_ostreamlsEPKc.exit17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !447
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !448 ; 2 uses
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ult i64 %i.ao, 2
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull @.str.10, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

bb.m:                                             ; preds = %bb.k
  store i16 8236, ptr %i.al, align 1
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !448
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

_ZN4llvm11raw_ostreamlsEPKc.exit17:               ; preds = %bb.m, %bb.l, %bb.j
  %i.at = load ptr, ptr %.sroa.029.040, align 8, !tbaa !473 ; 3 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !432 ; 3 uses
  %.not.i27 = icmp eq ptr %i.au, null
  br i1 %.not.i27, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !442
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.at, ptr noundef nonnull align 8 dereferenceable(48) %i.av) #19, !inline_history !476
  br i1 %i.az, label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_111StmtPrinterEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.at), !inline_history !476
  br label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17
  %i.ba = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !447
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !448 ; 2 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp ult i64 %i.bh, 11
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull @.str.5, i64 noundef 11) #19 ; 0 uses
  br label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.be, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false)
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !448
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 11
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !448
  br label %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit

_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.029.040, i64 8 ; 2 uses
  %.not35 = icmp eq ptr %i.bm, %i.aa
  br i1 %.not35, label %._crit_edge, label %bb.i, !llvm.loop !941

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_111StmtPrinter9PrintExprEPN5clang4ExprE.exit, %bb.i, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.bn = load i32, ptr %1, align 8               ; 2 uses
  %i.bo = and i32 %i.bn, 4194304
  %.not37 = icmp eq i32 %i.bo, 0
  br i1 %.not37, label %bb.t, label %_ZN4llvm11raw_ostreamlsEPKc.exit20

bb.t:                                             ; preds = %._crit_edge
  %i.bp = and i32 %i.bn, 2097152
  %.not38 = icmp eq i32 %i.bp, 0
  %i.bq = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !447
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 5 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !448 ; 3 uses
  %i.bv = icmp eq ptr %i.bs, %i.bu                ; 2 uses
  br i1 %.not38, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %i.bv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull @.str.17, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

bb.w:                                             ; preds = %bb.u
  store i8 125, ptr %i.bu, align 1
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !448
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

bb.x:                                             ; preds = %bb.t
  br i1 %i.bv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull @.str.3, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

bb.z:                                             ; preds = %bb.x
  store i8 41, ptr %i.bu, align 1
  %i.ca = load ptr, ptr %i.bt, align 8, !tbaa !448
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store ptr %i.cb, ptr %i.bt, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

_ZN4llvm11raw_ostreamlsEPKc.exit20:               ; preds = %bb.z, %bb.y, %bb.w, %bb.v, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111StmtPrinter23VisitCXXBoolLiteralExprEPN5clang18CXXBoolLiteralExprE(ptr %.0.val, i32 %.0.val1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i32 %.0.val1, 524288
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  %i.b = select i1 %.not, ptr @.str.138, ptr @.str.137 ; 2 uses
  %i.c = select i1 %.not, i64 5, i64 4            ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !447
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !448  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.val, ptr noundef nonnull %i.b, i64 noundef %i.c) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(4) %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !448
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  store ptr %i.n, ptr %i.f, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111StmtPrinter14VisitBlockExprEPN5clang9BlockExprE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !945  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !447
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !448  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull @.str.139, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 94, ptr %i.g, align 1
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !448
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.f, align 8, !tbaa !448
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.l = tail call noundef ptr @_ZNK5clang9BlockExpr15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.n = load i8, ptr %i.m, align 16
  %i.o = icmp eq i8 %i.n, 23
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !440, !nonnull !420, !align !421 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !447
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !448  ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 2
end_hunk_0

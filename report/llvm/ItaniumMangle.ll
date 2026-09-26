Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ItaniumMangle?download=true
inline.NumInlined: 8905
inline.NumDeleted: 4151
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_114CXXNameMangler23isStdCharSpecializationEPKN5clang31ClassTemplateSpecializationDeclEN4llvm9StringRefEb:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !78
  %i.aj = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114CXXNameMangler15isSpecializedAsEN5clang8QualTypeEN4llvm9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.ai, ptr nonnull @.str.7, i64 9, i64 %i.q)
  br i1 %i.aj, label %bb.h, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread32

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = tail call noundef ptr @_ZNK5clang31ClassTemplateSpecializationDecl22getSpecializedTemplateEv(ptr noundef nonnull align 8 dereferenceable(181) %1) #27
  %i.al = tail call noundef ptr @_ZNK5clang4Decl25getOwningModuleForLinkageEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ak) #27
  %.not16 = icmp eq ptr %i.al, null
  br label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread32

_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread32: ; preds = %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit, %bb.d, %bb.a, %bb.c, %bb.e, %bb.g, %bb.h, %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread, %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit
  %.2 = phi i1 [ false, %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit ], [ false, %bb.a ], [ false, %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread ], [ false, %bb.c ], [ %.not16, %bb.h ], [ false, %bb.g ], [ false, %bb.e ], [ false, %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit ], [ false, %bb.d ]
  ret i1 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114CXXNameMangler15isSpecializedAsEN5clang8QualTypeEN4llvm9StringRefES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3, i64 %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 16
  br i1 %i.a, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !533
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !78
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !533 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 16
  %i.k = icmp ne i8 %i.j, 49
  %.not28 = icmp eq ptr %i.h, null
  %.not = or i1 %.not28, %i.k
  br i1 %.not, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !811  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 127
  %i.q = add nsw i32 %i.p, -63
  %i.r = icmp ult i32 %i.q, -2
  %.not1529 = icmp eq ptr %i.m, null
  %.not15 = or i1 %.not1529, %i.r
  br i1 %.not15, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !586
  %i.u = and i64 %i.t, -8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !589  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.x, align 8, !tbaa !591
  %i.aa = and i64 %i.z, 4294967295
  %.not.i.i = icmp eq i64 %i.aa, %3
  br i1 %.not.i.i, label %bb.e, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp eq i64 %3, 0
  br i1 %i.ab, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit

_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit: ; preds = %bb.e
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.y, ptr %2, i64 %3)
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25

_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread: ; preds = %bb.e, %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !743, !nonnull !139, !align !140
  %i.ae = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_124ItaniumMangleContextImpl23getEffectiveDeclContextEPKN5clang4DeclE(ptr noundef nonnull align 8 dereferenceable(193) %i.ad, ptr noundef nonnull %i.m) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = and i16 %i.ag, 127
  %i.ai = icmp eq i16 %i.ah, 78
  br i1 %i.ai, label %bb.f, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25

bb.f:                                             ; preds = %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread
  %.val = load ptr, ptr %0, align 8
  %i.aj = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull %i.ae) #27, !inline_history !6
  %i.ak = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_124ItaniumMangleContextImpl23getEffectiveDeclContextEPKN5clang4DeclE(ptr noundef nonnull align 8 dereferenceable(193) %.val, ptr noundef %i.aj), !inline_history !6
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i16, ptr %i.al, align 8
  %i.an = and i16 %i.am, 127
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.g, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !768
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !586 ; 2 uses
  %i.at = and i64 %i.as, 7
  %i.au = icmp ne i64 %i.at, 0
  %i.av = and i64 %i.as, -8                       ; 2 uses
  %.not1.i.i = icmp eq i64 %i.av, 0
  %.not.i.i19 = or i1 %i.au, %.not1.i.i
  br i1 %.not.i.i19, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !589 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !591
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = icmp eq i64 %i.ba, 3
  br i1 %i.bb, label %_ZN12_GLOBAL__N_114CXXNameMangler14isStdNamespaceEPKN5clang11DeclContextE.exit, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25

_ZN12_GLOBAL__N_114CXXNameMangler14isStdNamespaceEPKN5clang11DeclContextE.exit: ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 1
  %i.be = xor i16 %i.bd, 29811
  %i.bf = getelementptr i8, ptr %i.bc, i64 2
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i16
  %i.bi = xor i16 %i.bh, 100
  %i.bj = or i16 %i.be, %i.bi
  %i.bk = icmp ne i16 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.i, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_114CXXNameMangler14isStdNamespaceEPKN5clang11DeclContextE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !780 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !857
  %.not16 = icmp eq i32 %i.bp, 1
  br i1 %.not16, label %bb.j, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !78
  %.not30 = icmp eq i64 %i.br, %4
  br i1 %.not30, label %bb.k, label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25

bb.k:                                             ; preds = %bb.j
  %i.bs = tail call noundef ptr @_ZNK5clang31ClassTemplateSpecializationDecl22getSpecializedTemplateEv(ptr noundef nonnull align 8 dereferenceable(181) %i.m) #27
  %i.bt = tail call noundef ptr @_ZNK5clang4Decl25getOwningModuleForLinkageEv(ptr noundef nonnull align 8 dereferenceable(33) %i.bs) #27
  %.not17 = icmp eq ptr %i.bt, null
  br label %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25

_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread25: ; preds = %bb.h, %bb.g, %bb.f, %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread, %bb.d, %bb.b, %bb.i, %bb.j, %bb.k, %_ZN12_GLOBAL__N_114CXXNameMangler14isStdNamespaceEPKN5clang11DeclContextE.exit, %bb.c, %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %_ZN12_GLOBAL__N_114CXXNameMangler14isStdNamespaceEPKN5clang11DeclContextE.exit ], [ false, %bb.c ], [ false, %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit ], [ false, %bb.j ], [ false, %bb.i ], [ %.not17, %bb.k ], [ false, %bb.d ], [ false, %_ZNK5clang14IdentifierInfo5isStrEN4llvm9StringRefE.exit.thread ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ]
  ret i1 %.3
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %4 = alloca %class.anon.595, align 8            ; 58 uses
  %5 = alloca %class.anon.596, align 8            ; 6 uses
  %6 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %7 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %8 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %9 = alloca %"class.clang::APValue", align 8    ; 6 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %10 = alloca %"class.llvm::APSInt", align 8     ; 6 uses
  %11 = alloca %class.anon.668, align 8           ; 7 uses
  %12 = alloca %class.anon.669, align 8           ; 6 uses
  %13 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %14 = alloca %"struct.clang::CXXRewrittenBinaryOperator::DecomposedForm", align 8 ; 6 uses
  %15 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %16 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %17 = alloca %"class.llvm::APInt", align 8      ; 3 uses
  %18 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %19 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %20 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %21 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %22 = alloca %"class.llvm::APInt", align 8      ; 3 uses
  %23 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %24 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %i.d = zext i1 %3 to i8
  store i8 %i.d, ptr %i.a, align 1, !tbaa !858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i8 1, ptr %i.b, align 1, !tbaa !858
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.a, ptr %4, align 8, !tbaa !860
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !860
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !863
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %0, ptr %5, align 8, !tbaa !865
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.g, align 8, !tbaa !754
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.sroa.0847.0 = phi i64 [ 0, %bb.a ], [ %.sroa.0847.0.be, %.backedge.backedge ] ; 14 uses
  %i.h = phi ptr [ %1, %bb.a ], [ %.be, %.backedge.backedge ] ; 191 uses
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 511
  switch i16 %i.j, label %_ZN4llvm11raw_ostreamlsEc.exit [
    i16 25, label %bb.jw
    i16 121, label %bb.c
    i16 14, label %bb.jv
    i16 74, label %bb.ju
    i16 72, label %bb.jt
    i16 75, label %bb.js
    i16 100, label %bb.jr
    i16 21, label %bb.jq
    i16 111, label %bb.ji
    i16 50, label %bb.jf
    i16 12, label %bb.jc
    i16 22, label %bb.jb
    i16 53, label %bb.ja
    i16 107, label %bb.iz
    i16 60, label %bb.iw
    i16 9, label %bb.ir
    i16 57, label %bb.ie
    i16 54, label %_ZN4llvm5APIntD2Ev.exit709
    i16 119, label %bb.hv
    i16 41, label %bb.hq
    i16 80, label %bb.hl
    i16 65, label %bb.hk
    i16 64, label %bb.hj
    i16 62, label %bb.hi
    i16 120, label %bb.hh
    i16 71, label %bb.hf
    i16 61, label %bb.he
    i16 7, label %bb.hd
    i16 73, label %bb.hc
    i16 15, label %bb.gq
    i16 77, label %bb.gl
    i16 20, label %bb.gk
    i16 93, label %bb.gg
    i16 87, label %bb.gf
    i16 86, label %bb.ge
    i16 84, label %bb.gd
    i16 85, label %bb.gc
    i16 83, label %bb.gb
    i16 88, label %bb.ft
    i16 89, label %bb.fs
    i16 82, label %bb.fr
    i16 81, label %bb.fq
    i16 132, label %bb.fn
    i16 103, label %bb.fm
    i16 122, label %bb.fi
    i16 123, label %bb.fi
    i16 47, label %bb.fh
    i16 48, label %bb.fg
    i16 127, label %bb.ff
    i16 4, label %bb.fe
    i16 114, label %bb.fb
    i16 98, label %bb.ey
    i16 99, label %bb.ev
    i16 6, label %bb.er
    i16 5, label %bb.eb
    i16 108, label %bb.ea
    i16 102, label %bb.dz
    i16 118, label %bb.dq
    i16 117, label %bb.dg
    i16 97, label %bb.cx
    i16 24, label %bb.cw
    i16 113, label %bb.cs
    i16 23, label %bb.co
    i16 46, label %bb.ck
    i16 105, label %bb.bx
    i16 109, label %bb.bi
    i16 91, label %bb.ar
    i16 94, label %bb.ar
    i16 92, label %bb.ar
    i16 8, label %bb.ao
    i16 101, label %bb.an
    i16 115, label %bb.am
    i16 116, label %bb.al
    i16 70, label %bb.x
    i16 55, label %bb.w
    i16 63, label %bb.b
    i16 133, label %bb.v
    i16 96, label %bb.l
    i16 90, label %bb.c
    i16 68, label %bb.c
    i16 11, label %bb.c
    i16 124, label %bb.c
    i16 17, label %bb.c
    i16 125, label %bb.c
    i16 95, label %bb.c
    i16 3, label %bb.c
    i16 67, label %bb.c
    i16 126, label %bb.c
    i16 10, label %bb.c
    i16 76, label %bb.c
    i16 13, label %bb.c
    i16 18, label %bb.c
    i16 27, label %bb.c
    i16 42, label %bb.c
    i16 39, label %bb.c
    i16 28, label %bb.c
    i16 33, label %bb.c
    i16 35, label %bb.c
    i16 34, label %bb.c
    i16 32, label %bb.c
    i16 29, label %bb.c
    i16 30, label %bb.c
    i16 31, label %bb.c
    i16 36, label %bb.c
    i16 37, label %bb.c
    i16 38, label %bb.c
    i16 40, label %bb.c
    i16 59, label %bb.c
    i16 49, label %bb.c
    i16 66, label %bb.c
    i16 78, label %bb.c
    i16 79, label %bb.c
  ]

bb.b:                                             ; preds = %.backedge
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1144
  br label %.backedge.backedge

bb.c:                                             ; preds = %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !863
  %i.n = load ptr, ptr %4, align 8, !tbaa !869, !nonnull !139
  %i.o = load i8, ptr %i.n, align 1, !tbaa !858, !range !531, !noundef !139
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv.exit"

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !870, !nonnull !139
  %i.r = load i8, ptr %i.q, align 1, !tbaa !858, !range !531, !noundef !139
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv.exit"

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !568  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !567
  %.not.i.i = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 88) #27 ; 0 uses
  br label %"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv.exit"

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !568
  store i8 88, ptr %i.w, align 1, !tbaa !78
  br label %"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv.exit"

"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv.exit": ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !870, !nonnull !139
  store i8 0, ptr %i.ab, align 1, !tbaa !858
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !553, !range !531, !noundef !139
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN4llvm11raw_ostreamlsEc.exit, label %bb.h

bb.h:                                             ; preds = %"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv.exit"
  %i.af = load ptr, ptr %0, align 8, !tbaa !743, !nonnull !139, !align !140
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !821, !nonnull !139, !align !140
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ai = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %6, ptr noundef nonnull align 8 dereferenceable(15256) %i.ah, i32 %i.ai, i32 noundef 2368) #27
  %i.aj = call noundef ptr @_ZNK5clang4Stmt16getStmtClassNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #27
  %i.ak = load ptr, ptr %6, align 8, !tbaa !825   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %bb.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !826
  %i.an = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.am) ; 2 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !825
  br label %bb.i

bb.i:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, %bb.h
  %i.ao = phi ptr [ %i.an, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ak, %bb.h ] ; 2 uses
  %i.ap = ptrtoint ptr %i.aj to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.ar = load i8, ptr %i.ao, align 8, !tbaa !838
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  store i8 1, ptr %i.at, align 1, !tbaa !78
  %i.au = load ptr, ptr %6, align 8, !tbaa !825   ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i8, ptr %i.au, align 8, !tbaa !838 ; 2 uses
  %i.ax = add i8 %i.aw, 1
  store i8 %i.ax, ptr %i.au, align 8, !tbaa !838
  %i.ay = zext i8 %i.aw to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ay
  store i64 %i.ap, ptr %i.az, align 8, !tbaa !120
  %i.ba = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #31 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 416 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb:bb.a

.lr.ph1043.prol:                                  ; preds = %.lr.ph1043.preheader, %.lr.ph1043.prol
  %.04151041.prol = phi i32 [ %spec.select.prol, %.lr.ph1043.prol ], [ %i.id, %.lr.ph1043.preheader ]
  %.sroa.0837.01040.prol = phi ptr [ %i.it, %.lr.ph1043.prol ], [ %i.ij, %.lr.ph1043.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1043.prol ], [ 0, %.lr.ph1043.preheader ]
  %i.ip = load ptr, ptr %.sroa.0837.01040.prol, align 8, !tbaa !875
  %i.iq = load i16, ptr %i.ip, align 8
  %i.ir = and i16 %i.iq, 511
  %i.is = icmp eq i16 %i.ir, 22
  %spec.select.prol = select i1 %i.is, i32 -1, i32 %.04151041.prol ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0837.01040.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1043.prol.loopexit, label %.lr.ph1043.prol, !llvm.loop !1136

.lr.ph1043.prol.loopexit:                         ; preds = %.lr.ph1043.prol, %.lr.ph1043.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph1043.preheader ], [ %spec.select.prol, %.lr.ph1043.prol ]
  %.04151041.unr = phi i32 [ %i.id, %.lr.ph1043.preheader ], [ %spec.select.prol, %.lr.ph1043.prol ]
  %.sroa.0837.01040.unr = phi ptr [ %i.ij, %.lr.ph1043.preheader ], [ %i.it, %.lr.ph1043.prol ]
  %i.iu = icmp ult i64 %i.im, 24
  br i1 %i.iu, label %._crit_edge1044, label %.lr.ph1043

._crit_edge1044:                                  ; preds = %.lr.ph1043.prol.loopexit, %.lr.ph1043, %_ZN4llvm11raw_ostreamlsEPKc.exit1459
  %.0415.lcssa = phi i32 [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit1459 ], [ %spec.select.lcssa.unr, %.lr.ph1043.prol.loopexit ], [ %spec.select.3, %.lr.ph1043 ]
  %i.iv = load ptr, ptr %i.gr, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.iv, i32 noundef %.0415.lcssa, i1 noundef zeroext false)
  %i.iw = load i32, ptr %i.h, align 8
  %i.ix = lshr i32 %i.iw, 19
  %i.iy = and i32 %i.ix, 1
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.iz ; 2 uses
  %i.jb = load i32, ptr %i.ic, align 8, !tbaa !1157 ; 2 uses
  %i.jc = zext i32 %i.jb to i64
  %.idx1102 = shl nuw nsw i64 %i.jc, 3
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.idx1102
  %.not8741045 = icmp eq i32 %i.jb, 0
  br i1 %.not8741045, label %._crit_edge1049, label %.lr.ph1048

.lr.ph1043:                                       ; preds = %.lr.ph1043.prol.loopexit, %.lr.ph1043
  %.04151041 = phi i32 [ %spec.select.3, %.lr.ph1043 ], [ %.04151041.unr, %.lr.ph1043.prol.loopexit ]
  %.sroa.0837.01040 = phi ptr [ %i.ka, %.lr.ph1043 ], [ %.sroa.0837.01040.unr, %.lr.ph1043.prol.loopexit ] ; 5 uses
  %i.je = load ptr, ptr %.sroa.0837.01040, align 8, !tbaa !875
  %i.jf = load i16, ptr %i.je, align 8
  %i.jg = and i16 %i.jf, 511
  %i.jh = icmp eq i16 %i.jg, 22
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0837.01040, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !875
  %i.jk = load i16, ptr %i.jj, align 8
  %i.jl = and i16 %i.jk, 511
  %i.jm = icmp eq i16 %i.jl, 22
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0837.01040, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !875
  %i.jp = load i16, ptr %i.jo, align 8
  %i.jq = and i16 %i.jp, 511
  %i.jr = icmp eq i16 %i.jq, 22
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0837.01040, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !875
  %i.ju = load i16, ptr %i.jt, align 8
  %i.jv = and i16 %i.ju, 511
  %i.jw = icmp eq i16 %i.jv, 22
  %i.jx = select i1 %i.jw, i1 true, i1 %i.jr
  %i.jy = select i1 %i.jx, i1 true, i1 %i.jm
  %i.jz = select i1 %i.jy, i1 true, i1 %i.jh
  %spec.select.3 = select i1 %i.jz, i32 -1, i32 %.04151041 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0837.01040, i64 32 ; 2 uses
  %.not873.3 = icmp eq ptr %i.ka, %i.il
  br i1 %.not873.3, label %._crit_edge1044, label %.lr.ph1043

._crit_edge1049:                                  ; preds = %.lr.ph1048, %._crit_edge1044
  %i.kb = load ptr, ptr %i.ho, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !568 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !567
  %.not.i502 = icmp ult ptr %i.kd, %i.kf
  br i1 %.not.i502, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge1049
  %i.kg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.kb, i8 noundef zeroext 69) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.bh:                                            ; preds = %._crit_edge1049
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  store ptr %i.kh, ptr %i.kc, align 8, !tbaa !568
  store i8 69, ptr %i.kd, align 1, !tbaa !78
  br label %_ZN4llvm11raw_ostreamlsEc.exit

.lr.ph1048:                                       ; preds = %._crit_edge1044, %.lr.ph1048
  %.sroa.0830.01046 = phi ptr [ %i.kj, %.lr.ph1048 ], [ %i.ja, %._crit_edge1044 ] ; 2 uses
  %i.ki = load ptr, ptr %.sroa.0830.01046, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.ki, i32 noundef -1, i1 noundef zeroext false)
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0830.01046, i64 8 ; 2 uses
  %.not874 = icmp eq ptr %i.kj, %i.jd
  br i1 %.not874, label %._crit_edge1049, label %.lr.ph1048

bb.bi:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.kk = load i32, ptr %i.h, align 8             ; 2 uses
  %i.kl = and i32 %i.kk, 524288
  %.not875 = icmp eq i32 %i.kl, 0
  br i1 %.not875, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.ko = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.kn, ptr noundef nonnull @.str.58) ; 0 uses
  %.pre = load i32, ptr %i.h, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.kp = phi i32 [ %.pre, %bb.bj ], [ %i.kk, %bb.bi ]
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.ks = and i32 %i.kp, 1048576
  %.not876 = icmp eq i32 %i.ks, 0
  %.str.59..str.60 = select i1 %.not876, ptr @.str.60, ptr @.str.59
  %i.kt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.kr, ptr noundef nonnull %.str.59..str.60) ; 0 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.kv = load i32, ptr %i.h, align 8             ; 2 uses
  %i.kw = lshr i32 %i.kv, 20
  %.lobit.i.i.i = and i32 %i.kw, 1
  %i.kx = lshr i32 %i.kv, 24
  %.lobit.i.i = and i32 %i.kx, 1
  %i.ky = add nuw nsw i32 %.lobit.i.i.i, %.lobit.i.i
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kz ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !78 ; 2 uses
  %i.ld = zext i32 %i.lc to i64
  %.idx1103 = shl nuw nsw i64 %i.ld, 3
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 %.idx1103
  %.not8771050 = icmp eq i32 %i.lc, 0
  br i1 %.not8771050, label %._crit_edge1054, label %.lr.ph1053

._crit_edge1054:                                  ; preds = %.lr.ph1053, %bb.bk
  %i.lf = load ptr, ptr %i.kq, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 32 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !568 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !567
  %.not.i506 = icmp ult ptr %i.lh, %i.lj
  br i1 %.not.i506, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge1054
  %i.lk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.lf, i8 noundef zeroext 95) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit508

bb.bm:                                            ; preds = %._crit_edge1054
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 1
  store ptr %i.ll, ptr %i.lg, align 8, !tbaa !568
  store i8 95, ptr %i.lh, align 1, !tbaa !78
  br label %_ZN4llvm11raw_ostreamlsEc.exit508

_ZN4llvm11raw_ostreamlsEc.exit508:                ; preds = %bb.bl, %bb.bm
  %i.lm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.lm, align 8, !tbaa !78
  %i.ln = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.lo = inttoptr i64 %i.ln to ptr
  %i.lp = load ptr, ptr %i.lo, align 16, !tbaa !533 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load i8, ptr %i.lq, align 16
  %.not.i.i509 = icmp eq i8 %i.lr, 40
  br i1 %.not.i.i509, label %_ZNK5clang10CXXNewExpr16getAllocatedTypeEv.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit508
  %i.ls = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.lp) #27
  br label %_ZNK5clang10CXXNewExpr16getAllocatedTypeEv.exit

_ZNK5clang10CXXNewExpr16getAllocatedTypeEv.exit:  ; preds = %_ZN4llvm11raw_ostreamlsEc.exit508, %bb.bn
  %.1.i.i = phi ptr [ %i.ls, %bb.bn ], [ %i.lp, %_ZN4llvm11raw_ostreamlsEc.exit508 ]
  %i.lt = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.lt, align 16, !tbaa !78
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler10mangleTypeEN5clang8QualTypeE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0.0.copyload.i1.i)
  %i.lu = load i32, ptr %i.h, align 8             ; 2 uses
  %i.lv = and i32 %i.lu, 16777216
  %.not878 = icmp eq i32 %i.lv, 0
  br i1 %.not878, label %.loopexit902, label %_ZNK5clang10CXXNewExpr14getInitializerEv.exit

.lr.ph1053:                                       ; preds = %bb.bk, %.lr.ph1053
  %.sroa.0826.01051 = phi ptr [ %i.lx, %.lr.ph1053 ], [ %i.la, %bb.bk ] ; 2 uses
  %i.lw = load ptr, ptr %.sroa.0826.01051, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.lw, i32 noundef -1, i1 noundef zeroext false)
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0826.01051, i64 8 ; 2 uses
  %.not877 = icmp eq ptr %i.lx, %i.le
  br i1 %.not877, label %._crit_edge1054, label %.lr.ph1053, !llvm.loop !1137

_ZNK5clang10CXXNewExpr14getInitializerEv.exit:    ; preds = %_ZNK5clang10CXXNewExpr16getAllocatedTypeEv.exit
  %i.ly = and i32 %i.lu, 100663296
  %i.lz = icmp eq i32 %i.ly, 67108864
  %i.ma = load ptr, ptr %i.kq, align 8, !tbaa !580, !nonnull !139, !align !140
  %.str.52..str.61 = select i1 %i.lz, ptr @.str.52, ptr @.str.61
  %i.mb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ma, ptr noundef nonnull %.str.52..str.61) ; 0 uses
  %i.mc = load i32, ptr %i.h, align 8             ; 3 uses
  %i.md = and i32 %i.mc, 16777216
  %.not.i510 = icmp ne i32 %i.md, 0
  call void @llvm.assume(i1 %.not.i510)
  %i.me = lshr i32 %i.mc, 20
  %.lobit.i.i511 = and i32 %i.me, 1
  %i.mf = zext nneg i32 %.lobit.i.i511 to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.mf
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !875 ; 7 uses
  %i.mi = load i16, ptr %i.mh, align 8
  %i.mj = and i16 %i.mi, 511                      ; 4 uses
  %i.mk = add nsw i16 %i.mj, -119
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.mk, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNK5clang10CXXNewExpr14getInitializerEv.exit
  %.not.i.i.i513 = icmp eq i16 %i.mj, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i513, i64 48, i64 40
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 %spec.select.v.i.i.i ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !1159 ; 2 uses
  %i.mo = zext i32 %i.mn to i64
  %.idx1104 = shl nuw nsw i64 %i.mo, 3
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.idx1104
  %.not8801055 = icmp eq i32 %i.mn, 0
  br i1 %.not8801055, label %.loopexit902, label %.lr.ph1058

.lr.ph1058:                                       ; preds = %bb.bo, %.lr.ph1058
  %.sroa.0818.01056 = phi ptr [ %i.mr, %.lr.ph1058 ], [ %i.ml, %bb.bo ] ; 2 uses
  %i.mq = load ptr, ptr %.sroa.0818.01056, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.mq, i32 noundef -1, i1 noundef zeroext false)
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0818.01056, i64 8 ; 2 uses
  %.not880 = icmp eq ptr %i.mr, %i.mp
  br i1 %.not880, label %.loopexit902, label %.lr.ph1058, !llvm.loop !1138

bb.bp:                                            ; preds = %_ZNK5clang10CXXNewExpr14getInitializerEv.exit
  %.not882 = icmp eq i16 %i.mj, 19
  br i1 %.not882, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !78 ; 2 uses
  %.not4391059 = icmp eq i32 %i.mt, 0
  br i1 %.not4391059, label %.loopexit902, label %.lr.ph1062

.lr.ph1062:                                       ; preds = %bb.bq
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mv = zext i32 %i.mt to i64
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph1062, %bb.br
  %indvars.iv = phi i64 [ 0, %.lr.ph1062 ], [ %indvars.iv.next, %bb.br ] ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %indvars.iv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !839
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.mx, i32 noundef -1, i1 noundef zeroext false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not439 = icmp eq i64 %indvars.iv.next, %i.mv
  br i1 %.not439, label %.loopexit902, label %bb.br, !llvm.loop !1139

bb.bs:                                            ; preds = %bb.bp
  %i.my = and i32 %i.mc, 100663296
  %i.mz = icmp eq i32 %i.my, 67108864
  %i.na = icmp eq i16 %i.mj, 55
  %or.cond866 = and i1 %i.mz, %i.na
  br i1 %or.cond866, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler22mangleInitListElementsEPKN5clang12InitListExprE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull %i.mh)
  br label %.loopexit902

bb.bu:                                            ; preds = %bb.bs
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull %i.mh, i32 noundef -1, i1 noundef zeroext false)
  br label %.loopexit902

.loopexit902:                                     ; preds = %.lr.ph1058, %bb.br, %bb.bo, %bb.bq, %bb.bt, %bb.bu, %_ZNK5clang10CXXNewExpr16getAllocatedTypeEv.exit
  %i.nb = load ptr, ptr %i.kq, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 32 ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !568 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !567
  %.not.i515 = icmp ult ptr %i.nd, %i.nf
  br i1 %.not.i515, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.loopexit902
  %i.ng = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.nb, i8 noundef zeroext 69) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.bw:                                            ; preds = %.loopexit902
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 1
  store ptr %i.nh, ptr %i.nc, align 8, !tbaa !568
  store i8 69, ptr %i.nd, align 1, !tbaa !78
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.bx:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.ni = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !1166 ; 2 uses
  %.not440 = icmp eq ptr %i.nj, null
  br i1 %.not440, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nk = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.nl = load i8, ptr %i.nk, align 8
  %i.nm = trunc i8 %i.nl to i1
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleMemberExprBaseEPKN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.nj, i1 noundef zeroext %i.nm)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.nn = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.0.0.copyload.i.i518 = load i64, ptr %i.nn, align 8, !tbaa !120 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !1167 ; 3 uses
  %.not441 = icmp eq ptr %i.np, null
  %.not884 = icmp eq i64 %.sroa.0.0.copyload.i.i518, 0 ; 2 uses
  br i1 %.not441, label %bb.ci, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %.not884, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler22mangleUnresolvedPrefixEN5clang19NestedNameSpecifierEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0.0.copyload.i.i518, i1 noundef zeroext true)
  %.sroa.0.0.copyload.i519 = load i64, ptr %i.np, align 8, !tbaa !78
  %i.nq = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114CXXNameMangler30mangleUnresolvedTypeOrSimpleIdEN5clang8QualTypeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0.0.copyload.i519, ptr nonnull @.str.62, i64 0) ; 0 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 32 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !568 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !567
  %.not.i520 = icmp ult ptr %i.nu, %i.nw
  br i1 %.not.i520, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ns, i8 noundef zeroext 69) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit522

bb.cd:                                            ; preds = %bb.cb
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 1
  store ptr %i.ny, ptr %i.nt, align 8, !tbaa !568
  store i8 69, ptr %i.nu, align 1, !tbaa !78
  br label %_ZN4llvm11raw_ostreamlsEc.exit522

bb.ce:                                            ; preds = %bb.ca
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.ob = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.oa, ptr noundef nonnull @.str.63) ; 0 uses
  %.sroa.0.0.copyload.i523 = load i64, ptr %i.np, align 8, !tbaa !78
  %i.oc = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114CXXNameMangler30mangleUnresolvedTypeOrSimpleIdEN5clang8QualTypeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0.0.copyload.i523, ptr nonnull @.str.62, i64 0)
  br i1 %i.oc, label %_ZN4llvm11raw_ostreamlsEc.exit522, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.od = load ptr, ptr %i.nz, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 32 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !568 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !567
  %.not.i524 = icmp ult ptr %i.of, %i.oh
  br i1 %.not.i524, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.oi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.od, i8 noundef zeroext 69) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit522

bb.ch:                                            ; preds = %bb.cf
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  store ptr %i.oj, ptr %i.oe, align 8, !tbaa !568
  store i8 69, ptr %i.of, align 1, !tbaa !78
  br label %_ZN4llvm11raw_ostreamlsEc.exit522

bb.ci:                                            ; preds = %bb.bz
  br i1 %.not884, label %_ZN4llvm11raw_ostreamlsEc.exit522, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler22mangleUnresolvedPrefixEN5clang19NestedNameSpecifierEb(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0.0.copyload.i.i518, i1 noundef zeroext false)
  br label %_ZN4llvm11raw_ostreamlsEc.exit522

_ZN4llvm11raw_ostreamlsEc.exit522:                ; preds = %bb.ch, %bb.cg, %bb.cd, %bb.cc, %bb.ci, %bb.cj, %bb.ce
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.om = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ol, ptr noundef nonnull @.str.64) ; 0 uses
  %i.on = call i64 @_ZNK5clang23CXXPseudoDestructorExpr16getDestroyedTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %i.h) #27
  %i.oo = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114CXXNameMangler30mangleUnresolvedTypeOrSimpleIdEN5clang8QualTypeEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %i.on, ptr nonnull @.str.62, i64 0) ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.ck:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.op = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !881 ; 2 uses
  %i.or = load i32, ptr %i.h, align 8             ; 5 uses
  %i.os = and i32 %i.or, 524288
  %i.ot = icmp ne i32 %i.os, 0
  %i.ou = and i32 %i.or, 1048576
  %.not.i.i527 = icmp eq i32 %i.ou, 0
  br i1 %.not.i.i527, label %_ZNK5clang10MemberExpr12getQualifierEv.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ov = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i.i528 = load i64, ptr %i.ov, align 8, !tbaa !120
  br label %_ZNK5clang10MemberExpr12getQualifierEv.exit

_ZNK5clang10MemberExpr12getQualifierEv.exit:      ; preds = %bb.ck, %bb.cl
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i528, %bb.cl ], [ 0, %bb.ck ]
  %i.ow = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !1168
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 40
  %.sroa.0.0.copyload.i529 = load i64, ptr %i.oy, align 8, !tbaa !120
  %i.oz = and i32 %i.or, 4194304
  %.not.i.i.i530 = icmp eq i32 %i.oz, 0
  br i1 %.not.i.i.i530, label %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit, label %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.i

_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.i: ; preds = %_ZNK5clang10MemberExpr12getQualifierEv.exit
  %i.pa = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.pb = lshr i32 %i.or, 20
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.pb, 1
  %i.pc = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.pc
  %i.pe = lshr i32 %i.or, 21
  %.lobit.i.i.i.i.i.i.i = and i32 %i.pe, 1
  %i.pf = zext nneg i32 %.lobit.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !125
  %.not.i531 = icmp eq i32 %i.ph, 0
  br i1 %.not.i531, label %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.i
  %i.pi = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.pc
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.pf ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 60
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb:bb.a

bb.cv:                                            ; preds = %_ZNK5clang27CXXDependentScopeMemberExpr18getNumTemplateArgsEv.exit
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleMemberExprBaseEPKN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.qk, i1 noundef zeroext %i.qn), !inline_history !1140
  br label %_ZN12_GLOBAL__N_114CXXNameMangler16mangleMemberExprEPKN5clang4ExprEbNS1_19NestedNameSpecifierEPNS1_9NamedDeclENS1_15DeclarationNameEPKNS1_19TemplateArgumentLocEjj.exit559

_ZN12_GLOBAL__N_114CXXNameMangler16mangleMemberExprEPKN5clang4ExprEbNS1_19NestedNameSpecifierEPNS1_9NamedDeclENS1_15DeclarationNameEPKNS1_19TemplateArgumentLocEjj.exit559: ; preds = %_ZNK5clang27CXXDependentScopeMemberExpr18getNumTemplateArgsEv.exit, %bb.cv
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleUnresolvedNameEN5clang19NestedNameSpecifierENS1_15DeclarationNameEPKNS1_19TemplateArgumentLocEjj(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0.0.copyload.i.i549, i64 %.sroa.0.0.copyload.i.i550, ptr noundef %.0.i553860, i32 noundef %.0.i557, i32 noundef %2), !inline_history !1140
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.cw:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.qy = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.0.0.copyload.i.i560 = load i64, ptr %i.qy, align 8, !tbaa !120
  %i.qz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.0.0.copyload.i.i561 = load i64, ptr %i.qz, align 8, !tbaa !120
  %i.ra = call noundef ptr @_ZNK5clang12OverloadExpr15getTemplateArgsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.h)
  %i.rb = load i32, ptr %i.h, align 8             ; 2 uses
  %i.rc = and i32 %i.rb, 524288
  %.not.i.i.i562 = icmp eq i32 %i.rc, 0
  br i1 %.not.i.i.i562, label %_ZNK5clang12OverloadExpr18getNumTemplateArgsEv.exit570, label %_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i.i563

_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i.i563: ; preds = %bb.cw
  %i.rd = and i32 %i.rb, 511
  %i.re = icmp eq i32 %i.rd, 24
  %i.rf = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !78
  %i.rh = zext i32 %i.rg to i64
  %.1.i.i.v.v.i.i.i564 = select i1 %i.re, i64 64, i64 80
  %.1.i.i.v.i.i.i565 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.1.i.i.v.v.i.i.i564
  %.1.i.i.i.i.i566 = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i.v.i.i.i565, i64 %i.rh
  %i.ri = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i566, i64 12
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !883
  br label %_ZNK5clang12OverloadExpr18getNumTemplateArgsEv.exit570

_ZNK5clang12OverloadExpr18getNumTemplateArgsEv.exit570: ; preds = %_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i.i563, %bb.cw
  %.0.i568 = phi i32 [ 0, %bb.cw ], [ %i.rj, %_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i.i563 ]
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleUnresolvedNameEN5clang19NestedNameSpecifierENS1_15DeclarationNameEPKNS1_19TemplateArgumentLocEjj(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0.0.copyload.i.i560, i64 %.sroa.0.0.copyload.i.i561, ptr noundef %i.ra, i32 noundef %.0.i568, i32 noundef %2)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.cx:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.rk = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !78 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.0.copyload.i.i.i.i = load i64, ptr %i.rm, align 8
  %i.rn = and i64 %.0.copyload.i.i.i.i, 4
  %.not885 = icmp eq i64 %i.rn, 0
  br i1 %.not885, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ro = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !839
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.rs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.rr, ptr noundef nonnull @.str.65) ; 0 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i571 = load i64, ptr %i.rt, align 8, !tbaa !78
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler10mangleTypeEN5clang8QualTypeE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0.0.copyload.i571)
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler22mangleInitListElementsEPKN5clang12InitListExprE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.rp)
  %i.ru = load ptr, ptr %i.rq, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.rv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ru, ptr noundef nonnull @.str.20) ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.cz:                                            ; preds = %bb.cx
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.ry = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.rx, ptr noundef nonnull @.str.66) ; 0 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i572 = load i64, ptr %i.rz, align 8, !tbaa !78
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler10mangleTypeEN5clang8QualTypeE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0.0.copyload.i572)
  %.not442 = icmp eq i32 %i.rl, 1                 ; 2 uses
  br i1 %.not442, label %.lr.ph1065, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.sa = load ptr, ptr %i.rw, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 32 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !568 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !567
  %.not.i573 = icmp ult ptr %i.sc, %i.se
  br i1 %.not.i573, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.sf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.sa, i8 noundef zeroext 95) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit575

bb.dc:                                            ; preds = %bb.da
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  store ptr %i.sg, ptr %i.sb, align 8, !tbaa !568
  store i8 95, ptr %i.sc, align 1, !tbaa !78
  br label %_ZN4llvm11raw_ostreamlsEc.exit575

_ZN4llvm11raw_ostreamlsEc.exit575:                ; preds = %bb.dc, %bb.db
  %.not4431063 = icmp eq i32 %i.rl, 0
  br i1 %.not4431063, label %._crit_edge1066.thread, label %.lr.ph1065

.lr.ph1065:                                       ; preds = %bb.cz, %_ZN4llvm11raw_ostreamlsEc.exit575
  %i.sh = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.si = zext i32 %i.rl to i64
  br label %bb.dd

._crit_edge1066:                                  ; preds = %bb.dd
  br i1 %.not442, label %_ZN4llvm11raw_ostreamlsEc.exit, label %._crit_edge1066.thread

bb.dd:                                            ; preds = %.lr.ph1065, %bb.dd
  %indvars.iv1247 = phi i64 [ 0, %.lr.ph1065 ], [ %indvars.iv.next1248, %bb.dd ] ; 2 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv1247
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !839
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.sk, i32 noundef -1, i1 noundef zeroext false)
  %indvars.iv.next1248 = add nuw nsw i64 %indvars.iv1247, 1 ; 2 uses
  %.not443 = icmp eq i64 %indvars.iv.next1248, %i.si
  br i1 %.not443, label %._crit_edge1066, label %bb.dd, !llvm.loop !1141

._crit_edge1066.thread:                           ; preds = %_ZN4llvm11raw_ostreamlsEc.exit575, %._crit_edge1066
  %i.sl = load ptr, ptr %i.rw, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 32 ; 2 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !568 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !567
  %.not.i576 = icmp ult ptr %i.sn, %i.sp
  br i1 %.not.i576, label %bb.df, label %bb.de

bb.de:                                            ; preds = %._crit_edge1066.thread
  %i.sq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.sl, i8 noundef zeroext 69) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.df:                                            ; preds = %._crit_edge1066.thread
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 1
  store ptr %i.sr, ptr %i.sm, align 8, !tbaa !568
  store i8 69, ptr %i.sn, align 1, !tbaa !78
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.dg:                                            ; preds = %.backedge
  %i.ss = load i32, ptr %i.h, align 8             ; 2 uses
  %i.st = and i32 %i.ss, 6291456
  %or.cond868.not = icmp eq i32 %i.st, 2097152
  br i1 %or.cond868.not, label %bb.dh, label %_ZN4llvm11raw_ostreamlsEPKc.exit596

bb.dh:                                            ; preds = %bb.dg
  %i.su = load ptr, ptr %i.f, align 8, !tbaa !863
  %i.sv = load ptr, ptr %4, align 8, !tbaa !869, !nonnull !139
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !858, !range !531, !noundef !139
  %i.sx = trunc nuw i8 %i.sw to i1
  br i1 %i.sx, label %bb.di, label %"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv.exit583"

bb.di:                                            ; preds = %bb.dh
  %i.sy = load ptr, ptr %i.e, align 8, !tbaa !870, !nonnull !139
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !858, !range !531, !noundef !139
  %i.ta = trunc nuw i8 %i.sz to i1
  br i1 %i.ta, label %bb.dj, label %"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv.exit583"

bb.dj:                                            ; preds = %bb.di
  %i.tb = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 32 ; 2 uses
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !568 ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 24
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !567
  %.not.i.i582 = icmp ult ptr %i.te, %i.tg
  br i1 %.not.i.i582, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.th = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.tc, i8 noundef zeroext 88) #27 ; 0 uses
  br label %"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv.exit583"

bb.dl:                                            ; preds = %bb.dj
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 1
  store ptr %i.ti, ptr %i.td, align 8, !tbaa !568
  store i8 88, ptr %i.te, align 1, !tbaa !78
  br label %"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv.exit583"

"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv.exit583": ; preds = %bb.dh, %bb.di, %bb.dk, %bb.dl
  %i.tj = load ptr, ptr %i.e, align 8, !tbaa !870, !nonnull !139
  store i8 0, ptr %i.tj, align 1, !tbaa !858
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !567
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 32 ; 3 uses
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !568 ; 2 uses
  %i.tq = ptrtoint ptr %i.tn to i64
  %i.tr = ptrtoint ptr %i.tp to i64
  %i.ts = sub i64 %i.tq, %i.tr
  %i.tt = icmp ult i64 %i.ts, 2
  br i1 %i.tt, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv.exit583"
  %i.tu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.tl, ptr noundef nonnull @.str.52, i64 noundef 2) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit586

bb.dn:                                            ; preds = %"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv.exit583"
  store i16 27753, ptr %i.tp, align 1
  %i.tv = load ptr, ptr %i.to, align 8, !tbaa !568
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 2
  store ptr %i.tw, ptr %i.to, align 8, !tbaa !568
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit586

_ZN4llvm11raw_ostreamlsEPKc.exit586:              ; preds = %bb.dm, %bb.dn
  %i.tx = load i16, ptr %i.h, align 8
  %i.ty = and i16 %i.tx, 511
  %.not.i.i.i.i587 = icmp eq i16 %i.ty, 118
  %spec.select.v.i.i.i.i588 = select i1 %.not.i.i.i.i587, i64 48, i64 40
  %i.tz = getelementptr inbounds nuw i8, ptr %i.h, i64 %spec.select.v.i.i.i.i588 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !1159 ; 2 uses
  %i.uc = zext i32 %i.ub to i64
  %.idx1105 = shl nuw nsw i64 %i.uc, 3
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 %.idx1105
  %.not8861067 = icmp eq i32 %i.ub, 0
  br i1 %.not8861067, label %._crit_edge1070, label %.lr.ph1069

._crit_edge1070:                                  ; preds = %.lr.ph1069, %_ZN4llvm11raw_ostreamlsEPKc.exit586
  %i.ue = load ptr, ptr %i.tk, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !567
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 32 ; 3 uses
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !568 ; 2 uses
  %i.uj = icmp eq ptr %i.ug, %i.ui
  br i1 %i.uj, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %._crit_edge1070
  %i.uk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ue, ptr noundef nonnull @.str.20, i64 noundef 1) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.dp:                                            ; preds = %._crit_edge1070
  store i8 69, ptr %i.ui, align 1
  %i.ul = load ptr, ptr %i.uh, align 8, !tbaa !568
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 1
  store ptr %i.um, ptr %i.uh, align 8, !tbaa !568
  br label %_ZN4llvm11raw_ostreamlsEc.exit

.lr.ph1069:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit586, %.lr.ph1069
  %.sroa.0802.01068 = phi ptr [ %i.uo, %.lr.ph1069 ], [ %i.tz, %_ZN4llvm11raw_ostreamlsEPKc.exit586 ] ; 2 uses
  %i.un = load ptr, ptr %.sroa.0802.01068, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.un, i32 noundef -1, i1 noundef zeroext false)
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.0802.01068, i64 8 ; 2 uses
  %.not886 = icmp eq ptr %i.uo, %i.ud
  br i1 %.not886, label %._crit_edge1070, label %.lr.ph1069

_ZN4llvm11raw_ostreamlsEPKc.exit596:              ; preds = %bb.dg
  %i.up = and i32 %i.ss, 511
  %.not.i.i.i.i579 = icmp eq i32 %i.up, 118
  %spec.select.v.i.i.i.i580 = select i1 %.not.i.i.i.i579, i64 48, i64 40
  %i.uq = getelementptr inbounds nuw i8, ptr %i.h, i64 %spec.select.v.i.i.i.i580
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !839
  br label %.backedge.backedge

bb.dq:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.us = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !1159
  %i.uu = load i32, ptr %i.h, align 8
  %i.uv = and i32 %i.uu, 2097152
  %i.uw = icmp ne i32 %i.uv, 0                    ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !580, !nonnull !139, !align !140
  %.str.65..str.66 = select i1 %i.uw, ptr @.str.65, ptr @.str.66
  %i.uz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.uy, ptr noundef nonnull %.str.65..str.66) ; 0 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i597 = load i64, ptr %i.va, align 8, !tbaa !78
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler10mangleTypeEN5clang8QualTypeE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0.0.copyload.i597)
  %.not = xor i1 %i.uw, true
  %i.vb = icmp ne i32 %i.ut, 1                    ; 2 uses
  %or.cond = and i1 %i.vb, %.not
  br i1 %or.cond, label %bb.dr, label %_ZN4llvm11raw_ostreamlsEc.exit600

bb.dr:                                            ; preds = %bb.dq
  %i.vc = load ptr, ptr %i.ux, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 32 ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !568 ; 3 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !567
  %.not.i598 = icmp ult ptr %i.ve, %i.vg
  br i1 %.not.i598, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.vh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.vc, i8 noundef zeroext 95) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit600

bb.dt:                                            ; preds = %bb.dr
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ve, i64 1
  store ptr %i.vi, ptr %i.vd, align 8, !tbaa !568
  store i8 95, ptr %i.ve, align 1, !tbaa !78
  br label %_ZN4llvm11raw_ostreamlsEc.exit600

_ZN4llvm11raw_ostreamlsEc.exit600:                ; preds = %bb.dt, %bb.ds, %bb.dq
  %i.vj = load i32, ptr %i.h, align 8             ; 2 uses
  %i.vk = and i32 %i.vj, 4194304
  %.not887 = icmp eq i32 %i.vk, 0
  %i.vl = and i32 %i.vj, 511
  %.not.i.i.i.i604 = icmp eq i32 %i.vl, 118
  %spec.select.v.i.i.i.i605 = select i1 %.not.i.i.i.i604, i64 48, i64 40
  %i.vm = getelementptr inbounds nuw i8, ptr %i.h, i64 %spec.select.v.i.i.i.i605 ; 3 uses
  br i1 %.not887, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit600
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !839
  %i.vo = call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vn) #31
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !1152
  %i.vr = call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vq) #31
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler22mangleInitListElementsEPKN5clang12InitListExprE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.vr)
  br label %.loopexit

bb.dv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit600
  %i.vs = load i32, ptr %i.us, align 8, !tbaa !1159 ; 2 uses
  %i.vt = zext i32 %i.vs to i64
  %.idx1106 = shl nuw nsw i64 %i.vt, 3
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.idx1106
  %.not8881071 = icmp eq i32 %i.vs, 0
  br i1 %.not8881071, label %.loopexit, label %.lr.ph1074

.lr.ph1074:                                       ; preds = %bb.dv, %.lr.ph1074
  %.sroa.0796.01072 = phi ptr [ %i.vw, %.lr.ph1074 ], [ %i.vm, %bb.dv ] ; 2 uses
  %i.vv = load ptr, ptr %.sroa.0796.01072, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.vv, i32 noundef -1, i1 noundef zeroext false)
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.0796.01072, i64 8 ; 2 uses
  %.not888 = icmp eq ptr %i.vw, %i.vu
  br i1 %.not888, label %.loopexit, label %.lr.ph1074

.loopexit:                                        ; preds = %.lr.ph1074, %bb.dv, %bb.du
  %or.cond4 = or i1 %i.vb, %i.uw
  br i1 %or.cond4, label %bb.dw, label %_ZN4llvm11raw_ostreamlsEc.exit

bb.dw:                                            ; preds = %.loopexit
  %i.vx = load ptr, ptr %i.ux, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 32 ; 2 uses
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !568 ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !567
  %.not.i611 = icmp ult ptr %i.vz, %i.wb
  br i1 %.not.i611, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.wc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.vx, i8 noundef zeroext 69) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.dy:                                            ; preds = %bb.dw
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 1
  store ptr %i.wd, ptr %i.vy, align 8, !tbaa !568
  store i8 69, ptr %i.vz, align 1, !tbaa !78
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.dz:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.wg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.wf, ptr noundef nonnull @.str.66) ; 0 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i614 = load i64, ptr %i.wh, align 8, !tbaa !78
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler10mangleTypeEN5clang8QualTypeE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0.0.copyload.i614)
  %i.wi = load ptr, ptr %i.we, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.wj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.wi, ptr noundef nonnull @.str.67) ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.ea:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.wm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.wl, ptr noundef nonnull @.str.68) ; 0 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !1175
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.wo, i32 noundef -1, i1 noundef zeroext false)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.eb:                                            ; preds = %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store ptr %i.h, ptr %i.c, align 8, !tbaa !886
  %i.wp = load i24, ptr %i.h, align 8
  %i.wq = and i24 %i.wp, 32768
  %.not889 = icmp eq i24 %i.wq, 0
  br i1 %.not889, label %bb.ec, label %bb.eh

bb.ec:                                            ; preds = %bb.eb
  %i.wr = icmp ult i64 %.sroa.0847.0, 16
  br i1 %i.wr, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ws = and i64 %.sroa.0847.0, -16
  %i.wt = inttoptr i64 %i.ws to ptr
  %i.wu = load ptr, ptr %i.wt, align 16, !tbaa !533
  %i.wv = call noundef zeroext i1 @_ZNK5clang4Type13isIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.wu)
  br i1 %i.wv, label %.critedge, label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.ww = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i616 = load i64, ptr %i.ww, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %bb.ed, %bb.ee
  %.sroa.0157.0 = phi i64 [ %.sroa.0.0.copyload.i616, %bb.ee ], [ %.sroa.0847.0, %bb.ed ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.wx = load ptr, ptr %0, align 8, !tbaa !743, !nonnull !139, !align !140
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !138, !nonnull !139, !align !140
  call void @_ZNK5clang4Expr21EvaluateKnownConstIntERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(23904) %i.wz) #27
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleIntegerLiteralEN5clang8QualTypeERKN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0157.0, ptr noundef nonnull align 8 dereferenceable(13) %10)
  %i.xa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.xb = load i32, ptr %i.xa, align 8, !tbaa !814
  %i.xc = icmp ugt i32 %i.xb, 64
  br i1 %i.xc, label %bb.ef, label %_ZN4llvm5APIntD2Ev.exit

bb.ef:                                            ; preds = %.critedge
  %i.xd = load ptr, ptr %10, align 8, !tbaa !78   ; 2 uses
  %i.xe = icmp eq ptr %i.xd, null
  br i1 %i.xe, label %_ZN4llvm5APIntD2Ev.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @_ZdaPv(ptr noundef nonnull %i.xd) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %.critedge, %bb.ef, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.eh:                                            ; preds = %bb.eb
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store ptr %i.c, ptr %11, align 8, !tbaa !1176
  %i.xf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.xf, align 8, !tbaa !889
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr %0, ptr %12, align 8, !tbaa !891
  %i.xg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.xg, align 8, !tbaa !1176
  %i.xh = load i24, ptr %i.h, align 8
  %i.xi = lshr i24 %i.xh, 19
  %trunc = trunc i24 %i.xi to i4
  switch i4 %trunc, label %bb.eq [
    i4 0, label %bb.ei
    i4 4, label %bb.el
    i4 3, label %bb.en
    i4 2, label %.critedge461
    i4 -8, label %.critedge461
    i4 7, label %.critedge461
    i4 6, label %.critedge461
    i4 5, label %.critedge461
    i4 1, label %.critedge461
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 32 ; 2 uses
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !568 ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !567
  %.not.i617 = icmp ult ptr %i.xm, %i.xo
  br i1 %.not.i617, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.xp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.xk, i8 noundef zeroext 115) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit619

bb.ek:                                            ; preds = %bb.ei
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xm, i64 1
  store ptr %i.xq, ptr %i.xl, align 8, !tbaa !568
  store i8 115, ptr %i.xm, align 1, !tbaa !78
  br label %_ZN4llvm11raw_ostreamlsEc.exit619

_ZN4llvm11raw_ostreamlsEc.exit619:                ; preds = %bb.ej, %bb.ek
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_2clEv"(ptr noundef nonnull align 8 dereferenceable(16) %11)
  br label %bb.eq

bb.el:                                            ; preds = %bb.eh
  %.val462 = load ptr, ptr %0, align 8, !tbaa !743
  %i.xr = getelementptr i8, ptr %.val462, i64 8
  %.val462.val = load ptr, ptr %i.xr, align 8, !tbaa !138
  %i.xs = getelementptr i8, ptr %.val462.val, i64 2600
  %.val462.val.val = load ptr, ptr %i.xs, align 8, !tbaa !530
  %i.xt = getelementptr i8, ptr %.val462.val.val, i64 224
  %.val462.val.val.val = load i16, ptr %i.xt, align 8
  %i.xu = and i16 %.val462.val.val.val, 224
  %i.xv = icmp samesign ult i16 %i.xu, 96
  br i1 %i.xv, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_3clEPKNS1_24UnaryExprOrTypeTraitExprEN4llvm9StringRefE"(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %i.h, ptr nonnull @.str.69, i64 11)
  br label %bb.eq

bb.en:                                            ; preds = %bb.el, %bb.eh
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 32 ; 2 uses
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !568 ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 24
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !567
  %.not.i620 = icmp ult ptr %i.xz, %i.yb
  br i1 %.not.i620, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.yc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.xx, i8 noundef zeroext 97) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit622

bb.ep:                                            ; preds = %bb.en
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xz, i64 1
  store ptr %i.yd, ptr %i.xy, align 8, !tbaa !568
  store i8 97, ptr %i.xz, align 1, !tbaa !78
  br label %_ZN4llvm11raw_ostreamlsEc.exit622

_ZN4llvm11raw_ostreamlsEc.exit622:                ; preds = %bb.eo, %bb.ep
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_2clEv"(ptr noundef nonnull align 8 dereferenceable(16) %11)
  br label %bb.eq

.critedge461:                                     ; preds = %bb.eh, %bb.eh, %bb.eh, %bb.eh, %bb.eh, %bb.eh
  %i.ye = load ptr, ptr %0, align 8, !tbaa !743, !nonnull !139, !align !140
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !821, !nonnull !139, !align !140
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.yh = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %13, ptr noundef nonnull align 8 dereferenceable(15256) %i.yg, i32 %i.yh, i32 noundef 2368) #27
  %i.yi = load ptr, ptr %i.c, align 8, !tbaa !886
  %i.yj = load i24, ptr %i.yi, align 8
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb:bb.a
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.aav, i32 noundef -1, i1 noundef zeroext false)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.fb:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.aaw = load i32, ptr %i.h, align 8            ; 2 uses
  %i.aax = and i32 %i.aaw, 524288
  %.not891 = icmp eq i32 %i.aax, 0
  br i1 %.not891, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.aba = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.aaz, ptr noundef nonnull @.str.58) ; 0 uses
  %.pre1253 = load i32, ptr %i.h, align 8
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.abb = phi i32 [ %.pre1253, %bb.fc ], [ %i.aaw, %bb.fb ]
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.abe = and i32 %i.abb, 1048576
  %.not892 = icmp eq i32 %i.abe, 0
  %.str.74..str.75 = select i1 %.not892, ptr @.str.75, ptr @.str.74
  %i.abf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.abd, ptr noundef nonnull %.str.74..str.75) ; 0 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !1181
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.abh, i32 noundef -1, i1 noundef zeroext false)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.fe:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.abi = load i32, ptr %i.h, align 8
  %i.abj = lshr i32 %i.abi, 19
  %i.abk = and i32 %i.abj, 31
  %i.abl = call noundef i32 @_ZN5clang13UnaryOperator21getOverloadedOperatorENS_17UnaryOperatorKindE(i32 noundef %i.abk) #27
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val474 = load ptr, ptr %i.abm, align 8
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler18mangleOperatorNameEN5clang22OverloadedOperatorKindEj(ptr %.val474, i32 noundef %i.abl, i32 noundef 1)
  %i.abn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !1183
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.abo, i32 noundef -1, i1 noundef zeroext false)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.ff:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.abr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.abq, ptr noundef nonnull @.str.76) ; 0 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.abt, i32 noundef -1, i1 noundef zeroext false)
  %i.abu = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.abv, i32 noundef -1, i1 noundef zeroext false)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.fg:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.aby = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.abx, ptr noundef nonnull @.str.76) ; 0 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.aca, i32 noundef -1, i1 noundef zeroext false)
  %i.acb = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.acc, i32 noundef -1, i1 noundef zeroext false)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.fh:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.acf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ace, ptr noundef nonnull @.str.77) ; 0 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.ach, i32 noundef -1, i1 noundef zeroext false)
  %i.aci = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.acj, i32 noundef -1, i1 noundef zeroext false)
  %i.ack = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.acl, i32 noundef -1, i1 noundef zeroext false)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.fi:                                            ; preds = %.backedge, %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.acm = load i32, ptr %i.h, align 8
  %i.acn = lshr i32 %i.acm, 19
  %i.aco = and i32 %i.acn, 63                     ; 2 uses
  %i.acp = icmp eq i32 %i.aco, 0
  br i1 %i.acp, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.acs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.acr, ptr noundef nonnull @.str.78) ; 0 uses
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  %i.act = call noundef i32 @_ZN5clang14BinaryOperator21getOverloadedOperatorENS_18BinaryOperatorKindE(i32 noundef %i.aco) #27
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val473 = load ptr, ptr %i.acu, align 8
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler18mangleOperatorNameEN5clang22OverloadedOperatorKindEj(ptr %.val473, i32 noundef %i.act, i32 noundef 2)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.acv = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.acw, i32 noundef -1, i1 noundef zeroext false)
  %i.acx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.acy, i32 noundef -1, i1 noundef zeroext false)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.fm:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @_ZNK5clang26CXXRewrittenBinaryOperator17getDecomposedFormEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::CXXRewrittenBinaryOperator::DecomposedForm") align 8 %14, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h) #32
  %i.acz = load i32, ptr %14, align 8, !tbaa !1186
  %i.ada = call noundef i32 @_ZN5clang14BinaryOperator21getOverloadedOperatorENS_18BinaryOperatorKindE(i32 noundef %i.acz) #27
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val472 = load ptr, ptr %i.adb, align 8
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler18mangleOperatorNameEN5clang22OverloadedOperatorKindEj(ptr %.val472, i32 noundef %i.ada, i32 noundef 2)
  %i.adc = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !1187
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.add, i32 noundef -1, i1 noundef zeroext false)
  %i.ade = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !1188
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.adf, i32 noundef -1, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.fn:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val471 = load ptr, ptr %i.adg, align 8        ; 3 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %.val471, i64 24
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !567
  %i.adj = getelementptr inbounds nuw i8, ptr %.val471, i64 32 ; 3 uses
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !568 ; 2 uses
  %i.adl = ptrtoint ptr %i.adi to i64
  %i.adm = ptrtoint ptr %i.adk to i64
  %i.adn = sub i64 %i.adl, %i.adm
  %i.ado = icmp ult i64 %i.adn, 2
  br i1 %i.ado, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.adp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val471, ptr noundef nonnull @.str.191, i64 noundef 2) #27 ; 0 uses
  br label %_ZN12_GLOBAL__N_114CXXNameMangler18mangleOperatorNameEN5clang22OverloadedOperatorKindEj.exit

bb.fp:                                            ; preds = %bb.fn
  store i16 30065, ptr %i.adk, align 1
  %i.adq = load ptr, ptr %i.adj, align 8, !tbaa !568
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 2
  store ptr %i.adr, ptr %i.adj, align 8, !tbaa !568
  br label %_ZN12_GLOBAL__N_114CXXNameMangler18mangleOperatorNameEN5clang22OverloadedOperatorKindEj.exit

_ZN12_GLOBAL__N_114CXXNameMangler18mangleOperatorNameEN5clang22OverloadedOperatorKindEj.exit: ; preds = %bb.fo, %bb.fp
  %i.ads = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.adt, i32 noundef -1, i1 noundef zeroext false)
  %i.adu = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.adv, i32 noundef %2, i1 noundef zeroext false)
  %i.adw = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !875
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.adx, i32 noundef %2, i1 noundef zeroext false)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.fq:                                            ; preds = %.backedge
  %i.ady = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i633 = load i64, ptr %i.ady, align 8, !tbaa !78
  %i.adz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !893
  br label %.backedge.backedge

bb.fr:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.aeb = call { ptr, i64 } @_ZNK5clang19ObjCBridgedCastExpr17getBridgeKindNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.h) #27 ; 2 uses
  %i.aec = extractvalue { ptr, i64 } %i.aeb, 0
  %i.aed = extractvalue { ptr, i64 } %i.aeb, 1    ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.aeg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.aef, ptr noundef nonnull @.str.79)
  %i.aeh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.aeg, i64 noundef %i.aed) #27
  %i.aei = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.aeh, ptr %i.aec, i64 %i.aed) ; 0 uses
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleCastExpressionEPKN5clang4ExprEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull %i.h, ptr nonnull @.str.66, i64 2)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.fs:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleCastExpressionEPKN5clang4ExprEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull %i.h, ptr nonnull @.str.66, i64 2)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.ft:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.aej = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !893
  %i.ael = call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aek) #31 ; 5 uses
  %i.aem = load i16, ptr %i.ael, align 8          ; 3 uses
  %i.aen = and i16 %i.aem, 511                    ; 2 uses
  %i.aeo = add nsw i16 %i.aen, -119
  %spec.select.i.i.i.i.i.i.i.i636 = icmp ult i16 %i.aeo, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i636, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.aep = getelementptr inbounds nuw i8, ptr %i.ael, i64 24
  %.sroa.0.0.copyload.i638 = load i64, ptr %i.aep, align 8, !tbaa !125 ; 2 uses
  %i.aeq = and i64 %.sroa.0.0.copyload.i638, 4294967295
  %i.aer = icmp eq i64 %i.aeq, 0
  %i.aes = icmp ult i64 %.sroa.0.0.copyload.i638, 4294967296
  %.not2.i = or i1 %i.aes, %i.aer
  br i1 %.not2.i, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %.not.i.i.i.i639 = icmp eq i16 %i.aen, 118
  %spec.select.v.i.i.i.i640 = select i1 %.not.i.i.i.i639, i64 48, i64 40
  %i.aet = getelementptr inbounds nuw i8, ptr %i.ael, i64 %spec.select.v.i.i.i.i640
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !839
  %i.aev = call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aeu) #31 ; 2 uses
  %.pre1254 = load i16, ptr %i.aev, align 8
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv, %bb.ft
  %i.aew = phi i16 [ %.pre1254, %bb.fv ], [ %i.aem, %bb.fu ], [ %i.aem, %bb.ft ] ; 2 uses
  %.0423 = phi ptr [ %i.aev, %bb.fv ], [ %i.ael, %bb.fu ], [ %i.ael, %bb.ft ] ; 2 uses
  %i.aex = and i16 %i.aew, 511
  %.not895 = icmp eq i16 %i.aex, 101
  br i1 %.not895, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.aey = getelementptr inbounds nuw i8, ptr %.0423, i64 16
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !1152
  %i.afa = call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aez) #31 ; 2 uses
  %.pre1255 = load i16, ptr %i.afa, align 8
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.afb = phi i16 [ %.pre1255, %bb.fx ], [ %i.aew, %bb.fw ]
  %.1424 = phi ptr [ %i.afa, %bb.fx ], [ %.0423, %bb.fw ]
  %i.afc = and i16 %i.afb, 511
  %.not897 = icmp eq i16 %i.afc, 55
  br i1 %.not897, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.aff = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.afe, ptr noundef nonnull @.str.65) ; 0 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i644 = load i64, ptr %i.afg, align 8, !tbaa !78
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler10mangleTypeEN5clang8QualTypeE(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0.0.copyload.i644)
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler22mangleInitListElementsEPKN5clang12InitListExprE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull %.1424)
  %i.afh = load ptr, ptr %i.afd, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.afi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.afh, ptr noundef nonnull @.str.20) ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.ga:                                            ; preds = %bb.fy
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleCastExpressionEPKN5clang4ExprEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull %i.h, ptr nonnull @.str.66, i64 2)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.gb:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleCastExpressionEPKN5clang4ExprEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull %i.h, ptr nonnull @.str.80, i64 2)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.gc:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleCastExpressionEPKN5clang4ExprEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull %i.h, ptr nonnull @.str.81, i64 2)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.gd:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleCastExpressionEPKN5clang4ExprEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull %i.h, ptr nonnull @.str.82, i64 2)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.ge:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleCastExpressionEPKN5clang4ExprEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull %i.h, ptr nonnull @.str.83, i64 2)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.gf:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleCastExpressionEPKN5clang4ExprEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull %i.h, ptr nonnull @.str.84, i64 2)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.gg:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.afj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.afk = load i32, ptr %i.afj, align 8, !tbaa !1157 ; 3 uses
  %i.afl = load i32, ptr %i.h, align 8
  %i.afm = lshr i32 %i.afl, 25
  %i.afn = and i32 %i.afm, 63                     ; 2 uses
  %.not449 = icmp eq i32 %i.afn, 41
  br i1 %.not449, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val470 = load ptr, ptr %i.afo, align 8
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler18mangleOperatorNameEN5clang22OverloadedOperatorKindEj(ptr %.val470, i32 noundef %i.afn, i32 noundef %i.afk)
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.not4501079 = icmp eq i32 %i.afk, 0
  br i1 %.not4501079, label %_ZN4llvm11raw_ostreamlsEc.exit, label %.lr.ph1082

.lr.ph1082:                                       ; preds = %bb.gi
  %i.afp = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.afq = zext i32 %i.afk to i64
  br label %bb.gj

bb.gj:                                            ; preds = %.lr.ph1082, %bb.gj
  %indvars.iv1250 = phi i64 [ 0, %.lr.ph1082 ], [ %indvars.iv.next1251, %bb.gj ] ; 2 uses
  %i.afr = load i32, ptr %i.h, align 8
  %i.afs = lshr i32 %i.afr, 19
  %i.aft = and i32 %i.afs, 1
  %i.afu = zext nneg i32 %i.aft to i64
  %i.afv = getelementptr inbounds nuw [8 x i8], ptr %i.afp, i64 %i.afu
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %i.afv, i64 %indvars.iv1250
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !839
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.afx, i32 noundef -1, i1 noundef zeroext false)
  %indvars.iv.next1251 = add nuw nsw i64 %indvars.iv1250, 1 ; 2 uses
  %.not450 = icmp eq i64 %indvars.iv.next1251, %i.afq
  br i1 %.not450, label %_ZN4llvm11raw_ostreamlsEc.exit, label %bb.gj, !llvm.loop !1142

bb.gk:                                            ; preds = %.backedge
  %i.afy = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !1190
  br label %.backedge.backedge

bb.gl:                                            ; preds = %.backedge
  %.val = load ptr, ptr %0, align 8, !tbaa !743
  %i.aga = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.aga, align 8, !tbaa !138
  %i.agb = getelementptr i8, ptr %.val.val, i64 2600
  %.val.val.val = load ptr, ptr %i.agb, align 8, !tbaa !530
  %i.agc = getelementptr i8, ptr %.val.val.val, i64 224
  %.val.val.val.val = load i16, ptr %i.agc, align 8
  %i.agd = and i16 %.val.val.val.val, 224
  %i.age = icmp samesign ult i16 %i.agd, 160
  br i1 %i.age, label %bb.gm, label %bb.gp

bb.gm:                                            ; preds = %bb.gl
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !580, !nonnull !139, !align !140
  %i.agh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.agg, ptr noundef nonnull @.str.85) ; 0 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !1193
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 56
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !898
  %i.agm = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !1194 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 36
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !1196
  %i.agq = zext i32 %i.agp to i64
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agn, i64 40
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler18mangleTemplateNameEPKN5clang12TemplateDeclEN4llvm8ArrayRefINS1_16TemplateArgumentEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.agl, ptr nonnull %i.agr, i64 %i.agq)
  %i.ags = load ptr, ptr %i.agf, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 32 ; 2 uses
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !568 ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ags, i64 24
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !567
  %.not.i651 = icmp ult ptr %i.agu, %i.agw
  br i1 %.not.i651, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.agx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ags, i8 noundef zeroext 69) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.go:                                            ; preds = %bb.gm
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agu, i64 1
  store ptr %i.agy, ptr %i.agt, align 8, !tbaa !568
  store i8 69, ptr %i.agu, align 1, !tbaa !78
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.gp:                                            ; preds = %bb.gl
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.agz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !1193 ; 3 uses
  %.sroa.0.0.copyload.i654 = load i64, ptr %i.aha, align 8, !tbaa !120
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  %.sroa.0.0.copyload.i655 = load i64, ptr %i.ahb, align 8, !tbaa !120
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 64
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !899 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahg = load i32, ptr %i.ahf, align 8, !tbaa !901
  call fastcc void @_ZN12_GLOBAL__N_114CXXNameMangler20mangleUnresolvedNameEN5clang19NestedNameSpecifierENS1_15DeclarationNameEPKNS1_19TemplateArgumentLocEjj(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 %.sroa.0.0.copyload.i654, i64 %.sroa.0.0.copyload.i655, ptr noundef nonnull %i.ahe, i32 noundef %i.ahg, i32 noundef -1)
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.gq:                                            ; preds = %.backedge
  call fastcc void @"_ZZN12_GLOBAL__N_114CXXNameMangler16mangleExpressionEPKN5clang4ExprEjbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.0.0.copyload.i656 = load i32, ptr %i.ahh, align 8, !tbaa !125
  %.not898 = icmp eq i32 %.sroa.0.0.copyload.i656, 0
  %i.ahi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !580, !nonnull !139, !align !140 ; 2 uses
  br i1 %.not898, label %bb.gz, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ahk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ahj, ptr noundef nonnull @.str.86) ; 0 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %.sroa.0.0.copyload.i657 = load i32, ptr %i.ahl, align 4, !tbaa !78 ; 2 uses
  %i.ahm = add i32 %.sroa.0.0.copyload.i657, 1
  %i.ahn = and i32 %i.ahm, 2147483647
  store i32 %i.ahn, ptr %i.ahl, align 4
  %i.aho = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ahp = load i32, ptr %i.aho, align 8, !tbaa !1199 ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  %i.ahr = icmp eq i32 %i.ahp, 0
  br i1 %i.ahr, label %bb.gs, label %.lr.ph1086.preheader

bb.gs:                                            ; preds = %bb.gr
  %i.ahs = load ptr, ptr %i.ahi, align 8, !tbaa !580, !nonnull !139, !align !140 ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 32 ; 2 uses
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !568 ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahs, i64 24
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !567
  %.not.i660 = icmp ult ptr %i.ahu, %i.ahw
  br i1 %.not.i660, label %bb.gu, label %bb.gt
end_hunk_3

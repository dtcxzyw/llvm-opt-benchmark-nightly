Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Registry?download=true
inline.NumInlined: 88006
inline.NumDeleted: 30746
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 224
loop-unroll.NumUnrolled: 287
begin_hunk_0_@_ZN5clang12ast_matchers7dynamic8internal16matcherMarshall1INS0_8internal7MatcherINS_4DeclEEERKNS_4attr4KindEEENS1_14VariantMatcherEPFvvEN4llvm9StringRefENS1_11SourceRangeENSF_8ArrayRefINS1_11ParserValueEEEPNS1_11DiagnosticsE:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !1790, !range !1188, !noundef !1020
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.01.0.copyload = load i64, ptr %i.ar, align 8, !tbaa !1078
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !1078
  %i.as = call ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics8addErrorENS1_11SourceRangeENS2_9ErrorTypeE(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i32 noundef 7) #19
  store ptr %i.as, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 10, ptr %i.at, align 8, !tbaa !1741
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.au, align 1, !tbaa !1742
  store i32 1, ptr %11, align 8, !tbaa !917
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics9ArgStreamlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(34) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.aw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5clang12ast_matchers7dynamic12VariantValue9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 4, ptr %i.ax, align 8, !tbaa !1741
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.ay, align 1, !tbaa !1742
  store ptr %i.aw, ptr %10, align 8, !tbaa !917
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics9ArgStreamlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(34) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 4, ptr %i.ba, align 8, !tbaa !1741
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.bb, align 1, !tbaa !1742
  store ptr %22, ptr %9, align 8, !tbaa !917
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics9ArgStreamlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(34) %9) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bd = call noundef zeroext i1 @_ZNK5clang12ast_matchers7dynamic12VariantValue8isStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.be, align 8, !tbaa !1078
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !1078
  %i.bf = call ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics8addErrorENS1_11SourceRangeENS2_9ErrorTypeE(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef 6) #19
  store ptr %i.bf, ptr %24, align 8
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5clang12ast_matchers7dynamic12VariantValue9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 4, ptr %i.bh, align 8, !tbaa !1741
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.bi, align 1, !tbaa !1742
  store ptr %i.bg, ptr %8, align 8, !tbaa !917
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics9ArgStreamlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(34) %8) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.bk = load i8, ptr %i.ao, align 8, !tbaa !1790, !range !1188, !noundef !1020
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.k, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.ao, align 8, !tbaa !1790
  %i.bm = load ptr, ptr %22, align 8, !tbaa !933  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !917
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.k, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @_ZN5clang12ast_matchers7dynamic14VariantMatcherC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  br label %bb.q

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.br = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5clang12ast_matchers7dynamic12VariantValue9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !933
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !934
  %i.bv = tail call i64 @_ZN5clang12ast_matchers7dynamic8internal13ArgTypeTraitsINS_4attr4KindEE11getAttrKindEN4llvm9StringRefE(ptr %i.bs, i64 %i.bu)
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.bv to i32
  store i32 %.sroa.01.0.extract.trunc.i, ptr %i.a, align 4, !tbaa !1724
  call void %1(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::Matcher.60") align 8 %26, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !19417)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 12, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1034, !noalias !19417
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !1034, !alias.scope !19417
  store ptr null, ptr %i.bx, align 8, !tbaa !1034, !noalias !19417
  call void @_ZN5clang12ast_matchers7dynamic14VariantMatcher13SingleMatcherERKNS0_8internal15DynTypedMatcherE(ptr dead_on_unwind writable sret(%"class.clang::ast_matchers::dynamic::VariantMatcher") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %25) #19
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !1034 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = atomicrmw add ptr %i.ca, i32 -1 acq_rel, align 4
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %bb.n, label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !1019
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(12) %i.bz) #19, !inline_history !6
  br label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !1034 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = atomicrmw add ptr %i.ch, i32 -1 acq_rel, align 4
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.p, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !1019
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(12) %i.cg) #19, !inline_history !17
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit: ; preds = %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.q

bb.q:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %bb.b
  ret void
}

declare void @_ZN5clang12ast_matchers7dynamic8internal13ArgTypeTraitsINS_4attr4KindEE12getBestGuessB5cxx11ERKNS1_12VariantValueE(ptr dead_on_unwind writable sret(%"class.std::optional.1721") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN5clang12ast_matchers7dynamic8internal13ArgTypeTraitsINS_4attr4KindEE11getAttrKindEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not.i.i = icmp ult i64 %1, 6
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1920234593
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 1
  %i.e = zext i16 %i.d to i32
  %i.f = xor i32 %i.e, 14906
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186

bb.b:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 871 uses
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186 [
    i64 18, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 16, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i6
    i64 17, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i24
    i64 11, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i33
    i64 14, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i42
    i64 30, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i51
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i60
    i64 28, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i87
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i114
    i64 24, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i123
    i64 19, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i141
    i64 21, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i150
    i64 23, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i159
    i64 33, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i168
    i64 27, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i222
    i64 31, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i276
    i64 32, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i294
    i64 36, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i321
    i64 34, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i330
    i64 29, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i339
    i64 22, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i357
    i64 10, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i393
    i64 25, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i411
    i64 20, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i834
    i64 15, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i456
    i64 9, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i735
    i64 26, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i1050
    i64 38, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i1356
    i64 37, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i1932
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 1
  %i.m = xor i64 %i.l, 6013276807017817153
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load i32, ptr %i.n, align 1
  %i.p = zext i32 %i.o to i64
  %i.q = xor i64 %i.p, 1701011824
  %i.r = or i64 %i.m, %i.q
  %i.s = icmp ne i64 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not.i.i1 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i1, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i15

_ZN4llvmneENS_9StringRefES0_.exit.i.i6:           ; preds = %bb.b
  %i.u = load i64, ptr %i.k, align 1
  %i.v = xor i64 %i.u, 7598805550979902529
  %i.w = getelementptr i8, ptr %i.k, i64 8
  %i.x = load i16, ptr %i.w, align 1
  %i.y = zext i16 %i.x to i64
  %i.z = xor i64 %i.y, 26478
  %i.aa = or i64 %i.v, %i.z
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i8 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i8, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i96

_ZN4llvmneENS_9StringRefES0_.exit.i.i15:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.ad = load i64, ptr %i.k, align 1
  %i.ae = xor i64 %i.ad, 7310575247842766401
  %i.af = getelementptr i8, ptr %i.k, i64 8
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = xor i64 %i.ah, 1701869908
  %i.aj = or i64 %i.ae, %i.ai
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %.not.i.i17 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i17, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i69

_ZN4llvmneENS_9StringRefES0_.exit.i.i24:          ; preds = %bb.b
  %i.am = load i64, ptr %i.k, align 1
  %i.an = xor i64 %i.am, 8317988426534974017
  %i.ao = getelementptr i8, ptr %i.k, i64 3
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = xor i64 %i.ap, 7163384721449051969
  %i.ar = or i64 %i.an, %i.aq
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %.not.i.i26 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i26, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i177

_ZN4llvmneENS_9StringRefES0_.exit.i.i33:          ; preds = %bb.b
  %i.au = load i32, ptr %i.k, align 1
  %i.av = xor i32 %i.au, 1231909441
  %i.aw = getelementptr i8, ptr %i.k, i64 4
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = xor i32 %i.ay, 110
  %i.ba = or i32 %i.av, %i.az
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %.not.i.i35 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i35, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i375

_ZN4llvmneENS_9StringRefES0_.exit.i.i42:          ; preds = %bb.b
  %i.bd = load i64, ptr %i.k, align 1
  %i.be = icmp ne i64 %i.bd, 8391700815771693633
  %i.bf = zext i1 %i.be to i32
  %.not.i.i44 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i44, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i105

_ZN4llvmneENS_9StringRefES0_.exit.i.i51:          ; preds = %bb.b
  %i.bg = load i128, ptr %i.k, align 1
  %i.bh = xor i128 %i.bg, 161399613272436031237015570392139264577
  %i.bi = getelementptr i8, ptr %i.k, i64 16
  %i.bj = load i64, ptr %i.bi, align 1
  %i.bk = zext i64 %i.bj to i128
  %i.bl = xor i128 %i.bk, 7886763269739933549
  %i.bm = or i128 %i.bh, %i.bl
  %i.bn = icmp ne i128 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %.not.i.i53 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i53, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i312

_ZN4llvmneENS_9StringRefES0_.exit.i.i60:          ; preds = %bb.b
  %i.bp = load i32, ptr %i.k, align 1
  %i.bq = xor i32 %i.bp, 1332572737
  %i.br = getelementptr i8, ptr %i.k, i64 4
  %i.bs = load i16, ptr %i.br, align 1
  %i.bt = zext i16 %i.bs to i32
  %i.bu = xor i32 %i.bt, 29813
  %i.bv = or i32 %i.bq, %i.bu
  %i.bw = icmp ne i32 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  %.not.i.i62 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i62, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i267

_ZN4llvmneENS_9StringRefES0_.exit.i.i69:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i15
  %i.by = load i64, ptr %i.k, align 1
  %i.bz = xor i64 %i.by, 7310298161802474049
  %i.ca = getelementptr i8, ptr %i.k, i64 8
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = xor i64 %i.cc, 1936029298
  %i.ce = or i64 %i.bz, %i.cd
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %.not.i.i71 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i71, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i78

_ZN4llvmneENS_9StringRefES0_.exit.i.i78:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i69
  %i.ch = load i64, ptr %i.k, align 1
  %i.ci = xor i64 %i.ch, 7018141438268240449
  %i.cj = getelementptr i8, ptr %i.k, i64 8
  %i.ck = load i32, ptr %i.cj, align 1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = xor i64 %i.cl, 1735289197
  %i.cn = or i64 %i.ci, %i.cm
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %.not.i.i80 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i80, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i231

_ZN4llvmneENS_9StringRefES0_.exit.i.i87:          ; preds = %bb.b
  %i.cq = load i128, ptr %i.k, align 1
  %i.cr = xor i128 %i.cq, 149441752573254203485813989836847936065
  %i.cs = getelementptr i8, ptr %i.k, i64 6
  %i.ct = load i128, ptr %i.cs, align 1
  %i.cu = xor i128 %i.ct, 134814791666114544276159998766800003429
  %i.cv = or i128 %i.cr, %i.cu
  %i.cw = icmp ne i128 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %.not.i.i89 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i89, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i744

_ZN4llvmneENS_9StringRefES0_.exit.i.i96:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i6
  %i.cy = load i64, ptr %i.k, align 1
  %i.cz = xor i64 %i.cy, 6081390538240971842
  %i.da = getelementptr i8, ptr %i.k, i64 8
  %i.db = load i16, ptr %i.da, align 1
  %i.dc = zext i16 %i.db to i64
  %i.dd = xor i64 %i.dc, 26465
  %i.de = or i64 %i.cz, %i.dd
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = zext i1 %i.df to i32
  %.not.i.i98 = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i98, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i132

_ZN4llvmneENS_9StringRefES0_.exit.i.i105:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i42
  %i.dh = load i64, ptr %i.k, align 1
  %i.di = icmp ne i64 %i.dh, 7453010343295413314
  %i.dj = zext i1 %i.di to i32
  %.not.i.i107 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i107, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i510

_ZN4llvmneENS_9StringRefES0_.exit.i.i114:         ; preds = %bb.b
  %i.dk = load i32, ptr %i.k, align 1
  %i.dl = xor i32 %i.dk, 1397311043
  %i.dm = getelementptr i8, ptr %i.k, i64 3
  %i.dn = load i32, ptr %i.dm, align 1
  %i.do = xor i32 %i.dn, 1953259859
  %i.dp = or i32 %i.dl, %i.do
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %.not.i.i116 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i116, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i195

_ZN4llvmneENS_9StringRefES0_.exit.i.i123:         ; preds = %bb.b
  %i.ds = load i128, ptr %i.k, align 1
  %i.dt = xor i128 %i.ds, 144119364338582227941898312253996353091
  %i.du = getelementptr i8, ptr %i.k, i64 16
  %i.dv = load i16, ptr %i.du, align 1
  %i.dw = zext i16 %i.dv to i128
  %i.dx = xor i128 %i.dw, 25957
  %i.dy = or i128 %i.dt, %i.dx
  %i.dz = icmp ne i128 %i.dy, 0
  %i.ea = zext i1 %i.dz to i32
  %.not.i.i125 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i125, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i420

_ZN4llvmneENS_9StringRefES0_.exit.i.i132:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i96
  %i.eb = load i64, ptr %i.k, align 1
  %i.ec = xor i64 %i.eb, 7008537041293241667
  %i.ed = getelementptr i8, ptr %i.k, i64 8
  %i.ee = load i16, ptr %i.ed, align 1
  %i.ef = zext i16 %i.ee to i64
  %i.eg = xor i64 %i.ef, 27756
  %i.eh = or i64 %i.ec, %i.eg
  %i.ei = icmp ne i64 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  %.not.i.i134 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i134, label %_ZN4llvm12StringSwitchISt8optionalIN5clang4attr4KindEES5_E4CaseENS_13StringLiteralES5_.exit4186, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i285

_ZN4llvmneENS_9StringRefES0_.exit.i.i141:         ; preds = %bb.b
  %i.ek = load i64, ptr %i.k, align 1
end_hunk_0
begin_hunk_1_@_ZN5clang12ast_matchers7dynamic8internal16matcherMarshall1INS0_8internal7MatcherINS_8CastExprEEERKNS_8CastKindEEENS1_14VariantMatcherEPFvvEN4llvm9StringRefENS1_11SourceRangeENSE_8ArrayRefINS1_11ParserValueEEEPNS1_11DiagnosticsE:bb.a

bb.e:                                             ; preds = %bb.c
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5clang12ast_matchers7dynamic12VariantValue9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !933
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !934
  %i.am = tail call i64 @_ZN5clang12ast_matchers7dynamic8internal13ArgTypeTraitsINS_8CastKindEE11getCastKindEN4llvm9StringRefE(ptr %i.aj, i64 %i.al)
  %i.an = and i64 %i.am, 4294967296
  %.not20 = icmp eq i64 %i.an, 0
  br i1 %.not20, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @_ZN5clang12ast_matchers7dynamic8internal13ArgTypeTraitsINS_8CastKindEE12getBestGuessB5cxx11ERKNS1_12VariantValueE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1721") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !1790, !range !1188, !noundef !1020
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.01.0.copyload = load i64, ptr %i.ar, align 8, !tbaa !1078
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !1078
  %i.as = call ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics8addErrorENS1_11SourceRangeENS2_9ErrorTypeE(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i32 noundef 7) #19
  store ptr %i.as, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 10, ptr %i.at, align 8, !tbaa !1741
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.au, align 1, !tbaa !1742
  store i32 1, ptr %11, align 8, !tbaa !917
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics9ArgStreamlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(34) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.aw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5clang12ast_matchers7dynamic12VariantValue9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 4, ptr %i.ax, align 8, !tbaa !1741
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.ay, align 1, !tbaa !1742
  store ptr %i.aw, ptr %10, align 8, !tbaa !917
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics9ArgStreamlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(34) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 4, ptr %i.ba, align 8, !tbaa !1741
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.bb, align 1, !tbaa !1742
  store ptr %22, ptr %9, align 8, !tbaa !917
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics9ArgStreamlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(34) %9) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bd = call noundef zeroext i1 @_ZNK5clang12ast_matchers7dynamic12VariantValue8isStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.be, align 8, !tbaa !1078
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !1078
  %i.bf = call ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics8addErrorENS1_11SourceRangeENS2_9ErrorTypeE(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef 6) #19
  store ptr %i.bf, ptr %24, align 8
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5clang12ast_matchers7dynamic12VariantValue9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 4, ptr %i.bh, align 8, !tbaa !1741
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.bi, align 1, !tbaa !1742
  store ptr %i.bg, ptr %8, align 8, !tbaa !917
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics9ArgStreamlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(34) %8) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.bk = load i8, ptr %i.ao, align 8, !tbaa !1790, !range !1188, !noundef !1020
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.k, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.ao, align 8, !tbaa !1790
  %i.bm = load ptr, ptr %22, align 8, !tbaa !933  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !917
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.k, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @_ZN5clang12ast_matchers7dynamic14VariantMatcherC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  br label %bb.q

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.br = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5clang12ast_matchers7dynamic12VariantValue9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !933
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !934
  %i.bv = tail call i64 @_ZN5clang12ast_matchers7dynamic8internal13ArgTypeTraitsINS_8CastKindEE11getCastKindEN4llvm9StringRefE(ptr %i.bs, i64 %i.bu)
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.bv to i32
  store i32 %.sroa.01.0.extract.trunc.i, ptr %i.a, align 4, !tbaa !1725
  call void %1(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::Matcher.1363") align 8 %26, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !19590)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 12, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1034, !noalias !19590
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !1034, !alias.scope !19590
  store ptr null, ptr %i.bx, align 8, !tbaa !1034, !noalias !19590
  call void @_ZN5clang12ast_matchers7dynamic14VariantMatcher13SingleMatcherERKNS0_8internal15DynTypedMatcherE(ptr dead_on_unwind writable sret(%"class.clang::ast_matchers::dynamic::VariantMatcher") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %25) #19
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !1034 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = atomicrmw add ptr %i.ca, i32 -1 acq_rel, align 4
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %bb.n, label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !1019
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(12) %i.bz) #19, !inline_history !6
  br label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !1034 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_8CastExprEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = atomicrmw add ptr %i.ch, i32 -1 acq_rel, align 4
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.p, label %_ZN5clang12ast_matchers8internal7MatcherINS_8CastExprEED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !1019
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(12) %i.cg) #19, !inline_history !190
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_8CastExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_8CastExprEED2Ev.exit: ; preds = %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.q

bb.q:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_8CastExprEED2Ev.exit, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %bb.b
  ret void
}

declare void @_ZN5clang12ast_matchers7dynamic8internal13ArgTypeTraitsINS_8CastKindEE12getBestGuessB5cxx11ERKNS1_12VariantValueE(ptr dead_on_unwind writable sret(%"class.std::optional.1721") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN5clang12ast_matchers7dynamic8internal13ArgTypeTraitsINS_8CastKindEE11getCastKindEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not.i.i = icmp ult i64 %1, 3
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread2929, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = xor i16 %i.a, 19267
  %i.c = getelementptr i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 95
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread2929

bb.b:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 135 uses
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread2929 [
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 10, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i6
    i64 16, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i15
    i64 24, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i24
    i64 17, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i33
    i64 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i42
    i64 25, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i69
    i64 22, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i96
    i64 29, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i132
    i64 14, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i231
    i64 27, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i159
    i64 15, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i240
    i64 20, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i186
    i64 19, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i204
    i64 9, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i213
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i222
    i64 21, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i258
    i64 23, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i267
    i64 28, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i357
    i64 32, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i366
    i64 31, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i375
    i64 26, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i339
    i64 35, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i429
    i64 18, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i573
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 1
  %i.m = xor i64 %i.l, 7954874742130894148
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = xor i64 %i.p, 116
  %i.r = or i64 %i.m, %i.q
  %i.s = icmp ne i64 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not.i.i1 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i1, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread2929

_ZN4llvmneENS_9StringRefES0_.exit.i.i6:           ; preds = %bb.b
  %i.u = load i32, ptr %i.k, align 1
  %i.v = xor i32 %i.u, 1131702594
  %i.w = getelementptr i8, ptr %i.k, i64 3
  %i.x = load i32, ptr %i.w, align 1
  %i.y = xor i32 %i.x, 1953718595
  %i.z = or i32 %i.v, %i.y
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not.i.i8 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i8, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i78

_ZN4llvmneENS_9StringRefES0_.exit.i.i15:          ; preds = %bb.b
  %i.ac = load i64, ptr %i.k, align 1
  %i.ad = xor i64 %i.ac, 7584736277449233996
  %i.ae = getelementptr i8, ptr %i.k, i64 5
  %i.af = load i64, ptr %i.ae, align 1
  %i.ag = xor i64 %i.af, 8391157473065124453
  %i.ah = or i64 %i.ad, %i.ag
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %.not.i.i17 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i17, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i51

_ZN4llvmneENS_9StringRefES0_.exit.i.i24:          ; preds = %bb.b
  %i.ak = load i128, ptr %i.k, align 1
  %i.al = xor i128 %i.ak, 139913688976686502775403646881338840652
  %i.am = getelementptr i8, ptr %i.k, i64 5
  %i.an = load i128, ptr %i.am, align 1
  %i.ao = xor i128 %i.an, 154789534387827700999970197421167694949
  %i.ap = or i128 %i.al, %i.ao
  %i.aq = icmp ne i128 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %.not.i.i26 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i26, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i168

_ZN4llvmneENS_9StringRefES0_.exit.i.i33:          ; preds = %bb.b
  %i.as = load i64, ptr %i.k, align 1
  %i.at = xor i64 %i.as, 8022148391257593420
  %i.au = getelementptr i8, ptr %i.k, i64 6
  %i.av = load i64, ptr %i.au, align 1
  %i.aw = xor i64 %i.av, 7310868735421738836
  %i.ax = or i64 %i.at, %i.aw
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %.not.i.i35 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i35, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i285

_ZN4llvmneENS_9StringRefES0_.exit.i.i42:          ; preds = %bb.b
  %i.ba = load i32, ptr %i.k, align 1
  %i.bb = icmp ne i32 %i.ba, 1884254030
  %i.bc = zext i1 %i.bb to i32
  %.not.i.i44 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i44, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread2929

_ZN4llvmneENS_9StringRefES0_.exit.i.i51:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i15
  %i.bd = load i64, ptr %i.k, align 1
  %i.be = xor i64 %i.bd, 7297079704517042498
  %i.bf = getelementptr i8, ptr %i.k, i64 5
  %i.bg = load i64, ptr %i.bf, align 1
  %i.bh = xor i64 %i.bg, 7234318571703452783
  %i.bi = or i64 %i.be, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %.not.i.i53 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i53, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i60

_ZN4llvmneENS_9StringRefES0_.exit.i.i60:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i51
  %i.bl = load i64, ptr %i.k, align 1
  %i.bm = xor i64 %i.bl, 6081096956106663236
  %i.bn = getelementptr i8, ptr %i.k, i64 5
  %i.bo = load i64, ptr %i.bn, align 1
  %i.bp = xor i64 %i.bo, 7310293558115984485
  %i.bq = or i64 %i.bm, %i.bp
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %.not.i.i62 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i62, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i114

_ZN4llvmneENS_9StringRefES0_.exit.i.i69:          ; preds = %bb.b
  %i.bt = load i128, ptr %i.k, align 1
  %i.bu = xor i128 %i.bt, 133449623239897615376045461250685234773
  %i.bv = getelementptr i8, ptr %i.k, i64 6
  %i.bw = load i128, ptr %i.bv, align 1
  %i.bx = xor i128 %i.bw, 134851114370253148461361770860057486699
  %i.by = or i128 %i.bu, %i.bx
  %i.bz = icmp ne i128 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %.not.i.i71 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i71, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i105

_ZN4llvmneENS_9StringRefES0_.exit.i.i78:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i6
  %i.cb = load i32, ptr %i.k, align 1
  %i.cc = xor i32 %i.cb, 1634629956
  %i.cd = getelementptr i8, ptr %i.k, i64 3
  %i.ce = load i32, ptr %i.cd, align 1
  %i.cf = xor i32 %i.ce, 1667853665
  %i.cg = or i32 %i.cc, %i.cf
  %i.ch = icmp ne i32 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %.not.i.i80 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i80, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i87

_ZN4llvmneENS_9StringRefES0_.exit.i.i87:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i78
  %i.cj = load i32, ptr %i.k, align 1
  %i.ck = xor i32 %i.cj, 1851092820
  %i.cl = getelementptr i8, ptr %i.k, i64 3
  %i.cm = load i32, ptr %i.cl, align 1
  %i.cn = xor i32 %i.cm, 1852795246
  %i.co = or i32 %i.ck, %i.cn
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %.not.i.i89 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i89, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread2929

_ZN4llvmneENS_9StringRefES0_.exit.i.i96:          ; preds = %bb.b
  %i.cr = load i128, ptr %i.k, align 1
  %i.cs = xor i128 %i.cr, 134607423993429842554449888574839091777
  %i.ct = getelementptr i8, ptr %i.k, i64 3
  %i.cu = load i128, ptr %i.ct, align 1
  %i.cv = xor i128 %i.cu, 161342256267031151675478807555331094881
  %i.cw = or i128 %i.cs, %i.cv
  %i.cx = icmp ne i128 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %.not.i.i98 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i98, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i123

_ZN4llvmneENS_9StringRefES0_.exit.i.i105:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i69
  %i.cz = load i128, ptr %i.k, align 1
  %i.da = xor i128 %i.cz, 134856573428330084745598400882101089606
  %i.db = getelementptr i8, ptr %i.k, i64 6
  %i.dc = load i128, ptr %i.db, align 1
  %i.dd = xor i128 %i.dc, 161342256267031151675478807555331092079
  %i.de = or i128 %i.da, %i.dd
  %i.df = icmp ne i128 %i.de, 0
  %i.dg = zext i1 %i.df to i32
  %.not.i.i107 = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i107, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i150

_ZN4llvmneENS_9StringRefES0_.exit.i.i114:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i60
  %i.dh = load i64, ptr %i.k, align 1
  %i.di = xor i64 %i.dh, 8021033344733836622
  %i.dj = getelementptr i8, ptr %i.k, i64 5
  %i.dk = load i64, ptr %i.dj, align 1
  %i.dl = xor i64 %i.dk, 8243122710535688303
  %i.dm = or i64 %i.di, %i.dl
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = zext i1 %i.dn to i32
  %.not.i.i116 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i116, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread2929

_ZN4llvmneENS_9StringRefES0_.exit.i.i123:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i96
  %i.dp = load i128, ptr %i.k, align 1
  %i.dq = xor i128 %i.dp, 146762528427609766834302997994081645902
  %i.dr = getelementptr i8, ptr %i.k, i64 3
  %i.ds = load i128, ptr %i.dr, align 1
  %i.dt = xor i128 %i.ds, 152058775009434823961133330028601234540
  %i.du = or i128 %i.dq, %i.dt
  %i.dv = icmp ne i128 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %.not.i.i125 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i125, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i312

_ZN4llvmneENS_9StringRefES0_.exit.i.i132:         ; preds = %bb.b
  %i.dx = load i128, ptr %i.k, align 1
  %i.dy = xor i128 %i.dx, 145411843223024717539429936596524425538
  %i.dz = getelementptr i8, ptr %i.k, i64 10
  %i.ea = load i128, ptr %i.dz, align 1
  %i.eb = xor i128 %i.ea, 152058775009434823961133330028600518006
  %i.ec = or i128 %i.dy, %i.eb
  %i.ed = icmp ne i128 %i.ec, 0
  %i.ee = zext i1 %i.ed to i32
  %.not.i.i134 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i134, label %_ZN4llvm12StringSwitchISt8optionalIN5clang8CastKindEES4_E4CaseENS_13StringLiteralES4_.exit622.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i141

_ZN4llvmneENS_9StringRefES0_.exit.i.i141:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i132
  %i.ef = load i128, ptr %i.k, align 1
  %i.eg = xor i128 %i.ef, 145411843306560098520132151053844112708
  %i.eh = getelementptr i8, ptr %i.k, i64 10
end_hunk_1

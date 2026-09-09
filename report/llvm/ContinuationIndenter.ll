Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ContinuationIndenter?download=true
inline.NumInlined: 2748
inline.NumDeleted: 1158
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5clang6formatL26shouldUnindentNextOperatorERKNS0_11FormatTokenE:bb.a

bb.d:                                             ; preds = %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit
  %i.g = tail call noundef i32 @_ZN5clang18getBinOpPrecedenceENS_3tok9TokenKindEbb(i16 noundef zeroext %i.b, i1 noundef zeroext true, i1 noundef zeroext true) #23
  br label %_ZNK5clang6format11FormatToken13getPrecedenceEv.exit

_ZNK5clang6format11FormatToken13getPrecedenceEv.exit: ; preds = %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit, %bb.d
  %.0.i5 = phi i32 [ %i.g, %bb.d ], [ %i.f, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit ]
  %i.h = icmp eq i32 %.0.i5, 2
  br i1 %i.h, label %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang6format11FormatToken13getPrecedenceEv.exit
  %i.i = load i16, ptr %i.d, align 8, !tbaa !261
  %i.j = icmp eq i16 %i.i, 98
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 67
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 113
  %i.n = select i1 %i.j, i1 true, i1 %i.m
  br label %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit.thread

_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit.thread: ; preds = %bb.b, %_ZNK5clang6format11FormatToken13getPrecedenceEv.exit, %bb.e
  %i.o = phi i1 [ %i.n, %bb.e ], [ true, %_ZNK5clang6format11FormatToken13getPrecedenceEv.exit ], [ false, %bb.b ]
  ret i1 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang6format20ContinuationIndenter19moveStateToNewBlockERNS0_9LineStateEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1304) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.clang::format::ParenState", align 8 ; 12 uses
  %4 = alloca %"struct.clang::format::IndentationAndAlignment", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 526
  %i.b = load i8, ptr %i.a, align 2, !tbaa !291
  %i.c = icmp eq i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !252  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 67
  %i.g = load i8, ptr %i.f, align 1, !tbaa !260
  %.fr = freeze i8 %i.g                           ; 3 uses
  %i.h = icmp eq i8 %.fr, 80
  %or.cond = and i1 %i.c, %i.h
  br i1 %or.cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !251
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 69
  %i.l = load i8, ptr %i.k, align 1, !tbaa !483, !range !42, !noundef !43
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.o = load i32, ptr %i.n, align 8, !tbaa !283
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.q = load i8, ptr %i.p, align 2, !tbaa !319, !range !42, !noundef !43
  %i.r = zext nneg i8 %i.q to i32
  %i.s = mul nuw nsw i32 %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.u = load i32, ptr %i.t, align 4, !tbaa !215
  %i.v = add i32 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !204
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !205
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -44
  store i32 %i.v, ptr %i.ac, align 4, !tbaa !257
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !204
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !205
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.ae, i64 %i.ah
  br label %bb.d

._crit_edge:                                      ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !204
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !205
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %i.ak, i64 %i.an
  %i.ap = icmp eq i8 %.fr, 94
  %spec.select25 = select i1 %i.ap, i64 688, i64 472
  %i.aq = icmp eq i8 %.fr, 80
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.thread
  %.pn = phi ptr [ %i.ai, %.thread ], [ %i.ao, %._crit_edge ]
  %i.ar = phi ptr [ %i.af, %.thread ], [ %i.al, %._crit_edge ] ; 4 uses
  %i.as = phi ptr [ %i.ad, %.thread ], [ %i.aj, %._crit_edge ] ; 3 uses
  %i.at = phi i1 [ true, %.thread ], [ %i.aq, %._crit_edge ]
  %i.au = phi i64 [ 472, %.thread ], [ %spec.select25, %._crit_edge ]
  %.in26 = getelementptr inbounds i8, ptr %.pn, i64 -44
  %i.av = load i32, ptr %.in26, align 4, !tbaa !257 ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  %i.aw = load i32, ptr %.in, align 8, !tbaa !184
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !298, !range !42, !noundef !43
  %i.az = trunc nuw i8 %i.ay to i1
  %.not19 = xor i1 %2, true
  %not.or.cond = and i1 %.not19, %i.az
  %spec.select = and i1 %i.at, %not.or.cond
  %i.ba = add i32 %i.aw, %i.av
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5clang6format23IndentationAndAlignmentC1Ej(ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.ba) #23
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !204
  %i.bc = load i32, ptr %i.ar, align 8, !tbaa !205 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [72 x i8], ptr %i.bb, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -48
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !256
  %i.bh = load i64, ptr %4, align 8               ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bh to i32
  store ptr %i.e, ptr %3, align 8, !tbaa !254
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bh, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.bj, align 8, !tbaa !255
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.bg, ptr %i.bk, align 8, !tbaa !256
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.bl, align 4, !tbaa !257
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.bo = select i1 %spec.select, i16 1192, i16 1160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bm, i8 0, i64 36, i1 false)
  store i16 %i.bo, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 70 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 2
  %i.br = and i8 %i.bq, -8
  store i8 %i.br, ptr %i.bp, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !206
  %.not.i = icmp ult i32 %i.bc, %i.bt
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !258

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6format10ParenStateELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(71) %3)
  %.pre22 = load i32, ptr %i.ar, align 8, !tbaa !205
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6format10ParenStateELb1EE9push_backERKS3_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  %i.bu = load i32, ptr %i.ar, align 8, !tbaa !205
  %i.bv = add i32 %i.bu, 1                        ; 2 uses
  store i32 %i.bv, ptr %i.ar, align 8, !tbaa !205
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6format10ParenStateELb1EE9push_backERKS3_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang6format10ParenStateELb1EE9push_backERKS3_.exit: ; preds = %bb.e, %bb.f
  %i.bw = phi i32 [ %.pre22, %bb.e ], [ %i.bv, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !204
  %i.by = zext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [72 x i8], ptr %i.bx, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -44
  store i32 %i.av, ptr %i.ca, align 4, !tbaa !257
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 4
  %i.cd = or i16 %i.cc, 16
  store i16 %i.cd, ptr %i.cb, align 4
  ret void
}

declare noundef zeroext i1 @_ZNK5clang6format11FormatToken25opensBlockOrBlockTypeListERKNS0_11FormatStyleE(ptr noundef nonnull align 8 dereferenceable(305), ptr noundef nonnull align 8 dereferenceable(1208)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN5clang6format20ContinuationIndenter24reformatRawStringLiteralERKNS0_11FormatTokenERNS0_9LineStateERKNS0_11FormatStyleEbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1304) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(305) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(1208) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %11 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %12 = alloca %"struct.std::pair.177", align 8   ; 9 uses
  %13 = alloca [1 x %"class.clang::tooling::Range"], align 4 ; 5 uses
  %14 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %15 = alloca %"class.llvm::Expected", align 8   ; 9 uses
  %16 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %17 = alloca %"class.clang::tooling::Replacement", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %19 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %20 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %21 = alloca %"class.clang::tooling::Replacement", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %24 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %25 = alloca %"class.clang::tooling::Replacement", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %27 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !248
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !277
  %i.e = sub i32 %i.b, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.054.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !150 ; 8 uses
  %.sroa.255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.255.0.copyload = load i64, ptr %.sroa.255.0..sroa_idx, align 8, !tbaa !151 ; 7 uses
  %i.g = icmp ult i64 %.sroa.255.0.copyload, 5
  br i1 %i.g, label %_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.a
  %i.h = load i16, ptr %.sroa.054.0.copyload, align 1
  %i.i = icmp ne i16 %i.h, 8786
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK4llvm9StringRef9ends_withES0_.exit.i, label %_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit

_ZNK4llvm9StringRef9ends_withES0_.exit.i:         ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload, i64 %.sroa.255.0.copyload
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1
  %lhsc.i = load i8, ptr %i.m, align 1, !noalias !496
  %i.n = icmp eq i8 %lhsc.i, 34
  br i1 %i.n, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, label %_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.255.0.copyload, i64 19)
  %i.o = tail call ptr @memchr(ptr noundef nonnull %.sroa.054.0.copyload, i32 noundef 40, i64 noundef %.sroa.speculated.i.i) #23, !noalias !496 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit, label %_ZNK4llvm9StringRef13find_first_ofEcm.exit.i

_ZNK4llvm9StringRef13find_first_ofEcm.exit.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %.sroa.054.0.copyload to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9StringRef13find_first_ofEcm.exit.i
  %i.t = add i64 %i.r, -2
  %28 = add i64 %.sroa.255.0.copyload, -2
  %.sroa.speculated.i6.i = tail call i64 @llvm.umin.i64(i64 %28, i64 %i.t) ; 2 uses
  %29 = sub nuw i64 %.sroa.255.0.copyload, %.sroa.speculated.i6.i
  %30 = getelementptr i8, ptr %.sroa.054.0.copyload, i64 %29
  %i.u = getelementptr i8, ptr %30, i64 -2
  %31 = load i8, ptr %i.u, align 1, !tbaa !46, !noalias !496
  %.not.i = icmp eq i8 %31, 41
  %32 = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload, i64 2
  %spec.select219 = select i1 %.not.i, ptr %32, ptr undef
  br label %_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit

_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit: ; preds = %bb.b, %bb.a, %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %_ZNK4llvm9StringRef9ends_withES0_.exit.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %_ZNK4llvm9StringRef13find_first_ofEcm.exit.i
  %.sroa.0185.0 = phi ptr [ undef, %bb.a ], [ undef, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ], [ undef, %_ZNK4llvm9StringRef13find_first_ofEcm.exit.i ], [ undef, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ undef, %_ZNK4llvm9StringRef9ends_withES0_.exit.i ], [ %spec.select219, %bb.b ] ; 4 uses
  %.sroa.4186.0 = phi i64 [ undef, %bb.a ], [ undef, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ], [ undef, %_ZNK4llvm9StringRef13find_first_ofEcm.exit.i ], [ undef, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ undef, %_ZNK4llvm9StringRef9ends_withES0_.exit.i ], [ %.sroa.speculated.i6.i, %bb.b ] ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 527
  %i.w = load i8, ptr %i.v, align 1, !tbaa !147
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 864
  %.val = load ptr, ptr %i.x, align 8, !tbaa !26  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.val89 = load ptr, ptr %i.y, align 8, !tbaa !26 ; 2 uses
  %.not810.i = icmp eq ptr %.val, %.val89
  br i1 %.not810.i, label %_ZN5clang6formatL30getCanonicalRawStringDelimiterERKNS0_11FormatStyleENS1_12LanguageKindE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit, %.critedge.i
  %.sroa.01.011.i = phi ptr [ %i.aa, %.critedge.i ], [ %.val, %_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit ] ; 4 uses
  %i.z = load i8, ptr %.sroa.01.011.i, align 8, !tbaa !38
  %.not.i90 = icmp eq i8 %i.z, %i.w
  br i1 %.not.i90, label %_ZN5clang6formatL30getCanonicalRawStringDelimiterERKNS0_11FormatStyleENS1_12LanguageKindE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.01.011.i, i64 120 ; 2 uses
  %.not8.i = icmp eq ptr %i.aa, %.val89
  br i1 %.not8.i, label %_ZN5clang6formatL30getCanonicalRawStringDelimiterERKNS0_11FormatStyleENS1_12LanguageKindE.exit.thread, label %.lr.ph.i

_ZN5clang6formatL30getCanonicalRawStringDelimiterERKNS0_11FormatStyleENS1_12LanguageKindE.exit: ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.01.011.i, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.01.011.i, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !45 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN5clang6formatL30getCanonicalRawStringDelimiterERKNS0_11FormatStyleENS1_12LanguageKindE.exit.thread, label %bb.c

_ZN5clang6formatL30getCanonicalRawStringDelimiterERKNS0_11FormatStyleENS1_12LanguageKindE.exit.thread: ; preds = %.critedge.i, %_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit, %_ZN5clang6formatL30getCanonicalRawStringDelimiterERKNS0_11FormatStyleENS1_12LanguageKindE.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN5clang6formatL30getCanonicalRawStringDelimiterERKNS0_11FormatStyleENS1_12LanguageKindE.exit.thread, %_ZN5clang6formatL30getCanonicalRawStringDelimiterERKNS0_11FormatStyleENS1_12LanguageKindE.exit
  %.sroa.0174.0 = phi ptr [ %.sroa.0185.0, %_ZN5clang6formatL30getCanonicalRawStringDelimiterERKNS0_11FormatStyleENS1_12LanguageKindE.exit.thread ], [ %i.ac, %_ZN5clang6formatL30getCanonicalRawStringDelimiterERKNS0_11FormatStyleENS1_12LanguageKindE.exit ] ; 5 uses
  %.sroa.10.0 = phi i64 [ %.sroa.4186.0, %_ZN5clang6formatL30getCanonicalRawStringDelimiterERKNS0_11FormatStyleENS1_12LanguageKindE.exit.thread ], [ %i.ae, %_ZN5clang6formatL30getCanonicalRawStringDelimiterERKNS0_11FormatStyleENS1_12LanguageKindE.exit ] ; 3 uses
  %i.ag = trunc i64 %.sroa.4186.0 to i32          ; 3 uses
  %i.ah = add i32 %i.ag, 3                        ; 2 uses
  %i.ai = add i64 %.sroa.4186.0, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.aj = zext i32 %i.ah to i64                   ; 2 uses
  %.sroa.speculated4.i = tail call i64 @llvm.umin.i64(i64 %.sroa.255.0.copyload, i64 %i.aj) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload, i64 %.sroa.speculated4.i ; 2 uses
  %i.al = sub nuw i64 %.sroa.255.0.copyload, %.sroa.speculated4.i ; 2 uses
  %i.am = and i64 %i.ai, 4294967295
  %i.an = sub i64 %i.al, %i.am
  %.sroa.speculated.i.i93 = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.an) ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.ao, ptr %7, align 8, !tbaa !44
  %i.ap = icmp eq ptr %.sroa.054.0.copyload, null
  %i.aq = icmp ne i64 %.sroa.speculated.i.i93, 0
  %or.cond.i.i.i = and i1 %i.ap, %i.aq
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.26) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %.sroa.speculated.i.i93, ptr %i.a, align 8, !tbaa !151
  %i.ar = icmp ugt i64 %.sroa.speculated.i.i93, 15
  br i1 %i.ar, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !49
  %i.at = load i64, ptr %i.a, align 8, !tbaa !151
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.au = phi ptr [ %i.as, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  switch i64 %.sroa.speculated.i.i93, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = load i8, ptr %i.ak, align 1, !tbaa !46
  store i8 %i.av, ptr %i.au, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ak, i64 %.sroa.speculated.i.i93, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.g, %bb.h
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !151 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !45
  %i.ay = load ptr, ptr %7, align 8, !tbaa !49
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i.i = icmp eq i64 %.sroa.10.0, %.sroa.4186.0
  br i1 %.not.i.i, label %bb.i, label %_ZN4llvmplERKNS_5TwineES2_.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.ba = icmp eq i64 %.sroa.4186.0, 0
  br i1 %i.ba, label %_ZN4llvmneENS_9StringRefES0_.exit.thread201, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.i
  %bcmp.i.i94 = call i32 @bcmp(ptr %.sroa.0174.0, ptr %.sroa.0185.0, i64 %.sroa.4186.0)
  %.not211.a = icmp eq i32 %bcmp.i.i94, 0
  br i1 %.not211.a, label %_ZN4llvmneENS_9StringRefES0_.exit.thread201, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit, %_ZN4llvmneENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 3, ptr %i.bb, align 8, !tbaa !499, !alias.scope !500
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 5, ptr %i.bc, align 1, !tbaa !501, !alias.scope !500
  store ptr @.str.7, ptr %10, align 8, !tbaa !46, !alias.scope !500
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %.sroa.0174.0, ptr %i.bd, align 8, !tbaa !46, !alias.scope !500
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %.sroa.10.0, ptr %i.be, align 8, !tbaa !46, !alias.scope !500
  store ptr %10, ptr %9, align 8, !alias.scope !502
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.8, ptr %i.bf, align 8, !alias.scope !502
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.bg, align 8, !tbaa !499, !alias.scope !502
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.bh, align 1, !tbaa !501, !alias.scope !502
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(34) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.bi = load ptr, ptr %7, align 8, !tbaa !49
  store ptr %i.bi, ptr %11, align 8, !tbaa !269
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bk = load i64, ptr %i.ax, align 8, !tbaa !45
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !268
  %i.bl = load ptr, ptr %8, align 8, !tbaa !49
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !45
  %i.bo = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr %i.bl, i64 %i.bn, i64 noundef 0) #23
  %.not212.a = icmp eq i64 %i.bo, -1              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %spec.select209.a = select i1 %.not212.a, ptr %.sroa.0174.0, ptr %.sroa.0185.0
  %spec.select210 = select i1 %.not212.a, i64 %.sroa.10.0, i64 %.sroa.4186.0
  %i.bp = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !46
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread201

_ZN4llvmneENS_9StringRefES0_.exit.thread201:      ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4llvmneENS_9StringRefES0_.exit
  %.sroa.0174.2 = phi ptr [ %spec.select209.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0174.0, %_ZN4llvmneENS_9StringRefES0_.exit ], [ %.sroa.0174.0, %bb.i ] ; 3 uses
  %.sroa.10.2 = phi i64 [ %spec.select210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.4186.0, %_ZN4llvmneENS_9StringRefES0_.exit ], [ 0, %bb.i ] ; 4 uses
  %i.bu = trunc i64 %.sroa.10.2 to i32            ; 2 uses
  %i.bv = add i32 %i.bu, 2
  %i.bw = add i32 %i.e, 3
  %i.bx = add i32 %i.bw, %i.bu                    ; 5 uses
  %i.by = load ptr, ptr %i.f, align 8, !tbaa !269
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.aj
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !46
  %i.cb = icmp eq i8 %i.ca, 10                    ; 2 uses
  br i1 %5, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread201
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !265 ; 2 uses
  %.not = icmp eq ptr %i.cd, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i16, ptr %i.ce, align 8, !tbaa !261
  %i.cg = icmp eq i16 %i.cf, 23
  br i1 %i.cg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %_ZN4llvmneENS_9StringRefES0_.exit.thread201
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink273 = phi i64 [ -64, %bb.l ], [ -44, %bb.k ]
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !204
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !205
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [72 x i8], ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.sink273
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !184 ; 2 uses
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 472
end_hunk_0
begin_hunk_1_@_ZN5clang6format20ContinuationIndenter24reformatRawStringLiteralERKNS0_11FormatTokenERNS0_9LineStateERKNS0_11FormatStyleEbb:bb.a
_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.ax
  %i.pl = load ptr, ptr %i.pg, align 8, !tbaa !183
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8
  call void %i.pn(ptr noundef nonnull align 8 dereferenceable(8) %i.pg) #23, !inline_history !495
  br label %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147, %bb.ax, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.po = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !519
  call void @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(52) %12, ptr noundef %i.pp)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.pq = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.ao
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.ps = load i64, ptr %i.ao, align 8, !tbaa !46
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret i32 %.0
}

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare void @_ZN5clang6format8internal8reformatERKNS0_11FormatStyleEN4llvm9StringRefENS5_8ArrayRefINS_7tooling5RangeEEEjjjS6_PNS0_23FormattingAttemptStatusE(ptr dead_on_unwind writable sret(%"struct.std::pair.177") align 8, ptr noundef nonnull align 8 dereferenceable(1208), ptr, i64, ptr, i64, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.llvm::StringRef") align 8, ptr noundef) local_unnamed_addr #2

declare void @_ZN5clang7tooling20applyAllReplacementsB5cxx11EN4llvm9StringRefERKNS0_12ReplacementsE(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr, i64, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN5clang6format20ContinuationIndenter17addMultilineTokenERKNS0_11FormatTokenERNS0_9LineStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1304) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(305) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !205  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = mul nuw nsw i64 %i.e, 72                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not18 = icmp eq i32 %i.d, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = add nsw i64 %.idx, -72                   ; 2 uses
  %i.h = udiv i64 %i.g, 72
  %i.i = add nuw nsw i64 %i.h, 1
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.01619.prol = phi ptr [ %i.m, %.lr.ph.prol ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.01619.prol, i64 68 ; 2 uses
  %i.k = load i16, ptr %i.j, align 4
  %i.l = or i16 %i.k, 16
  store i16 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.01619.prol, i64 72 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !520

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.01619.unr = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.m, %.lr.ph.prol ]
  %i.n = icmp ult i64 %i.g, 504
  br i1 %i.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %i.o = load i32, ptr %2, align 8, !tbaa !248    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !338
  store i32 %i.q, ptr %2, align 8, !tbaa !248
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = load i32, ptr %i.r, align 8, !tbaa !275
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !251
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load i8, ptr %i.v, align 8, !tbaa !300, !range !42, !noundef !43
  %i.x = shl nuw nsw i8 %i.w, 1
  %i.y = zext nneg i8 %i.x to i32
  %i.z = sub i32 %i.s, %i.y                       ; 2 uses
  %i.aa = icmp ugt i32 %i.o, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = sub nuw i32 %i.o, %i.z
  %i.ae = mul i32 %i.ac, %i.ad
  %.0 = select i1 %i.aa, i32 %i.ae, i32 0
  ret i32 %.0

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01619 = phi ptr [ %i.bd, %.lr.ph ], [ %.01619.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01619, i64 68 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 4
  %i.ah = or i16 %i.ag, 16
  store i16 %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.01619, i64 140 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 4
  %i.ak = or i16 %i.aj, 16
  store i16 %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.01619, i64 212 ; 2 uses
  %i.am = load i16, ptr %i.al, align 4
  %i.an = or i16 %i.am, 16
  store i16 %i.an, ptr %i.al, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.01619, i64 284 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 4
  %i.aq = or i16 %i.ap, 16
  store i16 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.01619, i64 356 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 4
  %i.at = or i16 %i.as, 16
  store i16 %i.at, ptr %i.ar, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.01619, i64 428 ; 2 uses
  %i.av = load i16, ptr %i.au, align 4
  %i.aw = or i16 %i.av, 16
  store i16 %i.aw, ptr %i.au, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.01619, i64 500 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 4
  %i.az = or i16 %i.ay, 16
  store i16 %i.az, ptr %i.ax, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.01619, i64 572 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 4
  %i.bc = or i16 %i.bb, 16
  store i16 %i.bc, ptr %i.ba, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.01619, i64 576 ; 2 uses
  %.not.7 = icmp eq ptr %i.bd, %i.f
  br i1 %.not.7, label %._crit_edge, label %.lr.ph
}

declare void @_ZN5clang6format17WhitespaceManager14addReplacementERKNS_7tooling11ReplacementE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(2385), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN5clang7tooling11ReplacementC1ERKNS_13SourceManagerENS_14SourceLocationEjN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(776), i32, i32 noundef, ptr, i64) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #2

declare void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang6format20ContinuationIndenter17getRawStringStyleERKNS0_11FormatTokenERKNS0_9LineStateE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1304) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(305) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::optional", align 8     ; 10 uses
  %5 = alloca %"class.std::optional", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i16, ptr %i.a, align 8, !tbaa !261
  switch i16 %i.b, label %_ZNK5clang6format11FormatToken15isStringLiteralEv.exit [
    i16 18, label %bb.b
    i16 17, label %bb.b
    i16 15, label %bb.b
    i16 14, label %bb.b
    i16 19, label %bb.b
  ]

_ZNK5clang6format11FormatToken15isStringLiteralEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store i8 0, ptr %i.c, align 8, !tbaa !41
  br label %bb.u

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.03.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !150 ; 6 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !151 ; 5 uses
  %i.e = icmp ult i64 %.sroa.24.0.copyload, 5
  br i1 %i.e, label %bb.e, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.b
  %i.f = load i16, ptr %.sroa.03.0.copyload, align 1
  %i.g = icmp ne i16 %i.f, 8786
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK4llvm9StringRef9ends_withES0_.exit.i, label %bb.e

_ZNK4llvm9StringRef9ends_withES0_.exit.i:         ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -1
  %lhsc.i = load i8, ptr %i.k, align 1, !noalias !527
  %i.l = icmp eq i8 %lhsc.i, 34
  br i1 %i.l, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, label %bb.e

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload, i64 19)
  %i.m = tail call ptr @memchr(ptr noundef nonnull %.sroa.03.0.copyload, i32 noundef 40, i64 noundef %.sroa.speculated.i.i) #23, !noalias !527 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK4llvm9StringRef13find_first_ofEcm.exit.i

_ZNK4llvm9StringRef13find_first_ofEcm.exit.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %.sroa.03.0.copyload to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm9StringRef13find_first_ofEcm.exit.i
  %i.r = add i64 %i.p, -2
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 2 ; 3 uses
  %i.t = add i64 %.sroa.24.0.copyload, -2
  %.sroa.speculated.i6.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.r) ; 5 uses
  %i.u = sub nuw i64 %.sroa.24.0.copyload, %.sroa.speculated.i6.i
  %i.v = getelementptr i8, ptr %.sroa.03.0.copyload, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !46, !noalias !527
  %.not.i = icmp eq i8 %i.x, 41
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %.sroa.speculated.i6.i, 0    ; 2 uses
  br i1 %i.y, label %_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit15.i

_ZNK4llvm9StringRef11starts_withES0_.exit15.i:    ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.v, i64 -1
  %bcmp.i14.i = tail call i32 @bcmp(ptr %i.z, ptr nonnull %i.s, i64 %.sroa.speculated.i6.i), !noalias !527
  %i.aa = icmp eq i32 %bcmp.i14.i, 0
  br i1 %i.aa, label %_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm9StringRef13find_first_ofEcm.exit.i, %bb.c, %bb.b, %_ZNK4llvm9StringRef9ends_withES0_.exit.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %_ZNK4llvm9StringRef11starts_withES0_.exit15.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store i8 0, ptr %i.ab, align 8, !tbaa !41
  br label %bb.u

_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit15.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1256 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.ad = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull %i.s, i64 %.sroa.speculated.i6.i) #23, !noalias !528
  %i.ae = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr nonnull %i.s, i64 %.sroa.speculated.i6.i, i32 noundef %i.ad) #23, !noalias !528 ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !152, !noalias !528
  br i1 %i.af, label %bb.f, label %_ZNK4llvm9StringMapIN5clang6format11FormatStyleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapIN5clang6format11FormatStyleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit
  %i.ah = sext i32 %i.ae to i64                   ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !188, !noalias !528
  %.pre5.i = zext i32 %.pre.i to i64
  %i.ai = icmp eq i64 %i.ah, %.pre5.i
  br i1 %i.ai, label %bb.f, label %.thread

.thread:                                          ; preds = %_ZNK4llvm9StringMapIN5clang6format11FormatStyleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !154, !noalias !528
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @_ZN5clang6format11FormatStyleC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(1216) %4, ptr noundef nonnull align 8 dereferenceable(1208) %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 1208 ; 2 uses
  store i8 1, ptr %i.am, align 8, !tbaa !41, !alias.scope !528
  br label %bb.s

bb.f:                                             ; preds = %_ZNK4llvm9StringMapIN5clang6format11FormatStyleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %_ZN5clang6formatL21getRawStringDelimiterEN4llvm9StringRefE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 1208 ; 6 uses
  store i8 0, ptr %i.an, align 8, !tbaa !41, !alias.scope !528
  br i1 %i.y, label %bb.g, label %.thread47

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.pn.i.i = phi ptr [ %2, %bb.g ], [ %.0.i.i, %bb.i ]
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 208
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !263 ; 4 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN5clang6formatL24getEnclosingFunctionNameERKNS0_11FormatTokenE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !261
  switch i16 %i.ap, label %_ZN5clang6formatL24getEnclosingFunctionNameERKNS0_11FormatTokenE.exit [
    i16 4, label %bb.h
    i16 22, label %.preheader31.i
  ]

.preheader31.i:                                   ; preds = %bb.i, %bb.j
  %.pn.i18.i = phi ptr [ %.0.i20.i, %bb.j ], [ %.0.i.i, %bb.i ]
  %.0.in.i19.i = getelementptr inbounds nuw i8, ptr %.pn.i18.i, i64 208
  %.0.i20.i = load ptr, ptr %.0.in.i19.i, align 8, !tbaa !263 ; 6 uses
  %.not.i21.i = icmp eq ptr %.0.i20.i, null
  br i1 %.not.i21.i, label %_ZN5clang6formatL24getEnclosingFunctionNameERKNS0_11FormatTokenE.exit, label %bb.j

bb.j:                                             ; preds = %.preheader31.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i20.i, i64 16
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !261 ; 2 uses
  %i.as = icmp eq i16 %i.ar, 4
  br i1 %i.as, label %.preheader31.i, label %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit22.i, !llvm.loop !6

_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit22.i: ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i20.i, i64 67
  %i.au = load i8, ptr %i.at, align 1, !tbaa !260
  %i.av = icmp eq i8 %i.au, -110
  br i1 %i.av, label %bb.k, label %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit27.i

bb.k:                                             ; preds = %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit22.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i20.i, i64 200
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !288 ; 2 uses
  %.not16.i = icmp eq ptr %i.ax, null
  br i1 %.not16.i, label %_ZN5clang6formatL24getEnclosingFunctionNameERKNS0_11FormatTokenE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %bb.l
  %.pn.i23.i = phi ptr [ %.0.i25.i, %bb.l ], [ %i.ax, %bb.k ]
  %.0.in.i24.i = getelementptr inbounds nuw i8, ptr %.pn.i23.i, i64 208
  %.0.i25.i = load ptr, ptr %.0.in.i24.i, align 8, !tbaa !263 ; 4 uses
  %.not.i26.i = icmp eq ptr %.0.i25.i, null
  br i1 %.not.i26.i, label %_ZN5clang6formatL24getEnclosingFunctionNameERKNS0_11FormatTokenE.exit, label %bb.l

bb.l:                                             ; preds = %.preheader.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 16
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !261 ; 2 uses
  %i.ba = icmp eq i16 %i.az, 4
  br i1 %i.ba, label %.preheader.i, label %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit27.i, !llvm.loop !6

_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit27.i: ; preds = %bb.l, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit22.i
  %i.bb = phi i16 [ %i.ar, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit22.i ], [ %i.az, %bb.l ]
  %.0.i = phi ptr [ %.0.i20.i, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit22.i ], [ %.0.i25.i, %bb.l ] ; 2 uses
  %.not30.i = icmp eq i16 %i.bb, 5
  br i1 %.not30.i, label %bb.m, label %_ZN5clang6formatL24getEnclosingFunctionNameERKNS0_11FormatTokenE.exit

bb.m:                                             ; preds = %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit27.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bc, align 8, !tbaa !150
  %.sroa.5.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i11, align 8, !tbaa !151
  br label %_ZN5clang6formatL24getEnclosingFunctionNameERKNS0_11FormatTokenE.exit

_ZN5clang6formatL24getEnclosingFunctionNameERKNS0_11FormatTokenE.exit: ; preds = %bb.i, %bb.h, %.preheader31.i, %.preheader.i, %bb.k, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit27.i, %bb.m
  %.sroa.5.0.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.m ], [ 0, %bb.k ], [ 0, %.preheader31.i ], [ 0, %.preheader.i ], [ 0, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit27.i ], [ 0, %bb.h ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.m ], [ @.str.25, %bb.k ], [ @.str.25, %.preheader31.i ], [ @.str.25, %.preheader.i ], [ @.str.25, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit27.i ], [ @.str.25, %bb.h ], [ @.str.25, %bb.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 2 uses
  %i.be = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.0.0.i, i64 %.sroa.5.0.i) #23, !noalias !529
  %i.bf = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bd, ptr %.sroa.0.0.i, i64 %.sroa.5.0.i, i32 noundef %i.be) #23, !noalias !529 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, -1
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !152, !noalias !529
  br i1 %i.bg, label %bb.p, label %_ZNK4llvm9StringMapIN5clang6format11FormatStyleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i12

_ZNK4llvm9StringMapIN5clang6format11FormatStyleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i12: ; preds = %_ZN5clang6formatL24getEnclosingFunctionNameERKNS0_11FormatTokenE.exit
  %i.bi = sext i32 %i.bf to i64                   ; 2 uses
  %.phi.trans.insert.i13 = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %.pre.i14 = load i32, ptr %.phi.trans.insert.i13, align 8, !tbaa !188, !noalias !529
  %.pre5.i15 = zext i32 %.pre.i14 to i64
  %i.bj = icmp eq i64 %i.bi, %.pre5.i15
  br i1 %i.bj, label %bb.p, label %_ZNK5clang6format27RawStringFormatStyleManager25getEnclosingFunctionStyleEN4llvm9StringRefE.exit

_ZNK5clang6format27RawStringFormatStyleManager25getEnclosingFunctionStyleEN4llvm9StringRefE.exit: ; preds = %_ZNK4llvm9StringMapIN5clang6format11FormatStyleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i12
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !154, !noalias !529
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @_ZN5clang6format11FormatStyleC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(1216) %5, ptr noundef nonnull align 8 dereferenceable(1208) %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 1208 ; 3 uses
  store i8 1, ptr %i.bn, align 8, !tbaa !41, !alias.scope !529
  %i.bo = load i8, ptr %i.an, align 8, !tbaa !41, !range !42, !noundef !43
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK5clang6format27RawStringFormatStyleManager25getEnclosingFunctionStyleEN4llvm9StringRefE.exit
  %i.bq = call noundef nonnull align 8 dereferenceable(1208) ptr @_ZN5clang6format11FormatStyleaSEOS1_(ptr noundef nonnull align 8 dereferenceable(1216) %4, ptr noundef nonnull align 8 dereferenceable(1216) %5) #23 ; 0 uses
  br label %_ZNSt8optionalIN5clang6format11FormatStyleEEaSEOS3_.exit

bb.o:                                             ; preds = %_ZNK5clang6format27RawStringFormatStyleManager25getEnclosingFunctionStyleEN4llvm9StringRefE.exit
  call void @_ZN5clang6format11FormatStyleC2EOS1_(ptr noundef nonnull align 8 dereferenceable(1216) %4, ptr noundef nonnull align 8 dereferenceable(1216) %5) #23
  store i8 1, ptr %i.an, align 8, !tbaa !41
  br label %_ZNSt8optionalIN5clang6format11FormatStyleEEaSEOS3_.exit

bb.p:                                             ; preds = %_ZN5clang6formatL24getEnclosingFunctionNameERKNS0_11FormatTokenE.exit, %_ZNK4llvm9StringMapIN5clang6format11FormatStyleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i12
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 1208 ; 2 uses
  store i8 0, ptr %i.br, align 8, !tbaa !41, !alias.scope !529
  store i8 0, ptr %i.an, align 8, !tbaa !41
  br label %_ZNSt8optionalIN5clang6format11FormatStyleEEaSEOS3_.exit

_ZNSt8optionalIN5clang6format11FormatStyleEEaSEOS3_.exit: ; preds = %bb.p, %bb.n, %bb.o
  %i.bs = phi ptr [ %i.bn, %bb.n ], [ %i.bn, %bb.o ], [ %i.br, %bb.p ] ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !41, !range !42, !noundef !43
  %i.bu = trunc nuw i8 %i.bt to i1
  store i8 0, ptr %i.bs, align 8, !tbaa !41
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt8optionalIN5clang6format11FormatStyleEEaSEOS3_.exit
  call void @_ZN5clang6format11FormatStyleD2Ev(ptr noundef nonnull align 8 dead_on_return(1208) dereferenceable(1216) %5) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt8optionalIN5clang6format11FormatStyleEEaSEOS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.pre = load i8, ptr %i.an, align 8, !tbaa !41, !range !42
  %i.bv = trunc nuw i8 %.pre to i1
  br i1 %i.bv, label %bb.s, label %.thread47

.thread47:                                        ; preds = %bb.r, %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store i8 0, ptr %i.bw, align 8, !tbaa !41
  br label %_ZNSt14_Optional_baseIN5clang6format11FormatStyleELb0ELb0EED2Ev.exit17

bb.s:                                             ; preds = %bb.r, %.thread
  %i.bx = phi ptr [ %i.am, %.thread ], [ %i.an, %bb.r ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !275
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !251
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !300, !range !42, !noundef !43
  %i.ce = shl nuw nsw i8 %i.cd, 1
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = sub i32 %i.bz, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 248
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !148
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  store i8 0, ptr %i.ci, align 8, !tbaa !41
  call void @_ZN5clang6format11FormatStyleC2EOS1_(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull align 8 dereferenceable(1216) %4) #23
  store i8 1, ptr %i.ci, align 8, !tbaa !41
  %.pre37 = load i8, ptr %i.bx, align 8, !tbaa !41, !range !42
end_hunk_1

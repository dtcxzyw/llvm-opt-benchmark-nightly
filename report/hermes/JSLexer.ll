Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSLexer?download=true
inline.NumInlined: 2539
inline.NumDeleted: 512
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0
@.str.275 = private unnamed_addr constant [4 x i8] c"Eta\00", align 1
@.str.276 = private unnamed_addr constant [6 x i8] c"Theta\00", align 1
@.str.277 = private unnamed_addr constant [5 x i8] c"Iota\00", align 1
@.str.278 = private unnamed_addr constant [6 x i8] c"Kappa\00", align 1
@.str.279 = private unnamed_addr constant [7 x i8] c"Lambda\00", align 1
@.str.280 = private unnamed_addr constant [3 x i8] c"Mu\00", align 1
@.str.281 = private unnamed_addr constant [3 x i8] c"Nu\00", align 1
@.str.282 = private unnamed_addr constant [3 x i8] c"Xi\00", align 1
@.str.283 = private unnamed_addr constant [8 x i8] c"Omicron\00", align 1
@.str.284 = private unnamed_addr constant [3 x i8] c"Pi\00", align 1
@.str.285 = private unnamed_addr constant [4 x i8] c"Rho\00", align 1
@.str.286 = private unnamed_addr constant [6 x i8] c"Sigma\00", align 1
@.str.287 = private unnamed_addr constant [4 x i8] c"Tau\00", align 1
@.str.288 = private unnamed_addr constant [8 x i8] c"Upsilon\00", align 1
@.str.289 = private unnamed_addr constant [4 x i8] c"Phi\00", align 1
@.str.290 = private unnamed_addr constant [4 x i8] c"Chi\00", align 1
@.str.291 = private unnamed_addr constant [4 x i8] c"Psi\00", align 1
@.str.292 = private unnamed_addr constant [6 x i8] c"Omega\00", align 1
@.str.293 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.294 = private unnamed_addr constant [5 x i8] c"beta\00", align 1
@.str.295 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.296 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.297 = private unnamed_addr constant [8 x i8] c"epsilon\00", align 1
@.str.298 = private unnamed_addr constant [5 x i8] c"zeta\00", align 1
@.str.299 = private unnamed_addr constant [4 x i8] c"eta\00", align 1
@.str.300 = private unnamed_addr constant [6 x i8] c"theta\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"iota\00", align 1
@.str.302 = private unnamed_addr constant [6 x i8] c"kappa\00", align 1
@.str.303 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.304 = private unnamed_addr constant [3 x i8] c"mu\00", align 1
@.str.305 = private unnamed_addr constant [3 x i8] c"nu\00", align 1
@.str.306 = private unnamed_addr constant [3 x i8] c"xi\00", align 1
@.str.307 = private unnamed_addr constant [8 x i8] c"omicron\00", align 1
@.str.308 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.309 = private unnamed_addr constant [4 x i8] c"rho\00", align 1
@.str.310 = private unnamed_addr constant [7 x i8] c"sigmaf\00", align 1
@.str.311 = private unnamed_addr constant [6 x i8] c"sigma\00", align 1
@.str.312 = private unnamed_addr constant [4 x i8] c"tau\00", align 1
@.str.313 = private unnamed_addr constant [8 x i8] c"upsilon\00", align 1
@.str.314 = private unnamed_addr constant [4 x i8] c"phi\00", align 1
@.str.315 = private unnamed_addr constant [4 x i8] c"chi\00", align 1
@.str.316 = private unnamed_addr constant [4 x i8] c"psi\00", align 1
@.str.317 = private unnamed_addr constant [6 x i8] c"omega\00", align 1
@.str.318 = private unnamed_addr constant [9 x i8] c"thetasym\00", align 1
@.str.319 = private unnamed_addr constant [6 x i8] c"upsih\00", align 1
@.str.320 = private unnamed_addr constant [4 x i8] c"piv\00", align 1
@.str.321 = private unnamed_addr constant [5 x i8] c"ensp\00", align 1
@.str.322 = private unnamed_addr constant [5 x i8] c"emsp\00", align 1
@.str.323 = private unnamed_addr constant [7 x i8] c"thinsp\00", align 1
@.str.324 = private unnamed_addr constant [5 x i8] c"zwnj\00", align 1
@.str.325 = private unnamed_addr constant [4 x i8] c"zwj\00", align 1
@.str.326 = private unnamed_addr constant [4 x i8] c"lrm\00", align 1
@.str.327 = private unnamed_addr constant [4 x i8] c"rlm\00", align 1
@.str.328 = private unnamed_addr constant [6 x i8] c"ndash\00", align 1
@.str.329 = private unnamed_addr constant [6 x i8] c"mdash\00", align 1
@.str.330 = private unnamed_addr constant [6 x i8] c"lsquo\00", align 1
@.str.331 = private unnamed_addr constant [6 x i8] c"rsquo\00", align 1
@.str.332 = private unnamed_addr constant [6 x i8] c"sbquo\00", align 1
@.str.333 = private unnamed_addr constant [6 x i8] c"ldquo\00", align 1
@.str.334 = private unnamed_addr constant [6 x i8] c"rdquo\00", align 1
@.str.335 = private unnamed_addr constant [6 x i8] c"bdquo\00", align 1
@.str.336 = private unnamed_addr constant [7 x i8] c"dagger\00", align 1
@.str.337 = private unnamed_addr constant [7 x i8] c"Dagger\00", align 1
@.str.338 = private unnamed_addr constant [5 x i8] c"bull\00", align 1
@.str.339 = private unnamed_addr constant [7 x i8] c"hellip\00", align 1
@.str.340 = private unnamed_addr constant [7 x i8] c"permil\00", align 1
@.str.341 = private unnamed_addr constant [6 x i8] c"prime\00", align 1
@.str.342 = private unnamed_addr constant [6 x i8] c"Prime\00", align 1
@.str.343 = private unnamed_addr constant [7 x i8] c"lsaquo\00", align 1
@.str.344 = private unnamed_addr constant [7 x i8] c"rsaquo\00", align 1
@.str.345 = private unnamed_addr constant [6 x i8] c"oline\00", align 1
@.str.346 = private unnamed_addr constant [6 x i8] c"frasl\00", align 1
@.str.347 = private unnamed_addr constant [5 x i8] c"euro\00", align 1
@.str.348 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.349 = private unnamed_addr constant [7 x i8] c"weierp\00", align 1
@.str.350 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.351 = private unnamed_addr constant [6 x i8] c"trade\00", align 1
@.str.352 = private unnamed_addr constant [8 x i8] c"alefsym\00", align 1
@.str.353 = private unnamed_addr constant [5 x i8] c"larr\00", align 1
@.str.354 = private unnamed_addr constant [5 x i8] c"uarr\00", align 1
@.str.355 = private unnamed_addr constant [5 x i8] c"rarr\00", align 1
@.str.356 = private unnamed_addr constant [5 x i8] c"darr\00", align 1
@.str.357 = private unnamed_addr constant [5 x i8] c"harr\00", align 1
@.str.358 = private unnamed_addr constant [6 x i8] c"crarr\00", align 1
@.str.359 = private unnamed_addr constant [5 x i8] c"lArr\00", align 1
@.str.360 = private unnamed_addr constant [5 x i8] c"uArr\00", align 1
@.str.361 = private unnamed_addr constant [5 x i8] c"rArr\00", align 1
@.str.362 = private unnamed_addr constant [5 x i8] c"dArr\00", align 1
@.str.363 = private unnamed_addr constant [5 x i8] c"hArr\00", align 1
@.str.364 = private unnamed_addr constant [7 x i8] c"forall\00", align 1
@.str.365 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@.str.366 = private unnamed_addr constant [6 x i8] c"exist\00", align 1
@.str.367 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.368 = private unnamed_addr constant [6 x i8] c"nabla\00", align 1
@.str.369 = private unnamed_addr constant [5 x i8] c"isin\00", align 1
@.str.370 = private unnamed_addr constant [6 x i8] c"notin\00", align 1
@.str.371 = private unnamed_addr constant [3 x i8] c"ni\00", align 1
@.str.372 = private unnamed_addr constant [5 x i8] c"prod\00", align 1
@.str.373 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.374 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.375 = private unnamed_addr constant [7 x i8] c"lowast\00", align 1
@.str.376 = private unnamed_addr constant [6 x i8] c"radic\00", align 1
@.str.377 = private unnamed_addr constant [5 x i8] c"prop\00", align 1
@.str.378 = private unnamed_addr constant [6 x i8] c"infin\00", align 1
@.str.379 = private unnamed_addr constant [4 x i8] c"ang\00", align 1
@.str.380 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.381 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.382 = private unnamed_addr constant [4 x i8] c"cap\00", align 1
@.str.383 = private unnamed_addr constant [4 x i8] c"cup\00", align 1
@.str.384 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.385 = private unnamed_addr constant [7 x i8] c"there4\00", align 1
@.str.386 = private unnamed_addr constant [4 x i8] c"sim\00", align 1
@.str.387 = private unnamed_addr constant [5 x i8] c"cong\00", align 1
@.str.388 = private unnamed_addr constant [6 x i8] c"asymp\00", align 1
@.str.389 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.390 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@.str.391 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.392 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.393 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.394 = private unnamed_addr constant [4 x i8] c"sup\00", align 1
@.str.395 = private unnamed_addr constant [5 x i8] c"nsub\00", align 1
@.str.396 = private unnamed_addr constant [5 x i8] c"sube\00", align 1
@.str.397 = private unnamed_addr constant [5 x i8] c"supe\00", align 1
@.str.398 = private unnamed_addr constant [6 x i8] c"oplus\00", align 1
@.str.399 = private unnamed_addr constant [7 x i8] c"otimes\00", align 1
@.str.400 = private unnamed_addr constant [5 x i8] c"perp\00", align 1
@.str.401 = private unnamed_addr constant [5 x i8] c"sdot\00", align 1
@.str.402 = private unnamed_addr constant [6 x i8] c"lceil\00", align 1
@.str.403 = private unnamed_addr constant [6 x i8] c"rceil\00", align 1
@.str.404 = private unnamed_addr constant [7 x i8] c"lfloor\00", align 1
@.str.405 = private unnamed_addr constant [7 x i8] c"rfloor\00", align 1
@.str.406 = private unnamed_addr constant [5 x i8] c"lang\00", align 1
@.str.407 = private unnamed_addr constant [5 x i8] c"rang\00", align 1
@.str.408 = private unnamed_addr constant [4 x i8] c"loz\00", align 1
@.str.409 = private unnamed_addr constant [7 x i8] c"spades\00", align 1
@.str.410 = private unnamed_addr constant [6 x i8] c"clubs\00", align 1
@.str.411 = private unnamed_addr constant [7 x i8] c"hearts\00", align 1
@.str.412 = private unnamed_addr constant [6 x i8] c"diams\00", align 1
@.str.413 = private unnamed_addr constant [57 x i8] c"scanning identifier with unicode escape as reserved word\00", align 1
@.str.414 = private unnamed_addr constant [37 x i8] c" is not a valid identifier codepoint\00", align 1
@.str.415 = private unnamed_addr constant [22 x i8] c"non-terminated string\00", align 1
@.str.416 = private unnamed_addr constant [20 x i8] c"string started here\00", align 1
@.str.417 = private unnamed_addr constant [32 x i8] c"Invalid UTF-8 continuation byte\00", align 1
@.str.418 = private unnamed_addr constant [29 x i8] c"Non-canonical UTF-8 encoding\00", align 1
@.str.419 = private unnamed_addr constant [28 x i8] c"Invalid UTF-8 code point 0x\00", align 1
@.str.420 = private unnamed_addr constant [27 x i8] c"Invalid UTF-8 lead byte 0x\00", align 1
@.str.421 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.423 = private unnamed_addr constant [97 x i8] c"Numeric literal starts with 0 but contains an 8 or 9 digit. Interpreting as decimal (not octal).\00", align 1

@_ZN6hermes6parser7JSLexerC1EjRNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb = hidden unnamed_addr alias void (ptr, i32, ptr, ptr, ptr, i1, i1), ptr @_ZN6hermes6parser7JSLexerC2EjRNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb
@_ZN6hermes6parser7JSLexerC1ESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS4_EERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1, i1), ptr @_ZN6hermes6parser7JSLexerC2ESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS4_EERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = icmp eq i32 %i.b, 1
  %i.d = add i32 %i.b, -4
  %spec.select.i = icmp ult i32 %i.d, 44
  %or.cond = or i1 %i.c, %spec.select.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.0 = select i1 %or.cond, ptr %i.f, ptr undef   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.k = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 336 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8
  store i32 0, ptr %i.l, align 8, !tbaa !60
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 340
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 noundef 0) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.w = load i8, ptr %i.v, align 8, !tbaa !64, !range !65, !noundef !57
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %.sroa.016.0.extract.trunc = trunc i64 %1 to i32
  %i.z = and i64 %1, 4294967296
  %.not = icmp eq i64 %i.z, 0
  %i.aa = icmp eq i32 %i.y, %.sroa.016.0.extract.trunc
  %i.ab = and i64 %1, 1095216660480
  %.not.i = icmp eq i64 %i.ab, 4294967296
  %.0.i = select i1 %.not, i1 %.not.i, i1 %i.aa
  br i1 %.0.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.017.0 = phi i32 [ %i.y, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.419.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  store <2 x ptr> %i.h, ptr %i.g, align 8, !tbaa !24
  switch i32 %i.b, label %bb.f [
    i32 1, label %bb.d
    i32 91, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.a, align 8, !tbaa !23
  store ptr %.0, ptr %i.e, align 8, !tbaa !66
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  store i32 91, ptr %i.a, align 8, !tbaa !23
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store i32 %i.b, ptr %i.a, align 8, !tbaa !23
  store ptr %.0, ptr %i.e, align 8, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  store ptr %i.j, ptr %i.i, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !67, !range !65, !noundef !57
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !68

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !69
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -24
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !69
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h, %bb.g
  %.sroa.017.1 = phi i32 [ %.sroa.017.0, %bb.h ], [ %.sroa.017.0, %bb.g ], [ %i.y, %bb.b ]
  %.sroa.419.1 = phi i8 [ %.sroa.419.0, %bb.h ], [ %.sroa.419.0, %bb.g ], [ 1, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !70, !range !65, !noundef !57
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.j, label %_ZN4llvh6detail10scope_exitIZN6hermes6parser7JSLexer10lookahead1ILb1EEENS2_8OptValueINS3_9TokenKindEEES8_EUlvE_ED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.t ; 2 uses
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !71
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i.i, label %_ZN4llvh6detail10scope_exitIZN6hermes6parser7JSLexer10lookahead1ILb1EEENS2_8OptValueINS3_9TokenKindEEES8_EUlvE_ED2Ev.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i: ; preds = %bb.j
  store ptr %i.am, ptr %i.o, align 8, !tbaa !62
  br label %_ZN4llvh6detail10scope_exitIZN6hermes6parser7JSLexer10lookahead1ILb1EEENS2_8OptValueINS3_9TokenKindEEES8_EUlvE_ED2Ev.exit

_ZN4llvh6detail10scope_exitIZN6hermes6parser7JSLexer10lookahead1ILb1EEENS2_8OptValueINS3_9TokenKindEEES8_EUlvE_ED2Ev.exit: ; preds = %bb.i, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i
  %.sroa.413.8.extract.trunc = trunc i64 %i.m to i40
  store i40 %.sroa.413.8.extract.trunc, ptr %i.l, align 8
  %.sroa.419.0.insert.ext = zext nneg i8 %.sroa.419.1 to i64
  %.sroa.419.0.insert.shift = shl nuw nsw i64 %.sroa.419.0.insert.ext, 32
  %.sroa.017.0.insert.ext = zext i32 %.sroa.017.1 to i64
  %.sroa.017.0.insert.insert = or disjoint i64 %.sroa.419.0.insert.shift, %.sroa.017.0.insert.ext
  ret i64 %.sroa.017.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) initializes((160, 161)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = alloca [8 x i8], align 1                 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [8 x i8], align 1                 ; 8 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store i8 0, ptr %i.g, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 88 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 36 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 17
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.r = icmp eq i32 %1, 3                        ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 17
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 17
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 17
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !55  ; 133 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !72
  switch i8 %i.aj, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread [
    i8 0, label %bb.c
    i8 125, label %bb.h
    i8 40, label %bb.i
    i8 41, label %bb.j
    i8 91, label %bb.k
    i8 93, label %bb.l
    i8 59, label %bb.m
    i8 44, label %bb.n
    i8 126, label %bb.o
    i8 58, label %bb.p
    i8 123, label %bb.q
    i8 61, label %bb.u
    i8 33, label %bb.aa
    i8 43, label %bb.af
    i8 45, label %bb.aj
    i8 38, label %bb.an
    i8 124, label %bb.at
    i8 63, label %bb.bb
    i8 42, label %bb.bi
    i8 94, label %bb.bo
    i8 37, label %bb.br
    i8 13, label %bb.bw
    i8 10, label %bb.bw
    i8 -30, label %bb.bx
    i8 11, label %bb.bz
    i8 12, label %bb.bz
    i8 9, label %.critedge.preheader
    i8 32, label %.critedge.preheader
    i8 -62, label %bb.ca
    i8 -17, label %bb.cc
    i8 47, label %bb.cf
    i8 35, label %bb.cn
    i8 60, label %bb.cw
    i8 62, label %bb.de
    i8 46, label %bb.dp
    i8 48, label %bb.dv
    i8 49, label %bb.dv
    i8 50, label %bb.dv
    i8 51, label %bb.dv
    i8 52, label %bb.dv
    i8 53, label %bb.dv
    i8 54, label %bb.dv
    i8 55, label %bb.dv
    i8 56, label %bb.dv
    i8 57, label %bb.dv
    i8 95, label %bb.dw
    i8 36, label %bb.dw
    i8 97, label %bb.dw
    i8 98, label %bb.dw
    i8 99, label %bb.dw
    i8 100, label %bb.dw
    i8 101, label %bb.dw
    i8 102, label %bb.dw
    i8 103, label %bb.dw
    i8 104, label %bb.dw
    i8 105, label %bb.dw
    i8 106, label %bb.dw
    i8 107, label %bb.dw
    i8 108, label %bb.dw
    i8 109, label %bb.dw
    i8 110, label %bb.dw
    i8 111, label %bb.dw
    i8 112, label %bb.dw
    i8 113, label %bb.dw
    i8 114, label %bb.dw
    i8 115, label %bb.dw
    i8 116, label %bb.dw
    i8 117, label %bb.dw
    i8 118, label %bb.dw
    i8 119, label %bb.dw
    i8 120, label %bb.dw
    i8 121, label %bb.dw
    i8 122, label %bb.dw
    i8 65, label %bb.dw
    i8 66, label %bb.dw
    i8 67, label %bb.dw
    i8 68, label %bb.dw
    i8 69, label %bb.dw
    i8 70, label %bb.dw
    i8 71, label %bb.dw
    i8 72, label %bb.dw
    i8 73, label %bb.dw
    i8 74, label %bb.dw
    i8 75, label %bb.dw
    i8 76, label %bb.dw
    i8 77, label %bb.dw
    i8 78, label %bb.dw
    i8 79, label %bb.dw
    i8 80, label %bb.dw
    i8 81, label %bb.dw
    i8 82, label %bb.dw
    i8 83, label %bb.dw
    i8 84, label %bb.dw
    i8 85, label %bb.dw
    i8 86, label %bb.dw
    i8 87, label %bb.dw
    i8 88, label %bb.dw
    i8 89, label %bb.dw
    i8 90, label %bb.dw
    i8 64, label %bb.ea
    i8 92, label %bb.ee
    i8 39, label %bb.em
    i8 34, label %bb.em
    i8 96, label %bb.ep
  ]

.critedge.preheader:                              ; preds = %bb.b, %bb.b
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !24
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 120, ptr %i.am, align 8, !tbaa !23
  br label %_ZN6hermes6parser7JSLexer31scanIdentifierFastPathInContextEPKcNS1_14GrammarContextE.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i8 1, ptr %i.y, align 1, !tbaa !76
  store ptr @.str.44, ptr %4, align 8, !tbaa !72
  store i8 3, ptr %i.x, align 8, !tbaa !77
  %i.an = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.an, i32 noundef 0, ptr nonnull %i.ai, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 1) #18
  %i.ao = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 316
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !131, !range !65, !noundef !57
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !73
end_hunk_0

inline.NumInlined: 3404
inline.NumDeleted: 1092
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXsnc_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_10GenericArgNtBa_7AstNode4cast:bb.a
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #24
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.g:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.h:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.i:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4: ; preds = %bb.g, %bb.h, %bb.i, %bb.d, %bb.f, %bb.e
  %.sroa.0.0 = phi i64 [ -1, %bb.f ], [ -1, %bb.e ], [ 3, %bb.i ], [ 1, %bb.g ], [ 2, %bb.h ], [ 0, %bb.d ]
  %i.l = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, ptr } %i.l, ptr %0, 1
  ret { i64, ptr } %i.m

bb.j:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXsny_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ItemNtBa_7AstNode4cast(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !5
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.w

bb.d:                                             ; preds = %bb.a
  switch i16 %i.b, label %bb.e [
    i16 165, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4
    i16 190, label %bb.g
    i16 197, label %bb.h
    i16 199, label %bb.i
    i16 200, label %bb.j
    i16 203, label %bb.k
    i16 215, label %bb.l
    i16 233, label %bb.m
    i16 234, label %bb.n
    i16 238, label %bb.o
    i16 246, label %bb.p
    i16 291, label %bb.q
    i16 293, label %bb.r
    i16 296, label %bb.s
    i16 305, label %bb.t
    i16 312, label %bb.u
    i16 314, label %bb.v
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !5
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #24
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.g:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.h:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.i:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.j:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.k:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.l:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.m:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.n:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.o:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.p:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.q:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.r:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.s:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.t:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.u:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

bb.v:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit4: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.d, %bb.f, %bb.e
  %.sroa.0.0 = phi i64 [ -1, %bb.f ], [ -1, %bb.e ], [ 16, %bb.v ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 6, %bb.l ], [ 7, %bb.m ], [ 8, %bb.n ], [ 9, %bb.o ], [ 10, %bb.p ], [ 11, %bb.q ], [ 12, %bb.r ], [ 13, %bb.s ], [ 14, %bb.t ], [ 15, %bb.u ], [ 0, %bb.d ]
  %i.l = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, ptr } %i.l, ptr %0, 1
  ret { i64, ptr } %i.m

bb.w:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %bb.c, label %bb.d

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csf8NQSppxkmK_14ide_completion.exit.backedge.us.i.i, %.split.us.i.i11, %bb.h, %.lr.ph.i, %bb.g, %.lr.ph.split.us.i.i10, %bb.ba, %bb.d, %bb.a, %bb.bc, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.d ], [ %i.n, %bb.g ], [ 1, %bb.a ], [ %storemerge.i.sink.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %i.kz, %bb.bc ], [ %.sroa.014.5.i, %bb.ba ], [ 1, %.lr.ph.split.us.i.i10 ], [ 0, %bb.h ], [ 1, %.lr.ph.i ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csf8NQSppxkmK_14ide_completion.exit.backedge.us.i.i ], [ 1, %.split.us.i.i11 ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, %3
  br i1 %i.g, label %bb.bc, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %1, 33
  br i1 %i.h, label %bb.am, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

bb.f:                                             ; preds = %bb.c
  %i.i = load i8, ptr %0, align 1, !noundef !5    ; 2 uses
  %i.j = icmp samesign ult i64 %3, 16
  br i1 %i.j, label %.lr.ph.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = icmp eq i64 %i.l, 1
  %i.n = zext i1 %i.m to i8
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.sroa.01.05.i = phi i64 [ %i.r, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !1197, !noundef !5
  %i.q = icmp eq i8 %i.p, %i.i
  br i1 %i.q, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.r = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %3
  br i1 %exitcond.not.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.lr.ph.i

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit: ; preds = %bb.ao, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %i.s = load i64, ptr %i.b, align 8, !range !61, !alias.scope !1200, !noalias !1203, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.t, label %bb.r, label %.preheader.i3

.preheader.i3:                                    ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.w = load i8, ptr %i.v, align 2, !range !138, !alias.scope !1205, !noalias !1208, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.preheader.i3
  %.promoted.i = load i64, ptr %i.u, align 8, !alias.scope !1200, !noalias !1203 ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1205, !noalias !1208, !nonnull !5, !noundef !5 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1205, !noalias !1208, !noundef !5 ; 14 uses
  %.promoted52.i = load i8, ptr %i.y, align 8, !alias.scope !1205, !noalias !1208 ; 2 uses
  %i.ad = trunc nuw i8 %.promoted52.i to i1
  %i.ae = icmp eq i64 %.promoted.i, 0
  br i1 %i.ae, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i4
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.ac
  br i1 %.not.i.i.i.peel, label %bb.j, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.i
  %i.af = icmp eq i64 %.promoted.i, %i.ac
  br i1 %i.af, label %bb.k, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.promoted.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !1210, !noalias !1213, !noundef !5
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %.split.i.i.i.peel, %.lr.ph.i4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.promoted.i ; 4 uses
  %i.ak = icmp samesign eq i64 %.promoted.i, %i.ac
  br i1 %i.ak, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i8, ptr %i.aj, align 1, !noalias !1215, !noundef !5 ; 5 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.m, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel: ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = and i8 %i.al, 31
  %i.ap = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.aq = add nuw nsw i64 %.promoted.i, 1
  %i.ar = icmp samesign ne i64 %i.aq, %i.ac
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load i8, ptr %i.an, align 1, !noalias !1215, !noundef !5
  %i.at = shl nuw nsw i32 %i.ap, 6
  %i.au = and i8 %i.as, 63
  %i.av = zext nneg i8 %i.au to i32               ; 2 uses
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = icmp samesign ugt i8 %i.al, -33
  br i1 %i.ax, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel, label %bb.n

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.az = add nuw nsw i64 %.promoted.i, 2
  %i.ba = icmp samesign ne i64 %i.az, %i.ac
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.ay, align 1, !noalias !1215, !noundef !5
  %i.bc = shl nuw nsw i32 %i.av, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be            ; 2 uses
  %i.bg = shl nuw nsw i32 %i.ap, 12
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = icmp samesign ugt i8 %i.al, -17
  br i1 %i.bi, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.peel, label %bb.n

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.bk = add nuw nsw i64 %.promoted.i, 3
  %i.bl = icmp samesign ne i64 %i.bk, %i.ac
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i8, ptr %i.bj, align 1, !noalias !1215, !noundef !5
  %i.bn = shl nuw nsw i32 %i.ap, 18
  %i.bo = and i32 %i.bn, 1835008
  %i.bp = shl nuw nsw i32 %i.bf, 6
  %i.bq = and i8 %i.bm, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br
  %i.bt = or disjoint i32 %i.bs, %i.bo
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = zext nneg i8 %i.al to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.bh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel ], [ %i.bt, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.peel ], [ %i.aw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel ], [ %i.bu, %bb.m ] ; 4 uses
  %i.bv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bv)
  br i1 %i.ad, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bw, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bx, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.by, i64 3, i64 4
  br label %bb.s

bb.r:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !1200, !noalias !1203, !noundef !5 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !1200, !noalias !1203, !nonnull !5, !noundef !5 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !1200, !noalias !1203, !noundef !5 ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !1200, !noalias !1203, !nonnull !5, !noundef !5 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !1200, !noalias !1203, !noundef !5 ; 14 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cl = add nsw i64 %i.cj, -1                   ; 5 uses
  br i1 %i.cb, label %bb.af, label %bb.x

bb.s:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.p ], [ %..i.i.peel, %bb.q ], [ 1, %bb.o ]
  %i.cm = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i = icmp ult i64 %i.cm, %i.ac
  br i1 %.not.i.i.i, label %bb.u, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.t
  %i.co = icmp eq i64 %i.cm, %i.ac
  br i1 %i.co, label %bb.v, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !1210, !noalias !1219, !noundef !5
  %i.cr = icmp sgt i8 %i.cq, -65
  br i1 %i.cr, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u, %.split.i.i.i, %bb.s
  %i.cs = icmp samesign eq i64 %i.cm, %i.ac
  br i1 %i.cs, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !1220, !noundef !5 ; 3 uses
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i: ; preds = %bb.w
  %i.cw = add nuw nsw i64 %i.cm, 1
  %i.cx = icmp samesign ne i64 %i.cw, %i.ac
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp samesign ugt i8 %i.cu, -33
  br i1 %i.cy, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i
  %i.cz = add nuw nsw i64 %i.cm, 2
  %i.da = icmp samesign ne i64 %i.cz, %i.ac
  tail call void @llvm.assume(i1 %i.da)
  %i.db = icmp samesign ugt i8 %i.cu, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i
  %i.dc = add nuw nsw i64 %i.cm, 3
  %i.dd = icmp samesign ne i64 %i.dc, %i.ac
  tail call void @llvm.assume(i1 %i.dd)
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.u, %.split.i.i.i, %bb.j, %.split.i.i.i.peel
  %.lcssa81 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.j ], [ %i.cm, %.split.i.i.i ], [ %i.cm, %bb.u ]
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i64 noundef %.lcssa81, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27, !noalias !1219
  unreachable

bb.x:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %.promoted.i.i = load i64, ptr %i.ck, align 8, !alias.scope !1228, !noalias !1229 ; 2 uses
  %i.de = add i64 %.promoted.i.i, %i.cl           ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.cf
  br i1 %i.df, label %.lr.ph.i1.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i1.i:                                      ; preds = %bb.x
end_hunk_0
begin_hunk_1_@_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
  %.sroa.2.0.i.i155 = phi i64 [ %i.eh, %.preheader36.i.i ], [ %i.di, %.preheader36.i.i.preheader ]
  %i.eh = add i64 %.sroa.2.0.i.i155, -1           ; 6 uses
  %i.ei = icmp ult i64 %i.eh, %i.cj
  br i1 %i.ei, label %bb.ac, label %.split32.us.i.i

bb.ac:                                            ; preds = %.lr.ph156
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !1226, !noalias !1232, !noundef !5
  %i.el = add i64 %i.eh, %.sink71.i.i44           ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cf
  tail call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !1224, !noalias !1231, !noundef !5
  %.not20.i.i = icmp eq i8 %i.ek, %i.eo
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.ad

.split32.us.i.i:                                  ; preds = %.lr.ph156
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27, !noalias !1233
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.ep = add i64 %.sink71.i.i44, %i.dk
  br label %bb.aa

bb.ae:                                            ; preds = %.lr.ph154
  %.reass.i.reass.reass = add i64 %.sink71.i.i44, %invariant.op
  %i.eq = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i153
  br label %bb.aa

bb.af:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %.promoted.i4.i = load i64, ptr %i.ck, align 8, !alias.scope !1241, !noalias !1242 ; 3 uses
  %i.er = add i64 %.promoted.i4.i, %i.cl          ; 3 uses
  %i.es = icmp ult i64 %i.er, %i.cf
  br i1 %i.es, label %.lr.ph.i7.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i7.i:                                      ; preds = %bb.af
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !1241, !noalias !1242, !noundef !5 ; 2 uses
  %i.ev = load i64, ptr %i.u, align 8, !alias.scope !1241, !noalias !1242
  %.fr63.i = freeze i64 %i.ev                     ; 10 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !1241, !noalias !1242
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr63.i, i64 range(i64 0, -9223372036854775808) %i.cj) ; 2 uses
  %i.ey = add i64 %.fr63.i, -1                    ; 2 uses
  %.first_iter.i8.i = icmp ult i64 %i.ey, %i.cj
  %i.ez = sub i64 1, %.fr63.i                     ; 2 uses
  br i1 %.first_iter.i8.i, label %.lr.ph.split.us.i.us.i.preheader, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i7.i
  %exitcond.not.i.i157.not = icmp ult i64 %.fr63.i, %i.cj
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.us.i.preheader:                 ; preds = %.lr.ph.i7.i
  %exitcond.not.i.us.i160.not = icmp ult i64 %.fr63.i, %i.cj
  %.not34.i.us.us.i163 = icmp eq i64 %.fr63.i, 0
  br label %.lr.ph.split.us.i.us.i

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.split.us.i.us.i.preheader, %bb.ai
  %.sink.i9.us.i52 = phi i64 [ %.sink.i9.us.i, %bb.ai ], [ %.promoted.i4.i, %.lr.ph.split.us.i.us.i.preheader ] ; 5 uses
  %i.fa = phi i64 [ %i.fr, %bb.ai ], [ %i.er, %.lr.ph.split.us.i.us.i.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !1237, !noalias !1244, !noundef !5
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.eu
  %.not.us.i.us.i = icmp eq i64 %i.fg, 0
  br i1 %.not.us.i.us.i, label %bb.ah, label %.preheader35.i.us.i.preheader

.preheader35.i.us.i.preheader:                    ; preds = %.lr.ph.split.us.i.us.i
  br i1 %exitcond.not.i.us.i160.not, label %.lr.ph162, label %.preheader.i10.us.us.i.preheader

.preheader35.i.us.i:                              ; preds = %.lr.ph162
  %i.fh = add i64 %.sroa.04.0.us.i.us.i161, 1     ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.fh, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %.preheader.i10.us.us.i.preheader, label %.lr.ph162

.preheader.i10.us.us.i.preheader:                 ; preds = %.preheader35.i.us.i, %.preheader35.i.us.i.preheader
  br i1 %.not34.i.us.us.i163, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph165

.lr.ph162:                                        ; preds = %.preheader35.i.us.i.preheader, %.preheader35.i.us.i
  %.sroa.04.0.us.i.us.i161 = phi i64 [ %i.fh, %.preheader35.i.us.i ], [ %.fr63.i, %.preheader35.i.us.i.preheader ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.04.0.us.i.us.i161
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !1239, !noalias !1245, !noundef !5
  %i.fk = add i64 %.sroa.04.0.us.i.us.i161, %.sink.i9.us.i52 ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.cf
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fk
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !1237, !noalias !1244, !noundef !5
  %.not21.us.i.us.i = icmp eq i8 %i.fj, %i.fn
  br i1 %.not21.us.i.us.i, label %.preheader35.i.us.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph162
  %i.fo = add i64 %.sink.i9.us.i52, %i.ez
  %i.fp = add i64 %i.fo, %.sroa.04.0.us.i.us.i161
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.split.us.i.us.i
  %i.fq = add i64 %.sink.i9.us.i52, %i.cj
  br label %bb.ai

bb.ai:                                            ; preds = %.split.us.us.i, %bb.ah, %bb.ag
  %.sink.i9.us.i = phi i64 [ %i.fq, %bb.ah ], [ %i.fp, %bb.ag ], [ %i.ga, %.split.us.us.i ] ; 2 uses
  %i.fr = add i64 %.sink.i9.us.i, %i.cl           ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.cf
  br i1 %i.fs, label %.lr.ph.split.us.i.us.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.preheader.i10.us.us.i:                           ; preds = %.lr.ph165
  %.not34.i.us.us.i = icmp eq i64 %i.ft, 0
  br i1 %.not34.i.us.us.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph165

.lr.ph165:                                        ; preds = %.preheader.i10.us.us.i.preheader, %.preheader.i10.us.us.i
  %.sroa.2.0.us.i.us.us.i164 = phi i64 [ %i.ft, %.preheader.i10.us.us.i ], [ %.fr63.i, %.preheader.i10.us.us.i.preheader ]
  %i.ft = add i64 %.sroa.2.0.us.i.us.us.i164, -1  ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !1239, !noalias !1245, !noundef !5
  %i.fw = add i64 %i.ft, %.sink.i9.us.i52         ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.cf
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fw
  %i.fz = load i8, ptr %i.fy, align 1, !alias.scope !1237, !noalias !1244, !noundef !5
  %.not20.us.i.us.us.i = icmp eq i8 %i.fv, %i.fz
  br i1 %.not20.us.i.us.us.i, label %.preheader.i10.us.us.i, label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.lr.ph165
  %i.ga = add i64 %.sink.i9.us.i52, %i.ex
  br label %bb.ai

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %bb.al
  %.sink.i9.i50 = phi i64 [ %.sink.i9.i, %bb.al ], [ %.promoted.i4.i, %.lr.ph.split.us.i.i.preheader ] ; 3 uses
  %i.gb = phi i64 [ %i.gs, %bb.al ], [ %i.er, %.lr.ph.split.us.i.i.preheader ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !1237, !noalias !1244, !noundef !5
  %i.ge = and i8 %i.gd, 63
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = shl nuw i64 1, %i.gf
  %i.gh = and i64 %i.gg, %i.eu
  %.not.us.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not.us.i.i, label %bb.ak, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
  br i1 %exitcond.not.i.i157.not, label %.lr.ph159, label %.preheader.i10.i

.preheader35.i.i:                                 ; preds = %.lr.ph159
  %i.gi = add i64 %.sroa.04.0.us.i.i158, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gi, %umax.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i10.i, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i158 = phi i64 [ %i.gi, %.preheader35.i.i ], [ %.fr63.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.04.0.us.i.i158
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !1239, !noalias !1245, !noundef !5
  %i.gl = add i64 %.sroa.04.0.us.i.i158, %.sink.i9.i50 ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.cf
  tail call void @llvm.assume(i1 %i.gm)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.gl
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !1237, !noalias !1244, !noundef !5
  %.not21.us.i.i = icmp eq i8 %i.gk, %i.go
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.aj

.preheader.i10.i:                                 ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.not34.i.i = icmp eq i64 %.fr63.i, 0
  br i1 %.not34.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.split32.us.i11.i

.split32.us.i11.i:                                ; preds = %.preheader.i10.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27, !noalias !1246
  unreachable

bb.aj:                                            ; preds = %.lr.ph159
  %i.gp = add i64 %.sink.i9.i50, %i.ez
  %i.gq = add i64 %i.gp, %.sroa.04.0.us.i.i158
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph.split.us.i.i
  %i.gr = add i64 %.sink.i9.i50, %i.cj
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink.i9.i = phi i64 [ %i.gr, %bb.ak ], [ %i.gq, %bb.aj ] ; 2 uses
  %i.gs = add i64 %.sink.i9.i, %i.cl              ; 2 uses
  %i.gt = icmp ult i64 %i.gs, %i.cf
  br i1 %i.gt, label %.lr.ph.split.us.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %bb.aa, %.preheader36.i.i.preheader, %.preheader36.i.i, %bb.al, %bb.ai, %.preheader.i10.us.us.i.preheader, %.preheader.i10.us.us.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i, %bb.w, %bb.k, %.preheader.i10.i, %bb.af, %bb.x, %bb.n, %bb.v, %.preheader.i3
  %storemerge.i.sink.i = phi i8 [ 0, %bb.af ], [ 0, %bb.x ], [ 1, %bb.n ], [ 0, %bb.ai ], [ 0, %.preheader.i3 ], [ 1, %bb.v ], [ 1, %.preheader.i10.i ], [ 0, %bb.al ], [ %.promoted52.i, %bb.k ], [ 1, %.preheader.i10.us.us.i ], [ 1, %.preheader36.i.i ], [ 1, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i ], [ 1, %bb.w ], [ 1, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i ], [ 1, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i ], [ 1, %.preheader.i10.us.us.i.preheader ], [ 0, %bb.aa ], [ 1, %.preheader36.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.am:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %i.gu = load i8, ptr %0, align 1, !alias.scope !1247, !noalias !1250, !noundef !5 ; 3 uses
  %i.gv = add nsw i64 %1, -1                      ; 2 uses
  %i.gw = icmp eq i64 %1, 2
  br i1 %i.gw, label %.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gx = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4)
  br label %.lr.ph

bb.ao:                                            ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csf8NQSppxkmK_14ide_completion.exit.i.i
  %i.gy = icmp ult i64 %i.gx, %i.ha
  br i1 %i.gy, label %.lr.ph, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph:                                           ; preds = %bb.an, %bb.ao
  %i.gz = phi i64 [ %1, %bb.an ], [ %i.ha, %bb.ao ]
  %i.ha = add nsw i64 %i.gz, -1                   ; 6 uses
  %i.hb = icmp ult i64 %i.ha, %1
  br i1 %i.hb, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csf8NQSppxkmK_14ide_completion.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ha, i64 noundef range(i64 2, 33) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27, !noalias !1252
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csf8NQSppxkmK_14ide_completion.exit.i.i: ; preds = %.lr.ph
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !1247, !noalias !1260, !noundef !5 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.hd, %i.gu
  br i1 %.not.i.not.i.i, label %bb.ao, label %bb.aq

bb.aq:                                            ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csf8NQSppxkmK_14ide_completion.exit.i.i
  %i.he = add nuw nsw i64 %1, 15
  %i.hf = icmp ult i64 %3, %i.he
  br i1 %i.hf, label %.lr.ph.split.us.i.i10, label %bb.ar

.thread.i:                                        ; preds = %bb.am
  %i.hg = icmp ult i64 %3, 17
  br i1 %i.hg, label %.lr.ph.split.us.i.i10, label %.thread92.i

.thread92.i:                                      ; preds = %.thread.i
  %i.hh = insertelement <16 x i8> poison, i8 %i.gu, i64 0
  %i.hi = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !1247, !noalias !1250
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hj = insertelement <16 x i8> poison, i8 %i.gu, i64 0
  %i.hk = shufflevector <16 x i8> %i.hj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.as

.lr.ph.split.us.i.i10:                            ; preds = %bb.aq, %.thread.i
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !1261, !noalias !1262
  %i.hl = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.hl, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csf8NQSppxkmK_14ide_completion.exit.backedge.us.i.i

.split.us.i.i11:                                  ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csf8NQSppxkmK_14ide_completion.exit.backedge.us.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.hm, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !1261, !noalias !1262
  %i.hn = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.hn, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csf8NQSppxkmK_14ide_completion.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csf8NQSppxkmK_14ide_completion.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i10, %.split.us.i.i11
  %.pn.i = phi ptr [ %i.hm, %.split.us.i.i11 ], [ %2, %.lr.ph.split.us.i.i10 ]
  %.in.i = phi i64 [ %i.ho, %.split.us.i.i11 ], [ %3, %.lr.ph.split.us.i.i10 ]
  %i.ho = add i64 %.in.i, -1                      ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.ho
  br i1 %.not27.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i11

bb.as:                                            ; preds = %bb.ar, %.thread92.i
  %i.hp = phi i8 [ %.pre.i, %.thread92.i ], [ %i.hd, %bb.ar ]
  %i.hq = phi <16 x i8> [ %i.hi, %.thread92.i ], [ %i.hk, %bb.ar ] ; 6 uses
  %storemerge9194.i = phi i64 [ 1, %.thread92.i ], [ %i.ha, %bb.ar ] ; 6 uses
  %i.hr = insertelement <16 x i8> poison, i8 %i.hp, i64 0
  %i.hs = shufflevector <16 x i8> %i.hr, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1261
  store ptr %2, ptr %i.a, align 8, !noalias !1261
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.hu, align 8, !noalias !1261
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ht, ptr %i.hv, align 8, !noalias !1261
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.gv, ptr %i.hw, align 8, !noalias !1261
  %i.hx = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i6 = icmp ult i64 %i.hx, %3
  br i1 %.not.i6, label %.lr.ph.i9, label %.preheader.i7

.preheader.i7:                                    ; preds = %bb.aw, %bb.as
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.as ], [ %i.jt, %bb.aw ] ; 2 uses
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.as ], [ %.sroa.014.2.3.i, %bb.aw ] ; 2 uses
  %i.hy = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.hz = add i64 %.sroa.06.0.lcssa.i, %i.hy
  %i.ia = icmp uge i64 %i.hz, %3
  %i.ib = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3104.i = select i1 %i.ia, i1 true, i1 %i.ib
  br i1 %or.cond3104.i, label %._crit_edge.i8, label %.lr.ph106.i

.lr.ph.i9:                                        ; preds = %bb.as, %bb.aw
  %.sroa.06.0102.i = phi i64 [ %i.jt, %bb.aw ], [ 0, %bb.as ] ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0102.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ic, align 1, !alias.scope !1250, !noalias !1266
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.id, align 1, !alias.scope !1250, !noalias !1266
  %i.ie = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.hq
  %i.if = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.hs
  %i.ig = and <16 x i1> %i.ie, %i.if
  %i.ih = bitcast <16 x i1> %i.ig to i16          ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.ii, align 1, !alias.scope !1250, !noalias !1266
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.ij, align 1, !alias.scope !1250, !noalias !1266
  %i.ik = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.hq
  %i.il = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.hs
  %i.im = and <16 x i1> %i.ik, %i.il
  %i.in = bitcast <16 x i1> %i.im to i16          ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.io, align 1, !alias.scope !1250, !noalias !1266
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.ip, align 1, !alias.scope !1250, !noalias !1266
  %i.iq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.hq
  %i.ir = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.hs
  %i.is = and <16 x i1> %i.iq, %i.ir
  %i.it = bitcast <16 x i1> %i.is to i16          ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ic, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.iu, align 1, !alias.scope !1250, !noalias !1266
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.iv, align 1, !alias.scope !1250, !noalias !1266
  %i.iw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.hq
  %i.ix = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.hs
  %i.iy = and <16 x i1> %i.iw, %i.ix
  %i.iz = bitcast <16 x i1> %i.iy to i16          ; 2 uses
  %i.ja = icmp eq i16 %i.ih, 0
  br i1 %i.ja, label %.preheader95.1.i, label %bb.ax

.preheader95.1.i:                                 ; preds = %bb.ax, %.lr.ph.i9
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i9 ], [ %i.jy, %bb.ax ] ; 3 uses
  %i.jb = icmp eq i16 %i.in, 0
  br i1 %i.jb, label %.preheader95.2.i, label %bb.at

bb.at:                                            ; preds = %.preheader95.1.i
  %i.jc = or disjoint i64 %.sroa.06.0102.i, 16
  %i.jd = trunc nuw i8 %.sroa.014.2.i to i1
  %i.je = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Csf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.jc, i16 noundef %i.in, i1 noundef zeroext %i.jd) #28
  %i.jf = zext i1 %i.je to i8
  %i.jg = or i8 %.sroa.014.2.i, %i.jf
  br label %.preheader95.2.i

.preheader95.2.i:                                 ; preds = %bb.at, %.preheader95.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader95.1.i ], [ %i.jg, %bb.at ] ; 3 uses
  %i.jh = icmp eq i16 %i.it, 0
  br i1 %i.jh, label %.preheader95.3.i, label %bb.au

bb.au:                                            ; preds = %.preheader95.2.i
  %i.ji = or disjoint i64 %.sroa.06.0102.i, 32
  %i.jj = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.jk = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Csf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ji, i16 noundef %i.it, i1 noundef zeroext %i.jj) #28
  %i.jl = zext i1 %i.jk to i8
  %i.jm = or i8 %.sroa.014.2.1.i, %i.jl
  br label %.preheader95.3.i

.preheader95.3.i:                                 ; preds = %bb.au, %.preheader95.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader95.2.i ], [ %i.jm, %bb.au ] ; 3 uses
  %i.jn = icmp eq i16 %i.iz, 0
  br i1 %i.jn, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.preheader95.3.i
  %i.jo = or disjoint i64 %.sroa.06.0102.i, 48
  %i.jp = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.jq = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Csf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.jo, i16 noundef %i.iz, i1 noundef zeroext %i.jp) #28
  %i.jr = zext i1 %i.jq to i8
  %i.js = or i8 %.sroa.014.2.2.i, %i.jr
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.preheader95.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader95.3.i ], [ %i.js, %bb.av ] ; 2 uses
  %i.jt = add i64 %.sroa.06.0102.i, 64            ; 3 uses
  %i.ju = add i64 %i.jt, %i.hx
  %i.jv = icmp uge i64 %i.ju, %3
  %i.jw = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.jv, i1 true, i1 %i.jw
  br i1 %or.cond.i, label %.preheader.i7, label %.lr.ph.i9

bb.ax:                                            ; preds = %.lr.ph.i9
  %i.jx = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Csf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0102.i, i16 noundef %i.ih, i1 noundef zeroext false) #28
  %i.jy = zext i1 %i.jx to i8
  br label %.preheader95.1.i

._crit_edge.i8:                                   ; preds = %bb.ay, %.preheader.i7
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i7 ], [ %.sroa.014.4.i, %bb.ay ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ib, %.preheader.i7 ], [ %i.ks, %bb.ay ]
  %i.jz = sub i64 %3, %i.gv
  %i.ka = add i64 %i.jz, -16                      ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ka ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.kb, align 1, !alias.scope !1250, !noalias !1269
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.kc, align 1, !alias.scope !1250, !noalias !1269
  %i.kd = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.hq
  %i.ke = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.hs
  %i.kf = and <16 x i1> %i.kd, %i.ke
  %i.kg = bitcast <16 x i1> %i.kf to i16          ; 2 uses
  %i.kh = icmp eq i16 %i.kg, 0
  br i1 %i.kh, label %bb.ba, label %bb.bb

.lr.ph106.i:                                      ; preds = %.preheader.i7, %bb.ay
  %.sroa.06.1105.i = phi i64 [ %i.kp, %bb.ay ], [ %.sroa.06.0.lcssa.i, %.preheader.i7 ] ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1105.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.ki, align 1, !alias.scope !1250, !noalias !1272
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.kj, align 1, !alias.scope !1250, !noalias !1272
  %i.kk = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.hq
  %i.kl = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.hs
  %i.km = and <16 x i1> %i.kk, %i.kl
  %i.kn = bitcast <16 x i1> %i.km to i16          ; 2 uses
  %i.ko = icmp eq i16 %i.kn, 0
  br i1 %i.ko, label %bb.ay, label %bb.az
end_hunk_1

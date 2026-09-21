Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.07?download=true
inline.NumInlined: 2602
inline.NumDeleted: 931
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXsmZ_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtBa_7AstNode4cast:bb.a
    i16 324, label %bb.an
    i16 326, label %bb.ao
    i16 327, label %bb.ap
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !5
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #34
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.g:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.h:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.i:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.j:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.k:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.l:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.m:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.n:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.o:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.p:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.q:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.r:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.s:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.t:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.u:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.v:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.w:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.x:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.y:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.z:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.aa:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ab:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ac:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ad:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ae:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.af:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ag:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ah:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ai:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.aj:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ak:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.al:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.am:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.an:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ao:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

bb.ap:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.d, %bb.f, %bb.e
  %.sroa.0.0 = phi i64 [ -1, %bb.f ], [ -1, %bb.e ], [ 36, %bb.ap ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 6, %bb.l ], [ 7, %bb.m ], [ 8, %bb.n ], [ 9, %bb.o ], [ 10, %bb.p ], [ 11, %bb.q ], [ 13, %bb.r ], [ 12, %bb.s ], [ 14, %bb.t ], [ 15, %bb.u ], [ 16, %bb.v ], [ 17, %bb.w ], [ 18, %bb.x ], [ 19, %bb.y ], [ 20, %bb.z ], [ 21, %bb.aa ], [ 22, %bb.ab ], [ 23, %bb.ac ], [ 24, %bb.ad ], [ 25, %bb.ae ], [ 26, %bb.af ], [ 27, %bb.ag ], [ 28, %bb.ah ], [ 29, %bb.ai ], [ 30, %bb.aj ], [ 31, %bb.ak ], [ 32, %bb.al ], [ 33, %bb.am ], [ 34, %bb.an ], [ 35, %bb.ao ], [ 0, %bb.d ]
  %i.l = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, ptr } %i.l, ptr %0, 1
  ret { i64, ptr } %i.m

bb.aq:                                            ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 1, 6) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = icmp ult i64 %1, %3
  br i1 %i.c, label %bb.b, label %bb.c

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i, %bb.f, %.lr.ph.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader, %bb.e, %.lr.ph.split.us.i.i, %bb.w, %bb.c, %bb.bc, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.c ], [ %i.l, %bb.e ], [ %i.lk, %bb.bc ], [ %storemerge.i.sink.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %.sroa.014.5.i, %bb.w ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader ], [ 0, %bb.f ], [ 1, %.lr.ph.i ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.d = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.d, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.bc, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.g = load i8, ptr %0, align 1, !noundef !5    ; 2 uses
  %i.h = icmp samesign ult i64 %3, 16
  br i1 %i.h, label %.lr.ph.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = icmp eq i64 %i.j, 1
  %i.l = zext i1 %i.k to i8
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.sroa.01.05.i = phi i64 [ %i.p, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.i
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !5512, !noundef !5
  %i.o = icmp eq i8 %i.n, %i.g
  br i1 %i.o, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.p = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %3
  br i1 %exitcond.not.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.lr.ph.i

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5514)
  %i.q = load i8, ptr %0, align 1, !alias.scope !5513, !noalias !5514, !noundef !5 ; 6 uses
  %i.r = add nsw i64 %1, -1                       ; 2 uses
  %i.s = icmp eq i64 %1, 2
  br i1 %i.s, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 6) %1, i64 4) ; 4 uses
  %i.u = icmp samesign ult i64 %i.t, %1
  br i1 %i.u, label %.lr.ph, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

bb.i:                                             ; preds = %.lr.ph
  %i.v = icmp ult i64 %i.t, %i.ai
  br i1 %i.v, label %.lr.ph.1, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %bb.i
  %i.w = add nsw i64 %1, -2                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !5513, !noalias !5515, !noundef !5 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.y, %i.q
  br i1 %.not.i.not.i.i.1, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph.1
  %i.z = icmp ult i64 %i.t, %i.w
  br i1 %i.z, label %.lr.ph.2, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.j
  %i.aa = add nsw i64 %1, -3                      ; 4 uses
  %i.ab = icmp samesign ugt i64 %1, 2
  br i1 %i.ab, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.2, label %bb.l

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.2: ; preds = %.lr.ph.2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !5513, !noalias !5515, !noundef !5 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.ad, %i.q
  br i1 %.not.i.not.i.i.2, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.2
  %i.ae = icmp ult i64 %i.t, %i.aa
  br i1 %i.ae, label %.lr.ph.3, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %bb.k
  %i.af = add nsw i64 %1, -4                      ; 3 uses
  %.not = icmp eq i64 %1, 3
  br i1 %.not, label %bb.l, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.4

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.4: ; preds = %.lr.ph.3
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !5513, !noalias !5515, !noundef !5 ; 2 uses
  %.not.i.not.i.i.4 = icmp eq i8 %i.ah, %i.q
  br i1 %.not.i.not.i.i.4, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit, label %bb.m

.lr.ph:                                           ; preds = %bb.h
  %i.ai = add nsw i64 %1, -1                      ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !5513, !noalias !5515, !noundef !5 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.ak, %i.q
  br i1 %.not.i.not.i.i, label %bb.i, label %bb.m

bb.l:                                             ; preds = %.lr.ph.3, %.lr.ph.2
  %.lcssa184 = phi i64 [ %i.af, %.lr.ph.3 ], [ %i.aa, %.lr.ph.2 ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa184, i64 noundef range(i64 2, 6) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #33, !noalias !5516
  unreachable

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.4, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.2, %.lr.ph.1, %.lr.ph
  %.lcssa187 = phi i8 [ %i.ak, %.lr.ph ], [ %i.y, %.lr.ph.1 ], [ %i.ad, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.2 ], [ %i.ah, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.4 ]
  %.lcssa185 = phi i64 [ %i.ai, %.lr.ph ], [ %i.w, %.lr.ph.1 ], [ %i.aa, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.2 ], [ %i.af, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.4 ]
  %i.al = add nuw nsw i64 %1, 15
  %i.am = icmp ult i64 %3, %i.al
  br i1 %i.am, label %.lr.ph.split.us.i.i, label %bb.n

.thread.i:                                        ; preds = %bb.g
  %i.an = icmp ult i64 %3, 17
  br i1 %i.an, label %.lr.ph.split.us.i.i, label %.thread92.i

.thread92.i:                                      ; preds = %.thread.i
  %i.ao = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !5513, !noalias !5514
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

.lr.ph.split.us.i.i:                              ; preds = %bb.m, %.thread.i
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 6) %1), !alias.scope !5517, !noalias !5518
  %i.as = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.as, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.at = add i64 %3, -1                          ; 2 uses
  %.not27.i.i166 = icmp ugt i64 %1, %i.at
  br i1 %.not27.i.i166, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i
  %i.au = phi i64 [ %i.ax, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i ], [ %i.at, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader ]
  %.pn.i167 = phi ptr [ %i.av, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.pn.i167, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.av, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 6) %1), !alias.scope !5517, !noalias !5518
  %i.aw = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.aw, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.ax = add i64 %i.au, -1                       ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.ax
  br i1 %.not27.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.o:                                             ; preds = %bb.n, %.thread92.i
  %i.ay = phi i8 [ %.pre.i, %.thread92.i ], [ %.lcssa187, %bb.n ]
  %i.az = phi <16 x i8> [ %i.ap, %.thread92.i ], [ %i.ar, %bb.n ] ; 6 uses
  %storemerge9194.i = phi i64 [ 1, %.thread92.i ], [ %.lcssa185, %bb.n ] ; 6 uses
  %i.ba = insertelement <16 x i8> poison, i8 %i.ay, i64 0
  %i.bb = shufflevector <16 x i8> %i.ba, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5517
  store ptr %2, ptr %i.a, align 8, !noalias !5517
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.bd, align 8, !noalias !5517
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bc, ptr %i.be, align 8, !noalias !5517
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.r, ptr %i.bf, align 8, !noalias !5517
  %i.bg = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i4 = icmp ult i64 %i.bg, %3
  br i1 %.not.i4, label %.lr.ph.i7, label %.preheader.i5

.preheader.i5:                                    ; preds = %bb.s, %bb.o
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.o ], [ %.sroa.014.2.3.i, %bb.s ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.o ], [ %i.dc, %bb.s ] ; 2 uses
  %i.bh = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.bi = add i64 %.sroa.06.0.lcssa.i, %i.bh
  %i.bj = icmp uge i64 %i.bi, %3
  %i.bk = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3104.i = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond3104.i, label %._crit_edge.i6, label %.lr.ph106.i

.lr.ph.i7:                                        ; preds = %bb.o, %bb.s
  %.sroa.06.0102.i = phi i64 [ %i.dc, %bb.s ], [ 0, %bb.o ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0102.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !5514, !noalias !5519
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !5514, !noalias !5519
  %i.bn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.az
  %i.bo = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.bb
  %i.bp = and <16 x i1> %i.bn, %i.bo
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.br, align 1, !alias.scope !5514, !noalias !5519
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.bs, align 1, !alias.scope !5514, !noalias !5519
  %i.bt = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.az
  %i.bu = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.bb
  %i.bv = and <16 x i1> %i.bt, %i.bu
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bx, align 1, !alias.scope !5514, !noalias !5519
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.by, align 1, !alias.scope !5514, !noalias !5519
  %i.bz = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.az
  %i.ca = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.bb
  %i.cb = and <16 x i1> %i.bz, %i.ca
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.cd, align 1, !alias.scope !5514, !noalias !5519
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.ce, align 1, !alias.scope !5514, !noalias !5519
  %i.cf = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.az
  %i.cg = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.bb
  %i.ch = and <16 x i1> %i.cf, %i.cg
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %i.cj = icmp eq i16 %i.bq, 0
  br i1 %i.cj, label %.preheader95.1.i, label %bb.t

.preheader95.1.i:                                 ; preds = %bb.t, %.lr.ph.i7
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i7 ], [ %i.dh, %bb.t ] ; 3 uses
  %i.ck = icmp eq i16 %i.bw, 0
  br i1 %i.ck, label %.preheader95.2.i, label %bb.p

bb.p:                                             ; preds = %.preheader95.1.i
  %i.cl = or disjoint i64 %.sroa.06.0102.i, 16
  %i.cm = trunc nuw i8 %.sroa.014.2.i to i1
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cl, i16 noundef %i.bw, i1 noundef zeroext %i.cm) #39
  %i.co = zext i1 %i.cn to i8
  %i.cp = or i8 %.sroa.014.2.i, %i.co
  br label %.preheader95.2.i

.preheader95.2.i:                                 ; preds = %bb.p, %.preheader95.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader95.1.i ], [ %i.cp, %bb.p ] ; 3 uses
  %i.cq = icmp eq i16 %i.cc, 0
  br i1 %i.cq, label %.preheader95.3.i, label %bb.q

bb.q:                                             ; preds = %.preheader95.2.i
  %i.cr = or disjoint i64 %.sroa.06.0102.i, 32
  %i.cs = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.ct = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cr, i16 noundef %i.cc, i1 noundef zeroext %i.cs) #39
  %i.cu = zext i1 %i.ct to i8
  %i.cv = or i8 %.sroa.014.2.1.i, %i.cu
  br label %.preheader95.3.i

.preheader95.3.i:                                 ; preds = %bb.q, %.preheader95.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader95.2.i ], [ %i.cv, %bb.q ] ; 3 uses
  %i.cw = icmp eq i16 %i.ci, 0
  br i1 %i.cw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader95.3.i
  %i.cx = or disjoint i64 %.sroa.06.0102.i, 48
  %i.cy = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cz = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cx, i16 noundef %i.ci, i1 noundef zeroext %i.cy) #39
  %i.da = zext i1 %i.cz to i8
  %i.db = or i8 %.sroa.014.2.2.i, %i.da
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader95.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader95.3.i ], [ %i.db, %bb.r ] ; 2 uses
  %i.dc = add i64 %.sroa.06.0102.i, 64            ; 3 uses
  %i.dd = add i64 %i.dc, %i.bg
  %i.de = icmp uge i64 %i.dd, %3
  %i.df = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.de, i1 true, i1 %i.df
  br i1 %or.cond.i, label %.preheader.i5, label %.lr.ph.i7

bb.t:                                             ; preds = %.lr.ph.i7
  %i.dg = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0102.i, i16 noundef %i.bq, i1 noundef zeroext false) #39
  %i.dh = zext i1 %i.dg to i8
  br label %.preheader95.1.i

._crit_edge.i6:                                   ; preds = %bb.u, %.preheader.i5
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i5 ], [ %.sroa.014.4.i, %bb.u ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.bk, %.preheader.i5 ], [ %i.eb, %bb.u ]
  %i.di = sub nuw i64 %3, %i.r
  %i.dj = add i64 %i.di, -16                      ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %i.dj ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.dk, align 1, !alias.scope !5514, !noalias !5520
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.dl, align 1, !alias.scope !5514, !noalias !5520
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.az
  %i.dn = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.bb
  %i.do = and <16 x i1> %i.dm, %i.dn
  %i.dp = bitcast <16 x i1> %i.do to i16          ; 2 uses
  %i.dq = icmp eq i16 %i.dp, 0
  br i1 %i.dq, label %bb.w, label %bb.x

.lr.ph106.i:                                      ; preds = %.preheader.i5, %bb.u
  %.sroa.06.1105.i = phi i64 [ %i.dy, %bb.u ], [ %.sroa.06.0.lcssa.i, %.preheader.i5 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1105.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.dr, align 1, !alias.scope !5514, !noalias !5521
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.ds, align 1, !alias.scope !5514, !noalias !5521
  %i.dt = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.az
  %i.du = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.bb
  %i.dv = and <16 x i1> %i.dt, %i.du
  %i.dw = bitcast <16 x i1> %i.dv to i16          ; 2 uses
  %i.dx = icmp eq i16 %i.dw, 0
  br i1 %i.dx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.v, %.lr.ph106.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph106.i ], [ %i.ed, %bb.v ] ; 2 uses
  %i.dy = add i64 %.sroa.06.1105.i, 16            ; 2 uses
  %i.dz = add i64 %i.dy, %i.bh
  %i.ea = icmp uge i64 %i.dz, %3
  %i.eb = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.ea, %i.eb
  br i1 %or.cond3.i, label %._crit_edge.i6, label %.lr.ph106.i

bb.v:                                             ; preds = %.lr.ph106.i
  %i.ec = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1105.i, i16 noundef %i.dw, i1 noundef zeroext false) #39
  %i.ed = zext i1 %i.ec to i8
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %._crit_edge.i6
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i6 ], [ %i.eg, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5517
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.x:                                             ; preds = %._crit_edge.i6
  %i.ee = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.dj, i16 noundef %i.dp, i1 noundef zeroext %.lcssa.i) #39
  %i.ef = zext i1 %i.ee to i8
  %i.eg = or i8 %.sroa.014.3.lcssa.i, %i.ef
  br label %bb.w

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit: ; preds = %bb.i, %bb.j, %bb.k, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.4, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5522)
  %i.eh = load i64, ptr %i.b, align 8, !range !8, !alias.scope !5522, !noalias !5523, !noundef !5
  %i.ei = trunc nuw i64 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.ei, label %bb.ah, label %.preheader.i8

.preheader.i8:                                    ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.el = load i8, ptr %i.ek, align 2, !range !6, !alias.scope !5524, !noalias !5525, !noundef !5
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.preheader.i8
  %.promoted.i = load i64, ptr %i.ej, align 8, !alias.scope !5522, !noalias !5523 ; 12 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !5524, !noalias !5525, !nonnull !5, !noundef !5 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !5524, !noalias !5525, !noundef !5 ; 14 uses
  %.promoted52.i = load i8, ptr %i.en, align 8, !alias.scope !5524, !noalias !5525 ; 2 uses
  %i.es = trunc nuw i8 %.promoted52.i to i1
  %i.et = icmp eq i64 %.promoted.i, 0
  br i1 %i.et, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i9
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.er
  br i1 %.not.i.i.i.peel, label %bb.z, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.y
  %i.eu = icmp eq i64 %.promoted.i, %i.er
  br i1 %i.eu, label %bb.aa, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.promoted.i
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !5526, !noalias !5527, !noundef !5
  %i.ex = icmp sgt i8 %i.ew, -65
  br i1 %i.ex, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z, %.split.i.i.i.peel, %.lr.ph.i9
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.promoted.i ; 4 uses
  %i.ez = icmp samesign eq i64 %.promoted.i, %i.er
  br i1 %i.ez, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fa = load i8, ptr %i.ey, align 1, !noalias !5528, !noundef !5 ; 5 uses
  %i.fb = icmp sgt i8 %i.fa, -1
  br i1 %i.fb, label %bb.ac, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel: ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.fd = and i8 %i.fa, 31
  %i.fe = zext nneg i8 %i.fd to i32               ; 3 uses
  %i.ff = add nuw nsw i64 %.promoted.i, 1
  %i.fg = icmp samesign ne i64 %i.ff, %i.er
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = load i8, ptr %i.fc, align 1, !noalias !5528, !noundef !5
  %i.fi = shl nuw nsw i32 %i.fe, 6
  %i.fj = and i8 %i.fh, 63
  %i.fk = zext nneg i8 %i.fj to i32               ; 2 uses
  %i.fl = or disjoint i32 %i.fi, %i.fk
  %i.fm = icmp samesign ugt i8 %i.fa, -33
  br i1 %i.fm, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel, label %bb.ad

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fo = add nuw nsw i64 %.promoted.i, 2
  %i.fp = icmp samesign ne i64 %i.fo, %i.er
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = load i8, ptr %i.fn, align 1, !noalias !5528, !noundef !5
  %i.fr = shl nuw nsw i32 %i.fk, 6
  %i.fs = and i8 %i.fq, 63
  %i.ft = zext nneg i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fr, %i.ft            ; 2 uses
  %i.fv = shl nuw nsw i32 %i.fe, 12
  %i.fw = or disjoint i32 %i.fu, %i.fv
  %i.fx = icmp samesign ugt i8 %i.fa, -17
  br i1 %i.fx, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.peel, label %bb.ad

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  %i.fz = add nuw nsw i64 %.promoted.i, 3
  %i.ga = icmp samesign ne i64 %i.fz, %i.er
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = load i8, ptr %i.fy, align 1, !noalias !5528, !noundef !5
  %i.gc = shl nuw nsw i32 %i.fe, 18
  %i.gd = and i32 %i.gc, 1835008
  %i.ge = shl nuw nsw i32 %i.fu, 6
  %i.gf = and i8 %i.gb, 63
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.ge, %i.gg
  %i.gi = or disjoint i32 %i.gh, %i.gd
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gj = zext nneg i8 %i.fa to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel ], [ %i.gi, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.peel ], [ %i.fl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel ], [ %i.gj, %bb.ac ] ; 4 uses
  %i.gk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.gk)
  br i1 %i.es, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.gl, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.gm, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.gn, i64 3, i64 4
  br label %bb.ai

bb.ah:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !5522, !noalias !5523, !noundef !5 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, -1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !5522, !noalias !5523, !nonnull !5, !noundef !5 ; 8 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !5522, !noalias !5523, !noundef !5 ; 10 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gw = load ptr, ptr %i.gv, align 8, !alias.scope !5522, !noalias !5523, !nonnull !5, !noundef !5 ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !5522, !noalias !5523, !noundef !5 ; 14 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ha = add nsw i64 %i.gy, -1                   ; 5 uses
  br i1 %i.gq, label %bb.av, label %bb.an

bb.ai:                                            ; preds = %bb.ae, %bb.af, %bb.ag
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.af ], [ %..i.i.peel, %bb.ag ], [ 1, %bb.ae ]
  %i.hb = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5529)
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i = icmp ult i64 %i.hb, %i.er
  br i1 %.not.i.i.i, label %bb.ak, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.aj
  %i.hd = icmp eq i64 %i.hb, %i.er
  br i1 %i.hd, label %bb.al, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.he = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.hb
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !5526, !noalias !5530, !noundef !5
  %i.hg = icmp sgt i8 %i.hf, -65
  br i1 %i.hg, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %bb.ak, %.split.i.i.i, %bb.ai
  %i.hh = icmp samesign eq i64 %i.hb, %i.er
  br i1 %i.hh, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.hb
  %i.hj = load i8, ptr %i.hi, align 1, !noalias !5531, !noundef !5 ; 3 uses
  %i.hk = icmp sgt i8 %i.hj, -1
  br i1 %i.hk, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i: ; preds = %bb.am
  %i.hl = add nuw nsw i64 %i.hb, 1
  %i.hm = icmp samesign ne i64 %i.hl, %i.er
  tail call void @llvm.assume(i1 %i.hm)
  %i.hn = icmp samesign ugt i8 %i.hj, -33
  br i1 %i.hn, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i
  %i.ho = add nuw nsw i64 %i.hb, 2
  %i.hp = icmp samesign ne i64 %i.ho, %i.er
  tail call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp samesign ugt i8 %i.hj, -17
  br i1 %i.hq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i
  %i.hr = add nuw nsw i64 %i.hb, 3
  %i.hs = icmp samesign ne i64 %i.hr, %i.er
  tail call void @llvm.assume(i1 %i.hs)
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.ak, %.split.i.i.i, %bb.z, %.split.i.i.i.peel
  %.lcssa81 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.z ], [ %i.hb, %.split.i.i.i ], [ %i.hb, %bb.ak ]
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef %i.er, i64 noundef %.lcssa81, i64 noundef %i.er, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #33, !noalias !5530
  unreachable

bb.an:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5534)
  %.promoted.i.i = load i64, ptr %i.gz, align 8, !alias.scope !5535, !noalias !5536 ; 2 uses
  %i.ht = add i64 %.promoted.i.i, %i.ha           ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.gu
  br i1 %i.hu, label %.lr.ph.i1.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i1.i:                                      ; preds = %bb.an
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.07?download=true
inline.NumInlined: 2602
inline.NumDeleted: 931
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXsmZ_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtBa_7AstNode4cast:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !10
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
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
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

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i, %bb.f, %.lr.ph.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader, %bb.e, %.lr.ph.split.us.i.i, %bb.x, %bb.c, %bb.bd, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.c ], [ %i.l, %bb.e ], [ %i.ll, %bb.bd ], [ %storemerge.i.sink.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %.sroa.014.5.i, %bb.x ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader ], [ 0, %bb.f ], [ 1, %.lr.ph.i ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.d = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.d, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.bd, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.g = load i8, ptr %0, align 1, !noundef !10   ; 2 uses
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
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !5470, !noundef !10
  %i.o = icmp eq i8 %i.n, %i.g
  br i1 %i.o, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.p = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %3
  br i1 %exitcond.not.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.lr.ph.i

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5476)
  %i.q = load i8, ptr %0, align 1, !alias.scope !5473, !noalias !5476, !noundef !10 ; 7 uses
  %i.r = add nsw i64 %1, -1                       ; 2 uses
  %i.s = icmp eq i64 %1, 2
  br i1 %i.s, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 6) %1, i64 4) ; 4 uses
  %4 = add nsw i64 %1, -1                         ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !alias.scope !5473, !noalias !5478, !noundef !10 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %6, %i.q
  br i1 %.not.i.not.i.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.u = icmp ult i64 %i.t, %4
  br i1 %i.u, label %.lr.ph.1, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %bb.i
  %i.v = add nsw i64 %1, -2                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !5473, !noalias !5478, !noundef !10 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.x, %i.q
  br i1 %.not.i.not.i.i.1, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.lr.ph.1
  %i.y = icmp ult i64 %i.t, %i.v
  br i1 %i.y, label %.lr.ph.2, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.j
  %i.z = add nsw i64 %1, -3                       ; 4 uses
  %i.aa = icmp samesign ugt i64 %1, 2
  br i1 %i.aa, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.2, label %bb.m

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.2: ; preds = %.lr.ph.2
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !5473, !noalias !5478, !noundef !10 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.ac, %i.q
  br i1 %.not.i.not.i.i.2, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.2
  %i.ad = icmp ult i64 %i.t, %i.z
  br i1 %i.ad, label %.lr.ph.3, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %bb.k
  %i.ae = add nsw i64 %1, -4                      ; 4 uses
  %.not = icmp eq i64 %1, 3
  br i1 %.not, label %bb.m, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.3

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.3: ; preds = %.lr.ph.3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !5473, !noalias !5478, !noundef !10 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.ag, %i.q
  br i1 %.not.i.not.i.i.3, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.3
  %i.ah = icmp ult i64 %i.t, %i.ae
  br i1 %i.ah, label %.lr.ph.4, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.4:                                         ; preds = %bb.l
  %i.ai = add nsw i64 %1, -5                      ; 3 uses
  %i.aj = icmp samesign ugt i64 %1, 4
  br i1 %i.aj, label %.lr.ph, label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !5473, !noalias !5478, !noundef !10 ; 2 uses
  %.not.i.not.i.i.a = icmp eq i8 %i.al, %i.q
  br i1 %.not.i.not.i.i.a, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit, label %bb.n

bb.m:                                             ; preds = %.lr.ph.4, %.lr.ph.3, %.lr.ph.2
  %.lcssa184 = phi i64 [ %i.ai, %.lr.ph.4 ], [ %i.ae, %.lr.ph.3 ], [ %i.z, %.lr.ph.2 ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa184, i64 noundef range(i64 2, 6) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #33, !noalias !5486
  unreachable

bb.n:                                             ; preds = %.lr.ph, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.3, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.2, %.lr.ph.1, %bb.h
  %.lcssa187 = phi i8 [ %6, %bb.h ], [ %i.x, %.lr.ph.1 ], [ %i.ac, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.2 ], [ %i.ag, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.3 ], [ %i.al, %.lr.ph ]
  %.lcssa185 = phi i64 [ %4, %bb.h ], [ %i.v, %.lr.ph.1 ], [ %i.z, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.2 ], [ %i.ae, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslLuZgPVt6hg_3ide.exit.i.i.3 ], [ %i.ai, %.lr.ph ]
  %i.am = add nuw nsw i64 %1, 15
  %i.an = icmp ult i64 %3, %i.am
  br i1 %i.an, label %.lr.ph.split.us.i.i, label %bb.o

.thread.i:                                        ; preds = %bb.g
  %i.ao = icmp ult i64 %3, 17
  br i1 %i.ao, label %.lr.ph.split.us.i.i, label %.thread92.i

.thread92.i:                                      ; preds = %.thread.i
  %i.ap = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !5473, !noalias !5476
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.as = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.p

.lr.ph.split.us.i.i:                              ; preds = %bb.n, %.thread.i
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 6) %1), !alias.scope !5487, !noalias !5488
  %i.at = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.at, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.au = add i64 %3, -1                          ; 2 uses
  %.not27.i.i166 = icmp ugt i64 %1, %i.au
  br i1 %.not27.i.i166, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i
  %i.av = phi i64 [ %i.ay, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i ], [ %i.au, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader ]
  %.pn.i167 = phi ptr [ %i.aw, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn.i167, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aw, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 6) %1), !alias.scope !5487, !noalias !5488
  %i.ax = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ax, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslLuZgPVt6hg_3ide.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.ay = add i64 %i.av, -1                       ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.ay
  br i1 %.not27.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.p:                                             ; preds = %bb.o, %.thread92.i
  %i.az = phi i8 [ %.pre.i, %.thread92.i ], [ %.lcssa187, %bb.o ]
  %i.ba = phi <16 x i8> [ %i.aq, %.thread92.i ], [ %i.as, %bb.o ] ; 6 uses
  %storemerge9194.i = phi i64 [ 1, %.thread92.i ], [ %.lcssa185, %bb.o ] ; 6 uses
  %i.bb = insertelement <16 x i8> poison, i8 %i.az, i64 0
  %i.bc = shufflevector <16 x i8> %i.bb, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5487
  store ptr %2, ptr %i.a, align 8, !noalias !5487
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.be, align 8, !noalias !5487
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bd, ptr %i.bf, align 8, !noalias !5487
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.r, ptr %i.bg, align 8, !noalias !5487
  %i.bh = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i4 = icmp ult i64 %i.bh, %3
  br i1 %.not.i4, label %.lr.ph.i7, label %.preheader.i5

.preheader.i5:                                    ; preds = %bb.t, %bb.p
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.p ], [ %.sroa.014.2.3.i, %bb.t ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.p ], [ %i.dd, %bb.t ] ; 2 uses
  %i.bi = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.bj = add i64 %.sroa.06.0.lcssa.i, %i.bi
  %i.bk = icmp uge i64 %i.bj, %3
  %i.bl = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3104.i = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %or.cond3104.i, label %._crit_edge.i6, label %.lr.ph106.i

.lr.ph.i7:                                        ; preds = %bb.p, %bb.t
  %.sroa.06.0102.i = phi i64 [ %i.dd, %bb.t ], [ 0, %bb.p ] ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0102.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !5476, !noalias !5492
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.bn, align 1, !alias.scope !5476, !noalias !5492
  %i.bo = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ba
  %i.bp = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.bc
  %i.bq = and <16 x i1> %i.bo, %i.bp
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.bs, align 1, !alias.scope !5476, !noalias !5492
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.bt, align 1, !alias.scope !5476, !noalias !5492
  %i.bu = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ba
  %i.bv = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.bc
  %i.bw = and <16 x i1> %i.bu, %i.bv
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.by, align 1, !alias.scope !5476, !noalias !5492
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.bz, align 1, !alias.scope !5476, !noalias !5492
  %i.ca = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ba
  %i.cb = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.bc
  %i.cc = and <16 x i1> %i.ca, %i.cb
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.ce, align 1, !alias.scope !5476, !noalias !5492
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.cf, align 1, !alias.scope !5476, !noalias !5492
  %i.cg = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ba
  %i.ch = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.bc
  %i.ci = and <16 x i1> %i.cg, %i.ch
  %i.cj = bitcast <16 x i1> %i.ci to i16          ; 2 uses
  %i.ck = icmp eq i16 %i.br, 0
  br i1 %i.ck, label %.preheader95.1.i, label %bb.u

.preheader95.1.i:                                 ; preds = %bb.u, %.lr.ph.i7
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i7 ], [ %i.di, %bb.u ] ; 3 uses
  %i.cl = icmp eq i16 %i.bx, 0
  br i1 %i.cl, label %.preheader95.2.i, label %bb.q

bb.q:                                             ; preds = %.preheader95.1.i
  %i.cm = or disjoint i64 %.sroa.06.0102.i, 16
  %i.cn = trunc nuw i8 %.sroa.014.2.i to i1
  %i.co = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cm, i16 noundef %i.bx, i1 noundef zeroext %i.cn) #39
  %i.cp = zext i1 %i.co to i8
  %i.cq = or i8 %.sroa.014.2.i, %i.cp
  br label %.preheader95.2.i

.preheader95.2.i:                                 ; preds = %bb.q, %.preheader95.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader95.1.i ], [ %i.cq, %bb.q ] ; 3 uses
  %i.cr = icmp eq i16 %i.cd, 0
  br i1 %i.cr, label %.preheader95.3.i, label %bb.r

bb.r:                                             ; preds = %.preheader95.2.i
  %i.cs = or disjoint i64 %.sroa.06.0102.i, 32
  %i.ct = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cu = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cs, i16 noundef %i.cd, i1 noundef zeroext %i.ct) #39
  %i.cv = zext i1 %i.cu to i8
  %i.cw = or i8 %.sroa.014.2.1.i, %i.cv
  br label %.preheader95.3.i

.preheader95.3.i:                                 ; preds = %bb.r, %.preheader95.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader95.2.i ], [ %i.cw, %bb.r ] ; 3 uses
  %i.cx = icmp eq i16 %i.cj, 0
  br i1 %i.cx, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader95.3.i
  %i.cy = or disjoint i64 %.sroa.06.0102.i, 48
  %i.cz = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.da = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cy, i16 noundef %i.cj, i1 noundef zeroext %i.cz) #39
  %i.db = zext i1 %i.da to i8
  %i.dc = or i8 %.sroa.014.2.2.i, %i.db
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader95.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader95.3.i ], [ %i.dc, %bb.s ] ; 2 uses
  %i.dd = add i64 %.sroa.06.0102.i, 64            ; 3 uses
  %i.de = add i64 %i.dd, %i.bh
  %i.df = icmp uge i64 %i.de, %3
  %i.dg = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond.i, label %.preheader.i5, label %.lr.ph.i7

bb.u:                                             ; preds = %.lr.ph.i7
  %i.dh = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0102.i, i16 noundef %i.br, i1 noundef zeroext false) #39
  %i.di = zext i1 %i.dh to i8
  br label %.preheader95.1.i

._crit_edge.i6:                                   ; preds = %bb.v, %.preheader.i5
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i5 ], [ %.sroa.014.4.i, %bb.v ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.bl, %.preheader.i5 ], [ %i.ec, %bb.v ]
  %i.dj = sub nuw i64 %3, %i.r
  %i.dk = add i64 %i.dj, -16                      ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 %i.dk ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.dl, align 1, !alias.scope !5476, !noalias !5495
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.dm, align 1, !alias.scope !5476, !noalias !5495
  %i.dn = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.ba
  %i.do = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.bc
  %i.dp = and <16 x i1> %i.dn, %i.do
  %i.dq = bitcast <16 x i1> %i.dp to i16          ; 2 uses
  %i.dr = icmp eq i16 %i.dq, 0
  br i1 %i.dr, label %bb.x, label %bb.y

.lr.ph106.i:                                      ; preds = %.preheader.i5, %bb.v
  %.sroa.06.1105.i = phi i64 [ %i.dz, %bb.v ], [ %.sroa.06.0.lcssa.i, %.preheader.i5 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1105.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.ds, align 1, !alias.scope !5476, !noalias !5498
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.dt, align 1, !alias.scope !5476, !noalias !5498
  %i.du = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.ba
  %i.dv = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.bc
  %i.dw = and <16 x i1> %i.du, %i.dv
  %i.dx = bitcast <16 x i1> %i.dw to i16          ; 2 uses
  %i.dy = icmp eq i16 %i.dx, 0
  br i1 %i.dy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.w, %.lr.ph106.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph106.i ], [ %i.ee, %bb.w ] ; 2 uses
  %i.dz = add i64 %.sroa.06.1105.i, 16            ; 2 uses
  %i.ea = add i64 %i.dz, %i.bi
  %i.eb = icmp uge i64 %i.ea, %3
  %i.ec = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.eb, %i.ec
  br i1 %or.cond3.i, label %._crit_edge.i6, label %.lr.ph106.i

bb.w:                                             ; preds = %.lr.ph106.i
  %i.ed = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1105.i, i16 noundef %i.dx, i1 noundef zeroext false) #39
  %i.ee = zext i1 %i.ed to i8
  br label %bb.v

bb.x:                                             ; preds = %bb.y, %._crit_edge.i6
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i6 ], [ %i.eh, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5487
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.y:                                             ; preds = %._crit_edge.i6
  %i.ef = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.dk, i16 noundef %i.dq, i1 noundef zeroext %.lcssa.i) #39
  %i.eg = zext i1 %i.ef to i8
  %i.eh = or i8 %.sroa.014.3.lcssa.i, %i.eg
  br label %bb.x

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit: ; preds = %.lr.ph, %bb.l, %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5501)
  %i.ei = load i64, ptr %i.b, align 8, !range !13, !alias.scope !5501, !noalias !5504, !noundef !10
  %i.ej = trunc nuw i64 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.ej, label %bb.ai, label %.preheader.i8

.preheader.i8:                                    ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.em = load i8, ptr %i.el, align 2, !range !11, !alias.scope !5506, !noalias !5509, !noundef !10
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.preheader.i8
  %.promoted.i = load i64, ptr %i.ek, align 8, !alias.scope !5501, !noalias !5504 ; 12 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !5506, !noalias !5509, !nonnull !10, !noundef !10 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !5506, !noalias !5509, !noundef !10 ; 14 uses
  %.promoted52.i = load i8, ptr %i.eo, align 8, !alias.scope !5506, !noalias !5509 ; 2 uses
  %i.et = trunc nuw i8 %.promoted52.i to i1
  %i.eu = icmp eq i64 %.promoted.i, 0
  br i1 %i.eu, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i9
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.es
  br i1 %.not.i.i.i.peel, label %bb.aa, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.z
  %i.ev = icmp eq i64 %.promoted.i, %i.es
  br i1 %i.ev, label %bb.ab, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.promoted.i
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !5511, !noalias !5514, !noundef !10
  %i.ey = icmp sgt i8 %i.ex, -65
  br i1 %i.ey, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa, %.split.i.i.i.peel, %.lr.ph.i9
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.promoted.i ; 4 uses
  %i.fa = icmp samesign eq i64 %.promoted.i, %i.es
  br i1 %i.fa, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fb = load i8, ptr %i.ez, align 1, !noalias !5516, !noundef !10 ; 5 uses
  %i.fc = icmp sgt i8 %i.fb, -1
  br i1 %i.fc, label %bb.ad, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel: ; preds = %bb.ac
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fe = and i8 %i.fb, 31
  %i.ff = zext nneg i8 %i.fe to i32               ; 3 uses
  %i.fg = add nuw nsw i64 %.promoted.i, 1
  %i.fh = icmp samesign ne i64 %i.fg, %i.es
  tail call void @llvm.assume(i1 %i.fh)
  %i.fi = load i8, ptr %i.fd, align 1, !noalias !5516, !noundef !10
  %i.fj = shl nuw nsw i32 %i.ff, 6
  %i.fk = and i8 %i.fi, 63
  %i.fl = zext nneg i8 %i.fk to i32               ; 2 uses
  %i.fm = or disjoint i32 %i.fj, %i.fl
  %i.fn = icmp samesign ugt i8 %i.fb, -33
  br i1 %i.fn, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel, label %bb.ae

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.fp = add nuw nsw i64 %.promoted.i, 2
  %i.fq = icmp samesign ne i64 %i.fp, %i.es
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = load i8, ptr %i.fo, align 1, !noalias !5516, !noundef !10
  %i.fs = shl nuw nsw i32 %i.fl, 6
  %i.ft = and i8 %i.fr, 63
  %i.fu = zext nneg i8 %i.ft to i32
  %i.fv = or disjoint i32 %i.fs, %i.fu            ; 2 uses
  %i.fw = shl nuw nsw i32 %i.ff, 12
  %i.fx = or disjoint i32 %i.fv, %i.fw
  %i.fy = icmp samesign ugt i8 %i.fb, -17
  br i1 %i.fy, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.peel, label %bb.ae

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ez, i64 3
  %i.ga = add nuw nsw i64 %.promoted.i, 3
  %i.gb = icmp samesign ne i64 %i.ga, %i.es
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = load i8, ptr %i.fz, align 1, !noalias !5516, !noundef !10
  %i.gd = shl nuw nsw i32 %i.ff, 18
  %i.ge = and i32 %i.gd, 1835008
  %i.gf = shl nuw nsw i32 %i.fv, 6
  %i.gg = and i8 %i.gc, 63
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = or disjoint i32 %i.gf, %i.gh
  %i.gj = or disjoint i32 %i.gi, %i.ge
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gk = zext nneg i8 %i.fb to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fx, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel ], [ %i.gj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.peel ], [ %i.fm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel ], [ %i.gk, %bb.ad ] ; 4 uses
  %i.gl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.gl)
  br i1 %i.et, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.gm, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.gn, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.go = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.go, i64 3, i64 4
  br label %bb.aj

bb.ai:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !5501, !noalias !5504, !noundef !10 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, -1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !5501, !noalias !5504, !nonnull !10, !noundef !10 ; 8 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gv = load i64, ptr %i.gu, align 8, !alias.scope !5501, !noalias !5504, !noundef !10 ; 10 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !5501, !noalias !5504, !nonnull !10, !noundef !10 ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !5501, !noalias !5504, !noundef !10 ; 14 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.hb = add nsw i64 %i.gz, -1                   ; 5 uses
  br i1 %i.gr, label %bb.aw, label %bb.ao

bb.aj:                                            ; preds = %bb.af, %bb.ag, %bb.ah
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.ag ], [ %..i.i.peel, %bb.ah ], [ 1, %bb.af ]
  %i.hc = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5519)
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i = icmp ult i64 %i.hc, %i.es
  br i1 %.not.i.i.i, label %bb.al, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ak
  %i.he = icmp eq i64 %i.hc, %i.es
  br i1 %i.he, label %bb.am, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.hc
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !5511, !noalias !5520, !noundef !10
  %i.hh = icmp sgt i8 %i.hg, -65
  br i1 %i.hh, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al, %.split.i.i.i, %bb.aj
  %i.hi = icmp samesign eq i64 %i.hc, %i.es
  br i1 %i.hi, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hj = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.hc
  %i.hk = load i8, ptr %i.hj, align 1, !noalias !5521, !noundef !10 ; 3 uses
  %i.hl = icmp sgt i8 %i.hk, -1
  br i1 %i.hl, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i: ; preds = %bb.an
  %i.hm = add nuw nsw i64 %i.hc, 1
  %i.hn = icmp samesign ne i64 %i.hm, %i.es
  tail call void @llvm.assume(i1 %i.hn)
  %i.ho = icmp samesign ugt i8 %i.hk, -33
  br i1 %i.ho, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i
  %i.hp = add nuw nsw i64 %i.hc, 2
  %i.hq = icmp samesign ne i64 %i.hp, %i.es
  tail call void @llvm.assume(i1 %i.hq)
  %i.hr = icmp samesign ugt i8 %i.hk, -17
  br i1 %i.hr, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i
  %i.hs = add nuw nsw i64 %i.hc, 3
  %i.ht = icmp samesign ne i64 %i.hs, %i.es
  tail call void @llvm.assume(i1 %i.ht)
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.al, %.split.i.i.i, %bb.aa, %.split.i.i.i.peel
  %.lcssa81 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.aa ], [ %i.hc, %.split.i.i.i ], [ %i.hc, %bb.al ]
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef %i.es, i64 noundef %.lcssa81, i64 noundef %i.es, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #33, !noalias !5520
  unreachable

bb.ao:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5527)
  %.promoted.i.i = load i64, ptr %i.ha, align 8, !alias.scope !5529, !noalias !5530 ; 2 uses
  %i.hu = add i64 %.promoted.i.i, %i.hb           ; 2 uses
  %i.hv = icmp ult i64 %i.hu, %i.gv
  br i1 %i.hv, label %.lr.ph.i1.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i1.i:                                      ; preds = %bb.ao
end_hunk_0

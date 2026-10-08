Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.01?download=true
inline.NumInlined: 6316
inline.NumDeleted: 3659
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXsmZ_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtBa_7AstNode4cast:bb.a
    i16 232, label %bb.y
    i16 235, label %bb.z
    i16 243, label %bb.aa
    i16 245, label %bb.ab
    i16 252, label %bb.ac
    i16 257, label %bb.ad
    i16 261, label %bb.ae
    i16 267, label %bb.af
    i16 269, label %bb.ag
    i16 271, label %bb.ah
    i16 279, label %bb.ai
    i16 284, label %bb.aj
    i16 298, label %bb.ak
    i16 299, label %bb.al
    i16 311, label %bb.am
    i16 324, label %bb.an
    i16 326, label %bb.ao
    i16 327, label %bb.ap
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !6
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #27
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.g:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.h:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.i:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.j:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.k:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.l:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.m:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.n:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.o:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.p:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.q:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.r:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.s:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.t:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.u:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.v:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.w:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.x:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.y:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.z:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.aa:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.ab:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.ac:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.ad:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.ae:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.af:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.ag:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.ah:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.ai:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.aj:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.ak:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.al:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.am:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.an:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.ao:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

bb.ap:                                            ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit4: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.d, %bb.f, %bb.e
  %.sroa.0.0 = phi i64 [ -1, %bb.f ], [ -1, %bb.e ], [ 36, %bb.ap ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 6, %bb.l ], [ 7, %bb.m ], [ 8, %bb.n ], [ 9, %bb.o ], [ 10, %bb.p ], [ 11, %bb.q ], [ 13, %bb.r ], [ 12, %bb.s ], [ 14, %bb.t ], [ 15, %bb.u ], [ 16, %bb.v ], [ 17, %bb.w ], [ 18, %bb.x ], [ 19, %bb.y ], [ 20, %bb.z ], [ 21, %bb.aa ], [ 22, %bb.ab ], [ 23, %bb.ac ], [ 24, %bb.ad ], [ 25, %bb.ae ], [ 26, %bb.af ], [ 27, %bb.ag ], [ 28, %bb.ah ], [ 29, %bb.ai ], [ 30, %bb.aj ], [ 31, %bb.ak ], [ 32, %bb.al ], [ 33, %bb.am ], [ 34, %bb.an ], [ 35, %bb.ao ], [ 0, %bb.d ]
  %i.l = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, ptr } %i.l, ptr %0, 1
  ret { i64, ptr } %i.m

bb.aq:                                            ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8810)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !14, !alias.scope !8811, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !8811, !nonnull !6, !noundef !6 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !8811, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8812)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !8813, !noalias !8814, !noundef !6 ; 5 uses
  %.not.i.i.i.i = icmp ugt i64 %i.j, %.val1.i.i.i
  %.promoted.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !8813, !noalias !8814 ; 2 uses
  %i.k = icmp ult i64 %i.j, %.promoted.i.i.i.i
  %or.cond20.i.i.i.i = or i1 %.not.i.i.i.i, %i.k
  br i1 %or.cond20.i.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i8, ptr %i.m, align 8, !alias.scope !8813, !noalias !8814, !noundef !6 ; 2 uses
  %i.o = zext nneg i8 %i.n to i64                 ; 4 uses
  %i.p = icmp ult i8 %i.n, 5
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr i8, ptr %i.l, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %.pre.i.i.i.i = load i8, ptr %i.r, align 1, !alias.scope !8813, !noalias !8814 ; 2 uses
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i.i
  %i.s = phi i64 [ %i.ah, %bb.f ], [ %.promoted.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i ] ; 3 uses
  %i.t = sub nuw i64 %i.j, %i.s                   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.s ; 2 uses
  %i.v = icmp samesign ult i64 %i.t, 16
  br i1 %i.v, label %.preheader.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.w = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef range(i64 0, -9223372036854775808) %i.t), !noalias !8815
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.t, %bb.d ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.d ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.x = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.y = insertvalue { i64, i64 } %i.x, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.ac, %bb.d ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.05.i.i.i.i.i
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !8816, !noalias !8815, !noundef !6
  %i.ab = icmp eq i8 %i.aa, %.pre.i.i.i.i
  br i1 %i.ab, label %._crit_edge.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ac, %i.t
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.c
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.y, %._crit_edge.i.i.i.i.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.ad = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %.split.us.i.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.af = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1
  %i.ag = add i64 %i.s, 1
  %i.ah = add i64 %i.ag, %i.af                    ; 8 uses
  store i64 %i.ah, ptr %i.h, align 8, !alias.scope !8813, !noalias !8814
  %.not11.i.i.i.i = icmp ult i64 %i.ah, %i.o
  %.not12.i.i.i.i = icmp ugt i64 %i.ah, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not11.i.i.i.i, %.not12.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i.i:                                ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i
  store i64 %i.j, ptr %i.h, align 8, !alias.scope !8813, !noalias !8814
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ai = icmp ult i64 %i.j, %i.ah
  br i1 %i.ai, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, label %.lr.ph.split.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aj = sub nuw i64 %i.ah, %i.o
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.aj
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.l, i64 %i.o), !noalias !8814
  %i.al = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.al, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i, label %bb.f

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.g
  %i.am = load i64, ptr %0, align 8, !alias.scope !8811, !noundef !6 ; 2 uses
  %i.an = sub nuw i64 %i.ah, %i.am
  store i64 %i.ah, ptr %0, align 8, !alias.scope !8811
  br label %select.unfold.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.f, %.split.us.i.i.i.i, %bb.b
  store i8 1, ptr %i.c, align 1, !alias.scope !8817
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load i8, ptr %i.ao, align 8, !range !14, !alias.scope !8817, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  %.pre.i2.i.i.i = load i64, ptr %0, align 8, !alias.scope !8817 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !8817 ; 2 uses
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  %or.cond.not.i.i.i.i = select i1 %i.aq, i1 true, i1 %.not.i3.i.i.i
  %i.ar = sub nuw i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit

select.unfold.i:                                  ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %i.an, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %i.ar, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i ] ; 4 uses
  %.pn.i = phi i64 [ %i.am, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %.pre.i2.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i ]
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn.i ; 4 uses
  %i.as = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i, 0
  %i.at = insertvalue { ptr, i64 } %i.as, i64 %.sroa.4.1.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8818
  store i32 10, ptr %i.b, align 4, !noalias !8818
  %i.au = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i, i64 noundef %.sroa.4.1.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !8808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8818
  br i1 %i.au, label %bb.h, label %_RNvXs4_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i

bb.h:                                             ; preds = %select.unfold.i
  %i.av = add i64 %.sroa.4.1.i.i.i, -1            ; 2 uses
  %i.aw = insertvalue { ptr, i64 } %i.at, i64 %i.av, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8818
  store i32 13, ptr %i.a, align 4, !noalias !8818
  %i.ax = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i, i64 noundef %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !8808 ; 2 uses
  %i.ay = add i64 %.sroa.4.1.i.i.i, -2
  %.sroa.0.0.i15.i.i.i = select i1 %i.ax, ptr %.sroa.0.1.i.i.i, ptr null
  %i.az = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i, 0
  %i.ba = insertvalue { ptr, i64 } %i.az, i64 %i.ay, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8818
  %..i.i.i = select i1 %i.ax, { ptr, i64 } %i.ba, { ptr, i64 } %i.aw
  br label %_RNvXs4_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i

_RNvXs4_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i: ; preds = %bb.h, %select.unfold.i
  %.merged.i.i.i = phi { ptr, i64 } [ %..i.i.i, %bb.h ], [ %i.at, %select.unfold.i ] ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %.merged.i.i.i, 0
  %i.bc = extractvalue { ptr, i64 } %.merged.i.i.i, 1
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.a, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, %_RNvXs4_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i
  %.sroa.3.0.i = phi i64 [ %i.bc, %_RNvXs4_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i ], [ undef, %bb.a ], [ undef, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i ]
  %.sroa.0.0.i = phi ptr [ %i.bb, %_RNvXs4_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i ], [ null, %bb.a ], [ null, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i ]
  %i.bd = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.be = insertvalue { ptr, i64 } %i.bd, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.be
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXsvy_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !31, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 37 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
    i64 19, label %bb.u
    i64 20, label %bb.v
    i64 21, label %bb.w
    i64 22, label %bb.x
    i64 23, label %bb.y
    i64 24, label %bb.z
    i64 25, label %bb.aa
    i64 26, label %bb.ab
    i64 27, label %bb.ac
    i64 28, label %bb.ad
    i64 29, label %bb.ae
    i64 30, label %bb.af
    i64 31, label %bb.ag
    i64 32, label %bb.ah
    i64 33, label %bb.ai
    i64 34, label %bb.aj
    i64 35, label %bb.ak
    i64 36, label %bb.al
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull ptr @_RNvXs5R_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9ArrayExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RNvXs6l_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7AsmExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.am

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RNvXs7v_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9AwaitExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.am

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull ptr @_RNvXs7B_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_10BecomeExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.am

bb.f:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull ptr @_RNvXs7H_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7BinExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.am

bb.g:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull ptr @_RNvXs7N_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9BlockExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
end_hunk_0

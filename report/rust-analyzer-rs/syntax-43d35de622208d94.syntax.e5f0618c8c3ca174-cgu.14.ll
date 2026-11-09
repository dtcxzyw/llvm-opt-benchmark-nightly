Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syntax-43d35de622208d94.syntax.e5f0618c8c3ca174-cgu.14?download=true
inline.NumInlined: 487
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make6tokens11doc_comment:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_CsjJXvCMGntp8_6syntaxNtNtNtNtB5_3ast9generated5nodes10SourceFile5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 noundef 3)
  call void @_RNvMs0_CsjJXvCMGntp8_6syntaxINtB5_5ParseNtNtNtNtB5_3ast9generated5nodes10SourceFileE2okB5_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.h = load i64, ptr %i.c, align 8, !range !17, !alias.scope !413, !noundef !9
  %.not.i = icmp eq i64 %i.h, -1
  br i1 %.not.i, label %bb.j, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !415
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #26
          to label %bb.e unwind label %bb.d, !noalias !413

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #24
          to label %common.resume unwind label %bb.f, !noalias !413

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !413
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.k, %bb.h ], [ %i.k, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #23
  unreachable

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.thread.invoke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i, %bb.j
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noundef !9
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.q) #22
          to label %common.resume unwind label %bb.o

bb.j:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !413, !nonnull !9, !noundef !9 ; 5 uses
  store ptr %i.q, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = invoke { i64, ptr } @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE20first_child_or_tokenBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.k unwind label %bb.h       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1        ; 5 uses
  switch i64 %i.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.thread.invoke
    i64 0, label %bb.l
  ], !prof !18

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit: ; preds = %bb.k
  %.not613.not = icmp eq ptr %i.t, null
  br i1 %.not613.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.thread.invoke, label %bb.m, !prof !19

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noundef !9
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.thread.invoke

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i: ; preds = %bb.l
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.t) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.thread.invoke unwind label %bb.h

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !noundef !9
  %i.aa = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEBJ_.exit11

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.q) #22
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEBJ_.exit11

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEBJ_.exit11: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.t

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.thread.invoke: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit, %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i, %bb.k
  %i.ac = phi ptr [ @45, %bb.k ], [ @46, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i ], [ @46, %bb.l ], [ @46, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit ]
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.thread.cont unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.thread.cont: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.thread.invoke
  unreachable

bb.o:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make6tokens5ident(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !440 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  store ptr %i.i, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = icmp eq i64 %i.j, %1
  br i1 %i.l, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr %i.i, ptr nonnull %0, i64 %1)
  %i.m = icmp eq i32 %bcmp, 0
  br i1 %i.m, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedReBM_ECsjJXvCMGntp8_6syntax(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.n = tail call noundef nonnull ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext10ident_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 6 uses
  %i.p = load i32, ptr %i.o, align 4, !noalias !441, !noundef !9 ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.r = add nuw i32 %i.p, 1
  store i32 %i.r, ptr %i.o, align 4, !noalias !441
  invoke void @_RNvMso_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokens3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.n)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #26
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %bb.f
  unreachable

.body18:                                          ; preds = %bb.t, %bb.u, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.i, %bb.h, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.v, %bb.h ], [ %i.az, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.i ], [ %i.az, %bb.u ], [ %i.az, %bb.t ]
  %i.s = load i32, ptr %i.o, align 4, !noundef !9
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.o, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathEBJ_.exit

bb.g:                                             ; preds = %.body18
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.n) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathEBJ_.exit unwind label %bb.z

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i7.i.i.i.i, %bb.f, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body18

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !442
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit
  %i.w = load i64, ptr %i.b, align 8, !range !13, !noalias !442, !noundef !9 ; 2 uses
  %.not10.i.i = icmp eq i64 %i.w, 2
  br i1 %.not10.i.i, label %.loopexit31, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc11
  %.sroa.52.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.noexc15, %.lr.ph.i.i
  %i.x = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.at, %.noexc15 ]
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i.a, align 8, !noalias !442 ; 11 uses
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 48 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !noalias !443, !noundef !9
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !noalias !443
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.invoke, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtNtB4m_3ast4make6tokens5ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.invoke: ; preds = %bb.l, %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i.i) #22
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtNtB4m_3ast4make6tokens5ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.i
  %.sroa.52.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !442
  switch i64 %.sroa.52.0.copyload.i.i, label %_RNCNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make6tokens5ident0B9_.exit.i.i.i.i.i [
    i64 2, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtNtB4m_3ast4make6tokens5ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i
    i64 0, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 48 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !444, !noundef !9
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4, !noalias !444
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.invoke, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtNtB4m_3ast4make6tokens5ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i

_RNCNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make6tokens5ident0B9_.exit.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !445
  store ptr %.sroa.6.0.copyload.i.i, ptr %i.a, align 8, !noalias !445
  %i.ah = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.o unwind label %bb.m, !noalias !444

bb.m:                                             ; preds = %_RNCNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make6tokens5ident0B9_.exit.i.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !444, !noundef !9
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !noalias !444
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %.body

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i.i) #22
          to label %.body unwind label %bb.r, !noalias !444

bb.o:                                             ; preds = %_RNCNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make6tokens5ident0B9_.exit.i.i.i.i.i
  %i.an = icmp eq i16 %i.ah, 153
  br i1 %i.an, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !444, !noundef !9
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4, !noalias !444
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.q, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtNtB4m_3ast4make6tokens5ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread6.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i.i) #22
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtNtB4m_3ast4make6tokens5ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread6.i.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !444
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtNtB4m_3ast4make6tokens5ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread6.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !445
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtNtB4m_3ast4make6tokens5ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtNtB4m_3ast4make6tokens5ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.invoke, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtNtB4m_3ast4make6tokens5ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread6.i.i, %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !442
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtNtB4m_3ast4make6tokens5ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i
  %i.at = load i64, ptr %i.b, align 8, !range !13, !noalias !442, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq i64 %i.at, 2
  br i1 %.not.i.i, label %.loopexit31, label %bb.i

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.invoke, %bb.q, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtNtB4m_3ast4make6tokens5ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i, %.loopexit31, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.ai, %bb.n ], [ %lpad.loopexit.split-lp49, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtNtB4y_3ast4make6tokens5ident0EEB4y_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #24
          to label %.body18 unwind label %bb.z

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !442
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !450, !nonnull !9, !noundef !9 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 48 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !noalias !450, !noundef !9
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !noalias !450
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i: ; preds = %bb.s
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i.i.i) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.i.i.i.i unwind label %bb.t, !noalias !450

bb.t:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.ba, align 8, !range !13, !alias.scope !450, !noundef !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val5.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !450 ; 3 uses
  %i.bc = icmp eq i64 %.val4.i.i.i.i, 2
  br i1 %i.bc, label %.body18, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 48 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !noalias !451, !noundef !9
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4, !noalias !451
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.i, label %.body18

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.u
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.i.i.i) #22
          to label %.body18 unwind label %bb.w, !noalias !450

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i, %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.bh, align 8, !range !13, !alias.scope !450, !noundef !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val3.i.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !450 ; 3 uses
  %i.bj = icmp eq i64 %.val2.i.i.i.i, 2
  br i1 %i.bj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtNtB4y_3ast4make6tokens5ident0EEB4y_.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i.i) ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 48 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !noalias !452, !noundef !9
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4, !noalias !452
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i7.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtNtB4y_3ast4make6tokens5ident0EEB4y_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i7.i.i.i.i: ; preds = %bb.v
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i.i.i) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtNtB4y_3ast4make6tokens5ident0EEB4y_.exit unwind label %bb.h

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !450
  unreachable

.loopexit31:                                      ; preds = %.noexc15, %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !442
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #26
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtNtB4y_3ast4make6tokens5ident0EEB4y_.exit: ; preds = %bb.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i7.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bp = load i32, ptr %i.o, align 4, !noundef !9
  %i.bq = add i32 %i.bp, -1                       ; 2 uses
  store i32 %i.bq, ptr %i.o, align 4
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathEBJ_.exit20

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtNtB4y_3ast4make6tokens5ident0EEB4y_.exit
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.n) #22
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathEBJ_.exit20

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathEBJ_.exit20: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtNtB4y_3ast4make6tokens5ident0EEB4y_.exit, %bb.y
  ret ptr %.sroa.6.0.copyload.i.i

bb.z:                                             ; preds = %bb.g, %.body
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathEBJ_.exit: ; preds = %.body18, %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make6tokens7literal(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !453 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  store ptr %i.h, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = icmp eq i64 %i.i, %1
  br i1 %i.k, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr %i.h, ptr nonnull %0, i64 %1)
  %i.l = icmp eq i32 %bcmp, 0
  br i1 %i.l, label %.split, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedReBM_ECsjJXvCMGntp8_6syntax(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #23
  unreachable

.split:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsjJXvCMGntp8_6syntax, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @52, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !9, !noundef !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !9
  %i.q = invoke noundef nonnull ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast4make26ast_from_text_with_editionNtNtNtB4_9generated5nodes7LiteralEB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p, i8 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53)
          to label %bb.e unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %.split
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LiteralEBJ_.exit unwind label %bb.n

bb.e:                                             ; preds = %.split
  store ptr %i.q, ptr %i.c, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsjJXvCMGntp8_6syntax.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsjJXvCMGntp8_6syntax.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjJXvCMGntp8_6syntax.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.thread.invoke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsjJXvCMGntp8_6syntax.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjJXvCMGntp8_6syntax.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
end_hunk_0

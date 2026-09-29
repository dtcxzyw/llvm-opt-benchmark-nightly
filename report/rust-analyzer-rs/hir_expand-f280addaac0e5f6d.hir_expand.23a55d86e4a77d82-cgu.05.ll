Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.05?download=true
inline.NumInlined: 1084
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs4_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0E10next_tokenBS_:bb.a
bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ba = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bb = icmp ult i64 %i.ba, 230584300921369396
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %i.ba
  store ptr %i.az, ptr %i.b, align 8
  store i64 %i.ay, ptr %i.u, align 8
  store ptr %i.az, ptr %i.v, align 8
  store ptr %i.bc, ptr %i.w, align 8
  invoke void @_RNvXs0_NtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque11spec_extendINtB7_8VecDequeNtCs4dcH4YgJDq_2tt4LeafEINtB5_10SpecExtendB1k_INtNtNtBb_3vec9into_iter8IntoIterB1k_EE11spec_extendCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.s unwind label %bb.o

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0.copyload) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.16.0.copyload, i64 48 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !noundef !4
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i45, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit47

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i45: ; preds = %bb.r
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.16.0.copyload) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit47

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0.copyload) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.16.0.copyload, i64 48 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !noundef !4
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i48, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit50

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i48: ; preds = %bb.s
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.16.0.copyload) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit50

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit50: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i48, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit

.backedge:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit65, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit40, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXsc_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18PreorderWithTokensNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  %i.bl = load i64, ptr %i.i, align 8, !range !10, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.bl, 2
  br i1 %.not, label %._crit_edge, label %bb.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit47: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i45, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit40

bb.t:                                             ; preds = %.invoke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i69.invoke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i57, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i42
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.u:                                             ; preds = %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not12 = icmp eq i64 %.sroa.10.0.copyload, 0
  br i1 %.not12, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0.copyload) ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.16.0.copyload, i64 48 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !4
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit68

bb.w:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.16.0.copyload, i64 48 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !noalias !1508, !noundef !4
  %i.bt = add i32 %i.bs, -1                       ; 2 uses
  store i32 %i.bt, ptr %i.br, align 4, !noalias !1508
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit68

.invoke:                                          ; preds = %bb.w, %bb.v
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.16.0.copyload) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit68 unwind label %bb.t

bb.x:                                             ; preds = %bb.z, %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0.copyload) ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.16.0.copyload, i64 48 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !noundef !4
  %i.by = add i32 %i.bx, -1                       ; 2 uses
  store i32 %i.by, ptr %i.bw, align 4
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i57, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit68

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i57: ; preds = %bb.x
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.16.0.copyload) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit68 unwind label %bb.t

bb.y:                                             ; preds = %bb.e
  %i.ca = load i64, ptr %i.d, align 8, !range !18, !noundef !4 ; 2 uses
  %.not13 = icmp eq i64 %i.ca, -1
  br i1 %.not13, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.cc = load i64, ptr %i.z, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cd = icmp ult i64 %i.cc, 230584300921369396
  call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %i.cc
  store ptr %i.cb, ptr %i.a, align 8
  store i64 %i.ca, ptr %i.aa, align 8
  store ptr %i.cb, ptr %i.ab, align 8
  store ptr %i.ce, ptr %i.ac, align 8
  invoke void @_RNvXs0_NtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque11spec_extendINtB7_8VecDequeNtCs4dcH4YgJDq_2tt4LeafEINtB5_10SpecExtendB1k_INtNtNtBb_3vec9into_iter8IntoIterB1k_EE11spec_extendCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.ab unwind label %bb.x

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0.copyload) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.16.0.copyload, i64 48 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !noundef !4
  %i.ch = add i32 %i.cg, -1                       ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i60, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit62

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i60: ; preds = %bb.aa
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.16.0.copyload) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit62

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0.copyload) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.16.0.copyload, i64 48 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !noundef !4
  %i.cl = add i32 %i.ck, -1                       ; 2 uses
  store i32 %i.cl, ptr %i.cj, align 4
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i63, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit65

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i63: ; preds = %bb.ab
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.16.0.copyload) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit65

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit65: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i63, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit62: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i60, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit68: ; preds = %bb.b, %.invoke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i69.invoke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i42, %bb.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i57, %bb.x, %bb.w, %bb.v
  %lpad.thr_comm.split-lp107.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp107, %bb.b ], [ %lpad.thr_comm.split-lp, %.invoke ], [ %lpad.thr_comm.split-lp, %bb.w ], [ %i.bv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i57 ], [ %lpad.thr_comm.split-lp107, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i69.invoke ], [ %i.at, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i42 ], [ %i.at, %bb.o ], [ %i.bv, %bb.x ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %lpad.thr_comm.split-lp107.pn

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i69.invoke: ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.16.0.copyload) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit68 unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs4_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0E10next_tokenBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 15 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [64 x i8], align 8                ; 17 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [1 x i8], align 1                 ; 2 uses
  %i.u = alloca [1 x i8], align 1                 ; 2 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [1 x i8], align 1                 ; 2 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 16               ; 5 uses
  %.sroa.453.sroa.4.i = alloca [20 x i8], align 4 ; 4 uses
  %.sroa.8189 = alloca [12 x i8], align 8         ; 4 uses
  %.sroa.8183 = alloca [12 x i8], align 8         ; 4 uses
  %.sroa.8178 = alloca [12 x i8], align 8         ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 11 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 8 uses
  %i.ad = alloca [48 x i8], align 8               ; 11 uses
  %i.ae = alloca [64 x i8], align 8               ; 13 uses
  %i.af = alloca [64 x i8], align 8               ; 11 uses
  %i.ag = alloca [8 x i8], align 8                ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 11 uses
  %i.aq = alloca [24 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_RNvXsc_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18PreorderWithTokensNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  %i.ar = load i64, ptr %i.aq, align 8, !range !10, !noundef !4
  %.not986 = icmp eq i64 %i.ar, 2
  br i1 %.not986, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 11 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 197 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 198 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 199 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.5.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 11 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 5 uses
  %.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 3 uses
  %.sroa.8196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.5.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.dm = insertelement <2 x ptr> poison, ptr %i.as, i64 0
  %i.dn = insertelement <2 x ptr> %i.dm, ptr %i.bm, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.do = load i64, ptr %i.ap, align 8, !range !7, !alias.scope !1675, !noalias !1676, !noundef !4
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = load i64, ptr %i.at, align 8, !range !7, !alias.scope !1675, !noalias !1676, !noundef !4
  %i.dr = trunc nuw i64 %i.dq to i1               ; 2 uses
  br i1 %i.dp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.dr, label %.loopexit, label %bb.le

bb.d:                                             ; preds = %bb.b
  br i1 %i.dr, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ds = load i8, ptr %i.aw, align 1, !range !6, !alias.scope !1673, !noalias !1677, !noundef !4
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.jy, label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.du = load i8, ptr %i.av, align 4, !range !6, !alias.scope !1673, !noalias !1677, !noundef !4
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dw = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %.noexc unwind label %.loopexit214

.noexc:                                           ; preds = %bb.g
  %i.dx = icmp eq i16 %i.dw, 176
  br i1 %i.dx, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.dy = load i8, ptr %i.aw, align 1, !range !6, !alias.scope !1673, !noalias !1677, !noundef !4
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %.loopexit, label %bb.p

bb.i:                                             ; preds = %.noexc
  store i8 1, ptr %i.aw, align 1, !alias.scope !1673, !noalias !1677
  %i.ea = load ptr, ptr %i.au, align 8, !alias.scope !1675, !noalias !1676, !nonnull !4, !noundef !4 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 60
  %i.ec = load i8, ptr %i.eb, align 4, !range !6, !noalias !1678, !noundef !4
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.k, label %bb.j, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ef = load i32, ptr %i.ee, align 8, !noalias !1678, !noundef !4
  br label %.noexc37

bb.k:                                             ; preds = %bb.i
  %i.eg = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.ea)
          to label %.noexc37 unwind label %.loopexit214

.noexc37:                                         ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i = phi i32 [ %i.ef, %bb.j ], [ %i.eg, %bb.k ] ; 3 uses
  %i.eh = load i64, ptr %i.ea, align 8, !range !7, !noalias !1678, !noundef !4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ej = trunc nuw i64 %i.eh to i1
  %i.ek = load ptr, ptr %i.ei, align 8, !noalias !1678, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.ej, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.noexc37
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8, !noalias !1678, !noundef !4 ; 2 uses
  %i.en = icmp ugt i64 %i.em, 4294967295
  %i.eo = shl nuw i64 %i.em, 32
  %.sroa.09.0.insert.insert.i.i.i = select i1 %i.en, i64 513, i64 %i.eo ; 2 uses
  %i.ep = trunc i64 %.sroa.09.0.insert.insert.i.i.i to i1
  br i1 %i.ep, label %bb.m, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, !prof !5

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1679
  br label %.invoke2170

end_hunk_0
begin_hunk_1_@_RNvMs4_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0E10next_tokenBS_:bb.a
  %i.afn = load i64, ptr %i.afm, align 8, !noundef !4 ; 2 uses
  %i.afo = icmp ugt i64 %i.afn, 4294967295
  %i.afp = shl nuw i64 %i.afn, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.afo, i64 513, i64 %i.afp ; 2 uses
  %i.afq = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.afq, label %bb.kk, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !5

bb.kk:                                            ; preds = %bb.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br label %.invoke2170

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.kj
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.km

bb.kl:                                            ; preds = %.noexc115
  %i.afr = load i32, ptr %i.afl, align 8, !noundef !4
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.afr, %bb.kl ]
  %i.afs = add i32 %.sroa.02.0.i, %.sroa.0.0.i    ; 2 uses
  %.not.i114 = icmp ugt i32 %.sroa.0.0.i, %i.afs
  br i1 %.not.i114, label %.invoke2172, label %.noexc47, !prof !5

.noexc47:                                         ; preds = %bb.km
  br i1 %i.aez, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %.noexc47
  %.not86.i = icmp ult i32 %.sroa.0.0.i154.i, %i.afs
  br i1 %.not86.i, label %.loopexit, label %bb.lc

bb.ko:                                            ; preds = %.noexc47
  %.not83.i = icmp ult i32 %.sroa.0.0.i154.i, %.sroa.0.0.i
  br i1 %.not83.i, label %.loopexit, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1679
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i64 noundef 3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
          to label %.noexc48 unwind label %.loopexit214

.noexc48:                                         ; preds = %bb.kp
  %i.aft = load i64, ptr %i.x, align 8, !range !7, !noalias !1679, !noundef !4
  %i.afu = trunc nuw i64 %i.aft to i1
  %i.afv = load i64, ptr %i.cp, align 8, !range !1782, !noalias !1679, !noundef !4 ; 3 uses
  br i1 %i.afu, label %bb.kq, label %bb.kr, !prof !5

bb.kq:                                            ; preds = %.noexc48
  %i.afw = load i64, ptr %i.cq, align 8, !noalias !1679
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.afv, i64 %i.afw) #27
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.kq
  unreachable

.body102:                                         ; preds = %bb.ky, %bb.ku
  %eh.lpad-body103 = phi { ptr, i32 } [ %i.age, %bb.ku ], [ %i.agk, %bb.ky ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs4dcH4YgJDq_2tt4LeafEECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #29
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit76 unwind label %bb.ar, !noalias !1678

bb.kr:                                            ; preds = %.noexc48
  %i.afx = load ptr, ptr %i.cq, align 8, !noalias !1679, !nonnull !4, !noundef !4 ; 6 uses
  %i.afy = icmp samesign ugt i64 %i.afv, 2
  call void @llvm.assume(i1 %i.afy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1679
  store i64 %i.afv, ptr %i.z, align 8, !noalias !1679
  store ptr %i.afx, ptr %i.cr, align 8, !noalias !1679
  store i64 0, ptr %i.cs, align 8, !noalias !1679
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8178)
  %i.afz = getelementptr inbounds nuw i8, ptr %i.adt, i64 104
  %.sroa.6177.8.copyload = load ptr, ptr %i.afz, align 8, !noalias !1678
  %.sroa.8178.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adt, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8178, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8178.8..sroa_idx, i64 12, i1 false), !noalias !1678
  store i32 1, ptr %i.afx, align 8, !noalias !1678
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afx, i64 4
  store i32 35, ptr %.sroa.5.0..sroa_idx, align 4, !noalias !1678
  %.sroa.6177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afx, i64 8
  store ptr %.sroa.6177.8.copyload, ptr %.sroa.6177.0..sroa_idx, align 8, !noalias !1678
  %.sroa.8178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8178.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8178, i64 12, i1 false), !noalias !1678
  %.sroa.8179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afx, i64 28
  store i8 0, ptr %.sroa.8179.0..sroa_idx, align 4, !noalias !1678
  store i64 1, ptr %i.cs, align 8, !alias.scope !1783, !noalias !1784
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8178)
  %i.aga = load i32, ptr %i.adt, align 8, !range !1785, !noalias !1678, !noundef !4
  %i.agb = trunc nuw i32 %i.aga to i1
  %.pre1549 = load i64, ptr %i.z, align 8, !range !16, !noalias !1678 ; 3 uses
  br i1 %i.agb, label %bb.ks, label %bb.kw

bb.ks:                                            ; preds = %bb.kr
  %i.agc = getelementptr inbounds nuw i8, ptr %i.adt, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8183)
  %.sroa.6182.8.copyload = load ptr, ptr %i.agc, align 4, !noalias !1678 ; 2 uses
  %.sroa.8183.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adt, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8183, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8183.8..sroa_idx, i64 12, i1 false), !noalias !1678
  %i.agd = icmp eq i64 %.pre1549, 1
  br i1 %i.agd, label %bb.kt, label %bb.la

bb.kt:                                            ; preds = %bb.ks
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs4dcH4YgJDq_2tt4LeafE8grow_oneCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %._crit_edge1551 unwind label %bb.ku, !noalias !1786

._crit_edge1551:                                  ; preds = %bb.kt
  %.pre.pre = load i64, ptr %i.z, align 8, !range !16, !alias.scope !1787, !noalias !1788
  br label %bb.la

bb.ku:                                            ; preds = %bb.kt
  %i.age = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 1, ptr %.sroa.6182.8.copyload) #29
          to label %.body102 unwind label %bb.kv, !noalias !1786

bb.kv:                                            ; preds = %bb.ku
  %i.agf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31, !noalias !1786
  unreachable

bb.kw:                                            ; preds = %bb.la, %bb.kr
  %i.agg = phi i64 [ %.pre, %bb.la ], [ %.pre1549, %bb.kr ]
  %i.agh = phi i64 [ 2, %bb.la ], [ 1, %bb.kr ]   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8189)
  %i.agi = getelementptr inbounds nuw i8, ptr %i.adt, i64 64
  %.sroa.6188.8.copyload = load ptr, ptr %i.agi, align 8, !noalias !1678 ; 2 uses
  %.sroa.8189.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adt, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8189, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8189.8..sroa_idx, i64 12, i1 false), !noalias !1678
  %i.agj = icmp eq i64 %i.agh, %i.agg
  br i1 %i.agj, label %bb.kx, label %bb.lb

bb.kx:                                            ; preds = %bb.kw
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs4dcH4YgJDq_2tt4LeafE8grow_oneCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.lb unwind label %bb.ky, !noalias !1788

bb.ky:                                            ; preds = %bb.kx
  %i.agk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 1, ptr %.sroa.6188.8.copyload) #29
          to label %.body102 unwind label %bb.kz, !noalias !1788

bb.kz:                                            ; preds = %bb.ky
  %i.agl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31, !noalias !1788
  unreachable

bb.la:                                            ; preds = %._crit_edge1551, %bb.ks
  %.pre = phi i64 [ %.pre.pre, %._crit_edge1551 ], [ %.pre1549, %bb.ks ]
  %i.agm = load ptr, ptr %i.cr, align 8, !alias.scope !1789, !noalias !1786, !nonnull !4, !noundef !4 ; 5 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 40
  store i32 1, ptr %i.agn, align 8, !noalias !1678
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agm, i64 44
  store i32 33, ptr %.sroa.5181.0..sroa_idx, align 4, !noalias !1678
  %.sroa.6182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agm, i64 48
  store ptr %.sroa.6182.8.copyload, ptr %.sroa.6182.0..sroa_idx, align 8, !noalias !1678
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agm, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8183.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8183, i64 12, i1 false), !noalias !1678
  %.sroa.8184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agm, i64 68
  store i8 0, ptr %.sroa.8184.0..sroa_idx, align 4, !noalias !1678
  store i64 2, ptr %i.cs, align 8, !alias.scope !1789, !noalias !1786
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8183)
  br label %bb.kw

bb.lb:                                            ; preds = %bb.kx, %bb.kw
  %i.ago = load ptr, ptr %i.cr, align 8, !alias.scope !1787, !noalias !1788, !nonnull !4, !noundef !4
  %i.agp = getelementptr inbounds nuw [40 x i8], ptr %i.ago, i64 %i.agh ; 5 uses
  store i32 1, ptr %i.agp, align 8, !noalias !1678
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agp, i64 4
  store i32 91, ptr %.sroa.5187.0..sroa_idx, align 4, !noalias !1678
  %.sroa.6188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agp, i64 8
  store ptr %.sroa.6188.8.copyload, ptr %.sroa.6188.0..sroa_idx, align 8, !noalias !1678
  %.sroa.8189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8189.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8189, i64 12, i1 false), !noalias !1678
  %.sroa.8190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agp, i64 28
  store i8 0, ptr %.sroa.8190.0..sroa_idx, align 4, !noalias !1678
  %i.agq = add nuw nsw i64 %i.agh, 1
  store i64 %i.agq, ptr %i.cs, align 8, !alias.scope !1787, !noalias !1788
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8189)
  store i8 1, ptr %i.aex, align 4, !noalias !1678
  %.sroa.15174.8.copyload = load i64, ptr %i.z, align 8, !noalias !1790
  %.sroa.28.8.copyload = load ptr, ptr %i.cr, align 8, !noalias !1790
  %.sroa.40.8.copyload = load i64, ptr %i.cs, align 8, !noalias !1790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1679
  br label %.loopexit

bb.lc:                                            ; preds = %bb.kn
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.agr = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 24, 57) 40, i64 noundef 8) #33 ; 6 uses
  %i.ags = icmp eq ptr %i.agr, null
  br i1 %i.ags, label %bb.ld, label %.noexc50, !prof !5

bb.ld:                                            ; preds = %bb.lc
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #27
          to label %.noexc100 unwind label %.loopexit.split-lp

.noexc100:                                        ; preds = %bb.ld
  unreachable

.noexc50:                                         ; preds = %bb.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.453.sroa.4.i)
  %i.agt = getelementptr inbounds nuw i8, ptr %i.adt, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.453.sroa.4.i, ptr noundef nonnull align 4 dereferenceable(20) %i.agt, i64 20, i1 false), !noalias !1678
  store i32 1, ptr %i.agr, align 8, !noalias !1678
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agr, i64 4
  store i32 93, ptr %.sroa.453.0..sroa_idx.i, align 4, !noalias !1678
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.453.sroa.4.i, i64 20, i1 false), !noalias !1678
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agr, i64 28
  store i8 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i, align 4, !noalias !1678
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.453.sroa.4.i)
  store i8 0, ptr %i.aex, align 4, !noalias !1678
  %i.agu = load i64, ptr %i.aer, align 8, !noalias !1678, !noundef !4
  %i.agv = add i64 %i.agu, 1
  store i64 %i.agv, ptr %i.aer, align 8, !noalias !1678
  br label %.loopexit

bb.le:                                            ; preds = %bb.c
  %i.agw = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %.noexc51 unwind label %.loopexit214

.noexc51:                                         ; preds = %bb.le
  %i.agx = icmp eq i16 %i.agw, 176
  br i1 %i.agx, label %bb.lf, label %.loopexit

bb.lf:                                            ; preds = %.noexc51
  store i8 0, ptr %i.aw, align 1, !alias.scope !1673, !noalias !1677
  %i.agy = load i64, ptr %i.bn, align 8, !alias.scope !1673, !noalias !1677, !noundef !4
  %i.agz = add i64 %i.agy, 1
  store i64 %i.agz, ptr %i.bn, align 8, !alias.scope !1673, !noalias !1677
  br label %.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit76: ; preds = %.invoke2174, %.loopexit214, %.loopexit.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i62, %bb.lv, %.body102, %bb.ae, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.i, %bb.v, %bb.u, %bb.me, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i81, %bb.md, %bb.mc, %.thread205
  %eh.lpad-body.pn = phi { ptr, i32 } [ %i.ajh, %bb.me ], [ %lpad.thr_comm.split-lp, %bb.md ], [ %lpad.thr_comm.split-lp, %bb.mc ], [ %lpad.thr_comm, %.thread205 ], [ %i.fd, %bb.u ], [ %lpad.loopexit.split-lp216, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp, %.invoke2174 ], [ %i.ajh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i81 ], [ %i.aif, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i62 ], [ %eh.lpad-body103, %.body102 ], [ %.pn78.pn.pn.i, %bb.ae ], [ %.pn78.pn.pn.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.i ], [ %i.fd, %bb.v ], [ %i.aif, %bb.lv ], [ %lpad.loopexit215, %.loopexit214 ]
  %.sroa.05.0 = phi i1 [ false, %bb.me ], [ true, %bb.md ], [ true, %bb.mc ], [ true, %.thread205 ], [ true, %bb.u ], [ true, %.loopexit.split-lp ], [ true, %.invoke2174 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i81 ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i62 ], [ true, %.body102 ], [ true, %bb.ae ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.i ], [ true, %bb.v ], [ true, %bb.lv ], [ %.sroa.05.1.ph, %.loopexit214 ]
  %.sroa.04.0 = phi i1 [ true, %bb.me ], [ false, %bb.md ], [ false, %bb.mc ], [ false, %.thread205 ], [ true, %bb.u ], [ true, %.loopexit.split-lp ], [ false, %.invoke2174 ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i81 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i62 ], [ true, %.body102 ], [ true, %bb.ae ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.i ], [ true, %bb.v ], [ false, %bb.lv ], [ %.sroa.04.1.ph, %.loopexit214 ]
  %i.aha = load i64, ptr %i.ap, align 8, !range !7, !noundef !4
  %i.ahb = icmp eq i64 %i.aha, 0
  br i1 %i.ahb, label %bb.mj, label %bb.mk

.loopexit214:                                     ; preds = %.loopexit, %bb.g, %bb.k, %bb.t, %bb.ad, %bb.ic, %bb.kb, %bb.kp, %bb.le, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i57, %bb.lu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i85, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i89, %bb.ki
  %.sroa.05.1.ph = phi i1 [ true, %bb.ki ], [ true, %bb.kp ], [ true, %bb.kb ], [ true, %bb.ic ], [ true, %bb.ad ], [ true, %bb.t ], [ true, %bb.k ], [ true, %bb.g ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i57 ], [ true, %bb.le ], [ true, %.loopexit ], [ true, %bb.lu ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i85 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i89 ]
  %.sroa.04.1.ph = phi i1 [ true, %bb.ki ], [ true, %bb.kp ], [ true, %bb.kb ], [ true, %bb.ic ], [ true, %bb.ad ], [ true, %bb.t ], [ true, %bb.k ], [ true, %bb.g ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i57 ], [ true, %bb.le ], [ true, %.loopexit ], [ false, %bb.lu ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i85 ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i89 ]
  %lpad.loopexit215 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit76

.loopexit.split-lp:                               ; preds = %.invoke2172, %.invoke2170, %bb.q, %bb.kq, %bb.ld
  %lpad.loopexit.split-lp216 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit76

.loopexit:                                        ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i, %bb.jx, %.noexc50, %bb.lb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsECs33K2ylI4knu_10hir_expand.exit.i, %bb.f, %bb.lf, %.noexc51, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsECs33K2ylI4knu_10hir_expand.exit114.i, %_RNvXsoz_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_11AnyHasAttrsNtBa_7AstNode4cast.exit.thread.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.preheader.i, %bb.h, %bb.c, %bb.e, %bb.jy, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit161.i, %bb.ko, %bb.kn
  %.sroa.40.1 = phi i64 [ 0, %bb.f ], [ 0, %bb.ko ], [ 1, %.noexc50 ], [ 0, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit161.i ], [ %.sroa.40.8.copyload, %bb.lb ], [ 0, %bb.jy ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsECs33K2ylI4knu_10hir_expand.exit.i ], [ 0, %bb.lf ], [ 0, %.noexc51 ], [ 0, %bb.h ], [ 0, %bb.kn ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsECs33K2ylI4knu_10hir_expand.exit114.i ], [ 0, %_RNvXsoz_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_11AnyHasAttrsNtBa_7AstNode4cast.exit.thread.i ], [ 0, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.preheader.i ], [ 0, %bb.jx ], [ 0, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i ] ; 2 uses
  %.sroa.28.1 = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ inttoptr (i64 8 to ptr), %bb.ko ], [ %i.agr, %.noexc50 ], [ inttoptr (i64 8 to ptr), %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit161.i ], [ %.sroa.28.8.copyload, %bb.lb ], [ inttoptr (i64 8 to ptr), %bb.jy ], [ inttoptr (i64 8 to ptr), %bb.e ], [ inttoptr (i64 8 to ptr), %bb.c ], [ inttoptr (i64 8 to ptr), %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsECs33K2ylI4knu_10hir_expand.exit.i ], [ inttoptr (i64 8 to ptr), %bb.lf ], [ inttoptr (i64 8 to ptr), %.noexc51 ], [ inttoptr (i64 8 to ptr), %bb.h ], [ inttoptr (i64 8 to ptr), %bb.kn ], [ inttoptr (i64 8 to ptr), %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsECs33K2ylI4knu_10hir_expand.exit114.i ], [ inttoptr (i64 8 to ptr), %_RNvXsoz_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_11AnyHasAttrsNtBa_7AstNode4cast.exit.thread.i ], [ inttoptr (i64 8 to ptr), %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.preheader.i ], [ inttoptr (i64 8 to ptr), %bb.jx ], [ inttoptr (i64 8 to ptr), %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i ] ; 3 uses
  %.sroa.15174.1 = phi i64 [ 0, %bb.f ], [ 0, %bb.ko ], [ 1, %.noexc50 ], [ 0, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit161.i ], [ %.sroa.15174.8.copyload, %bb.lb ], [ 0, %bb.jy ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsECs33K2ylI4knu_10hir_expand.exit.i ], [ 0, %bb.lf ], [ 0, %.noexc51 ], [ 0, %bb.h ], [ 0, %bb.kn ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsECs33K2ylI4knu_10hir_expand.exit114.i ], [ 0, %_RNvXsoz_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_11AnyHasAttrsNtBa_7AstNode4cast.exit.thread.i ], [ 0, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.preheader.i ], [ 0, %bb.jx ], [ 0, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i ] ; 2 uses
  %.sroa.0.1 = phi i1 [ true, %bb.f ], [ false, %bb.ko ], [ false, %.noexc50 ], [ false, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit161.i ], [ true, %bb.lb ], [ true, %bb.jy ], [ true, %bb.e ], [ true, %bb.c ], [ %.sroa.0.0198, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsECs33K2ylI4knu_10hir_expand.exit.i ], [ true, %bb.lf ], [ true, %.noexc51 ], [ true, %bb.h ], [ true, %bb.kn ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsECs33K2ylI4knu_10hir_expand.exit114.i ], [ true, %_RNvXsoz_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_11AnyHasAttrsNtBa_7AstNode4cast.exit.thread.i ], [ true, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.preheader.i ], [ true, %bb.jx ], [ true, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ahc = icmp ult i64 %.sroa.40.1, 230584300921369396
  call void @llvm.assume(i1 %i.ahc)
  %i.ahd = getelementptr inbounds nuw [40 x i8], ptr %.sroa.28.1, i64 %.sroa.40.1
  %i.ahe = icmp sgt i64 %.sroa.15174.1, -1
  call void @llvm.assume(i1 %i.ahe)
  store ptr %.sroa.28.1, ptr %i.aj, align 8
  store i64 %.sroa.15174.1, ptr %i.cu, align 8
  store ptr %.sroa.28.1, ptr %i.cv, align 8
  store ptr %i.ahd, ptr %i.cw, align 8
  invoke void @_RNvXs0_NtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque11spec_extendINtB7_8VecDequeNtCs4dcH4YgJDq_2tt4LeafEINtB5_10SpecExtendB1k_INtNtNtBb_3vec9into_iter8IntoIterB1k_EE11spec_extendCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.aj)
          to label %bb.lg unwind label %.loopexit214

bb.lg:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.ahf = load i64, ptr %i.ap, align 8, !range !7, !noundef !4
  %i.ahg = trunc nuw i64 %i.ahf to i1             ; 2 uses
  br i1 %.sroa.0.1, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  br i1 %i.ahg, label %bb.lj, label %bb.lk

bb.li:                                            ; preds = %bb.lg
  br i1 %i.ahg, label %bb.ll, label %bb.lm

bb.lj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit, %bb.lh
  %.val36 = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.val36, i64 48 ; 2 uses
  %i.ahi = load i32, ptr %i.ahh, align 4, !noundef !4
  %i.ahj = add i32 %i.ahi, -1                     ; 2 uses
  store i32 %i.ahj, ptr %i.ahh, align 4
  %i.ahk = icmp eq i32 %i.ahj, 0
  br i1 %i.ahk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i, label %.backedge

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i: ; preds = %bb.lj
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val36) #30
  br label %.backedge

bb.lk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit91, %bb.lh
  %.val34 = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.val34, i64 48 ; 2 uses
  %i.ahm = load i32, ptr %i.ahl, align 4, !noundef !4
  %i.ahn = add i32 %i.ahm, -1                     ; 2 uses
  store i32 %i.ahn, ptr %i.ahl, align 4
  %i.aho = icmp eq i32 %i.ahn, 0
  br i1 %i.aho, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i54, label %.backedge

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i54: ; preds = %bb.lk
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val34) #30
  br label %.backedge

bb.ll:                                            ; preds = %bb.li
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.ahp = load i64, ptr %i.at, align 8, !range !7, !noundef !4
  %i.ahq = load ptr, ptr %i.au, align 8, !noundef !4 ; 10 uses
  store i64 %i.ahp, ptr %i.al, align 8
  store ptr %i.ahq, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBT_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1I_11SyntaxTokenB23_EEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs4dcH4YgJDq_2tt4LeafENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6removeBO_ECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %bb.mf unwind label %bb.me

bb.lm:                                            ; preds = %bb.li
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.ahr = load i64, ptr %i.at, align 8, !range !7, !noundef !4 ; 3 uses
  %i.ahs = load ptr, ptr %i.au, align 8, !noundef !4 ; 21 uses
  store i64 %i.ahr, ptr %i.ao, align 8
  store ptr %i.ahs, ptr %i.cx, align 8
  %i.aht = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBT_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1I_11SyntaxTokenB23_EEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao)
          to label %bb.ln unwind label %bb.mb

.thread205:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i70, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i66
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit76

bb.ln:                                            ; preds = %bb.lm
  %i.ahu = trunc nuw i64 %i.ahr to i1             ; 2 uses
  br i1 %i.aht, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  br i1 %i.ahu, label %bb.lq, label %bb.lr

bb.lp:                                            ; preds = %bb.ln
  br i1 %i.ahu, label %bb.lt, label %bb.ls

bb.lq:                                            ; preds = %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.backedge, %bb.a, %bb.lq
  %.sroa.0.0 = phi ptr [ %i.ahs, %bb.lq ], [ null, %bb.a ], [ null, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  ret ptr %.sroa.0.0

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit59: ; preds = %bb.lr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i57, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.backedge

bb.lr:                                            ; preds = %bb.lo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ahs) ]
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahs, i64 48 ; 2 uses
  %i.ahw = load i32, ptr %i.ahv, align 4, !noundef !4
  %i.ahx = add i32 %i.ahw, -1                     ; 2 uses
  store i32 %i.ahx, ptr %i.ahv, align 4
  %i.ahy = icmp eq i32 %i.ahx, 0
  br i1 %i.ahy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i57, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit59

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i57: ; preds = %bb.lr
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ahs) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit59 unwind label %.loopexit214

bb.ls:                                            ; preds = %bb.lp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 0, ptr %i.an, align 8
  store ptr %i.ahs, ptr %i.cz, align 8
  store i8 1, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke void @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBT_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1I_11SyntaxTokenB23_EEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs4dcH4YgJDq_2tt4LeafENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6removeBO_ECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an)
          to label %bb.lw unwind label %bb.lv

bb.lt:                                            ; preds = %bb.lp
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahs, i64 48 ; 2 uses
  %i.aia = load i32, ptr %i.ahz, align 4, !noalias !1791, !noundef !4
  %i.aib = add i32 %i.aia, -1                     ; 2 uses
  store i32 %i.aib, ptr %i.ahz, align 4, !noalias !1791
  %i.aic = icmp eq i32 %i.aib, 0
  br i1 %i.aic, label %bb.lu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit

bb.lu:                                            ; preds = %bb.lt
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ahs) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit unwind label %.loopexit214

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.lt, %bb.lu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.aid = load i64, ptr %i.ap, align 8, !range !7, !noundef !4
  %i.aie = trunc nuw i64 %i.aid to i1
  br i1 %i.aie, label %bb.lj, label %.backedge

bb.lv:                                            ; preds = %bb.lx, %bb.ls
  %i.aif = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ahs) ]
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahs, i64 48 ; 2 uses
  %i.aih = load i32, ptr %i.aig, align 4, !noundef !4
  %i.aii = add i32 %i.aih, -1                     ; 2 uses
  store i32 %i.aii, ptr %i.aig, align 4
  %i.aij = icmp eq i32 %i.aii, 0
  br i1 %i.aij, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i62, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit76

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i62: ; preds = %bb.lv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ahs) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit76 unwind label %bb.ma
end_hunk_1

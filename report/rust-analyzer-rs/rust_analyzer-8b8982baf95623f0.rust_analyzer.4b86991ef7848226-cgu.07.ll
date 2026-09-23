Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.07?download=true
inline.NumInlined: 3983
inline.NumDeleted: 1469
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto15semantic_tokens:bb.a
  %i.fb = icmp eq i32 %.pn2.i.i12.i.i.i, 0
  br i1 %i.fb, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.dc, %bb.da
  %i.fc = icmp eq i64 %2, %i.ey
  br i1 %i.fc, label %bb.dd, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i

bb.dc:                                            ; preds = %bb.da
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ex
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !4712, !noalias !4713, !noundef !4
  %i.ff = icmp sgt i8 %i.fe, -65
  br i1 %i.ff, label %bb.db, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i, !prof !46

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i: ; preds = %bb.db
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ey
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !4712, !noalias !4713, !noundef !4
  %i.fi = icmp sgt i8 %i.fh, -65
  br i1 %i.fi, label %bb.dd, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i, !prof !47

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.dc, %bb.cy
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ex, i64 noundef %i.ey, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #48
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i
  unreachable

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5chain5ChainIBY_INtNtNtB8_7sources4once4OnceNtNtCsuAhG64lL82_9text_size4size8TextSizeEINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB1N_EEEB1l_EENtNtNtB8_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.thread66: ; preds = %bb.cu, %.noexc63, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB6_7sources4once4OnceNtNtCsuAhG64lL82_9text_size4size8TextSizeEINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterB1I_EEEB1I_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs6u1mgJOKDyY_13rust_analyzer.exit.thread3.i.i.i.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtB8_7sources4once4OnceNtNtCsuAhG64lL82_9text_size4size8TextSizeEINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB1v_EEEB13_ENtNtNtB8_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB6_7sources4once4OnceNtNtCsuAhG64lL82_9text_size4size8TextSizeEINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterB1I_EEEB1I_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs6u1mgJOKDyY_13rust_analyzer.exit.thread3.i.i.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_5chain5ChainIBY_INtNtNtB8_7sources4once4OnceNtNtCsuAhG64lL82_9text_size4size8TextSizeEINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB1N_EEEB1l_EENtNtNtB8_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.backedge

bb.dd:                                            ; preds = %bb.cz, %bb.db, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i
  %i.fj = sub nuw nsw i64 %i.ey, %i.ex
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 %i.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 10, ptr %i.i, align 4
  %i.fl = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fk, i64 noundef %i.fj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.fl, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.fm = add i32 %.sroa.4.0.i.pn64, -1           ; 2 uses
  %.not33 = icmp ugt i32 %.pn2.i.i12.i.i.i, %i.fm
  br i1 %.not33, label %bb.dk, label %bb.dg, !prof !8

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.sroa.513.0 = phi i32 [ %.sroa.4.0.i.pn64, %bb.de ], [ %i.fm, %bb.df ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !4714)
  %i.fn = invoke { i32, i32 } @_RNvMs0_Cs9HU4uknhSfY_10line_indexNtB5_9LineIndex8line_col(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aq, i32 noundef %.pn2.i.i12.i.i.i)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc47:                                         ; preds = %bb.dg
  br i1 %.not.i.i, label %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto8position.exit.thread.i, label %bb.dh

_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto8position.exit.thread.i: ; preds = %.noexc47
  %i.fo = extractvalue { i32, i32 } %i.fn, 0
  %i.fp = extractvalue { i32, i32 } %i.fn, 1
  %i.fq = invoke { i32, i32 } @_RNvMs0_Cs9HU4uknhSfY_10line_indexNtB5_9LineIndex8line_col(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aq, i32 noundef %.sroa.513.0)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dh:                                            ; preds = %.noexc47
  %i.fr = extractvalue { i32, i32 } %i.fn, 1
  %i.fs = extractvalue { i32, i32 } %i.fn, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4715
  invoke void @_RNvMs0_Cs9HU4uknhSfY_10line_indexNtB5_9LineIndex7to_wide(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aq, i1 noundef zeroext %i.bg, i32 noundef %i.fs, i32 noundef %i.fr)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc49:                                         ; preds = %bb.dh
  %i.ft = load i32, ptr %i.b, align 4, !range !14, !noalias !4715, !noundef !4
  %i.fu = trunc nuw i32 %i.ft to i1
  br i1 %i.fu, label %bb.di, label %.invoke, !prof !20

.invoke:                                          ; preds = %.noexc52, %.noexc49
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #48
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.di:                                            ; preds = %.noexc49
  %i.fv = load i32, ptr %i.bh, align 4, !noalias !4715, !noundef !4
  %i.fw = load i32, ptr %i.bi, align 4, !noalias !4715, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4715
  %i.fx = invoke { i32, i32 } @_RNvMs0_Cs9HU4uknhSfY_10line_indexNtB5_9LineIndex8line_col(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aq, i32 noundef %.sroa.513.0)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.di
  %i.fy = extractvalue { i32, i32 } %i.fx, 1
  %i.fz = extractvalue { i32, i32 } %i.fx, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4716
  invoke void @_RNvMs0_Cs9HU4uknhSfY_10line_indexNtB5_9LineIndex7to_wide(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aq, i1 noundef zeroext %i.bg, i32 noundef %i.fz, i32 noundef %i.fy)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc52:                                         ; preds = %.noexc51
  %i.ga = load i32, ptr %i.a, align 4, !range !14, !noalias !4716, !noundef !4
  %i.gb = trunc nuw i32 %i.ga to i1
  br i1 %i.gb, label %bb.dj, label %.invoke, !prof !20

bb.dj:                                            ; preds = %.noexc52
  %i.gc = load i32, ptr %i.bj, align 4, !noalias !4716, !noundef !4
  %i.gd = load i32, ptr %i.bk, align 4, !noalias !4716, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4716
  %i.ge = insertvalue { i32, i32 } poison, i32 %i.gc, 0
  %i.gf = insertvalue { i32, i32 } %i.ge, i32 %i.gd, 1
  br label %bb.dm

bb.dk:                                            ; preds = %bb.df
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #45
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %bb.dk, %bb.d
  unreachable

bb.dm:                                            ; preds = %bb.dj, %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto8position.exit.thread.i
  %i.gg = phi i32 [ %i.fw, %bb.dj ], [ %i.fp, %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto8position.exit.thread.i ]
  %i.gh = phi i32 [ %i.fv, %bb.dj ], [ %i.fo, %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto8position.exit.thread.i ]
  %.merged.i2.i = phi { i32, i32 } [ %i.gf, %bb.dj ], [ %i.fq, %_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto8position.exit.thread.i ] ; 2 uses
  %i.gi = extractvalue { i32, i32 } %.merged.i2.i, 0
  %i.gj = extractvalue { i32, i32 } %.merged.i2.i, 1
  store i32 %i.gh, ptr %i.l, align 4, !alias.scope !4714, !noalias !4717
  store i32 %i.gg, ptr %i.bl, align 4, !alias.scope !4714, !noalias !4717
  store i32 %i.gi, ptr %i.bm, align 4, !alias.scope !4714, !noalias !4717
  store i32 %i.gj, ptr %i.bn, align 4, !alias.scope !4714, !noalias !4717
  invoke void @_RNvMs2_NtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokensNtB5_21SemanticTokensBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.l, i32 noundef %.sroa.05.0.i, i32 noundef %.sroa.026.0)
          to label %bb.dn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.cn

bb.do:                                            ; preds = %bb.dr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %.loopexit.split-lp
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.dq, %bb.do, %.body.i, %bb.l
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.dr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %.pn356 = phi { ptr, i32 } [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEECs6u1mgJOKDyY_13rust_analyzer.exit.i ], [ %i.gl, %bb.dr ]
  resume { ptr, i32 } %.pn356

bb.dp:                                            ; preds = %bb.d, %bb.b, %bb.a
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.dr unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body unwind label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.do

bb.ds:                                            ; preds = %bb.dq
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_items(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4640) %1, ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(7) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, i32 noundef range(i32 0, 2) %4, i32 %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %6, i32 noundef range(i32 -1, 1114112) %7, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = alloca [96 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.517.sroa.0.sroa.0.sroa.0.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.510.sroa.0.i.i = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.510.sroa.6.i.i = alloca [7 x i8], align 1 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i = alloca [64 x i8], align 8        ; 4 uses
  %i.s = alloca [96 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [56 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [40 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [40 x i8], align 8               ; 9 uses
  %i.ak = alloca [40 x i8], align 8               ; 9 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.5143.i = alloca [64 x i8], align 8       ; 5 uses
  %i.an = alloca [88 x i8], align 8               ; 13 uses
  %i.ao = alloca [88 x i8], align 8               ; 13 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.9.i = alloca [16 x i8], align 8          ; 11 uses
  %.sroa.042.i = alloca [24 x i8], align 8        ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 9 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [528 x i8], align 8              ; 5 uses
  %i.ay = alloca [528 x i8], align 8              ; 5 uses
  %i.az = alloca [32 x i8], align 8               ; 4 uses
  %i.ba = alloca [40 x i8], align 8               ; 5 uses
  %i.bb = alloca [528 x i8], align 8              ; 25 uses
  %i.bc = alloca [72 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 5 uses
  %i.be = alloca [528 x i8], align 8              ; 26 uses
  %i.bf = alloca [16 x i8], align 1               ; 4 uses
  %i.bg = alloca [32 x i8], align 8               ; 5 uses
  %i.bh = alloca [72 x i8], align 8               ; 5 uses
  %.sroa.641.i = alloca [64 x i8], align 8        ; 7 uses
  %i.bi = alloca [72 x i8], align 8               ; 6 uses
  %i.bj = alloca [20 x i8], align 1               ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 5 uses
  %i.bm = alloca [96 x i8], align 8               ; 7 uses
  %i.bn = alloca [160 x i8], align 8              ; 10 uses
  %i.bo = alloca [72 x i8], align 8               ; 6 uses
  %i.bp = alloca [20 x i8], align 1               ; 4 uses
  %i.bq = alloca [24 x i8], align 8               ; 4 uses
  %i.br = alloca [24 x i8], align 8               ; 7 uses
  %i.bs = alloca [96 x i8], align 8               ; 7 uses
  %i.bt = alloca [160 x i8], align 8              ; 10 uses
  %i.bu = alloca [72 x i8], align 8               ; 8 uses
  %i.bv = alloca [72 x i8], align 8               ; 7 uses
  %i.bw = alloca [72 x i8], align 8               ; 9 uses
  %i.bx = alloca [40 x i8], align 8               ; 4 uses
  %i.by = alloca [56 x i8], align 8               ; 4 uses
  %i.bz = alloca [56 x i8], align 8               ; 4 uses
  %i.ca = alloca [144 x i8], align 8              ; 7 uses
  %i.cb = alloca [24 x i8], align 8               ; 11 uses
  %i.cc = alloca [16 x i8], align 1               ; 4 uses
  %i.cd = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.0119.i = alloca [24 x i8], align 8       ; 6 uses
  %i.ce = alloca [528 x i8], align 8              ; 29 uses
  %i.cf = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %i.cg = alloca [56 x i8], align 8               ; 4 uses
  %i.ch = alloca [24 x i8], align 8               ; 4 uses
  %i.ci = alloca [24 x i8], align 8               ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 5 uses
  %i.ck = alloca [528 x i8], align 8              ; 38 uses
  %i.cl = alloca [32 x i8], align 8               ; 8 uses
  %i.cm = alloca [24 x i8], align 8               ; 8 uses
  %i.cn = alloca [96 x i8], align 8               ; 4 uses
  %i.co = alloca [96 x i8], align 8               ; 8 uses
  %i.cp = alloca [24 x i8], align 8               ; 9 uses
  %i.cq = alloca [32 x i8], align 8               ; 5 uses
  %i.cr = alloca [40 x i8], align 8               ; 5 uses
  %i.cs = alloca [32 x i8], align 8               ; 4 uses
  %i.ct = alloca [32 x i8], align 8               ; 4 uses
  %i.cu = alloca [40 x i8], align 8               ; 5 uses
  %i.cv = alloca [24 x i8], align 8               ; 4 uses
  %i.cw = alloca [32 x i8], align 8               ; 7 uses
  %i.cx = alloca [32 x i8], align 8               ; 9 uses
  %i.cy = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.7.i = alloca [16 x i8], align 8          ; 7 uses
  %.sroa.518.i = alloca [16 x i8], align 8        ; 5 uses
  %i.cz = alloca [56 x i8], align 8               ; 14 uses
  %i.da = alloca [56 x i8], align 8               ; 8 uses
  %i.db = alloca [24 x i8], align 8               ; 11 uses
  %i.dc = alloca [24 x i8], align 8               ; 13 uses
  %i.dd = alloca [72 x i8], align 8               ; 12 uses
  %i.de = alloca [24 x i8], align 8               ; 6 uses
  %i.df = alloca [144 x i8], align 8              ; 7 uses
  %i.dg = alloca [256 x i8], align 8              ; 31 uses
  %.sroa.7 = alloca [248 x i8], align 8           ; 6 uses
  %i.dh = alloca [32 x i8], align 8               ; 8 uses
  %i.di = alloca [24 x i8], align 8               ; 12 uses
  %i.dj = invoke noundef zeroext i1 @_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config26completion_hide_deprecated(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4640) %1)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemEECs6u1mgJOKDyY_13rust_analyzer.exit
  br i1 %.sroa.05.1, label %bb.nk, label %bb.nj

.thread:                                          ; preds = %bb.a, %bb.f, %bb.g, %bb.i, %bb.e, %.noexc
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.nk

bb.c:                                             ; preds = %bb.a
  br i1 %i.dj, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.do, 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx
  %.not47 = icmp eq i64 %i.do, 0
  br i1 %.not47, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 152
  %i.dr = invoke noundef i32 @_RNvMs_NtCsf8NQSppxkmK_14ide_completion4itemNtB4_19CompletionRelevance5score(ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %i.dq)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.e
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 256
  %i.dt = invoke noundef i32 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss_0ENtNtNtBa_6traits8iterator8Iterator4foldmNCINvNvB3r_6max_by4foldmNvYmNtNtBc_3cmp3Ord3cmpE0EB2p_(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dp, i32 noundef %i.dr)
          to label %.noexc._crit_edge unwind label %.thread

.noexc._crit_edge:                                ; preds = %.noexc
  %.pre = load i64, ptr %i.dn, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  invoke void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemE6retainNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_items0EB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.d unwind label %.thread

bb.g:                                             ; preds = %.noexc._crit_edge, %bb.d
  %.sroa.0.0 = phi i32 [ 0, %bb.d ], [ %i.dt, %.noexc._crit_edge ] ; 2 uses
  %i.du = phi i64 [ 0, %bb.d ], [ %.pre, %.noexc._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  %i.dv = icmp ult i64 %i.du, 36028797018963968
  tail call void @llvm.assume(i1 %i.dv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.de, i64 noundef %i.du, i1 noundef zeroext false, i64 noundef 8, i64 noundef 528)
          to label %bb.h unwind label %.thread

bb.h:                                             ; preds = %bb.g
  %i.dw = load i64, ptr %i.de, align 8, !range !5, !noundef !4
  %i.dx = trunc nuw i64 %i.dw to i1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !range !7, !noundef !4 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  br i1 %i.dx, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.eb = load i64, ptr %i.ea, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.dz, i64 %i.eb) #45
          to label %bb.ni unwind label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ec = load ptr, ptr %i.ea, align 8, !nonnull !4, !noundef !4
  %i.ed = icmp samesign ule i64 %i.du, %i.dz
  tail call void @llvm.assume(i1 %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  store i64 %i.dz, ptr %i.di, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  store ptr %i.ec, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 6 uses
  store i64 0, ptr %i.ef, align 8
  %i.eg = invoke i48 @_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config15client_commands(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4640) %1)
          to label %bb.l unwind label %bb.k

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %.body, %bb.nd, %bb.k
  %.pn = phi { ptr, i32 } [ %i.yt, %bb.nd ], [ %i.eh, %bb.k ], [ %eh.lpad-body, %.body ] ; 2 uses
  %.sroa.05.1 = phi i1 [ false, %bb.nd ], [ %.sroa.05.2, %bb.k ], [ false, %.body ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14CompletionItemEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.di) #43
          to label %bb.b unwind label %bb.ng

bb.k:                                             ; preds = %.invoke, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemEECs6u1mgJOKDyY_13rust_analyzer.exit17, %bb.j
  %.sroa.05.2 = phi i1 [ false, %.invoke ], [ true, %bb.j ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemEECs6u1mgJOKDyY_13rust_analyzer.exit17 ], [ false, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread ]
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.l:                                             ; preds = %bb.j
  %i.ei = load ptr, ptr %i.dl, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ej = load i64, ptr %8, align 8, !range !19, !noundef !4
  %i.ek = load i64, ptr %i.dn, align 8, !noundef !4 ; 3 uses
  %i.el = icmp ult i64 %i.ek, 36028797018963968
  tail call void @llvm.assume(i1 %i.el)
  %.idx1202 = shl nuw nsw i64 %i.ek, 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx1202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  store ptr %i.ei, ptr %i.dh, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 3 uses
  store ptr %i.ei, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %i.ej, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  store ptr %i.em, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.en = icmp eq i64 %i.ek, 0
  br i1 %i.en, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.lr.ph

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.lr.ph: ; preds = %bb.l
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 3440 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 92
  %i.er = load <2 x i32>, ptr %i.ep, align 8      ; 2 uses
  %i.es = load i32, ptr %i.eq, align 4            ; 2 uses
  %i.et = load i32, ptr %i.ep, align 8            ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ex = load i8, ptr %i.ew, align 1, !range !18
  %i.ey = trunc nuw i8 %i.ex to i1                ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dg, i64 176
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dg, i64 184 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dg, i64 192 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dg, i64 177
  %i.fd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.fg = load i8, ptr %i.ff, align 1, !range !18
  %i.fh = trunc nuw i8 %i.fg to i1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dg, i64 200
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dg, i64 204
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.sroa.490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.591.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cx, i64 28
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cw, i64 28
  %.sroa.96.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.13.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %.sroa.17.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.7.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.sroa.96.8..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.13.8..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %.sroa.17.8..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.7.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.518.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 6 uses
  %.sroa.6.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %.sroa.10.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 2 uses
  %.sroa.325.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dg, i64 248
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !range !18
  %i.fu = trunc nuw i8 %i.ft to i1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dg, i64 249 ; 2 uses
  %.sroa.493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.594.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dg, i64 250
  %i.fx = and i48 %i.eg, 4294967296
  %i.fy = icmp ne i48 %i.fx, 0
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ga = load i8, ptr %i.fz, align 1, !range !18
  %i.gb = trunc nuw i8 %i.ga to i1
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.gd = load i8, ptr %i.gc, align 1, !range !18
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dg, i64 104 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.gh = load i8, ptr %i.gg, align 1, !range !18
  %i.gi = trunc nuw i8 %i.gh to i1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dg, i64 128 ; 2 uses
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  %.sroa.4.0..sroa_idx.i227.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.dg, i64 251
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ck, i64 360 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ck, i64 216 ; 5 uses
  %.sroa.4139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.5140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ce, i64 312 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ce, i64 524
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ce, i64 48 ; 6 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ce, i64 360 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ce, i64 520
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ce, i64 72 ; 2 uses
  %.sroa.9.0..sroa_idx109.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ce, i64 96 ; 6 uses
  %.sroa.9.0..sroa_idx110.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 104
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ce, i64 120 ; 2 uses
  %.sroa.9.0..sroa_idx111.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 128
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ce, i64 392 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ce, i64 144 ; 2 uses
  %.sroa.9.0..sroa_idx112.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 152
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ce, i64 168 ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ce, i64 192 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ce, i64 216 ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ce, i64 448 ; 2 uses
  %.sroa.641.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 456
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ck, i64 312 ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ck, i64 524 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ck, i64 520 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ck, i64 521 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ck, i64 72 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ck, i64 96 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ck, i64 120 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ck, i64 522 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ck, i64 523 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ck, i64 392 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ck, i64 144 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ck, i64 168 ; 4 uses
  %.sroa.5.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 176
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ck, i64 192 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ck, i64 448 ; 9 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.hx = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.ia = load i8, ptr %2, align 1, !range !18
  %i.ib = trunc nuw i8 %i.ia to i1                ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 56 ; 3 uses
  %.sroa.9.0..sroa_idx113.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.9.0..sroa_idx115.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.5120.0..sroa_idx121.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 336 ; 4 uses
  %.sroa.6123.0..sroa_idx124.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 344 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dg, i64 152
  %i.id = getelementptr inbounds nuw i8, ptr %i.ca, i64 113
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dg, i64 240
  %i.if = getelementptr inbounds nuw i8, ptr %i.dg, i64 216
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dg, i64 208 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.il = load <4 x i32>, ptr %i.ik, align 4      ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.io = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ip = load i16, ptr %i.io, align 8, !range !55 ; 3 uses
  %i.iq = trunc nuw i16 %i.ip to i1
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 42
  %i.is = load i16, ptr %i.ir, align 2
  %.sroa.5.0.i.i = select i1 %i.iq, i16 %i.is, i16 undef ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.iu = load i32, ptr %i.it, align 4            ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.iw = load i32, ptr %i.iv, align 8, !range !14 ; 3 uses
  %i.ix = trunc nuw i32 %i.iw to i1
  %i.iy = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.iz = load i32, ptr %i.iy, align 4
  %.sroa.52.0.i.i = select i1 %i.ix, i32 %i.iz, i32 undef ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.jb = load i32, ptr %i.ja, align 8, !range !14 ; 3 uses
  %i.jc = trunc nuw i32 %i.jb to i1
  %i.jd = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.je = load i32, ptr %i.jd, align 4
  %.sroa.54.0.i.i = select i1 %i.jc, i32 %i.je, i32 undef ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ao, i64 42
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ao, i64 60
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %i.jn = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.jo = getelementptr inbounds nuw i8, ptr %i.bs, i64 92
  %i.jp = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  %i.js = getelementptr inbounds nuw i8, ptr %i.bt, i64 144
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bt, i64 148
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bt, i64 152
  %i.jv = getelementptr inbounds nuw i8, ptr %i.bt, i64 156
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bt, i64 120
  %.sroa.641.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %i.jz = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ka = getelementptr inbounds nuw i8, ptr %i.an, i64 42
  %i.kb = getelementptr inbounds nuw i8, ptr %i.an, i64 60
  %i.kc = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ke = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.kf = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  %i.kh = getelementptr inbounds nuw i8, ptr %i.bm, i64 92
  %i.ki = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bn, i64 148
  %i.kl = getelementptr inbounds nuw i8, ptr %i.bn, i64 152
  %i.km = getelementptr inbounds nuw i8, ptr %i.bn, i64 156
  %i.kn = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %.sroa.5143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.641.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.577.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.476.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ck, i64 384
  %.sroa.4.0..sroa_idx.i269.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ck, i64 368
  %.sroa.510.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.510.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 17
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 25
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ck, i64 416
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 424 ; 2 uses
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 440
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ck, i64 400
  %.sroa.028.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.517.sroa.0.sroa.0.sroa.5.0..sroa.517.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.517.sroa.0.sroa.5.0..sroa.517.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ck, i64 456 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bb, i64 312 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bb, i64 524
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.bb, i64 360 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.bb, i64 520
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bb, i64 521
  %i.ld = getelementptr inbounds nuw i8, ptr %i.bb, i64 72 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.bb, i64 96 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bb, i64 120 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.bb, i64 522
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bb, i64 523
  %i.li = getelementptr inbounds nuw i8, ptr %i.bb, i64 392 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.bb, i64 144 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.bb, i64 168 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bb, i64 192 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bb, i64 216 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bb, i64 448 ; 5 uses
  %.sroa.5.0..sroa_idx.i270.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 456
  %i.lo = getelementptr inbounds nuw i8, ptr %i.be, i64 312
  %i.lp = getelementptr inbounds nuw i8, ptr %i.be, i64 524
  %i.lq = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.lr = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.ls = getelementptr inbounds nuw i8, ptr %i.be, i64 360
  %i.lt = getelementptr inbounds nuw i8, ptr %i.be, i64 520
  %i.lu = getelementptr inbounds nuw i8, ptr %i.be, i64 521
  %i.lv = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.lw = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.lx = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  %i.ly = getelementptr inbounds nuw i8, ptr %i.be, i64 522
  %i.lz = getelementptr inbounds nuw i8, ptr %i.be, i64 523
  %i.ma = getelementptr inbounds nuw i8, ptr %i.be, i64 392
  %i.mb = getelementptr inbounds nuw i8, ptr %i.be, i64 144
  %i.mc = getelementptr inbounds nuw i8, ptr %i.be, i64 168 ; 5 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.be, i64 192
  %i.me = getelementptr inbounds nuw i8, ptr %i.be, i64 216
  %i.mf = getelementptr inbounds nuw i8, ptr %i.be, i64 448
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 176 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 184 ; 3 uses
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext16CompletionImportEEB1e_.exit.i
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.mg, %bb.m ], [ %.pn186.pn.pn.pn.pn.pn.pn.pn.pn.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelECs6u1mgJOKDyY_13rust_analyzer.exit ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dh)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.ng

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.lr.ph, %bb.nh
  %i.mh = phi ptr [ %i.ei, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.lr.ph ], [ %i.yw, %bb.nh ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4840)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 256
  store ptr %i.mi, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !4840, !noalias !4841
  %.sroa.038.0.copyload39 = load i64, ptr %i.mh, align 8, !noalias !4840 ; 2 uses
  %.sroa.7.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.7.0..sroa_idx40, i64 248, i1 false), !noalias !4840
  %.not = icmp eq i64 %.sroa.038.0.copyload39, -1
  br i1 %.not, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  store i64 %.sroa.038.0.copyload39, ptr %i.dg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.7, i64 248, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4842)
  call void @llvm.experimental.noalias.scope.decl(metadata !4843)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.641.i)
  %i.mj = invoke noundef zeroext i1 @_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities22insert_replace_support(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.eo)
          to label %bb.p unwind label %bb.o, !noalias !4844 ; 2 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i20, %.thread250.thread.i, %bb.o
  %.pn186.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn186.pn.pn.pn.pn.pn.pn.pn52.i, %.thread250.thread.i ], [ %i.mk, %bb.o ], [ %.pn186.pn.pn.pn.pn.pn.pn.pn52.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i20 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.dg) #43
          to label %.body unwind label %bb.bm, !noalias !4845

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelECs6u1mgJOKDyY_13rust_analyzer.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !4846
  invoke void @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_14CompletionItem9ref_match(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.dd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.dg)
          to label %bb.q unwind label %bb.o, !noalias !4845

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !4846
  store i64 0, ptr %i.dc, align 8, !noalias !4846
  store ptr inttoptr (i64 8 to ptr), ptr %i.eu, align 8, !noalias !4846
  store i64 0, ptr %i.ev, align 8, !noalias !4846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !4846
  %i.ml = load i8, ptr %i.ez, align 8, !range !36, !alias.scope !4843, !noalias !4847, !noundef !4 ; 2 uses
  %i.mm = icmp samesign ugt i8 %i.ml, 23
  %i.mn = zext nneg i8 %i.ml to i64               ; 3 uses
  %i.mo = add nsw i64 %i.mn, -23
  %i.mp = select i1 %i.mm, i64 %i.mo, i64 0       ; 2 uses
  br i1 %i.ey, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i64 %i.mp, label %bb.t [
    i64 0, label %bb.w
    i64 1, label %bb.u
    i64 2, label %bb.v
  ]

bb.s:                                             ; preds = %bb.q
  switch i64 %i.mp, label %bb.t [
    i64 0, label %bb.ag
    i64 1, label %bb.ae
    i64 2, label %bb.af
  ]

bb.t:                                             ; preds = %bb.s, %bb.r
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.mq = load ptr, ptr %i.fa, align 8, !alias.scope !4843, !noalias !4847, !nonnull !4, !noundef !4
  %i.mr = load i64, ptr %i.fb, align 8, !alias.scope !4843, !noalias !4847, !noundef !4
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.ms = load ptr, ptr %i.fa, align 8, !alias.scope !4843, !noalias !4847, !nonnull !4, !noundef !4
  %i.mt = load i64, ptr %i.fb, align 8, !alias.scope !4843, !noalias !4847, !noundef !4
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.v, %bb.u
  %.sroa.420.0.i = phi i64 [ %i.mt, %bb.v ], [ %i.mr, %bb.u ], [ %i.mn, %bb.r ] ; 5 uses
  %.sroa.019.0.i = phi ptr [ %i.mu, %bb.v ], [ %i.mq, %bb.u ], [ %i.fc, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !4846
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, i64 noundef %.sroa.420.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.x unwind label %.thread.i.loopexit, !noalias !4845

.thread.i.loopexit:                               ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread250.thread287.i

.thread.i.loopexit.split-lp:                      ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread250.thread287.i

bb.x:                                             ; preds = %bb.w
  %i.mv = load i64, ptr %i.aw, align 8, !range !5, !noalias !4846, !noundef !4
  %i.mw = trunc nuw i64 %i.mv to i1
  %i.mx = load i64, ptr %i.fd, align 8, !range !7, !noalias !4846, !noundef !4 ; 3 uses
  br i1 %i.mw, label %bb.y, label %bb.z, !prof !8

bb.y:                                             ; preds = %bb.x
  %i.my = load i64, ptr %i.fe, align 8, !noalias !4846
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.mx, i64 %i.my) #45
          to label %bb.ad unwind label %.thread.i.loopexit.split-lp, !noalias !4845

bb.z:                                             ; preds = %bb.x
  %i.mz = load ptr, ptr %i.fe, align 8, !noalias !4846, !nonnull !4, !noundef !4 ; 2 uses
  %i.na = icmp ule i64 %.sroa.420.0.i, %i.mx
  call void @llvm.assume(i1 %i.na)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !4846
  %.not.i = icmp eq i64 %.sroa.420.0.i, 0
  br i1 %.not.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.z
  store i64 %i.mx, ptr %i.db, align 8, !noalias !4846
  store ptr %i.mz, ptr %.sroa.484.0..sroa_idx.i, align 8, !noalias !4846
  store i64 %.sroa.420.0.i, ptr %.sroa.585.0..sroa_idx.i, align 8, !noalias !4846
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mz, ptr nonnull align 1 %.sroa.019.0.i, i64 %.sroa.420.0.i, i1 false), !noalias !4845
  br label %bb.aa

bb.ac:                                            ; preds = %bb.ag, %bb.aa
  %.sroa.010.0.i = phi i8 [ %i.ne, %bb.ag ], [ 0, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !4846
  br i1 %i.fh, label %bb.ah, label %.split.i

bb.ad:                                            ; preds = %._crit_edge.thread.i, %bb.y
  unreachable

bb.ae:                                            ; preds = %bb.s
  %i.nb = load i64, ptr %i.fb, align 8, !alias.scope !4843, !noalias !4847, !noundef !4
  br label %bb.ag

bb.af:                                            ; preds = %bb.s
  %i.nc = load i64, ptr %i.fb, align 8, !alias.scope !4843, !noalias !4847, !noundef !4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.s
  %.sroa.4.0.i = phi i64 [ %i.nc, %bb.af ], [ %i.nb, %bb.ae ], [ %i.mn, %bb.s ]
  %i.nd = icmp ne i64 %.sroa.4.0.i, 0
  %i.ne = zext i1 %i.nd to i8
  store i64 -1, ptr %i.db, align 8, !noalias !4846
  br label %bb.ac

end_hunk_0
begin_hunk_1_@_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_items:bb.a
bb.hy:                                            ; preds = %bb.ht
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4902
  br label %bb.hv

bb.hz:                                            ; preds = %bb.hv
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510.sroa.6.i.i)
  %.not43.i.i = icmp eq i64 %i.up, -1
  br i1 %.not43.i.i, label %bb.id, label %bb.ic

bb.ia:                                            ; preds = %bb.hv
  store i64 -2, ptr %i.aa, align 8, !noalias !4902
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ih, %bb.ia
  %i.ur = load i8, ptr %i.hk, align 8, !range !9, !alias.scope !4901, !noalias !4903, !noundef !4 ; 2 uses
  %i.us = load i8, ptr %i.hl, align 1, !range !9, !alias.scope !4901, !noalias !4903, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4902
  %i.ut = load i64, ptr %i.hm, align 8, !range !6, !alias.scope !4901, !noalias !4903, !noundef !4
  %.not46.i.i = icmp eq i64 %i.ut, -1
  br i1 %.not46.i.i, label %bb.ik, label %bb.ij

bb.ic:                                            ; preds = %bb.hz
  %i.uu = load i8, ptr %i.kq, align 8, !range !18, !alias.scope !4901, !noalias !4903, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4902
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gp)
          to label %bb.ii unwind label %bb.if, !noalias !4906

bb.id:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4902
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kr)
          to label %bb.ig unwind label %bb.if, !noalias !4906

bb.ie:                                            ; preds = %bb.im, %bb.if
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.im ], [ %i.uv, %bb.if ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #43
          to label %bb.hw unwind label %bb.kr, !noalias !4906

bb.if:                                            ; preds = %bb.id, %bb.ic
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

bb.ig:                                            ; preds = %bb.id
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !noalias !4902
  %.sroa.510.sroa.5.0.copyload14.i.i = load i8, ptr %.sroa.510.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.510.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.510.sroa.6.0..sroa_idx.i.i, i64 7, i1 false), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4902
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ii, %bb.ig
  %.sroa.510.sroa.5.0.i.i = phi i8 [ %i.uu, %bb.ii ], [ %.sroa.510.sroa.5.0.copyload14.i.i, %bb.ig ]
  %.sroa.08.0.i.i = phi i64 [ %.sroa.012.0.copyload.i.i, %bb.ii ], [ -1, %bb.ig ]
  store i64 %.sroa.08.0.i.i, ptr %i.aa, align 8, !noalias !4902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.sroa.0.i.i, i64 16, i1 false), !noalias !4902
  store i8 %.sroa.510.sroa.5.0.i.i, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !4902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.510.sroa.6.i.i, i64 7, i1 false), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510.sroa.6.i.i)
  br label %bb.ib

bb.ii:                                            ; preds = %bb.ic
  %.sroa.012.0.copyload.i.i = load i64, ptr %i.o, align 8, !noalias !4902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i269.i, i64 16, i1 false), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4902
  br label %bb.ih

bb.ij:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4902
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hm)
          to label %bb.io unwind label %bb.in, !noalias !4906

bb.ik:                                            ; preds = %bb.ib
  store i64 -1, ptr %i.z, align 8, !noalias !4902
  br label %bb.il

bb.il:                                            ; preds = %bb.io, %bb.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4902
  %i.uw = load i64, ptr %i.hn, align 8, !range !6, !alias.scope !4901, !noalias !4903, !noundef !4
  %.not47.i.i = icmp eq i64 %i.uw, -1
  br i1 %.not47.i.i, label %bb.iq, label %bb.ip

bb.im:                                            ; preds = %bb.is, %bb.in
  %.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.is ], [ %i.ux, %bb.in ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors13DocumentationEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa) #43
          to label %bb.ie unwind label %bb.kr, !noalias !4906

bb.in:                                            ; preds = %bb.ij
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %bb.im

bb.io:                                            ; preds = %bb.ij
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4902
  br label %bb.il

bb.ip:                                            ; preds = %bb.il
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4902
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.iu unwind label %bb.it, !noalias !4906

bb.iq:                                            ; preds = %bb.il
  store i64 -1, ptr %i.y, align 8, !noalias !4902
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iu, %bb.iq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4902
  %i.uy = load i64, ptr %i.ho, align 8, !range !6, !alias.scope !4901, !noalias !4903, !noundef !4
  %.not48.i.i = icmp eq i64 %i.uy, -1
  br i1 %.not48.i.i, label %bb.iw, label %bb.iv

bb.is:                                            ; preds = %bb.iy, %bb.it
  %.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i.i, %bb.iy ], [ %i.uz, %bb.it ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #43
          to label %bb.im unwind label %bb.kr, !noalias !4906

bb.it:                                            ; preds = %bb.ip
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

bb.iu:                                            ; preds = %bb.ip
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4902
  br label %bb.ir

bb.iv:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4902
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ho)
          to label %bb.ja unwind label %bb.iz, !noalias !4906

bb.iw:                                            ; preds = %bb.ir
  store i64 -1, ptr %i.x, align 8, !noalias !4902
  br label %bb.ix

bb.ix:                                            ; preds = %bb.ja, %bb.iw
  %i.va = load i8, ptr %i.hp, align 2, !range !9, !alias.scope !4901, !noalias !4903, !noundef !4 ; 2 uses
  %i.vb = load i8, ptr %i.hq, align 1, !range !9, !alias.scope !4901, !noalias !4903, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4902
  %i.vc = load i64, ptr %i.hr, align 8, !range !21, !alias.scope !4901, !noalias !4903, !noundef !4 ; 2 uses
  %.not51.i.i = icmp eq i64 %i.vc, -2
  br i1 %.not51.i.i, label %bb.jc, label %bb.jb

bb.iy:                                            ; preds = %bb.jg, %bb.iz
  %.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.i, %bb.jg ], [ %i.vd, %bb.iz ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #43
          to label %bb.is unwind label %bb.kr, !noalias !4906

bb.iz:                                            ; preds = %bb.iv
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.ja:                                            ; preds = %bb.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4902
  br label %bb.ix

bb.jb:                                            ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.sroa.0.sroa.0.sroa.0.i.i)
  %.not52.i.i = icmp eq i64 %i.vc, -1
  br i1 %.not52.i.i, label %bb.jf, label %bb.je

bb.jc:                                            ; preds = %bb.ix
  store i64 -2, ptr %i.w, align 8, !noalias !4902
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jj, %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4902
  %i.ve = load i64, ptr %i.hs, align 8, !range !6, !alias.scope !4901, !noalias !4903, !noundef !4
  %.not53.i.i = icmp eq i64 %i.ve, -1
  br i1 %.not53.i.i, label %bb.jm, label %bb.jl

bb.je:                                            ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4902
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hr)
          to label %bb.jk unwind label %bb.jh, !noalias !4906

bb.jf:                                            ; preds = %bb.jb
  %i.vf = load <2 x i64>, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !alias.scope !4901, !noalias !4903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4902
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kt)
          to label %bb.ji unwind label %bb.jh, !noalias !4906

bb.jg:                                            ; preds = %bb.jo, %bb.jh
  %.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i.i, %bb.jo ], [ %i.vg, %bb.jh ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #43
          to label %bb.iy unwind label %bb.kr, !noalias !4906

bb.jh:                                            ; preds = %bb.jf, %bb.je
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.ji:                                            ; preds = %bb.jf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.sroa.0.sroa.0.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !noalias !4902
  %.sroa.028.sroa.0.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.028.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4902
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jk, %bb.ji
  %.sroa.517.sroa.0.sroa.0.sroa.5.0.i.i = phi i64 [ %.sroa.034.0.copyload.i.i, %bb.jk ], [ %.sroa.028.sroa.0.sroa.4.0.copyload.i.i, %bb.ji ]
  %.sroa.619.0.i.i = phi i64 [ %.sroa.426.0.copyload.i.i, %bb.jk ], [ undef, %bb.ji ]
  %.sroa.015.0.i.i = phi i64 [ %.sroa.022.0.copyload.i.i, %bb.jk ], [ -1, %bb.ji ]
  %9 = phi <2 x i64> [ %10, %bb.jk ], [ %i.vf, %bb.ji ]
  store i64 %.sroa.015.0.i.i, ptr %i.w, align 8, !noalias !4902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.sroa.0.sroa.0.sroa.0.i.i, i64 16, i1 false), !noalias !4902
  store i64 %.sroa.517.sroa.0.sroa.0.sroa.5.0.i.i, ptr %.sroa.517.sroa.0.sroa.0.sroa.5.0..sroa.517.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !4902
  store <2 x i64> %9, ptr %.sroa.517.sroa.0.sroa.5.0..sroa.517.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !4902
  store i64 %.sroa.619.0.i.i, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.sroa.0.sroa.0.sroa.0.i.i)
  br label %bb.jd

bb.jk:                                            ; preds = %bb.je
  %.sroa.034.0.copyload.i.i = load i64, ptr %i.ks, align 8, !alias.scope !4901, !noalias !4903
  %10 = load <2 x i64>, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !alias.scope !4901, !noalias !4903
  %.sroa.426.0.copyload.i.i = load i64, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !alias.scope !4901, !noalias !4903
  %.sroa.022.0.copyload.i.i = load i64, ptr %i.k, align 8, !noalias !4902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.sroa.0.sroa.0.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.423.0..sroa_idx.i.i, i64 16, i1 false), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4902
  br label %bb.jj

bb.jl:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4902
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hs)
          to label %bb.jq unwind label %bb.jp, !noalias !4906

bb.jm:                                            ; preds = %bb.jd
  store i64 -1, ptr %i.v, align 8, !noalias !4902
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jq, %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4902
  %i.vh = load i64, ptr %i.ht, align 8, !range !6, !alias.scope !4901, !noalias !4903, !noundef !4
  %.not54.i.i = icmp eq i64 %i.vh, -1
  br i1 %.not54.i.i, label %bb.js, label %bb.jr

bb.jo:                                            ; preds = %bb.ju, %bb.jp
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %bb.ju ], [ %i.vi, %bb.jp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors22CompletionItemTextEditEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(56) %i.w) #43
          to label %bb.jg unwind label %bb.kr, !noalias !4906

bb.jp:                                            ; preds = %bb.jl
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %bb.jo

bb.jq:                                            ; preds = %bb.jl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4902
  br label %bb.jn

bb.jr:                                            ; preds = %bb.jn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4902
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ht)
          to label %bb.jw unwind label %bb.jv, !noalias !4906

bb.js:                                            ; preds = %bb.jn
  store i64 -1, ptr %i.u, align 8, !noalias !4902
  br label %bb.jt

bb.jt:                                            ; preds = %bb.jw, %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4902
  %i.vj = load i64, ptr %i.hu, align 8, !range !6, !alias.scope !4901, !noalias !4903, !noundef !4
  %.not55.i.i = icmp eq i64 %i.vj, -1
  br i1 %.not55.i.i, label %bb.jy, label %bb.jx

bb.ju:                                            ; preds = %bb.ka, %bb.jv
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.ka ], [ %i.vk, %bb.jv ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #43
          to label %bb.jo unwind label %bb.kr, !noalias !4906

bb.jv:                                            ; preds = %bb.jr
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.jw:                                            ; preds = %bb.jr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4902
  br label %bb.jt

bb.jx:                                            ; preds = %bb.jt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4902
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hu)
          to label %bb.kc unwind label %bb.kb, !noalias !4906

bb.jy:                                            ; preds = %bb.jt
  store i64 -1, ptr %i.t, align 8, !noalias !4902
  br label %bb.jz

bb.jz:                                            ; preds = %bb.kc, %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4902
  %i.vl = load i64, ptr %i.gr, align 8, !range !6, !alias.scope !4901, !noalias !4903, !noundef !4
  %.not56.i.i = icmp eq i64 %i.vl, -1
  br i1 %.not56.i.i, label %bb.ke, label %bb.kd

bb.ka:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures7CommandEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.kb
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures7CommandEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i ], [ %i.vm, %bb.kb ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #43
          to label %bb.ju unwind label %bb.kr, !noalias !4906

bb.kb:                                            ; preds = %bb.jx
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ka

bb.kc:                                            ; preds = %bb.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4902
  br label %bb.jz

bb.kd:                                            ; preds = %bb.jz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4902
  invoke fastcc void @_RNvXsk4_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_7CommandNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.gr)
          to label %bb.kh unwind label %bb.kg, !noalias !4906

bb.ke:                                            ; preds = %bb.jz
  store i64 -1, ptr %i.s, align 8, !noalias !4902
  br label %bb.kf

bb.kf:                                            ; preds = %bb.kh, %bb.ke
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.vn = load i64, ptr %i.hv, align 8, !range !31, !alias.scope !4901, !noalias !4903, !noundef !4 ; 3 uses
  %.not57.i.i = icmp eq i64 %i.vn, -1
  br i1 %.not57.i.i, label %bb.kw, label %bb.ki

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures7CommandEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.kq, %bb.kp, %bb.kg
  %.pn.i.i = phi { ptr, i32 } [ %i.vo, %bb.kg ], [ %i.vt, %bb.kq ], [ %i.vt, %bb.kp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB12_6string6StringEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #43
          to label %bb.ka unwind label %bb.kr, !noalias !4906

bb.kg:                                            ; preds = %bb.kd
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures7CommandEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i

bb.kh:                                            ; preds = %bb.kd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.s, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4902
  br label %bb.kf

bb.ki:                                            ; preds = %bb.kf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4902
  call void @llvm.experimental.noalias.scope.decl(metadata !4911)
  call void @llvm.experimental.noalias.scope.decl(metadata !4912)
  %i.vp = xor i64 %i.vn, -9223372036854775808
  %i.vq = icmp slt i64 %i.vn, 0
  %i.vr = select i1 %i.vq, i64 %i.vp, i64 5
  switch i64 %i.vr, label %bb.kj [
    i64 0, label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i
    i64 1, label %bb.kk
    i64 2, label %bb.kl
    i64 3, label %bb.km
    i64 4, label %bb.kn
    i64 5, label %bb.ko
  ]

bb.kj:                                            ; preds = %bb.ki
  unreachable

bb.kk:                                            ; preds = %bb.ki
  %i.vs = load i8, ptr %i.ku, align 8, !range !18, !alias.scope !4913, !noalias !4914, !noundef !4
  store i8 %i.vs, ptr %i.kv, align 8, !alias.scope !4911, !noalias !4915
  br label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i

bb.kl:                                            ; preds = %bb.ki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kv, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ku, i64 16, i1 false), !alias.scope !4916, !noalias !4903
  br label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i

bb.km:                                            ; preds = %bb.ki
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.kv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ku)
          to label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i unwind label %bb.kp, !noalias !4906

bb.kn:                                            ; preds = %bb.ki
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.kv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ku)
          to label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i unwind label %bb.kp, !noalias !4906

bb.ko:                                            ; preds = %bb.ki
  invoke void @_RNvXNtCs3gqD4ldeioo_8indexmap3mapINtB2_8IndexMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.hv)
          to label %._RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit_crit_edge.i.i unwind label %bb.kp, !noalias !4906

._RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit_crit_edge.i.i: ; preds = %bb.ko
  %.sroa.05.0.copyload6.pre.i.i = load i64, ptr %i.e, align 8, !noalias !4902
  br label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i

bb.kp:                                            ; preds = %bb.ko, %bb.kn, %bb.km
  %i.vt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vu = load i64, ptr %i.s, align 8, !range !6, !alias.scope !4917, !noalias !4902, !noundef !4
  %i.vv = icmp eq i64 %i.vu, -1
  br i1 %i.vv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures7CommandEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures7CommandECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures7CommandEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.kr, !noalias !4906

_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i: ; preds = %._RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit_crit_edge.i.i, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.ki
  %.sroa.05.0.copyload6.i.i = phi i64 [ %.sroa.05.0.copyload6.pre.i.i, %._RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit_crit_edge.i.i ], [ -9223372036854775805, %bb.km ], [ -9223372036854775808, %bb.ki ], [ -9223372036854775806, %bb.kl ], [ -9223372036854775807, %bb.kk ], [ -9223372036854775804, %bb.kn ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.kv, i64 64, i1 false), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4902
  br label %bb.kw

bb.kr:                                            ; preds = %bb.kq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures7CommandEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.ka, %bb.ju, %bb.jo, %bb.jg, %bb.iy, %bb.is, %bb.im, %bb.ie, %bb.hw, %bb.hq, %.body.i.i
  %i.vw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !4906
  unreachable

bb.ks:                                            ; preds = %bb.lm, %bb.gb
  %.sroa.046.0.i = phi i8 [ 0, %bb.lm ], [ 1, %bb.gb ] ; 4 uses
  %i.vx = load i64, ptr %i.hv, align 8, !range !31, !alias.scope !4918, !noalias !4846, !noundef !4
  %i.vy = icmp eq i64 %i.vx, -1
  br i1 %i.vy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer.exit275.i, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.hv)
end_hunk_1

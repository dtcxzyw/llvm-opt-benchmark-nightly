Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_parser-088c5140ebb1fa7a.ruff_python_parser.216343b595be0d0-cgu.0?download=true
inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource44re_lex_string_token_in_interpolation_element:bb.a
  %i.cl = shl nuw nsw i32 %i.bu, 12
  %i.cm = or disjoint i32 %i.ck, %i.cl
  %i.cn = icmp samesign ugt i8 %i.br, -17
  br i1 %i.cn, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i, label %bb.v

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i
  %i.co = icmp ne ptr %i.cf, %i.bn
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.041.080.i, i64 4
  %i.cq = load i8, ptr %i.cf, align 1, !noalias !4191, !noundef !17
  %i.cr = shl nuw nsw i32 %i.bu, 18
  %i.cs = and i32 %i.cr, 1835008
  %i.ct = shl nuw nsw i32 %i.ck, 6
  %i.cu = and i8 %i.cq, 63
  %i.cv = zext nneg i8 %i.cu to i32
  %i.cw = or disjoint i32 %i.ct, %i.cv
  %i.cx = or disjoint i32 %i.cw, %i.cs
  br label %bb.v

bb.v:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i, %bb.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i
  %.sroa.041.1.ph.i = phi ptr [ %i.bw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i ], [ %i.cf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i ], [ %i.cp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i ], [ %i.bq, %bb.u ] ; 2 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.cb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i ], [ %i.cm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i ], [ %i.cx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i ], [ %i.cd, %bb.u ] ; 2 uses
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  switch i32 %.sroa.4.0.i.ph.i, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer44re_lex_string_token_in_interpolation_element.exit [
    i32 10, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i
    i32 13, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i
    i32 35, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i
    i32 32, label %bb.ag
    i32 9, label %bb.ag
    i32 12, label %bb.ag
  ]

_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.ag, %bb.v, %bb.v, %bb.v, %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !4189, !noundef !17 ; 4 uses
  %.not29.i = icmp eq i64 %i.db, 0
  br i1 %.not29.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB11_.exit.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !4189, !nonnull !17, !noundef !17
  %i.de = getelementptr [32 x i8], ptr %i.dd, i64 %i.db ; 3 uses
  %i.df = getelementptr i8, ptr %i.de, i64 -32
  %i.dg = getelementptr i8, ptr %i.de, i64 -8
  %i.dh = load i32, ptr %i.dg, align 8, !noalias !4189, !noundef !17
  %i.di = icmp eq i32 %i.dh, %i.bf
  br i1 %i.di, label %bb.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB11_.exit.i

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr i8, ptr %i.de, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !noalias !4189, !noundef !17
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.dm = load i32, ptr %i.dl, align 4, !alias.scope !4189, !noundef !17
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB11_.exit.i

bb.y:                                             ; preds = %bb.x
  %i.do = load i8, ptr %i.df, align 8, !range !30, !noalias !4189, !noundef !17
  %i.dp = icmp eq i8 %i.do, 1
  br i1 %i.dp, label %bb.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB11_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB11_.exit.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.32.i = select i1 %i.ai, i32 1, i32 3
  %i.dq = add i32 %i.bf, %.32.i                   ; 4 uses
  %.not30.i = icmp ugt i32 %i.bf, %i.dq
  br i1 %.not30.i, label %bb.aa, label %bb.ab, !prof !16

bb.z:                                             ; preds = %bb.y
  %i.dr = add nsw i64 %i.db, -1                   ; 2 uses
  store i64 %i.dr, ptr %i.da, align 8, !alias.scope !4189
  %i.ds = load i64, ptr %i.cz, align 8, !range !28, !alias.scope !4189, !noundef !17
  %i.dt = icmp samesign ult i64 %i.dr, %i.ds
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = icmp ult i64 %i.db, 288230376151711745
  tail call void @llvm.assume(i1 %i.du)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB11_.exit.i

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB11_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #41, !noalias !4189
  unreachable

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEEB11_.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.dq, ptr %i.dv, align 4, !alias.scope !4189
  %.33.i = select i1 %1, i8 10, i8 7
  store i8 %.33.i, ptr %i.al, align 4, !alias.scope !4189
  store i16 0, ptr %i.i, align 8, !alias.scope !4189
  %i.dw = load i32, ptr %i.h, align 4, !noalias !4189, !noundef !17
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.dw, ptr %i.dx, align 4, !alias.scope !4189
  %i.dy = add nsw i64 %i.d, -1                    ; 2 uses
  store i64 %i.dy, ptr %i.c, align 8, !alias.scope !4189
  %i.dz = load i64, ptr %i.b, align 8, !range !28, !alias.scope !4189, !noundef !17
  %i.ea = icmp samesign ult i64 %i.dy, %i.dz
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = icmp ult i64 %i.d, 768614336404564652
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp ugt i64 %i.bd, 4294967295
  %i.ed = shl nuw i64 %i.bd, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.ec, i64 513, i64 %i.ed ; 2 uses
  %i.ee = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.ee, label %bb.ac, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor3new.exit, !prof !16

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4192
  store i8 2, ptr %i.a, align 1, !noalias !4192
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @469) #41, !noalias !4193
  unreachable

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor3new.exit: ; preds = %bb.ab
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.bb, ptr %i.ef, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bn, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.sroa.6.0.extract.trunc.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %i.eg = zext i32 %i.dq to i64                   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4194)
  %i.eh = icmp eq i32 %i.dq, 0
  br i1 %i.eh, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor10skip_bytes.exit, label %bb.ad

bb.ad:                                            ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor3new.exit
  %.not.i.i = icmp ugt i64 %i.bd, %i.eg
  br i1 %.not.i.i, label %bb.ae, label %.split.i.i1

.split.i.i1:                                      ; preds = %bb.ad
  %i.ei = icmp eq i64 %i.bd, %i.eg
  br i1 %i.ei, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor10skip_bytes.exit, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.eg
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !4195, !noalias !4194, !noundef !17
  %i.el = icmp sgt i8 %i.ek, -65
  br i1 %i.el, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor10skip_bytes.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.split.i.i1
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.bd, i64 noundef %i.eg, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #41, !noalias !4194
  unreachable

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor10skip_bytes.exit: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor3new.exit, %.split.i.i1, %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.eg
  store ptr %i.em, ptr %i.ef, align 8, !alias.scope !4194
  br label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer44re_lex_string_token_in_interpolation_element.exit

bb.ag:                                            ; preds = %bb.v, %bb.v, %bb.v
  %i.en = icmp eq ptr %.sroa.041.1.ph.i, %i.bn
  br i1 %i.en, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.lr.ph.i

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer44re_lex_string_token_in_interpolation_element.exit: ; preds = %bb.v, %bb.a, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5token10TokenFlagsNtNtB6_5nodes11StringFlags19as_any_string_flagsCsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.n, %bb.o, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor10skip_bytes.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10checkpoint(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4214 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.b = load i8, ptr %i.a, align 4, !range !24, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load <2 x i32>, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.f = load i16, ptr %i.e, align 8, !noundef !17
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load i64, ptr %i.g, align 8, !noundef !17
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !17, !noundef !17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !17, !noundef !17
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 138
  %i.n = load i8, ptr %i.m, align 2, !range !64, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.p = load i32, ptr %i.o, align 4, !noundef !17
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.q, align 8, !nonnull !17, !noundef !17
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.r, align 8, !noundef !17 ; 4 uses
  %i.s = shl nuw i64 %.val3, 3                    ; 4 uses
  %i.t = icmp eq i64 %.val3, 0                    ; 2 uses
  br i1 %i.t, label %_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !4215
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, 9) 4) #42, !noalias !4215 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.s) #41, !noalias !4216
  unreachable

bb.c:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.u, ptr nonnull readonly align 4 %.val, i64 %i.s, i1 false), !noalias !4217
  br label %_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint.exit

_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint.exit: ; preds = %bb.a, %bb.c
  %.sroa.5.0.i = phi ptr [ %i.u, %bb.c ], [ inttoptr (i64 4 to ptr), %bb.a ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4 = load ptr, ptr %i.w, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5 = load i64, ptr %i.x, align 8, !noundef !17 ; 6 uses
  %i.y = mul nuw nsw i64 %.val5, 12               ; 2 uses
  %i.z = icmp eq i64 %.val5, 0
  br i1 %i.z, label %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer19interpolated_stringNtB4_19InterpolatedStrings10checkpoint.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i8

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i8: ; preds = %_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !4218
  %i.aa = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.y, i64 noundef range(i64 1, 9) 4) #42, !noalias !4218 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %2, label %.lr.ph.preheader.i.i.i

2:                                                ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.y) #41
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %2
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i8
  %3 = getelementptr inbounds nuw [12 x i8], ptr %.val4, i64 %.val5
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.preheader.i.i.i
  %.sroa.014.023.i.i.i = phi ptr [ %7, %bb.d ], [ %.val4, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i64 [ %6, %bb.d ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.10.021.i.i.i = phi i64 [ %5, %bb.d ], [ %.val5, %.lr.ph.preheader.i.i.i ]
  %4 = icmp eq ptr %.sroa.014.023.i.i.i, %3
  br i1 %4, label %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer19interpolated_stringNtB4_19InterpolatedStrings10checkpoint.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %5 = add nsw i64 %.sroa.10.021.i.i.i, -1        ; 2 uses
  %6 = add nuw nsw i64 %.sroa.7.022.i.i.i, 1
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i.i, i64 12
  %8 = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %.sroa.7.022.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.014.023.i.i.i, i64 12, i1 false), !noalias !4219
  %9 = icmp eq i64 %5, 0
  br i1 %9, label %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer19interpolated_stringNtB4_19InterpolatedStrings10checkpoint.exit, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %2
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentation22IndentationsCheckpointEBH_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 4) #42
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentation22IndentationsCheckpointEBH_.exit

_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer19interpolated_stringNtB4_19InterpolatedStrings10checkpoint.exit: ; preds = %bb.d, %.lr.ph.i.i.i, %_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint.exit
  %.sroa.10.0.i31.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint.exit ], [ %i.aa, %.lr.ph.i.i.i ], [ %i.aa, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ae = trunc i64 %i.h to i32
  %i.af = ptrtoint ptr %i.j to i64
  %i.ag = ptrtoint ptr %i.l to i64
  %.neg = sub i64 %i.af, %i.ag
  %.neg2 = trunc i64 %.neg to i32
  %i.ah = add i32 %.neg2, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !17 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 288230376151711744
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 87
  store i8 %i.b, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i32> %i.d, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 %i.f, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.ah, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 86
  store i8 %i.n, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.p, ptr %i.aq, align 8
  store i64 %.val3, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val3, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr noundef nonnull align 8 dereferenceable(12) %i.ad, i64 12, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val5, ptr %i.as, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.0.i31.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val5, ptr %.sroa.511.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.aj, ptr %i.at, align 8
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentation22IndentationsCheckpointEBH_.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10lex_string(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4312 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = icmp eq i32 %1, 34
  br i1 %i.b, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = tail call fastcc noundef zeroext i1 @_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor9eat_char2(ptr noalias noundef align 8 dereferenceable(24) %i.c, i32 noundef %1, i32 noundef %1)
  br i1 %i.d, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !noundef !17
  %i.g = or i16 %i.f, 1
  store i16 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.i = tail call fastcc noundef zeroext i1 @_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor9eat_char2(ptr noalias noundef align 8 dereferenceable(24) %i.h, i32 noundef 34, i32 noundef 34)
  br i1 %i.i, label %bb.c, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtB4_4char16TryFromCharErrorE6expectCsb6FLkjZuKG_18ruff_python_parser.exit

bb.c:                                             ; preds = %.split, %bb.b
  %i.j = phi ptr [ %i.c, %.split ], [ %i.h, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !noundef !17
  %i.m = or i16 %i.l, 2
  store i16 %i.m, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %.split, %bb.c
  %i.n = phi ptr [ %i.c, %.split ], [ %i.j, %bb.c ]
  %i.o = icmp samesign ugt i32 %1, 255
  %i.p = trunc nuw i32 %1 to i8
  br i1 %i.o, label %bb.e, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtB4_4char16TryFromCharErrorE6expectCsb6FLkjZuKG_18ruff_python_parser.exit, !prof !4313

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #41
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtB4_4char16TryFromCharErrorE6expectCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.b, %bb.d
  %.sroa.5.0148 = phi i8 [ %i.p, %bb.d ], [ 34, %bb.b ] ; 4 uses
  %i.q = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.b ] ; 20 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.s = load i16, ptr %i.r, align 8, !noundef !17
  %i.t = and i16 %i.s, 2
  %i.u = icmp eq i16 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !17, !noundef !17 ; 6 uses
  %i.x = load ptr, ptr %i.v, align 8, !nonnull !17, !noundef !17
  %i.y = ptrtoint ptr %i.x to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.w to i64                 ; 3 uses
  %i.aa = sub nuw i64 %i.y, %i.z                  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa ; 2 uses
  br i1 %i.u, label %.preheader, label %.preheader171

.preheader171:                                    ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtB4_4char16TryFromCharErrorE6expectCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.ac = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !4314, !nonnull !17, !noundef !17
  %i.ad = tail call { i64, ptr } %i.ac(i8 noundef %.sroa.5.0148, ptr noundef nonnull readonly %i.w, ptr noundef nonnull readonly %i.ab), !noalias !4314, !inline_history !8 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader171
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  br label %bb.x

.preheader:                                       ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtB4_4char16TryFromCharErrorE6expectCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.ah = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr3_raw2FN monotonic, align 8, !noalias !4315, !nonnull !17, !noundef !17
  %i.ai = tail call { i64, ptr } %i.ah(i8 noundef %.sroa.5.0148, i8 noundef 13, i8 noundef 10, ptr noundef nonnull readonly %i.w, ptr noundef nonnull readonly %i.ab), !noalias !4315, !inline_history !0 ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph214, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit
  %i.am = phi { i64, ptr } [ %i.ai, %.lr.ph214 ], [ %i.fo, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit ]
  %i.an = phi i64 [ %i.aa, %.lr.ph214 ], [ %i.fl, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit ]
  %i.ao = phi i64 [ %i.z, %.lr.ph214 ], [ %i.fk, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit ]
  %i.ap = phi i64 [ %i.y, %.lr.ph214 ], [ %i.fj, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit ]
  %i.aq = phi ptr [ %i.w, %.lr.ph214 ], [ %i.fh, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit ]
  %i.ar = extractvalue { i64, ptr } %i.am, 1      ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ao                    ; 10 uses
  %i.au = icmp sgt i64 %i.at, -1
  tail call void @llvm.assume(i1 %i.au)
  %.not.i26 = icmp ult i64 %i.at, %i.an
  tail call void @llvm.assume(i1 %.not.i26)
  %i.av = load ptr, ptr %i.q, align 8, !nonnull !17, !noundef !17 ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = sub nuw i64 %i.ap, %i.aw                ; 2 uses
  %.not21 = icmp ugt i64 %i.at, %i.ax
  br i1 %.not21, label %bb.l, label %bb.g, !prof !56

._crit_edge215:                                   ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit, %.preheader
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8
  %i.ay = load i16, ptr %i.r, align 8, !noundef !17
  %i.az = or i16 %i.ay, 256
  store i16 %i.az, ptr %i.r, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !4316, !noundef !17
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !4316, !nonnull !17, !noundef !17
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = trunc i64 %i.bf to i32
  %.neg3.i = add i32 %i.bc, -1
  %i.bh = add i32 %.neg3.i, %i.bg                 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bj = load i32, ptr %i.bi, align 8, !alias.scope !4316, !noundef !17
  %i.bk = sub i32 %i.bc, %i.bj                    ; 3 uses
  %.not.i28 = icmp ugt i32 %i.bk, %i.bh
  br i1 %.not.i28, label %.noexc, label %bb.v, !prof !16

.noexc:                                           ; preds = %._crit_edge215
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #41
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at ; 17 uses
  %i.bm = icmp eq ptr %i.ar, %i.aq
  br i1 %i.bm, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB1Z_5Lexer10lex_strings_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB21_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2W_5Lexer10lex_strings_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.br, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2W_5Lexer10lex_strings_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.bn = phi ptr [ %i.bo, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2W_5Lexer10lex_strings_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %i.bl, %bb.g ]
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -1 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !4317, !noalias !4318, !noundef !17
  %i.bq = icmp eq i8 %i.bp, 92
  br i1 %i.bq, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2W_5Lexer10lex_strings_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB1Z_5Lexer10lex_strings_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB21_.exit.loopexit

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2W_5Lexer10lex_strings_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.br = add nuw i64 %.sroa.01.019.i.i.i.i, 1
  %i.bs = icmp eq ptr %i.av, %i.bo
  br i1 %i.bs, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB1Z_5Lexer10lex_strings_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB21_.exit.loopexit, label %.lr.ph.i.i.i.i

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB1Z_5Lexer10lex_strings_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB21_.exit.loopexit: ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2W_5Lexer10lex_strings_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.1.i.i.ph = phi i64 [ %i.at, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2W_5Lexer10lex_strings_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %.sroa.01.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.bt = and i64 %.sroa.0.1.i.i.ph, 1
  %i.bu = icmp eq i64 %i.bt, 0
  br label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB1Z_5Lexer10lex_strings_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB21_.exit

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB1Z_5Lexer10lex_strings_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB21_.exit: ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB1Z_5Lexer10lex_strings_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB21_.exit.loopexit, %bb.g
  %.sroa.0.1.i.i = phi i1 [ true, %bb.g ], [ %i.bu, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB1Z_5Lexer10lex_strings_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB21_.exit.loopexit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4319)
  %i.bv = load ptr, ptr %i.al, align 8, !alias.scope !4319, !nonnull !17, !noundef !17 ; 16 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub nuw i64 %i.bw, %i.aw                ; 5 uses
  %i.by = icmp eq i64 %i.at, 0
  br i1 %i.by, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor10skip_bytes.exit, label %bb.h

bb.h:                                             ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEENCNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB1Z_5Lexer10lex_strings_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB21_.exit
  %.not.i.i = icmp ult i64 %i.at, %i.bx
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser43parse_binary_expression_or_higher_recursive:bb.a

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i185: ; preds = %bb.bl, %.split7.i.i187, %bb.bj, %.split.i.i184, %bb.bf
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i143, i64 noundef %.val13.i144, i64 noundef %i.fy, i64 noundef %i.fz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #41
          to label %.noexc188 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc188:                                        ; preds = %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i185
  unreachable

.noexc148:                                        ; preds = %bb.bl, %.split7.i.i187, %bb.bi
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.i143, i64 %i.fy
  %i.gl = sub nuw nsw i64 %i.fz, %i.fy
  store ptr %i.gk, ptr %i.h, align 8, !noalias !8538
  %i.gm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.gl, ptr %i.gm, align 8, !noalias !8538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8538
  %i.gn = load i8, ptr %i.ap, align 4, !range !24, !alias.scope !8539, !noalias !8535, !noundef !17
  store i8 %i.gn, ptr %i.g, align 1, !noalias !8538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8538
  store i32 %i.fu, ptr %i.f, align 4, !noalias !8538
  %i.go = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.fv, ptr %i.go, align 4, !noalias !8538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8538
  store ptr %i.h, ptr %i.e, align 8, !noalias !8538
  %.sroa.42.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsb6FLkjZuKG_18ruff_python_parser, ptr %.sroa.42.0..sroa_idx.i145, align 8, !noalias !8538
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.gp, align 8, !noalias !8538
  %.sroa.46.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsn_NtCskLngH8kgpZI_15ruff_python_ast5tokenNtB5_9TokenKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i146, align 8, !noalias !8538
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.f, ptr %i.gq, align 8, !noalias !8538
  %.sroa.410.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXNtCs2MoD74u7shA_14ruff_text_size5rangeNtB2_9TextRangeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx.i147, align 8, !noalias !8538
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @289, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #41
          to label %.noexc149 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc149:                                        ; preds = %.noexc148
  unreachable

_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit150: ; preds = %bb.be, %bb.cv
  %i.gr = phi i32 [ %i.ft, %bb.be ], [ %i.jh, %bb.cv ]
  %.sroa.6219.0.copyload633 = phi i64 [ 1, %bb.be ], [ %i.jg, %bb.cv ] ; 12 uses
  %i.gs = phi ptr [ %i.fr, %bb.be ], [ %i.je, %bb.cv ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8539)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !8536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !8536
  call void @llvm.experimental.noalias.scope.decl(metadata !8541)
  %.val.i135 = load i32, ptr %i.as, align 8, !alias.scope !8541, !noalias !8535, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8542
  invoke fastcc void @_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser20parse_lhs_expression(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(464) %1, i8 noundef 9, i8 noundef %4)
          to label %.noexc136 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !8398

.noexc136:                                        ; preds = %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit150
  invoke fastcc void @_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser43parse_binary_expression_or_higher_recursive(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(80) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(464) %1, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.i, i8 noundef 9, i8 noundef %4, i32 noundef %.val.i135)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !8398

bb.bm:                                            ; preds = %.noexc136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef nonnull align 8 dereferenceable(72) %i.x, i64 72, i1 false), !noalias !8536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !8536
  call void @llvm.experimental.noalias.scope.decl(metadata !8543)
  call void @llvm.experimental.noalias.scope.decl(metadata !8544), !noalias !8535
  %i.gt = load i64, ptr %i.az, align 8, !alias.scope !8545, !noalias !8535, !noundef !17 ; 3 uses
  %i.gu = load i64, ptr %i.ay, align 8, !range !28, !alias.scope !8545, !noalias !8535, !noundef !17
  %i.gv = icmp eq i64 %i.gt, %i.gu
  br i1 %i.gv, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.bq unwind label %bb.bo, !noalias !8546

bb.bo:                                            ; preds = %bb.bn
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y) #44
          to label %.thread310 unwind label %bb.bp, !noalias !8547

bb.bp:                                            ; preds = %bb.bo
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !8547
  unreachable

bb.bq:                                            ; preds = %bb.bm, %bb.bn
  %i.gy = load ptr, ptr %i.be, align 8, !alias.scope !8545, !noalias !8535, !nonnull !17, !noundef !17
  %i.gz = getelementptr inbounds nuw [72 x i8], ptr %i.gy, i64 %i.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gz, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false), !noalias !8547
  %i.ha = add i64 %i.gt, 1
  store i64 %i.ha, ptr %i.az, align 8, !alias.scope !8545, !noalias !8535
  %.val14.i = load i8, ptr %i.ap, align 4, !range !24, !alias.scope !8534, !noundef !17 ; 9 uses
  switch i8 %.val14.i, label %bb.cg [
    i8 87, label %bb.br
    i8 88, label %bb.bz
    i8 92, label %bb.bz
  ]

bb.br:                                            ; preds = %bb.bq
  br i1 %i.aq, label %_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7helpers20token_kind_to_cmp_op.exit, label %.thread318

_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7helpers20token_kind_to_cmp_op.exit: ; preds = %bb.cg, %bb.ci, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !8536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !8536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !8536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %i.an, i64 72, i1 false), !noalias !8548
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !8549
  %i.hb = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !8549 ; 4 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.bs, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser.exit.i, !prof !31

bb.bs:                                            ; preds = %_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7helpers20token_kind_to_cmp_op.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #41
          to label %.noexc130 unwind label %bb.bt

.noexc130:                                        ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.bs
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v) #44
          to label %.thread310.thread unwind label %bb.bu, !noalias !8535, !inline_history !8407

bb.bu:                                            ; preds = %bb.bt
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !8535, !inline_history !8407
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7helpers20token_kind_to_cmp_op.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hb, ptr noundef nonnull align 8 dereferenceable(72) %i.an, i64 72, i1 false)
  store ptr %i.hb, ptr %i.w, align 8, !noalias !8536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !8536
  %.sroa.0217.0.copyload = load i64, ptr %i.z, align 8, !noalias !8536 ; 4 uses
  %.sroa.4218.0.copyload = load ptr, ptr %i.bc, align 8, !noalias !8536 ; 5 uses
  %i.hf = icmp ugt i64 %.sroa.0217.0.copyload, %.sroa.6219.0.copyload633
  br i1 %i.hf, label %bb.bv, label %bb.cw

bb.bv:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4218.0.copyload) ]
  %i.hg = icmp eq i64 %.sroa.6219.0.copyload633, 0
  br i1 %i.hg, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i, label %bb.bw

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.bv
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4218.0.copyload, i64 noundef %.sroa.0217.0.copyload, i64 noundef range(i64 1, 9) 1) #42, !noalias !8550
  br label %bb.cw

bb.bw:                                            ; preds = %bb.bv
  %i.hh = call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.4218.0.copyload, i64 noundef %.sroa.0217.0.copyload, i64 noundef range(i64 1, 9) 1, i64 noundef range(i64 1, 0) %.sroa.6219.0.copyload633) #42, !noalias !8550 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %bb.bx, label %bb.cw

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.6219.0.copyload633) #41
          to label %bb.by unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsb6FLkjZuKG_18ruff_python_parser.exit.i, !noalias !8551

bb.by:                                            ; preds = %bb.bx
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.bx
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4218.0.copyload, i64 noundef %.sroa.0217.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !8551
  br label %.body128

bb.bz:                                            ; preds = %bb.bq, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8552
  call void @llvm.experimental.noalias.scope.decl(metadata !8553)
  call void @llvm.experimental.noalias.scope.decl(metadata !8554)
  %i.hk = load <2 x i32>, ptr %i.as, align 8, !alias.scope !8554
  %i.hl = load i16, ptr %i.bg, align 8, !alias.scope !8554, !noundef !17
  %i.hm = load i64, ptr %i.bn, align 8, !alias.scope !8554, !noundef !17
  %i.hn = load ptr, ptr %i.bo, align 8, !alias.scope !8554, !nonnull !17, !noundef !17
  %i.ho = load ptr, ptr %i.bp, align 8, !alias.scope !8554, !nonnull !17, !noundef !17
  %i.hp = load i8, ptr %i.bq, align 2, !range !64, !alias.scope !8554, !noundef !17
  %i.hq = load i32, ptr %i.br, align 4, !alias.scope !8554, !noundef !17
  %.val.i551 = load ptr, ptr %i.bs, align 8, !alias.scope !8554, !nonnull !17, !noundef !17
  %.val3.i = load i64, ptr %i.bt, align 8, !alias.scope !8554, !noundef !17 ; 4 uses
  %i.hr = shl nuw i64 %.val3.i, 3                 ; 4 uses
  %i.hs = icmp eq i64 %.val3.i, 0                 ; 2 uses
  br i1 %i.hs, label %_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint.exit.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.bz
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !8555
  %i.ht = call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.hr, i64 noundef range(i64 1, 9) 4) #42, !noalias !8555 ; 3 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.hr) #41
          to label %.noexc555 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc555:                                        ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ht, ptr nonnull readonly align 4 %.val.i551, i64 %i.hr, i1 false), !noalias !8556
  br label %_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint.exit.i

_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint.exit.i: ; preds = %bb.cb, %bb.bz
  %.sroa.5.0.i.i = phi ptr [ %i.ht, %bb.cb ], [ inttoptr (i64 4 to ptr), %bb.bz ] ; 2 uses
  %.val4.i = load ptr, ptr %i.bu, align 8, !alias.scope !8554, !nonnull !17, !noundef !17 ; 2 uses
  %.val5.i = load i64, ptr %i.bv, align 8, !alias.scope !8554, !noundef !17 ; 6 uses
  %i.hv = icmp eq i64 %.val5.i, 0
  br i1 %i.hv, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10checkpoint.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i8.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i8.i: ; preds = %_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint.exit.i
  %6 = mul nuw nsw i64 %.val5.i, 12               ; 2 uses
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !8557
  %i.hw = call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %6, i64 noundef range(i64 1, 9) 4) #42, !noalias !8557 ; 4 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %7, label %.lr.ph.preheader.i.i.i.i

7:                                                ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i8.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %6) #41
          to label %.noexc.i unwind label %bb.cd, !noalias !8558

.noexc.i:                                         ; preds = %7
  unreachable

.lr.ph.preheader.i.i.i.i:                         ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i8.i
  %8 = getelementptr inbounds nuw [12 x i8], ptr %.val4.i, i64 %.val5.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cc, %.lr.ph.preheader.i.i.i.i
  %.sroa.014.023.i.i.i.i = phi ptr [ %12, %bb.cc ], [ %.val4.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.sroa.7.022.i.i.i.i = phi i64 [ %11, %bb.cc ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.10.021.i.i.i.i = phi i64 [ %10, %bb.cc ], [ %.val5.i, %.lr.ph.preheader.i.i.i.i ]
  %9 = icmp eq ptr %.sroa.014.023.i.i.i.i, %8
  br i1 %9, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10checkpoint.exit, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i
  %10 = add nsw i64 %.sroa.10.021.i.i.i.i, -1     ; 2 uses
  %11 = add nuw nsw i64 %.sroa.7.022.i.i.i.i, 1
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i.i.i, i64 12
  %13 = getelementptr inbounds nuw [12 x i8], ptr %i.hw, i64 %.sroa.7.022.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.014.023.i.i.i.i, i64 12, i1 false), !noalias !8559
  %14 = icmp eq i64 %10, 0
  br i1 %14, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10checkpoint.exit, label %.lr.ph.i.i.i.i

bb.cd:                                            ; preds = %7
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.hs, label %.thread310, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i, i64 noundef %i.hr, i64 noundef range(i64 1, -9223372036854775807) 4) #42, !noalias !8558
  br label %.thread310

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10checkpoint.exit: ; preds = %.lr.ph.i.i.i.i, %bb.cc, %_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint.exit.i
  %.sroa.10.0.i31.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint.exit.i ], [ %i.hw, %bb.cc ], [ %i.hw, %.lr.ph.i.i.i.i ]
  %i.hz = trunc i64 %i.hm to i32
  %i.ia = ptrtoint ptr %i.hn to i64
  %i.ib = ptrtoint ptr %i.ho to i64
  %.neg.i = sub i64 %i.ia, %i.ib
  %.neg2.i = trunc i64 %.neg.i to i32
  %i.ic = add i32 %.neg2.i, %i.hz
  %i.id = load i64, ptr %i.bx, align 8, !alias.scope !8554, !noundef !17 ; 2 uses
  %i.ie = icmp ult i64 %i.id, 288230376151711744
  call void @llvm.assume(i1 %i.ie)
  store i8 %.val14.i, ptr %i.by, align 1, !alias.scope !8553
  store <2 x i32> %i.hk, ptr %i.bz, align 8, !alias.scope !8553
  store i16 %i.hl, ptr %i.ca, align 4, !alias.scope !8553
  store i32 %i.ic, ptr %i.cb, align 4, !alias.scope !8553
  store i8 %i.hp, ptr %i.cc, align 2, !alias.scope !8553
  store i32 %i.hq, ptr %i.cd, align 8, !alias.scope !8553
  store i64 %.val3.i, ptr %i.j, align 8, !alias.scope !8553
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i552, align 8, !alias.scope !8553
  store i64 %.val3.i, ptr %.sroa.7.0..sroa_idx.i553, align 8, !alias.scope !8553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ce, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.bw, i64 12, i1 false), !alias.scope !8558
  store i64 %.val5.i, ptr %i.cf, align 8, !alias.scope !8553
  store ptr %.sroa.10.0.i31.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i554, align 8, !alias.scope !8553
  store i64 %.val5.i, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !8553
  store i64 %i.id, ptr %i.cg, align 8, !alias.scope !8553
  br label %.noexc123

.noexc123:                                        ; preds = %.noexc123.backedge, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10checkpoint.exit
  %i.if = invoke noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %1)
          to label %.noexc.i.i.i121 unwind label %bb.cf, !noalias !8535 ; 2 uses

.noexc.i.i.i121:                                  ; preds = %.noexc123
  switch i8 %i.if, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4peek.exit.i122 [
    i8 12, label %.noexc123.backedge
    i8 14, label %.noexc123.backedge
  ]

.noexc123.backedge:                               ; preds = %.noexc.i.i.i121, %.noexc.i.i.i121
  br label %.noexc123

bb.cf:                                            ; preds = %.noexc123
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer15LexerCheckpointEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.j) #44, !noalias !8535
  br label %.thread310

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4peek.exit.i122: ; preds = %.noexc.i.i.i121
  invoke fastcc void @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer6rewind(ptr noalias noundef nonnull align 8 dereferenceable(464) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %i.j)
          to label %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser27parse_comparison_expression0B8_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser27parse_comparison_expression0B8_.exit: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4peek.exit.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8552
  br label %bb.cg

bb.cg:                                            ; preds = %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser27parse_comparison_expression0B8_.exit, %bb.bq
  %.sroa.0.0.i58 = phi i8 [ -1, %bb.bq ], [ %i.if, %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser27parse_comparison_expression0B8_.exit ] ; 2 uses
  switch i8 %.val14.i, label %_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7helpers20token_kind_to_cmp_op.exit [
    i8 33, label %bb.ck
    i8 34, label %bb.cm
    i8 40, label %.noexc116
    i8 41, label %bb.cj
    i8 42, label %bb.cl
    i8 43, label %bb.cn
    i8 87, label %.thread318
    i8 88, label %bb.ch
    i8 92, label %bb.ci
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.ih = icmp eq i8 %.sroa.0.0.i58, 92
  br i1 %i.ih, label %.split4.i, label %.noexc116

bb.ci:                                            ; preds = %bb.cg
  %i.ii = icmp eq i8 %.sroa.0.0.i58, 87
  br i1 %i.ii, label %.split.i, label %_RNvNtNtCsb6FLkjZuKG_18ruff_python_parser6parser7helpers20token_kind_to_cmp_op.exit

bb.cj:                                            ; preds = %bb.cg
  br label %.noexc116

bb.ck:                                            ; preds = %bb.cg
  br label %.noexc116

bb.cl:                                            ; preds = %bb.cg
  br label %.noexc116

bb.cm:                                            ; preds = %bb.cg
  br label %.noexc116

bb.cn:                                            ; preds = %bb.cg
  br label %.noexc116

.split4.i:                                        ; preds = %bb.ch
  invoke fastcc void @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4bump(ptr noalias noundef nonnull align 8 dereferenceable(464) %1, i8 noundef 88)
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread318:                                       ; preds = %bb.br, %bb.cg
  br label %.noexc116

.split.i:                                         ; preds = %bb.ci
  invoke fastcc void @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4bump(ptr noalias noundef nonnull align 8 dereferenceable(464) %1, i8 noundef 92)
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %bb.ch, %bb.cg, %.split.i, %.split4.i, %.thread318, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj
  %.sroa.09.0.i.ph327 = phi i8 [ 9, %.split.i ], [ 7, %.split4.i ], [ 8, %.thread318 ], [ 1, %bb.cj ], [ 2, %bb.ck ], [ 3, %bb.cl ], [ 4, %bb.cm ], [ 5, %bb.cn ], [ 0, %bb.cg ], [ 6, %bb.ch ]
  %.sink.i = phi i8 [ 87, %.split.i ], [ 92, %.split4.i ], [ 87, %.thread318 ], [ %.val14.i, %bb.cj ], [ %.val14.i, %bb.ck ], [ %.val14.i, %bb.cl ], [ %.val14.i, %bb.cm ], [ %.val14.i, %bb.cn ], [ %.val14.i, %bb.cg ], [ 88, %bb.ch ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8560)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.sink.i, ptr %i.b, align 1, !noalias !8560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8560
  %i.ij = load i8, ptr %i.ap, align 4, !range !24, !alias.scope !8560, !noundef !17 ; 2 uses
  store i8 %i.ij, ptr %i.a, align 1, !noalias !8560
  %i.ik = icmp eq i8 %i.ij, %.sink.i
  br i1 %i.ik, label %bb.cp, label %bb.co, !prof !32

bb.co:                                            ; preds = %.noexc116
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCskLngH8kgpZI_15ruff_python_ast5token9TokenKindBM_ECsb6FLkjZuKG_18ruff_python_parser(i8 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #41
          to label %.noexc178 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc178:                                        ; preds = %bb.co
  unreachable

bb.cp:                                            ; preds = %.noexc116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8560
  %i.il = load i32, ptr %i.au, align 4, !alias.scope !8561, !noundef !17
  %i.im = load <2 x i32>, ptr %i.as, align 8, !alias.scope !8561
  store i32 %i.il, ptr %i.av, align 4, !alias.scope !8561
  %i.in = load i16, ptr %i.bg, align 8, !alias.scope !8562, !noundef !17
  %i.io = load i64, ptr %i.bh, align 8, !alias.scope !8563, !noundef !17 ; 2 uses
  %i.ip = load i64, ptr %i.bf, align 8, !range !28, !alias.scope !8563, !noundef !17
  %i.iq = icmp eq i64 %i.io, %i.ip
  br i1 %i.iq, label %bb.cq, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.preheader

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.preheader: ; preds = %bb.cq, %bb.cp
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.backedge, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.preheader
  %.sink9.i.i.i167 = phi i64 [ %i.io, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.preheader ], [ %i.ix, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.backedge ] ; 2 uses
  %.sink2.i.i.i170 = phi i16 [ %i.in, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.preheader ], [ %i.iw, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.backedge ]
  %.sink.i.i.i171 = phi i8 [ %.sink.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.preheader ], [ %i.iu, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.backedge ]
  %i.ir = phi <2 x i32> [ %i.im, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.preheader ], [ %i.iv, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.backedge ]
  %i.is = load ptr, ptr %i.bi, align 8, !alias.scope !8562, !nonnull !17, !noundef !17
  %i.it = getelementptr inbounds nuw [12 x i8], ptr %i.is, i64 %.sink9.i.i.i167 ; 3 uses
  store <2 x i32> %i.ir, ptr %i.it, align 4, !noalias !17
  %.sroa.5.0..sroa_idx.i.i.i.i173 = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store i16 %.sink2.i.i.i170, ptr %.sroa.5.0..sroa_idx.i.i.i.i173, align 4, !noalias !17
  %.sroa.6.0..sroa_idx.i.i.i.i174 = getelementptr inbounds nuw i8, ptr %i.it, i64 10
  store i8 %.sink.i.i.i171, ptr %.sroa.6.0..sroa_idx.i.i.i.i174, align 2, !noalias !17
  %storemerge.i.i.i175 = add i64 %.sink9.i.i.i167, 1
  store i64 %storemerge.i.i.i175, ptr %i.bh, align 8, !alias.scope !8562
  %i.iu = invoke noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %1)
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc180:                                        ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166
  switch i8 %i.iu, label %bb.ct [
    i8 12, label %bb.cr
    i8 14, label %bb.cr
  ]

bb.cr:                                            ; preds = %.noexc180, %.noexc180
  %i.iv = load <2 x i32>, ptr %i.as, align 8, !alias.scope !8564
  %i.iw = load i16, ptr %i.bg, align 8, !alias.scope !8564, !noundef !17
  %i.ix = load i64, ptr %i.bh, align 8, !alias.scope !8565, !noundef !17 ; 2 uses
  %i.iy = load i64, ptr %i.bf, align 8, !range !28, !alias.scope !8565, !noundef !17
  %i.iz = icmp eq i64 %i.ix, %i.iy
  br i1 %i.iz, label %bb.cs, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.backedge

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166.backedge: ; preds = %bb.cs, %bb.cr
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i166

bb.ct:                                            ; preds = %.noexc180
  %i.ja = load i32, ptr %.phi.trans.insert.i, align 8, !alias.scope !8561, !noundef !17
  %i.jb = add i32 %i.ja, 1
  store i32 %i.jb, ptr %.phi.trans.insert.i, align 8, !alias.scope !8561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !8566)
  %i.jc = load i64, ptr %i.z, align 8, !range !28, !alias.scope !8566, !noalias !8535, !noundef !17
  %i.jd = icmp eq i64 %.sroa.6219.0.copyload633, %i.jc
  br i1 %i.jd, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %._crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.cu
  %.pre = load ptr, ptr %i.bc, align 8, !alias.scope !8566, !noalias !8535
  br label %bb.cv

bb.cv:                                            ; preds = %._crit_edge, %bb.ct
  %i.je = phi ptr [ %.pre, %._crit_edge ], [ %i.gs, %bb.ct ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %.sroa.6219.0.copyload633
  store i8 %.sroa.09.0.i.ph327, ptr %i.jf, align 1, !noalias !8567
  %i.jg = add i64 %.sroa.6219.0.copyload633, 1    ; 2 uses
  store i64 %i.jg, ptr %i.bd, align 8, !alias.scope !8566, !noalias !8535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !8536
  %i.jh = load i32, ptr %.phi.trans.insert.i, align 8, !alias.scope !8568, !noalias !8535 ; 2 uses
  %.not.i142 = icmp eq i32 %i.gr, %i.jh
  br i1 %.not.i142, label %bb.bf, label %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit150, !prof !25

.body128:                                         ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i, %.loopexit.split-lp373.loopexit.split-lp.loopexit.split-lp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.pn.pn.i60 = phi { ptr, i32 } [ %i.hj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %lpad.loopexit.split-lp841, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i ], [ %lpad.loopexit.split-lp841, %.loopexit.split-lp373.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(8) %i.w) #44
          to label %.thread unwind label %bb.cx, !noalias !8535, !inline_history !8407

bb.cw:                                            ; preds = %bb.bw, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.sroa.410.0.copyload.i = phi ptr [ %i.hh, %bb.bw ], [ inttoptr (i64 1 to ptr), %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %.sroa.4218.0.copyload, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser.exit.i ] ; 4 uses
  %i.ji = icmp sgt i64 %.sroa.6219.0.copyload633, -1
  call void @llvm.assume(i1 %i.ji), !noalias !8535
  call void @llvm.experimental.noalias.scope.decl(metadata !8569)
  %i.jj = load i64, ptr %i.az, align 8, !alias.scope !8570, !noalias !8535, !noundef !17 ; 6 uses
  %i.jk = icmp ult i64 %i.jj, 128102389400760776
  call void @llvm.assume(i1 %i.jk), !noalias !8535
  %i.jl = icmp samesign ugt i64 %.val16.i, %i.jj
  br i1 %i.jl, label %.noexc.i.i110, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE14drain_snapshotB6_.exit.i105, !prof !16
end_hunk_1
begin_hunk_2_@llvm.umax.i8
!8358 = distinct !{!8358, !8355, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8359 = distinct !{!8359, i1 true, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat"}
!8360 = distinct !{!8360, !8359, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat: argument 0"}
!8361 = distinct !{!8361, i1 true, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser7do_bump"}
!8362 = distinct !{!8362, !8361, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser7do_bump: argument 0"}
!8363 = distinct !{!8363, i1 true, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource4bump"}
!8364 = distinct !{!8364, !8363, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource4bump: argument 0"}
!8365 = distinct !{!8365, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser"}
!8366 = distinct !{!8366, !8365, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8367 = distinct !{!8367, i1 true, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource7do_bump"}
!8368 = distinct !{!8368, !8367, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource7do_bump: argument 0"}
!8369 = distinct !{!8369, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser"}
!8370 = distinct !{!8370, !8369, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8371 = distinct !{!8371, i1 true, !"_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB3_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4takeINtNtCscdodAO9FK5_5alloc3vec3VecB1m_EEB7_"}
!8372 = distinct !{!8372, !8371, !"_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB3_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4takeINtNtCscdodAO9FK5_5alloc3vec3VecB1m_EEB7_: argument 1"}
!8373 = distinct !{!8373, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE14drain_snapshotB6_"}
!8374 = distinct !{!8374, !8373, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE14drain_snapshotB6_: argument 1"}
!8375 = distinct !{!8375, i1 true, !"_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromjEECsb6FLkjZuKG_18ruff_python_parser"}
!8376 = distinct !{!8376, !8375, !"_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromjEECsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8377 = distinct !{!8377, !8371, !"_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB3_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4takeINtNtCscdodAO9FK5_5alloc3vec3VecB1m_EEB7_: argument 0"}
!8378 = distinct !{!8378, i1 true, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtB6_5drain5DrainBF_EECsb6FLkjZuKG_18ruff_python_parser"}
!8379 = distinct !{!8379, !8378, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtB6_5drain5DrainBF_EECsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8380 = distinct !{!8380, !8378, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtB6_5drain5DrainBF_EECsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8381 = distinct !{!8381, i1 true, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtB2_12IntoIterator9into_iterCsb6FLkjZuKG_18ruff_python_parser"}
!8382 = distinct !{!8382, !8381, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtB2_12IntoIterator9into_iterCsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8383 = distinct !{!8383, !8381, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtB2_12IntoIterator9into_iterCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8384 = distinct !{!8384, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser27parse_comparison_expression"}
!8385 = distinct !{!8385, !8384, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser27parse_comparison_expression: argument 1"}
!8386 = distinct !{!8386, !8384, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser27parse_comparison_expression: argument 2"}
!8387 = distinct !{!8387, !8384, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser27parse_comparison_expression: argument 0"}
!8388 = distinct !{!8388, i1 true, !"_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing"}
!8389 = distinct !{!8389, !8388, !"_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing: argument 1:pre.rot"}
!8390 = distinct !{!8390, i1 true, !"_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing"}
!8391 = distinct !{!8391, !8390, !"_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing: argument 1"}
!8392 = distinct !{!8392, !8390, !"_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing: argument 0"}
!8393 = distinct !{!8393, i1 true, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!8394 = distinct !{!8394, !8393, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!8395 = distinct !{!8395, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher"}
!8396 = distinct !{!8396, !8395, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher: argument 1"}
!8397 = distinct !{!8397, !8395, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher: argument 0"}
!8398 = distinct !{null, null}
!8399 = distinct !{!8399, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4pushB6_"}
!8400 = distinct !{!8400, !8399, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4pushB6_: argument 0"}
!8401 = distinct !{!8401, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsb6FLkjZuKG_18ruff_python_parser"}
!8402 = distinct !{!8402, !8401, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8403 = distinct !{!8403, !8399, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4pushB6_: argument 1"}
!8404 = distinct !{!8404, !8401, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8405 = distinct !{!8405, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser"}
!8406 = distinct !{!8406, !8405, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8407 = distinct !{null}
!8408 = distinct !{!8408, i1 true, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser"}
!8409 = distinct !{!8409, !8408, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8410 = distinct !{!8410, i1 true, !"_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsb6FLkjZuKG_18ruff_python_parser"}
!8411 = distinct !{!8411, !8410, !"_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8412 = distinct !{!8412, i1 true, !"_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsb6FLkjZuKG_18ruff_python_parser"}
!8413 = distinct !{!8413, !8412, !"_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8414 = distinct !{!8414, i1 true, !"_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser27parse_comparison_expression0B8_"}
!8415 = distinct !{!8415, !8414, !"_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser27parse_comparison_expression0B8_: argument 0"}
!8416 = distinct !{!8416, i1 true, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4peek"}
!8417 = distinct !{!8417, !8416, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4peek: argument 0"}
!8418 = distinct !{!8418, i1 true, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10checkpoint"}
!8419 = distinct !{!8419, !8418, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10checkpoint: argument 0"}
!8420 = distinct !{!8420, !8418, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10checkpoint: argument 1"}
!8421 = distinct !{!8421, i1 true, !"_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint"}
!8422 = distinct !{!8422, !8421, !"_RNvMs1_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentationNtB5_12Indentations10checkpoint: argument 0"}
!8423 = distinct !{!8423, i1 true, !"_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentation11IndentationENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_"}
!8424 = distinct !{!8424, !8423, !"_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentation11IndentationENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_: argument 0"}
!8425 = distinct !{!8425, i1 true, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentation11IndentationNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBR_"}
!8426 = distinct !{!8426, !8425, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentation11IndentationNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBR_: argument 1"}
!8427 = distinct !{!8427, !8425, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentation11IndentationNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBR_: argument 0"}
!8428 = distinct !{!8428, i1 true, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser"}
!8429 = distinct !{!8429, !8428, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8430 = distinct !{!8430, i1 true, !"_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer19interpolated_stringNtB4_19InterpolatedStrings10checkpoint"}
!8431 = distinct !{!8431, !8430, !"_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser5lexer19interpolated_stringNtB4_19InterpolatedStrings10checkpoint: argument 0"}
!8432 = distinct !{!8432, i1 true, !"_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer19interpolated_string25InterpolatedStringContextENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_"}
!8433 = distinct !{!8433, !8432, !"_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer19interpolated_string25InterpolatedStringContextENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_: argument 0"}
!8434 = distinct !{!8434, i1 true, !"_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer19interpolated_string25InterpolatedStringContextNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_"}
!8435 = distinct !{!8435, !8434, !"_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer19interpolated_string25InterpolatedStringContextNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_: argument 1"}
!8436 = distinct !{!8436, !8434, !"_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer19interpolated_string25InterpolatedStringContextNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_: argument 0"}
!8437 = distinct !{!8437, i1 true, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser"}
!8438 = distinct !{!8438, !8437, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8439 = distinct !{!8439, i1 true, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4bump"}
!8440 = distinct !{!8440, !8439, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4bump: argument 0"}
!8441 = distinct !{!8441, i1 true, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser7do_bump"}
!8442 = distinct !{!8442, !8441, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser7do_bump: argument 0"}
!8443 = distinct !{!8443, i1 true, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource4bump"}
!8444 = distinct !{!8444, !8443, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource4bump: argument 0"}
!8445 = distinct !{!8445, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser"}
!8446 = distinct !{!8446, !8445, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8447 = distinct !{!8447, i1 true, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource7do_bump"}
!8448 = distinct !{!8448, !8447, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource7do_bump: argument 0"}
!8449 = distinct !{!8449, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser"}
!8450 = distinct !{!8450, !8449, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8451 = distinct !{!8451, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpE8push_mutCsb6FLkjZuKG_18ruff_python_parser"}
!8452 = distinct !{!8452, !8451, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpE8push_mutCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8453 = distinct !{!8453, i1 true, !"_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing"}
!8454 = distinct !{!8454, !8453, !"_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing: argument 1:h.rot"}
!8455 = distinct !{!8455, i1 true, !"_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB3_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4takeINtNtCscdodAO9FK5_5alloc5boxed3BoxSB1m_EEB7_"}
!8456 = distinct !{!8456, !8455, !"_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB3_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4takeINtNtCscdodAO9FK5_5alloc5boxed3BoxSB1m_EEB7_: argument 0"}
!8457 = distinct !{!8457, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE14drain_snapshotB6_"}
!8458 = distinct !{!8458, !8457, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE14drain_snapshotB6_: argument 1"}
!8459 = distinct !{!8459, i1 true, !"_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromjEECsb6FLkjZuKG_18ruff_python_parser"}
!8460 = distinct !{!8460, !8459, !"_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromjEECsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8461 = distinct !{!8461, i1 true, !"_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtBa_3vec5drain5DrainBP_EECsb6FLkjZuKG_18ruff_python_parser"}
!8462 = distinct !{!8462, !8461, !"_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtBa_3vec5drain5DrainBP_EECsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8463 = distinct !{!8463, i1 true, !"_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator7collectINtB8_3VecBJ_EECsb6FLkjZuKG_18ruff_python_parser"}
!8464 = distinct !{!8464, !8463, !"_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator7collectINtB8_3VecBJ_EECsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8465 = distinct !{!8465, !8463, !"_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator7collectINtB8_3VecBJ_EECsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8466 = distinct !{!8466, i1 true, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtB6_5drain5DrainBF_EECsb6FLkjZuKG_18ruff_python_parser"}
!8467 = distinct !{!8467, !8466, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtB6_5drain5DrainBF_EECsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8468 = distinct !{!8468, !8466, !"_RINvXse_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBF_E9from_iterINtNtB6_5drain5DrainBF_EECsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8469 = distinct !{!8469, i1 true, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtB2_12IntoIterator9into_iterCsb6FLkjZuKG_18ruff_python_parser"}
!8470 = distinct !{!8470, !8469, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtB2_12IntoIterator9into_iterCsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8471 = distinct !{!8471, !8469, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtB2_12IntoIterator9into_iterCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8472 = distinct !{!8472, i1 true, !"_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing"}
!8473 = distinct !{!8473, !8472, !"_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing: argument 1:h.rot"}
!8474 = distinct !{!8474, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher"}
!8475 = distinct !{!8475, !8474, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher: argument 1"}
!8476 = distinct !{!8476, !8474, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher: argument 0"}
!8477 = distinct !{!8477, i1 true, !"_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtB5_10expression10ParsedExprNCNvMB1f_BL_43parse_binary_expression_or_higher_recursives_0EB7_"}
!8478 = distinct !{!8478, !8477, !"_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtB5_10expression10ParsedExprNCNvMB1f_BL_43parse_binary_expression_or_higher_recursives_0EB7_: argument 1"}
!8479 = distinct !{!8479, !8477, !"_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtB5_10expression10ParsedExprNCNvMB1f_BL_43parse_binary_expression_or_higher_recursives_0EB7_: argument 3"}
!8480 = distinct !{!8480, !8477, !"_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtB5_10expression10ParsedExprNCNvMB1f_BL_43parse_binary_expression_or_higher_recursives_0EB7_: argument 2"}
!8481 = distinct !{!8481, !8477, !"_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtB5_10expression10ParsedExprNCNvMB1f_BL_43parse_binary_expression_or_higher_recursives_0EB7_: argument 0"}
!8482 = distinct !{!8482, i1 true, !"_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser43parse_binary_expression_or_higher_recursives_0B8_"}
!8483 = distinct !{!8483, !8482, !"_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser43parse_binary_expression_or_higher_recursives_0B8_: argument 3"}
!8484 = distinct !{!8484, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher"}
!8485 = distinct !{!8485, !8484, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher: argument 1"}
!8486 = distinct !{!8486, !8482, !"_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser43parse_binary_expression_or_higher_recursives_0B8_: argument 2"}
!8487 = distinct !{!8487, !8482, !"_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser43parse_binary_expression_or_higher_recursives_0B8_: argument 1"}
!8488 = distinct !{!8488, !8482, !"_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser43parse_binary_expression_or_higher_recursives_0B8_: argument 0"}
!8489 = distinct !{!8489, !8484, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher: argument 0"}
!8490 = distinct !{null, null}
!8491 = distinct !{!8491, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser"}
!8492 = distinct !{!8492, !8491, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8493 = distinct !{!8493, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser23recursion_recovery_expr"}
!8494 = distinct !{!8494, !8493, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser23recursion_recovery_expr: argument 0"}
!8495 = distinct !{!8495, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser"}
!8496 = distinct !{!8496, !8495, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8497 = !{i64 -383580230439757364}
!8498 = !{!8323}
!8499 = !{!8326, !8325}
!8500 = !{!8325}
!8501 = !{!8330, !8328}
!8502 = !{!8332}
!8503 = !{!8334, !8333}
!8504 = !{!8334, !8332, !8333}
!8505 = !{!8337}
!8506 = !{!8339}
!8507 = !{!8339, !8337}
!8508 = !{!8341, !8340, !8334, !8333}
!8509 = !{!8339, !8337, !8334, !8333}
!8510 = !{!8343}
!8511 = !{!8346, !8345, !8334, !8333}
!8512 = !{!8345}
!8513 = !{!8348}
!8514 = !{!8350}
!8515 = !{!8351, !8350, !8334, !8333}
!8516 = !{!8354}
!8517 = !{!8356}
!8518 = !{!8356, !8354}
!8519 = !{!8358, !8357, !8334, !8333}
!8520 = !{!8356, !8354, !8334, !8333}
!8521 = !{!8360}
!8522 = !{!8362, !8360}
!8523 = !{!8364, !8362, !8360}
!8524 = !{!8366, !8364, !8362, !8360}
!8525 = !{!8368, !8364, !8362, !8360}
!8526 = !{!8370, !8368, !8364, !8362, !8360}
!8527 = !{!8372}
!8528 = !{!8376, !8374, !8372}
!8529 = !{!8380, !8379, !8377, !8372, !8334, !8333}
!8530 = !{!8383, !8382}
!8531 = !{!8380, !8377, !8372, !8334, !8333}
!8532 = !{!8332, !8333}
!8533 = !{!8334}
!8534 = !{!8385}
!8535 = !{!8387, !8386}
!8536 = !{!8387, !8385, !8386}
!8537 = !{!8389}
!8538 = !{!8392, !8391, !8387, !8386}
!8539 = !{!8391}
!8540 = !{!8394}
!8541 = !{!8396}
!8542 = !{!8397, !8396, !8387, !8386}
!8543 = !{!8400}
!8544 = !{!8402}
!8545 = !{!8402, !8400}
!8546 = !{!8404, !8403, !8387, !8386}
!8547 = !{!8402, !8400, !8387, !8386}
!8548 = !{!8387, !8385}
!8549 = !{!8406, !8387, !8386}
!8550 = !{!8413, !8411, !8409, !8387, !8386}
!8551 = !{!8409, !8387, !8386}
!8552 = !{!8417, !8415, !8387, !8386}
!8553 = !{!8419}
!8554 = !{!8420}
!8555 = !{!8429, !8427, !8426, !8424, !8422, !8419, !8420}
!8556 = !{!8427, !8424, !8422, !8419, !8420}
!8557 = !{!8438, !8436, !8435, !8433, !8431, !8419, !8420}
!8558 = !{!8419, !8420}
!8559 = !{!8436, !8433, !8431, !8419, !8420}
!8560 = !{!8440}
!8561 = !{!8442, !8440}
!8562 = !{!8444, !8442, !8440}
!8563 = !{!8446, !8444, !8442, !8440}
!8564 = !{!8448, !8444, !8442, !8440}
!8565 = !{!8450, !8448, !8444, !8442, !8440}
!8566 = !{!8452}
!8567 = !{!8452, !8387, !8386}
!8568 = !{!8454}
!8569 = !{!8456}
!8570 = !{!8460, !8458, !8456}
!8571 = !{!8462, !8456, !8387, !8386}
!8572 = !{!8468, !8467, !8465, !8464, !8462, !8456, !8387, !8386}
!8573 = !{!8471, !8470}
!8574 = !{!8468, !8465, !8456, !8387, !8386}
!8575 = !{!8387}
!8576 = !{!8473}
!8577 = !{!8475}
!8578 = !{!8476, !8475}
!8579 = !{!8478}
!8580 = !{!8481, !8478, !8480, !8479}
!8581 = !{!8483}
!8582 = !{!8485}
!8583 = !{!8485, !8483}
!8584 = !{!8489, !8485, !8488, !8487, !8486, !8483}
!8585 = !{!8492}
!8586 = !{!8478, !8480, !8479}
!8587 = !{!8494}
!8588 = !{!8496}
!8589 = distinct !{!8589, i1 true, !"_RNvXs0_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB5_10ParsedExprINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from"}
!8590 = distinct !{!8590, !8589, !"_RNvXs0_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB5_10ParsedExprINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from: argument 1"}
!8591 = distinct !{!8591, !8589, !"_RNvXs0_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB5_10ParsedExprINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from: argument 0"}
!8592 = distinct !{!8592, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher"}
!8593 = distinct !{!8593, !8592, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher: argument 1"}
!8594 = distinct !{!8594, !8592, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher: argument 0"}
!8595 = distinct !{null, null}
!8596 = distinct !{!8596, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser19parse_if_expression"}
!8597 = distinct !{!8597, !8596, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser19parse_if_expression: argument 1"}
!8598 = distinct !{!8598, !8596, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser19parse_if_expression: argument 2"}
!8599 = distinct !{!8599, !8596, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser19parse_if_expression: argument 0"}
!8600 = distinct !{null}
!8601 = distinct !{!8601, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser23parse_simple_expression"}
!8602 = distinct !{!8602, !8601, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser23parse_simple_expression: argument 1"}
!8603 = distinct !{!8603, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher"}
!8604 = distinct !{!8604, !8603, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher: argument 1"}
!8605 = distinct !{!8605, !8601, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser23parse_simple_expression: argument 0"}
!8606 = distinct !{!8606, !8603, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser33parse_binary_expression_or_higher: argument 0"}
!8607 = distinct !{null, null}
!8608 = distinct !{!8608, i1 true, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect"}
!8609 = distinct !{!8609, !8608, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect: argument 0"}
!8610 = distinct !{!8610, i1 true, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat"}
!8611 = distinct !{!8611, !8610, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat: argument 0"}
!8612 = distinct !{!8612, i1 true, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser7do_bump"}
!8613 = distinct !{!8613, !8612, !"_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser7do_bump: argument 0"}
!8614 = distinct !{!8614, i1 true, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource4bump"}
!8615 = distinct !{!8615, !8614, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource4bump: argument 0"}
!8616 = distinct !{!8616, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser"}
!8617 = distinct !{!8617, !8616, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8618 = distinct !{!8618, i1 true, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource7do_bump"}
!8619 = distinct !{!8619, !8618, !"_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource7do_bump: argument 0"}
!8620 = distinct !{!8620, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser"}
!8621 = distinct !{!8621, !8620, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8622 = distinct !{!8622, i1 true, !"_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtB5_10expression10ParsedExprNvMB1f_BL_38parse_conditional_expression_or_higherEB7_"}
!8623 = distinct !{!8623, !8622, !"_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtB5_10expression10ParsedExprNvMB1f_BL_38parse_conditional_expression_or_higherEB7_: argument 1"}
!8624 = distinct !{!8624, !8622, !"_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtB5_10expression10ParsedExprNvMB1f_BL_38parse_conditional_expression_or_higherEB7_: argument 0"}
!8625 = distinct !{null, null, null}
!8626 = distinct !{!8626, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser"}
!8627 = distinct !{!8627, !8626, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8628 = distinct !{!8628, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser"}
!8629 = distinct !{!8629, !8628, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8630 = distinct !{!8630, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser23recursion_recovery_expr"}
!8631 = distinct !{!8631, !8630, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser23recursion_recovery_expr: argument 0"}
!8632 = distinct !{!8632, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser"}
!8633 = distinct !{!8633, !8632, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8634 = distinct !{!8634, i1 true, !"_RNvXs0_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB5_10ParsedExprINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from"}
!8635 = distinct !{!8635, !8634, !"_RNvXs0_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB5_10ParsedExprINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from: argument 1"}
!8636 = distinct !{!8636, !8634, !"_RNvXs0_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB5_10ParsedExprINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from: argument 0"}
!8637 = !{i64 4640715483335175843}
!8638 = !{!8590}
!8639 = !{!8591, !8590}
!8640 = !{!8591}
!8641 = !{!8594, !8593}
!8642 = !{!8594}
!8643 = !{!8597}
!8644 = !{!8599, !8598}
!8645 = !{!8599, !8597, !8598}
!8646 = !{!8602}
!8647 = !{!8604}
!8648 = !{!8604, !8602}
!8649 = !{!8606, !8604, !8605, !8602, !8599, !8598}
!8650 = !{!8609}
!8651 = !{!8611}
!8652 = !{!8613, !8611}
!8653 = !{!8615, !8613, !8611}
!8654 = !{!8617, !8615, !8613, !8611}
!8655 = !{!8619, !8615, !8613, !8611}
!8656 = !{!8621, !8619, !8615, !8613, !8611}
!8657 = !{!8609, !8599, !8598}
!8658 = !{!8623}
!8659 = !{!8624, !8623, !8599, !8598}
!8660 = !{!8623, !8599, !8598}
!8661 = !{!8627, !8599, !8598}
!8662 = !{!8629, !8599, !8598}
!8663 = !{!8631}
!8664 = !{!8633, !8599, !8598}
!8665 = !{!8599}
!8666 = !{!8635}
!8667 = !{!8636, !8635}
!8668 = !{!8636}
!8669 = distinct !{!8669, i1 true, !"_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorRNtNtB5_10expression10ParsedExprEB7_"}
!8670 = distinct !{!8670, !8669, !"_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorRNtNtB5_10expression10ParsedExprEB7_: argument 1"}
!8671 = distinct !{!8671, !8669, !"_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorRNtNtB5_10expression10ParsedExprEB7_: argument 0"}
!8672 = !{i64 7977165899179208818}
!8673 = !{!8671, !8670}
!8674 = distinct !{!8674, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE14drain_snapshotB6_"}
!8675 = distinct !{!8675, !8674, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE14drain_snapshotB6_: argument 0"}
!8676 = distinct !{!8676, !8674, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE14drain_snapshotB6_: argument 1"}
!8677 = distinct !{!8677, i1 true, !"_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromjEECsb6FLkjZuKG_18ruff_python_parser"}
!8678 = distinct !{!8678, !8677, !"_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromjEECsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8679 = distinct !{!8679, !8677, !"_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromjEECsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8680 = distinct !{!8680, i1 true, !"_RINvXsc_CsaSrGj5dYoxL_8thin_vecINtB6_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBH_E6extendINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainBH_EECsb6FLkjZuKG_18ruff_python_parser"}
!8681 = distinct !{!8681, !8680, !"_RINvXsc_CsaSrGj5dYoxL_8thin_vecINtB6_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBH_E6extendINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainBH_EECsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8682 = distinct !{!8682, !8680, !"_RINvXsc_CsaSrGj5dYoxL_8thin_vecINtB6_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBH_E6extendINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainBH_EECsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8683 = distinct !{!8683, i1 true, !"_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser"}
!8684 = distinct !{!8684, !8683, !"_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8685 = distinct !{!8685, i1 true, !"_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser"}
!8686 = distinct !{!8686, !8685, !"_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8687 = distinct !{!8687, i1 true, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE4pushCsb6FLkjZuKG_18ruff_python_parser"}
!8688 = distinct !{!8688, !8687, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE4pushCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8689 = distinct !{!8689, !8687, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE4pushCsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8690 = distinct !{!8690, i1 true, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE14push_uncheckedCsb6FLkjZuKG_18ruff_python_parser"}
!8691 = distinct !{!8691, !8690, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE14push_uncheckedCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8692 = distinct !{!8692, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsb6FLkjZuKG_18ruff_python_parser"}
!8693 = distinct !{!8693, !8692, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsb6FLkjZuKG_18ruff_python_parser: argument 0:thread"}
!8694 = distinct !{!8694, i1 true, !"_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser"}
!8695 = distinct !{!8695, !8694, !"_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser: argument 0:thread"}
!8696 = distinct !{!8696, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsb6FLkjZuKG_18ruff_python_parser"}
!8697 = distinct !{!8697, !8696, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8698 = distinct !{!8698, i1 true, !"_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser"}
!8699 = distinct !{!8699, !8698, !"_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8700 = distinct !{!8700, i1 true, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE14push_uncheckedCsb6FLkjZuKG_18ruff_python_parser"}
!8701 = distinct !{!8701, !8700, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE14push_uncheckedCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8702 = distinct !{!8702, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsb6FLkjZuKG_18ruff_python_parser"}
!8703 = distinct !{!8703, !8702, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8704 = distinct !{!8704, i1 true, !"_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser"}
!8705 = distinct !{!8705, !8704, !"_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8706 = !{i64 -7871430109189822437}
!8707 = !{!8675}
!8708 = !{!8676}
!8709 = !{!8678}
!8710 = !{!8679}
!8711 = !{!8679, !8676}
!8712 = !{!8678, !8675}
!8713 = !{!8682, !8681}
!8714 = !{!8682}
!8715 = !{!8684}
!8716 = !{!8681}
!8717 = !{!8686, !8682, !8681}
!8718 = !{!8684, !8682, !8681}
!8719 = !{!8688}
!8720 = !{!8688, !8689, !8682, !8681}
!8721 = !{!8689, !8681}
!8722 = !{!8688, !8682}
!8723 = !{!8691, !8688, !8689, !8682, !8681}
!8724 = !{!8688, !8682, !8681}
!8725 = !{!8695, !8693}
!8726 = !{!8697}
!8727 = !{!8699}
!8728 = !{!8699, !8697}
!8729 = !{!8699, !8697, !8682, !8681}
!8730 = !{!8701, !8682, !8681}
!8731 = !{!8705, !8703}
!8732 = distinct !{!8732, i1 true, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE14drain_snapshotB6_"}
!8733 = distinct !{!8733, !8732, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE14drain_snapshotB6_: argument 0"}
!8734 = distinct !{!8734, !8732, !"_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser14scratch_bufferINtB2_13ScratchBufferNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE14drain_snapshotB6_: argument 1"}
!8735 = distinct !{!8735, i1 true, !"_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromjEECsb6FLkjZuKG_18ruff_python_parser"}
!8736 = distinct !{!8736, !8735, !"_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromjEECsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8737 = distinct !{!8737, !8735, !"_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromjEECsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8738 = distinct !{!8738, i1 true, !"_RINvXsc_CsaSrGj5dYoxL_8thin_vecINtB6_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBH_E6extendINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainBH_EECsb6FLkjZuKG_18ruff_python_parser"}
!8739 = distinct !{!8739, !8738, !"_RINvXsc_CsaSrGj5dYoxL_8thin_vecINtB6_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBH_E6extendINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainBH_EECsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8740 = distinct !{!8740, !8738, !"_RINvXsc_CsaSrGj5dYoxL_8thin_vecINtB6_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBH_E6extendINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainBH_EECsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8741 = distinct !{!8741, i1 true, !"_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser"}
!8742 = distinct !{!8742, !8741, !"_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8743 = distinct !{!8743, i1 true, !"_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser"}
!8744 = distinct !{!8744, !8743, !"_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8745 = distinct !{!8745, i1 true, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE4pushCsb6FLkjZuKG_18ruff_python_parser"}
!8746 = distinct !{!8746, !8745, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE4pushCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8747 = distinct !{!8747, !8745, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE4pushCsb6FLkjZuKG_18ruff_python_parser: argument 1"}
!8748 = distinct !{!8748, i1 true, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE14push_uncheckedCsb6FLkjZuKG_18ruff_python_parser"}
!8749 = distinct !{!8749, !8748, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE14push_uncheckedCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8750 = distinct !{!8750, i1 true, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE14push_uncheckedCsb6FLkjZuKG_18ruff_python_parser"}
!8751 = distinct !{!8751, !8750, !"_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE14push_uncheckedCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8752 = distinct !{!8752, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsb6FLkjZuKG_18ruff_python_parser"}
!8753 = distinct !{!8753, !8752, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8754 = distinct !{!8754, i1 true, !"_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser"}
!8755 = distinct !{!8755, !8754, !"_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsb6FLkjZuKG_18ruff_python_parser: argument 0"}
!8756 = !{i64 8407467242765828855}
!8757 = !{!8733}
!8758 = !{!8734}
!8759 = !{!8736}
end_hunk_2

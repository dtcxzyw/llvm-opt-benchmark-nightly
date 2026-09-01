Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.08?download=true
inline.NumInlined: 5341
inline.NumDeleted: 2209
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules6indent6indent:bb.a
  %i.z = alloca [48 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 20 uses
  %i.ab = alloca [24 x i8], align 8               ; 15 uses
  %i.ac = alloca [24 x i8], align 8               ; 12 uses
  %i.ad = alloca [48 x i8], align 8               ; 10 uses
  %i.ae = alloca [8 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %1, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.af = call { ptr, i64 } @_RNvXs2_NtCsEhZmuQNqkz_11ruff_linter10docstringsNtB5_13DocstringBodyNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae) ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  %i.ai = call { i32, i32 } @_RNvXs1_NtCsEhZmuQNqkz_11ruff_linter10docstringsNtB5_13DocstringBodyNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
  %i.aj = extractvalue { i32, i32 } %i.ai, 0
  call void @_RNvMs3_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_26NewlineWithTrailingNewline11with_offset(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ah, i32 noundef %i.aj)
  %.sroa.24255.32.copyload = load ptr, ptr %i.ad, align 8 ; 11 uses
  %.sroa.43.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.43.32.copyload = load i64, ptr %.sroa.43.32..sroa_idx, align 8 ; 10 uses
  %.sroa.61.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.61.32.copyload = load i32, ptr %.sroa.61.32..sroa_idx, align 8 ; 3 uses
  %.sroa.79277.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.79277.32.copyload = load ptr, ptr %.sroa.79277.32..sroa_idx, align 8 ; 4 uses
  %.sroa.91.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.91.sroa.0.0.copyload = load i64, ptr %.sroa.91.32..sroa_idx, align 8 ; 5 uses
  %.sroa.91.sroa.10.0..sroa.91.32..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.91.sroa.10.0.copyload = load i32, ptr %.sroa.91.sroa.10.0..sroa.91.32..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.91.sroa.14.0..sroa.91.32..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %.sroa.91.sroa.14.0.copyload = load i32, ptr %.sroa.91.sroa.14.0..sroa.91.32..sroa_idx.sroa_idx, align 4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ak = icmp eq i64 %.sroa.43.32.copyload, 0
  br i1 %i.ak, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread798, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.24255.32.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4043)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.24255.32.copyload, i64 %.sroa.43.32.copyload
  %i.am = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !4046, !nonnull !9, !noundef !9
  %i.an = call { i64, ptr } %i.am(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %.sroa.24255.32.copyload, ptr noundef nonnull readonly %i.al), !noalias !4052, !inline_history !3986 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %bb.c, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %bb.b
  %i.aq = extractvalue { i64, ptr } %i.an, 1
  %i.ar = call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.aq, ptr noundef nonnull readonly %.sroa.24255.32.copyload), !noalias !4053 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.ar, %.sroa.43.32.copyload
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.24255.32.copyload, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !4043, !noalias !4053, !noundef !9
  %cond.i = icmp eq i8 %i.at, 13
  br i1 %cond.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.au = add nuw i64 %i.ar, 1                    ; 2 uses
  %i.av = icmp ult i64 %i.au, %.sroa.43.32.copyload
  br i1 %i.av, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.24255.32.copyload, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !4043, !noalias !4053, !noundef !9
  %i.ay = icmp eq i8 %i.ax, 10
  br i1 %i.ay, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  %i.az = phi i64 [ 1, %.thread.i ], [ 2, %bb.e ]
  %i.ba = add i64 %i.az, %i.ar                    ; 12 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp ult i64 %i.ba, %.sroa.43.32.copyload
  br i1 %.not.i.i, label %bb.h, label %.split3.i.i

.split3.i.i:                                      ; preds = %bb.g
  %i.bc = icmp eq i64 %i.ba, %.sroa.43.32.copyload
  br i1 %i.bc, label %.split.i.i, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.24255.32.copyload, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !4054, !noalias !4057, !noundef !9
  %i.bf = icmp sgt i8 %i.be, -65
  br i1 %i.bf, label %.split.i.i, label %bb.j

.split.i.i:                                       ; preds = %bb.h, %.split3.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.24255.32.copyload, i64 %i.ba
  %i.bh = sub i64 %.sroa.43.32.copyload, %i.ba
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i: ; preds = %.split.i.i, %bb.f
  %.sroa.9.0.i = phi i64 [ %.sroa.43.32.copyload, %bb.f ], [ %i.bh, %.split.i.i ] ; 10 uses
  %.sroa.7.0.i = phi ptr [ %.sroa.24255.32.copyload, %bb.f ], [ %i.bg, %.split.i.i ] ; 12 uses
  %i.bi = icmp ugt i64 %i.ba, 4294967295
  %i.bj = shl nuw i64 %i.ba, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.bi, i64 513, i64 %i.bj ; 2 uses
  %i.bk = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.bk, label %bb.i, label %bb.k, !prof !396

bb.i:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4059
  store i8 2, ptr %i.g, align 1, !noalias !4059
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @607) #40, !noalias !4053
  unreachable

bb.j:                                             ; preds = %bb.h, %.split3.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.24255.32.copyload, i64 noundef %.sroa.43.32.copyload, i64 noundef 0, i64 noundef %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @488) #40, !noalias !4053
  unreachable

bb.k:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  %i.bl = add i32 %.sroa.61.32.copyload, %.sroa.6.0.extract.trunc.i.i.i ; 5 uses
  %i.bm = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.bm, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !4062), !noalias !4065
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 %.sroa.9.0.i
  %i.bo = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !4072, !nonnull !9, !noundef !9
  %i.bp = call { i64, ptr } %i.bo(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %.sroa.7.0.i, ptr noundef nonnull readonly %i.bn), !noalias !4078, !inline_history !3986 ; 2 uses
  %i.bq = extractvalue { i64, ptr } %i.bp, 0
  %i.br = trunc nuw i64 %i.bq to i1
  br i1 %i.br, label %bb.m, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bs = extractvalue { i64, ptr } %i.bp, 1
  %i.bt = call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.bs, ptr noundef nonnull readonly %.sroa.7.0.i), !noalias !4079 ; 4 uses
  %.not.i.i.i210 = icmp ult i64 %i.bt, %.sroa.9.0.i
  call void @llvm.assume(i1 %.not.i.i.i210), !noalias !4065
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !4062, !noalias !4079, !noundef !9
  %cond.i211 = icmp eq i8 %i.bv, 13
  br i1 %cond.i211, label %bb.n, label %.thread.i212

bb.n:                                             ; preds = %bb.m
  %i.bw = add nuw i64 %i.bt, 1                    ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %.sroa.9.0.i
  br i1 %i.bx, label %bb.o, label %.thread.i212

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !4062, !noalias !4079, !noundef !9
  %i.ca = icmp eq i8 %i.bz, 10
  br i1 %i.ca, label %bb.p, label %.thread.i212

.thread.i212:                                     ; preds = %bb.o, %bb.n, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %.thread.i212, %bb.o
  %i.cb = phi i64 [ 1, %.thread.i212 ], [ 2, %bb.o ]
  %i.cc = add i64 %i.cb, %i.bt                    ; 10 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i216, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i.i213 = icmp ult i64 %i.cc, %.sroa.9.0.i
  br i1 %.not.i.i213, label %bb.r, label %.split3.i.i214

.split3.i.i214:                                   ; preds = %bb.q
  %i.ce = icmp eq i64 %i.cc, %.sroa.9.0.i
  br i1 %i.ce, label %.split.i.i215, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 %i.cc
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !4080, !noalias !4083, !noundef !9
  %i.ch = icmp sgt i8 %i.cg, -65
  br i1 %i.ch, label %.split.i.i215, label %bb.t

.split.i.i215:                                    ; preds = %bb.r, %.split3.i.i214
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 %i.cc
  %i.cj = sub i64 %.sroa.9.0.i, %i.cc
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i216

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i216: ; preds = %.split.i.i215, %bb.p
  %.sroa.9.0.i217 = phi i64 [ %.sroa.9.0.i, %bb.p ], [ %i.cj, %.split.i.i215 ]
  %.sroa.7.0.i218 = phi ptr [ %.sroa.7.0.i, %bb.p ], [ %i.ci, %.split.i.i215 ]
  %i.ck = icmp ugt i64 %i.cc, 4294967295
  %i.cl = shl nuw i64 %i.cc, 32
  %.sroa.09.0.insert.insert.i.i219 = select i1 %i.ck, i64 513, i64 %i.cl ; 2 uses
  %i.cm = trunc i64 %.sroa.09.0.insert.insert.i.i219 to i1
  br i1 %i.cm, label %bb.s, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i220, !prof !396

bb.s:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4085
  store i8 2, ptr %i.b, align 1, !noalias !4085
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @607) #40, !noalias !4079
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i220: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i216
  %.sroa.6.0.extract.shift.i.i.i221 = lshr i64 %.sroa.09.0.insert.insert.i.i219, 32
  %.sroa.6.0.extract.trunc.i.i.i222 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i221 to i32
  %i.cn = add i32 %i.bl, %.sroa.6.0.extract.trunc.i.i.i222
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread

bb.t:                                             ; preds = %bb.r, %.split3.i.i214
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.i, i64 noundef %.sroa.9.0.i, i64 noundef 0, i64 noundef %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @488) #40, !noalias !4079
  unreachable

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.k, %bb.b
  %.sroa.24255.16465 = phi ptr [ %.sroa.7.0.i, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %.sroa.61.16461 = phi i32 [ %i.bl, %bb.k ], [ %.sroa.61.32.copyload, %bb.b ]
  %.sroa.13.sroa.0.5428455 = phi i64 [ %i.ba, %bb.k ], [ %.sroa.43.32.copyload, %bb.b ]
  %.not = icmp eq ptr %.sroa.79277.32.copyload, null
  br i1 %.not, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread798, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.l, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i220, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0377.0797.in = phi ptr [ %.sroa.79277.32.copyload, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.7.0.i, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i220 ], [ %.sroa.7.0.i, %bb.l ]
  %.sroa.79277.6796 = phi ptr [ null, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.79277.32.copyload, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i220 ], [ %.sroa.79277.32.copyload, %bb.l ]
  %.sroa.5.0795 = phi i64 [ %.sroa.91.sroa.0.0.copyload, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.cc, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i220 ], [ %.sroa.9.0.i, %bb.l ]
  %.sroa.7378.0794 = phi i32 [ %.sroa.91.sroa.10.0.copyload, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.bl, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i220 ], [ %i.bl, %bb.l ]
  %.sroa.9379.0793 = phi i32 [ %.sroa.91.sroa.14.0.copyload, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit ], [ undef, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i220 ], [ undef, %bb.l ]
  %.sroa.13.sroa.0.5428455791 = phi i64 [ %.sroa.13.sroa.0.5428455, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.ba, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i220 ], [ %i.ba, %bb.l ]
  %.sroa.61.16461788 = phi i32 [ %.sroa.61.16461, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.cn, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i220 ], [ %i.bl, %bb.l ]
  %.sroa.43.16463787 = phi i64 [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.9.0.i217, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i220 ], [ 0, %bb.l ]
  %.sroa.24255.16465786 = phi ptr [ %.sroa.24255.16465, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.7.0.i218, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i220 ], [ inttoptr (i64 1 to ptr), %bb.l ]
  %.sroa.0377.0797 = ptrtoint ptr %.sroa.0377.0797.in to i64
  %i.co = call { ptr, i64 } @_RNvMNtCsEhZmuQNqkz_11ruff_linter10docstringsNtB2_9Docstring19compute_indentation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 2 uses
  %i.cp = extractvalue { ptr, i64 } %i.co, 0      ; 9 uses
  %i.cq = extractvalue { ptr, i64 } %i.co, 1      ; 10 uses
  %i.cr = icmp samesign ult i64 %i.cq, 16
  br i1 %i.cr, label %.preheader.i.i, label %bb.u

.preheader.i.i:                                   ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread
  %.not.i.i82 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i82, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %.lr.ph.i.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread: ; preds = %.preheader.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  br label %bb.x

bb.u:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.cs = call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef range(i8 9, 43) 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef range(i64 0, -9223372036854775808) %i.cq)
  %i.ct = extractvalue { i64, i64 } %i.cs, 0
  %i.cu = icmp eq i64 %i.ct, 1
  %i.cv = zext i1 %i.cu to i8
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.v
  %.sroa.01.05.i.i = phi i64 [ %i.cz, %bb.v ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sroa.01.05.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !4088, !noundef !9
  %i.cy = icmp eq i8 %i.cx, 9
  br i1 %i.cy, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.cz = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cz, %i.cq
  br i1 %exitcond.not.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit, label %.lr.ph.i.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit: ; preds = %.lr.ph.i.i, %bb.v, %bb.u
  %.merged.i.i = phi i8 [ %i.cv, %bb.u ], [ 1, %.lr.ph.i.i ], [ 0, %bb.v ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  %i.da = icmp ult i64 %i.cq, 32
  br i1 %i.da, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  %i.db = call noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count14do_count_chars(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cq)
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

bb.x:                                             ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  %.merged.i.i815 = phi i8 [ 0, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread ], [ %.merged.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit ]
  %i.dc = call noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cq)
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit: ; preds = %bb.w, %bb.x
  %.merged.i.i814 = phi i8 [ %.merged.i.i815, %bb.x ], [ %.merged.i.i, %bb.w ]
  %.sroa.0.0.i83 = phi i64 [ %i.dc, %bb.x ], [ %i.db, %bb.w ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 0, ptr %i.ac, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  store i64 0, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr null, ptr %i.ab, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.13.sroa.12.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1024
  br label %.lr.ph

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread798: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit, %bb.a, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  ret void

.peel.next:                                       ; preds = %.peel.next.preheader, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176
  %.sroa.24255.0617 = phi ptr [ %.sroa.24255.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.24255.0617.ph, %.peel.next.preheader ] ; 28 uses
  %.sroa.43.0616 = phi i64 [ %.sroa.43.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.43.0616.ph, %.peel.next.preheader ] ; 22 uses
  %.sroa.61.0615 = phi i32 [ %.sroa.61.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.61.0615.ph, %.peel.next.preheader ] ; 10 uses
  %.sroa.79277.0614 = phi ptr [ %.sroa.79277.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.79277.0614.ph, %.peel.next.preheader ] ; 6 uses
  %.sroa.0292.0612 = phi ptr [ %.sroa.0292.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.0292.0612.ph, %.peel.next.preheader ]
  %.sroa.13.sroa.0.0611 = phi i64 [ %.sroa.13.sroa.0.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.13.sroa.0.0611.ph, %.peel.next.preheader ]
  %.sroa.13.sroa.12.0610 = phi i32 [ %.sroa.13.sroa.12.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.13.sroa.12.0610.ph, %.peel.next.preheader ]
  %.sroa.13.sroa.13.0609 = phi i32 [ %.sroa.13.sroa.13.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.13.sroa.13.0609.ph, %.peel.next.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %.sroa.0292.0612, ptr %i.aa, align 8
  store i64 %.sroa.13.sroa.0.0611, ptr %.sroa.13.0..sroa_idx, align 8
  store i32 %.sroa.13.sroa.12.0610, ptr %.sroa.13.sroa.12.0..sroa.13.0..sroa_idx.sroa_idx, align 8
  store i32 %.sroa.13.sroa.13.0609, ptr %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx.sroa_idx, align 4
  %i.dg = load ptr, ptr %i.ab, align 8, !noundef !9
  %.not73 = icmp eq ptr %i.dg, null
  br i1 %.not73, label %bb.cm, label %bb.y

.outer._crit_edge:                                ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176
  %.sroa.517.0.ph.lcssa604 = phi i64 [ %.sroa.517.0.ph640, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.517.1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ], [ %.sroa.517.0.ph640, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ]
  %.sroa.015.0.ph.lcssa594 = phi i64 [ %.sroa.015.0.ph641, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.015.1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ], [ %.sroa.015.0.ph641, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ]
  %.sroa.013.0.ph.lcssa584 = phi i8 [ %.sroa.013.0.ph642, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.013.1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ], [ %.sroa.013.0.ph642, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ]
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.dh = load ptr, ptr %2, align 8, !nonnull !9, !align !473, !noundef !9 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 152
  %i.dj = load i64, ptr %i.di, align 8, !noundef !9 ; 2 uses
  %i.dk = and i64 %i.dj, 2097152
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = trunc nuw i8 %.sroa.013.0.ph.lcssa584 to i1
  %or.cond8 = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %or.cond8, label %bb.cv, label %bb.cu

bb.y:                                             ; preds = %.peel.next
  %i.dn = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.ah unwind label %.loopexit544.loopexit.loopexit ; 2 uses

bb.z:                                             ; preds = %bb.ai
  %i.do = icmp eq i64 %.sroa.43.0616, 0
  br i1 %i.do, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.24255.0617) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4093)
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.24255.0617, i64 %.sroa.43.0616
  %i.dq = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !4096, !nonnull !9, !noundef !9
  %i.dr = invoke { i64, ptr } %i.dq(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %.sroa.24255.0617, ptr noundef nonnull readonly %i.dp)
          to label %.noexc241 unwind label %.loopexit544.loopexit.loopexit, !inline_history !4007 ; 2 uses

.noexc241:                                        ; preds = %bb.aa
  %i.ds = extractvalue { i64, ptr } %i.dr, 0
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %bb.ab, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88

bb.ab:                                            ; preds = %.noexc241
  %i.du = extractvalue { i64, ptr } %i.dr, 1
  %i.dv = invoke noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.du, ptr noundef nonnull readonly %.sroa.24255.0617)
          to label %.noexc242 unwind label %.loopexit544.loopexit.loopexit ; 4 uses

.noexc242:                                        ; preds = %bb.ab
  %.not.i.i.i228 = icmp ult i64 %i.dv, %.sroa.43.0616
  call void @llvm.assume(i1 %.not.i.i.i228)
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.24255.0617, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !4093, !noalias !4102, !noundef !9
  %cond.i229 = icmp eq i8 %i.dx, 13
  br i1 %cond.i229, label %bb.ac, label %.thread.i230

bb.ac:                                            ; preds = %.noexc242
  %i.dy = add nuw i64 %i.dv, 1                    ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %.sroa.43.0616
  br i1 %i.dz, label %bb.ad, label %.thread.i230

bb.ad:                                            ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.24255.0617, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !4093, !noalias !4102, !noundef !9
  %i.ec = icmp eq i8 %i.eb, 10
  br i1 %i.ec, label %bb.ae, label %.thread.i230

.thread.i230:                                     ; preds = %bb.ad, %bb.ac, %.noexc242
  br label %bb.ae

bb.ae:                                            ; preds = %.thread.i230, %bb.ad
  %i.ed = phi i64 [ 1, %.thread.i230 ], [ 2, %bb.ad ]
  %i.ee = add i64 %i.ed, %i.dv                    ; 11 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i231 = icmp ult i64 %i.ee, %.sroa.43.0616
  br i1 %.not.i.i231, label %bb.ag, label %.split3.i.i232

.split3.i.i232:                                   ; preds = %bb.af
  %i.eg = icmp eq i64 %i.ee, %.sroa.43.0616
  br i1 %i.eg, label %.split.i.i233, label %.loopexit714.invoke

bb.ag:                                            ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.24255.0617, i64 %i.ee
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !4103, !noalias !4106, !noundef !9
  %i.ej = icmp sgt i8 %i.ei, -65
  br i1 %i.ej, label %.split.i.i233, label %.loopexit714.invoke

.split.i.i233:                                    ; preds = %bb.ag, %.split3.i.i232
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.24255.0617, i64 %i.ee
  %i.el = sub i64 %.sroa.43.0616, %i.ee
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234: ; preds = %.split.i.i233, %bb.ae
  %.sroa.9.0.i235 = phi i64 [ %.sroa.43.0616, %bb.ae ], [ %i.el, %.split.i.i233 ]
  %.sroa.7.0.i236 = phi ptr [ %.sroa.24255.0617, %bb.ae ], [ %i.ek, %.split.i.i233 ]
  %i.em = icmp ugt i64 %i.ee, 4294967295
  %i.en = shl nuw i64 %i.ee, 32
  %.sroa.09.0.insert.insert.i.i237 = select i1 %i.em, i64 513, i64 %i.en ; 2 uses
  %i.eo = trunc i64 %.sroa.09.0.insert.insert.i.i237 to i1
  br i1 %i.eo, label %.loopexit712, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238, !prof !396

.loopexit712:                                     ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234.peel, %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4108
  br label %.loopexit715.invoke

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234
  %.sroa.6.0.extract.shift.i.i.i239 = lshr i64 %.sroa.09.0.insert.insert.i.i237, 32
  %.sroa.6.0.extract.trunc.i.i.i240 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i239 to i32
  %i.ep = add i32 %.sroa.61.0615, %.sroa.6.0.extract.trunc.i.i.i240
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88

.loopexit544:                                     ; preds = %.loopexit.split-lp545, %.body202
  %.pn78 = phi { ptr, i32 } [ %.pn, %.body202 ], [ %lpad.loopexit.split-lp547, %.loopexit.split-lp545 ] ; 2 uses
  %.sroa.027.0 = phi i8 [ %.sroa.027.3, %.body202 ], [ %.sroa.027.1.ph, %.loopexit.split-lp545 ]
  %i.eq = trunc nuw i8 %.sroa.027.0 to i1
  br i1 %i.eq, label %.thread480, label %common.resume

.loopexit544.loopexit.loopexit:                   ; preds = %bb.y, %bb.ah, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88, %bb.aj, %bb.cn, %bb.co, %bb.aa, %bb.ab
  %lpad.loopexit708 = landingpad { ptr, i32 }
          cleanup
  br label %.thread480

.loopexit544.loopexit.loopexit.split-lp:          ; preds = %bb.au, %bb.av, %bb.az, %bb.ba, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88.peel, %bb.bg, %bb.bl, %bb.bm
  %lpad.loopexit.split-lp709 = landingpad { ptr, i32 }
          cleanup
  br label %.thread480

.loopexit544.loopexit.split-lp:                   ; preds = %bb.cj, %bb.ar, %bb.ap, %bb.ao, %bb.cf, %bb.bs, %bb.am, %.loopexit713
  %lpad.loopexit.split-lp550 = landingpad { ptr, i32 }
          cleanup
  br label %.thread480

.loopexit.split-lp545:                            ; preds = %.loopexit714.invoke, %.loopexit715.invoke, %bb.cv, %bb.cw, %bb.ek, %bb.el, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit194, %bb.er, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit205, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread, %bb.en, %bb.eo
  %.sroa.027.1.ph = phi i8 [ %.sroa.027.3, %bb.ek ], [ %.sroa.027.3, %bb.el ], [ %.sroa.027.3, %bb.eo ], [ %.sroa.027.3, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit194 ], [ %.sroa.027.3, %bb.er ], [ %.sroa.027.3, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit205 ], [ 1, %.loopexit715.invoke ], [ 1, %bb.cv ], [ 1, %bb.cw ], [ 1, %.loopexit714.invoke ], [ %.sroa.027.3, %bb.en ], [ 0, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread ]
  %lpad.loopexit.split-lp547 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit544

bb.ah:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 92, ptr %i.h, align 4
  %i.er = extractvalue { ptr, i64 } %i.dn, 0
  %i.es = extractvalue { ptr, i64 } %i.dn, 1
  %i.et = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.er, i64 noundef %i.es, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1)
          to label %bb.ai unwind label %.loopexit544.loopexit.loopexit

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.et, label %bb.cm, label %bb.z

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88: ; preds = %bb.z, %.noexc241, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238
  %.sroa.24.sroa.9.3 = phi i32 [ undef, %.noexc241 ], [ undef, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ %.sroa.91.sroa.14.0.copyload, %bb.z ] ; 2 uses
  %.sroa.24.sroa.8.3 = phi i32 [ %.sroa.61.0615, %.noexc241 ], [ %.sroa.61.0615, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ %.sroa.91.sroa.10.0.copyload, %bb.z ] ; 2 uses
  %.sroa.24.sroa.0.3 = phi i64 [ %.sroa.43.0616, %.noexc241 ], [ %i.ee, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ %.sroa.91.sroa.0.0.copyload, %bb.z ] ; 2 uses
  %.sroa.15.3.in = phi ptr [ %.sroa.24255.0617, %.noexc241 ], [ %.sroa.24255.0617, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ %.sroa.79277.0614, %bb.z ] ; 4 uses
  %.sroa.79277.9 = phi ptr [ %.sroa.79277.0614, %.noexc241 ], [ %.sroa.79277.0614, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ null, %bb.z ] ; 2 uses
  %.sroa.61.8 = phi i32 [ %.sroa.61.0615, %.noexc241 ], [ %i.ep, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ %.sroa.61.0615, %bb.z ] ; 2 uses
  %.sroa.43.8 = phi i64 [ 0, %.noexc241 ], [ %.sroa.9.0.i235, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ 0, %bb.z ] ; 2 uses
  %.sroa.24255.8 = phi ptr [ inttoptr (i64 1 to ptr), %.noexc241 ], [ %.sroa.7.0.i236, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ %.sroa.24255.0617, %bb.z ] ; 2 uses
  %.not74 = icmp ne ptr %.sroa.15.3.in, null      ; 2 uses
  %i.eu = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.aj unwind label %.loopexit544.loopexit.loopexit ; 2 uses

bb.aj:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88
  %i.ev = extractvalue { ptr, i64 } %i.eu, 0
  %i.ew = extractvalue { ptr, i64 } %i.eu, 1
  %i.ex = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ev, i64 noundef %i.ew)
          to label %bb.ak unwind label %.loopexit544.loopexit.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.ey = extractvalue { ptr, i64 } %i.ex, 1
  %i.ez = icmp eq i64 %i.ey, 0                    ; 2 uses
  %or.cond = select i1 %.not74, i1 %i.ez, i1 false
  br i1 %or.cond, label %bb.al, label %.loopexit713.loopexit

.loopexit713.loopexit:                            ; preds = %bb.ak
  %.sroa.15.3.le = ptrtoint ptr %.sroa.15.3.in to i64
  br label %.loopexit713

.loopexit713:                                     ; preds = %.loopexit713.loopexit, %bb.bh
  %.lcssa655 = phi i1 [ %i.hl, %bb.bh ], [ %i.ez, %.loopexit713.loopexit ]
  %.sroa.24.sroa.9.3.lcssa = phi i32 [ %.sroa.24.sroa.9.3.peel, %bb.bh ], [ %.sroa.24.sroa.9.3, %.loopexit713.loopexit ] ; 2 uses
  %.sroa.24.sroa.8.3.lcssa = phi i32 [ %.sroa.24.sroa.8.3.peel, %bb.bh ], [ %.sroa.24.sroa.8.3, %.loopexit713.loopexit ] ; 2 uses
  %.sroa.24.sroa.0.3.lcssa = phi i64 [ %.sroa.24.sroa.0.3.peel, %bb.bh ], [ %.sroa.24.sroa.0.3, %.loopexit713.loopexit ] ; 2 uses
  %.sroa.15.3.lcssa = phi i64 [ %.sroa.15.3.peel, %bb.bh ], [ %.sroa.15.3.le, %.loopexit713.loopexit ] ; 2 uses
  %.sroa.79277.9.lcssa = phi ptr [ %.sroa.79277.9.peel, %bb.bh ], [ %.sroa.79277.9, %.loopexit713.loopexit ]
  %.sroa.61.8.lcssa = phi i32 [ %.sroa.61.8.peel, %bb.bh ], [ %.sroa.61.8, %.loopexit713.loopexit ]
  %.sroa.43.8.lcssa = phi i64 [ %.sroa.43.8.peel, %bb.bh ], [ %.sroa.43.8, %.loopexit713.loopexit ]
  %.sroa.24255.8.lcssa = phi ptr [ %.sroa.24255.8.peel, %bb.bh ], [ %.sroa.24255.8, %.loopexit713.loopexit ]
  %.lcssa654 = phi ptr [ %5, %bb.bh ], [ %.sroa.15.3.in, %.loopexit713.loopexit ]
  %.not74.lcssa = phi i1 [ %.not74.peel, %bb.bh ], [ %.not74, %.loopexit713.loopexit ]
  %i.fa = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.am unwind label %.loopexit544.loopexit.split-lp ; 2 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176: ; preds = %bb.cm, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167, %.noexc170, %bb.al
  %.sroa.13.sroa.13.2 = phi i32 [ %.sroa.24.sroa.9.3, %bb.al ], [ %.sroa.91.sroa.14.0.copyload, %bb.cm ], [ undef, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ undef, %.noexc170 ]
  %.sroa.13.sroa.12.2 = phi i32 [ %.sroa.24.sroa.8.3, %bb.al ], [ %.sroa.91.sroa.10.0.copyload, %bb.cm ], [ %.sroa.61.0615, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ %.sroa.61.0615, %.noexc170 ]
  %.sroa.13.sroa.0.2 = phi i64 [ %.sroa.24.sroa.0.3, %bb.al ], [ %.sroa.91.sroa.0.0.copyload, %bb.cm ], [ %i.jt, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ %.sroa.43.0616, %.noexc170 ]
  %.sroa.0292.2 = phi ptr [ %.sroa.15.3.in, %bb.al ], [ %.sroa.79277.0614, %bb.cm ], [ %.sroa.24255.0617, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ %.sroa.24255.0617, %.noexc170 ] ; 2 uses
  %.sroa.79277.2 = phi ptr [ %.sroa.79277.9, %bb.al ], [ null, %bb.cm ], [ %.sroa.79277.0614, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ %.sroa.79277.0614, %.noexc170 ]
  %.sroa.61.2 = phi i32 [ %.sroa.61.8, %bb.al ], [ %.sroa.61.0615, %bb.cm ], [ %i.ke, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ %.sroa.61.0615, %.noexc170 ]
  %.sroa.43.2 = phi i64 [ %.sroa.43.8, %bb.al ], [ 0, %bb.cm ], [ %.sroa.9.0.i164, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ 0, %.noexc170 ]
  %.sroa.24255.2 = phi ptr [ %.sroa.24255.8, %bb.al ], [ %.sroa.24255.0617, %bb.cm ], [ %.sroa.7.0.i165, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ inttoptr (i64 1 to ptr), %.noexc170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.not60 = icmp eq ptr %.sroa.0292.2, null
  br i1 %.not60, label %.outer._crit_edge, label %.peel.next, !llvm.loop !4111

bb.am:                                            ; preds = %.loopexit713
  %i.fb = extractvalue { ptr, i64 } %i.fa, 0
  %i.fc = extractvalue { ptr, i64 } %i.fa, 1
  %i.fd = invoke { ptr, i64 } @_RNvNtCskLngH8kgpZI_15ruff_python_ast10docstrings13leading_space(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fb, i64 noundef %i.fc)
          to label %bb.an unwind label %.loopexit544.loopexit.split-lp ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.fe = extractvalue { ptr, i64 } %i.fd, 0      ; 5 uses
  %i.ff = extractvalue { ptr, i64 } %i.fd, 1      ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  %i.fg = icmp ult i64 %i.ff, 32
  br i1 %i.fg, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fh = invoke noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count14do_count_chars(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef %i.ff)
          to label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit116 unwind label %.loopexit544.loopexit.split-lp

bb.ap:                                            ; preds = %bb.an
  %i.fi = invoke noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef %i.ff)
          to label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit116 unwind label %.loopexit544.loopexit.split-lp

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit116: ; preds = %bb.ao, %bb.ap
  %.sroa.0.0.i113 = phi i64 [ %i.fh, %bb.ao ], [ %i.fi, %bb.ap ] ; 3 uses
  %i.fj = trunc nuw i8 %.sroa.013.0.ph642 to i1
  br i1 %i.fj, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124, label %bb.aq

bb.aq:                                            ; preds = %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit116
  %i.fk = icmp samesign ult i64 %i.ff, 16
  br i1 %i.fk, label %.preheader.i.i118, label %bb.ar

.preheader.i.i118:                                ; preds = %bb.aq
  %.not.i.i119 = icmp eq i64 %i.ff, 0
  br i1 %.not.i.i119, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124, label %.lr.ph.i.i120

bb.ar:                                            ; preds = %bb.aq
  %i.fl = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef range(i8 9, 43) 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef range(i64 0, -9223372036854775808) %i.ff)
          to label %.noexc123 unwind label %.loopexit544.loopexit.split-lp

.noexc123:                                        ; preds = %bb.ar
  %i.fm = extractvalue { i64, i64 } %i.fl, 0
  %i.fn = icmp eq i64 %i.fm, 1
  %i.fo = zext i1 %i.fn to i8
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124

.lr.ph.i.i120:                                    ; preds = %.preheader.i.i118, %bb.as
  %.sroa.01.05.i.i121 = phi i64 [ %i.fs, %bb.as ], [ 0, %.preheader.i.i118 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.01.05.i.i121
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !4113, !noundef !9
  %i.fr = icmp eq i8 %i.fq, 9
  br i1 %i.fr, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i120
  %i.fs = add nuw nsw i64 %.sroa.01.05.i.i121, 1  ; 2 uses
  %exitcond.not.i.i122 = icmp eq i64 %i.fs, %i.ff
  br i1 %exitcond.not.i.i122, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124, label %.lr.ph.i.i120

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124: ; preds = %.lr.ph.i.i120, %bb.as, %.preheader.i.i118, %.noexc123, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit116
  %.sroa.013.1 = phi i8 [ 1, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit116 ], [ %i.fo, %.noexc123 ], [ 0, %.preheader.i.i118 ], [ 0, %bb.as ], [ 1, %.lr.ph.i.i120 ] ; 2 uses
  %i.ft = load ptr, ptr %i.df, align 8, !nonnull !9, !align !473, !noundef !9 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 152
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !9
  %i.fw = and i64 %i.fv, 4194304
  %i.fx = icmp ne i64 %i.fw, 0
  %i.fy = icmp ult i64 %.sroa.0.0.i113, %.sroa.0.0.i83
  %or.cond542 = and i1 %i.fy, %i.fx
  br i1 %or.cond542, label %bb.bs, label %bb.at

bb.at:                                            ; preds = %bb.cg, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124
  %.not80 = xor i1 %.lcssa655, true
  %brmerge81 = select i1 %.not74.lcssa, i1 true, i1 %.not80
  br i1 %brmerge81, label %bb.ch, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.ch, %bb.at
  %.sroa.517.1 = phi i64 [ %.sroa.517.0.ph640, %bb.at ], [ undef, %bb.ch ], [ %.sroa.0.0.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 2 uses
  %.sroa.015.1 = phi i64 [ %.sroa.015.0.ph641, %bb.at ], [ 0, %bb.ch ], [ 1, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.not60605 = icmp eq i64 %.sroa.15.3.lcssa, 0
  br i1 %.not60605, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152
  %.sroa.013.0.ph642 = phi i8 [ %.merged.i.i814, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.013.1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 3 uses
  %.sroa.015.0.ph641 = phi i64 [ 1, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.015.1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 4 uses
  %.sroa.517.0.ph640 = phi i64 [ -1, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.517.1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 4 uses
  %.sroa.0.0.ph639 = phi i1 [ true, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ false, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 2 uses
  %.sroa.24255.0.ph638 = phi ptr [ %.sroa.24255.16465786, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24255.8.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 28 uses
  %.sroa.43.0.ph637 = phi i64 [ %.sroa.43.16463787, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.43.8.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 24 uses
  %.sroa.61.0.ph636 = phi i32 [ %.sroa.61.16461788, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.61.8.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 10 uses
  %.sroa.79277.0.ph635 = phi ptr [ %.sroa.79277.6796, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.79277.9.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 6 uses
  %.sroa.15.0.ph634 = phi i64 [ %.sroa.0377.0797, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.15.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 2 uses
  %.sroa.0292.0.ph633 = phi ptr [ %.sroa.24255.32.copyload, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.lcssa654, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ]
  %.sroa.13.sroa.0.0.ph632 = phi i64 [ %.sroa.13.sroa.0.5428455791, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24.sroa.0.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ]
  %.sroa.13.sroa.12.0.ph631 = phi i32 [ %.sroa.61.32.copyload, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24.sroa.8.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ]
  %.sroa.13.sroa.13.0.ph630 = phi i32 [ undef, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24.sroa.9.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ]
  %.sroa.24.sroa.0.0.ph629 = phi i64 [ %.sroa.5.0795, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24.sroa.0.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 2 uses
  %.sroa.24.sroa.8.0.ph628 = phi i32 [ %.sroa.7378.0794, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24.sroa.8.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 2 uses
  %.sroa.24.sroa.9.0.ph627 = phi i32 [ %.sroa.9379.0793, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24.sroa.9.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %.sroa.0292.0.ph633, ptr %i.aa, align 8
  store i64 %.sroa.13.sroa.0.0.ph632, ptr %.sroa.13.0..sroa_idx, align 8
  store i32 %.sroa.13.sroa.12.0.ph631, ptr %.sroa.13.sroa.12.0..sroa.13.0..sroa_idx.sroa_idx, align 8
  store i32 %.sroa.13.sroa.13.0.ph630, ptr %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx.sroa_idx, align 4
  %i.fz = load ptr, ptr %i.ab, align 8, !noundef !9
  %.not73.peel = icmp eq ptr %i.fz, null
  br i1 %.not73.peel, label %bb.bj, label %bb.au

bb.au:                                            ; preds = %.lr.ph
  %i.ga = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.av unwind label %.loopexit544.loopexit.loopexit.split-lp ; 2 uses

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 92, ptr %i.h, align 4
  %i.gb = extractvalue { ptr, i64 } %i.ga, 0
  %i.gc = extractvalue { ptr, i64 } %i.ga, 1
  %i.gd = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gb, i64 noundef %i.gc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1)
          to label %bb.aw unwind label %.loopexit544.loopexit.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.gd, label %bb.bj, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.sroa.0.0.ph639, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88.peel, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ge = icmp eq i64 %.sroa.43.0.ph637, 0
  br i1 %i.ge, label %.noexc.thread.peel, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.24255.0.ph638) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4118)
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph638, i64 %.sroa.43.0.ph637
  %i.gg = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !4120, !nonnull !9, !noundef !9
  %i.gh = invoke { i64, ptr } %i.gg(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %.sroa.24255.0.ph638, ptr noundef nonnull readonly %i.gf)
          to label %.noexc241.peel unwind label %.loopexit544.loopexit.loopexit.split-lp, !inline_history !4007 ; 2 uses

.noexc241.peel:                                   ; preds = %bb.az
  %i.gi = extractvalue { i64, ptr } %i.gh, 0
  %i.gj = trunc nuw i64 %i.gi to i1
  br i1 %i.gj, label %bb.ba, label %.noexc.peel

bb.ba:                                            ; preds = %.noexc241.peel
  %i.gk = extractvalue { i64, ptr } %i.gh, 1
  %i.gl = invoke noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.gk, ptr noundef nonnull readonly %.sroa.24255.0.ph638)
          to label %.noexc242.peel unwind label %.loopexit544.loopexit.loopexit.split-lp ; 4 uses

.noexc242.peel:                                   ; preds = %bb.ba
  %.not.i.i.i228.peel = icmp ult i64 %i.gl, %.sroa.43.0.ph637
  call void @llvm.assume(i1 %.not.i.i.i228.peel)
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph638, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !4118, !noalias !4102, !noundef !9
  %cond.i229.peel = icmp eq i8 %i.gn, 13
  br i1 %cond.i229.peel, label %bb.bb, label %.thread.i230.peel

bb.bb:                                            ; preds = %.noexc242.peel
  %i.go = add nuw i64 %i.gl, 1                    ; 2 uses
  %i.gp = icmp ult i64 %i.go, %.sroa.43.0.ph637
  br i1 %i.gp, label %bb.bc, label %.thread.i230.peel

bb.bc:                                            ; preds = %bb.bb
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph638, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !4118, !noalias !4102, !noundef !9
  %i.gs = icmp eq i8 %i.gr, 10
  br i1 %i.gs, label %bb.bd, label %.thread.i230.peel

.thread.i230.peel:                                ; preds = %bb.bc, %bb.bb, %.noexc242.peel
  br label %bb.bd

bb.bd:                                            ; preds = %.thread.i230.peel, %bb.bc
  %i.gt = phi i64 [ 1, %.thread.i230.peel ], [ 2, %bb.bc ]
  %i.gu = add i64 %i.gt, %i.gl                    ; 11 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234.peel, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not.i.i231.peel = icmp ult i64 %i.gu, %.sroa.43.0.ph637
  br i1 %.not.i.i231.peel, label %bb.bf, label %.split3.i.i232.peel

.split3.i.i232.peel:                              ; preds = %bb.be
  %i.gw = icmp eq i64 %i.gu, %.sroa.43.0.ph637
  br i1 %i.gw, label %.split.i.i233.peel, label %.loopexit714.invoke

bb.bf:                                            ; preds = %bb.be
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph638, i64 %i.gu
  %i.gy = load i8, ptr %i.gx, align 1, !alias.scope !4103, !noalias !4106, !noundef !9
  %i.gz = icmp sgt i8 %i.gy, -65
  br i1 %i.gz, label %.split.i.i233.peel, label %.loopexit714.invoke

.split.i.i233.peel:                               ; preds = %bb.bf, %.split3.i.i232.peel
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph638, i64 %i.gu
  %i.hb = sub i64 %.sroa.43.0.ph637, %i.gu
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234.peel

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234.peel: ; preds = %.split.i.i233.peel, %bb.bd
  %.sroa.9.0.i235.peel = phi i64 [ %.sroa.43.0.ph637, %bb.bd ], [ %i.hb, %.split.i.i233.peel ]
  %.sroa.7.0.i236.peel = phi ptr [ %.sroa.24255.0.ph638, %bb.bd ], [ %i.ha, %.split.i.i233.peel ]
  %i.hc = icmp ugt i64 %i.gu, 4294967295
  %i.hd = shl nuw i64 %i.gu, 32
  %.sroa.09.0.insert.insert.i.i237.peel = select i1 %i.hc, i64 513, i64 %i.hd ; 2 uses
  %i.he = trunc i64 %.sroa.09.0.insert.insert.i.i237.peel to i1
  br i1 %i.he, label %.loopexit712, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel, !prof !396

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234.peel
  %.sroa.6.0.extract.shift.i.i.i239.peel = lshr i64 %.sroa.09.0.insert.insert.i.i237.peel, 32
  %.sroa.6.0.extract.trunc.i.i.i240.peel = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i239.peel to i32
  %i.hf = add i32 %.sroa.61.0.ph636, %.sroa.6.0.extract.trunc.i.i.i240.peel
  br label %.noexc.peel

.noexc.peel:                                      ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel, %.noexc241.peel
  %.sroa.61.17.peel = phi i32 [ %i.hf, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel ], [ %.sroa.61.0.ph636, %.noexc241.peel ]
  %.sroa.43.17.peel = phi i64 [ %.sroa.9.0.i235.peel, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel ], [ 0, %.noexc241.peel ]
  %.sroa.24255.17.peel = phi ptr [ %.sroa.7.0.i236.peel, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel ], [ inttoptr (i64 1 to ptr), %.noexc241.peel ]
  %.sroa.3.0.i224.peel = phi i64 [ %i.gu, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel ], [ %.sroa.43.0.ph637, %.noexc241.peel ]
  %3 = ptrtoint ptr %.sroa.24255.0.ph638 to i64
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88.peel

.noexc.thread.peel:                               ; preds = %bb.ay
  %4 = ptrtoint ptr %.sroa.79277.0.ph635 to i64
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88.peel

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88.peel: ; preds = %.noexc.thread.peel, %.noexc.peel, %bb.ax
  %.sroa.24.sroa.9.3.peel = phi i32 [ %.sroa.24.sroa.9.0.ph627, %bb.ax ], [ %.sroa.91.sroa.14.0.copyload, %.noexc.thread.peel ], [ undef, %.noexc.peel ] ; 2 uses
  %.sroa.24.sroa.8.3.peel = phi i32 [ %.sroa.24.sroa.8.0.ph628, %bb.ax ], [ %.sroa.91.sroa.10.0.copyload, %.noexc.thread.peel ], [ %.sroa.61.0.ph636, %.noexc.peel ] ; 2 uses
  %.sroa.24.sroa.0.3.peel = phi i64 [ %.sroa.24.sroa.0.0.ph629, %bb.ax ], [ %.sroa.91.sroa.0.0.copyload, %.noexc.thread.peel ], [ %.sroa.3.0.i224.peel, %.noexc.peel ] ; 2 uses
  %.sroa.15.3.peel = phi i64 [ %.sroa.15.0.ph634, %bb.ax ], [ %4, %.noexc.thread.peel ], [ %3, %.noexc.peel ] ; 3 uses
  %.sroa.79277.9.peel = phi ptr [ %.sroa.79277.0.ph635, %bb.ax ], [ null, %.noexc.thread.peel ], [ %.sroa.79277.0.ph635, %.noexc.peel ] ; 2 uses
  %.sroa.61.8.peel = phi i32 [ %.sroa.61.0.ph636, %bb.ax ], [ %.sroa.61.0.ph636, %.noexc.thread.peel ], [ %.sroa.61.17.peel, %.noexc.peel ] ; 2 uses
  %.sroa.43.8.peel = phi i64 [ %.sroa.43.0.ph637, %bb.ax ], [ 0, %.noexc.thread.peel ], [ %.sroa.43.17.peel, %.noexc.peel ] ; 2 uses
  %.sroa.24255.8.peel = phi ptr [ %.sroa.24255.0.ph638, %bb.ax ], [ %.sroa.24255.0.ph638, %.noexc.thread.peel ], [ %.sroa.24255.17.peel, %.noexc.peel ] ; 2 uses
  %5 = inttoptr i64 %.sroa.15.3.peel to ptr       ; 2 uses
  %.not74.peel = icmp ne i64 %.sroa.15.3.peel, 0  ; 2 uses
  %i.hg = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.bg unwind label %.loopexit544.loopexit.loopexit.split-lp ; 2 uses

bb.bg:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88.peel
  %i.hh = extractvalue { ptr, i64 } %i.hg, 0
  %i.hi = extractvalue { ptr, i64 } %i.hg, 1
  %i.hj = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hh, i64 noundef %i.hi)
          to label %bb.bh unwind label %.loopexit544.loopexit.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  %i.hk = extractvalue { ptr, i64 } %i.hj, 1
  %i.hl = icmp eq i64 %i.hk, 0                    ; 2 uses
  %or.cond.peel = select i1 %.not74.peel, i1 %i.hl, i1 false
  br i1 %or.cond.peel, label %bb.bi, label %.loopexit713

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel

bb.bj:                                            ; preds = %bb.aw, %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  br i1 %.sroa.0.0.ph639, label %6, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hm = icmp eq i64 %.sroa.43.0.ph637, 0
  br i1 %i.hm, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.24255.0.ph638) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4121)
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph638, i64 %.sroa.43.0.ph637
  %i.ho = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !4124, !nonnull !9, !noundef !9
  %i.hp = invoke { i64, ptr } %i.ho(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %.sroa.24255.0.ph638, ptr noundef nonnull readonly %i.hn)
          to label %.noexc170.peel unwind label %.loopexit544.loopexit.loopexit.split-lp, !inline_history !4007 ; 2 uses

.noexc170.peel:                                   ; preds = %bb.bl
  %i.hq = extractvalue { i64, ptr } %i.hp, 0
  %i.hr = trunc nuw i64 %i.hq to i1
  br i1 %i.hr, label %bb.bm, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread

bb.bm:                                            ; preds = %.noexc170.peel
  %i.hs = extractvalue { i64, ptr } %i.hp, 1
  %i.ht = invoke noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.hs, ptr noundef nonnull readonly %.sroa.24255.0.ph638)
          to label %.noexc171.peel unwind label %.loopexit544.loopexit.loopexit.split-lp ; 4 uses

.noexc171.peel:                                   ; preds = %bb.bm
  %.not.i.i.i157.peel = icmp ult i64 %i.ht, %.sroa.43.0.ph637
  call void @llvm.assume(i1 %.not.i.i.i157.peel)
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph638, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !alias.scope !4121, !noalias !4130, !noundef !9
  %cond.i158.peel = icmp eq i8 %i.hv, 13
  br i1 %cond.i158.peel, label %bb.bn, label %.thread.i159.peel

bb.bn:                                            ; preds = %.noexc171.peel
  %i.hw = add nuw i64 %i.ht, 1                    ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %.sroa.43.0.ph637
  br i1 %i.hx, label %bb.bo, label %.thread.i159.peel

bb.bo:                                            ; preds = %bb.bn
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph638, i64 %i.hw
  %i.hz = load i8, ptr %i.hy, align 1, !alias.scope !4121, !noalias !4130, !noundef !9
  %i.ia = icmp eq i8 %i.hz, 10
  br i1 %i.ia, label %bb.bp, label %.thread.i159.peel

.thread.i159.peel:                                ; preds = %bb.bo, %bb.bn, %.noexc171.peel
  br label %bb.bp

bb.bp:                                            ; preds = %.thread.i159.peel, %bb.bo
  %i.ib = phi i64 [ 1, %.thread.i159.peel ], [ 2, %bb.bo ]
  %i.ic = add i64 %i.ib, %i.ht                    ; 11 uses
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i163.peel, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not.i.i160.peel = icmp ult i64 %i.ic, %.sroa.43.0.ph637
  br i1 %.not.i.i160.peel, label %bb.br, label %.split3.i.i161.peel

.split3.i.i161.peel:                              ; preds = %bb.bq
  %i.ie = icmp eq i64 %i.ic, %.sroa.43.0.ph637
  br i1 %i.ie, label %.split.i.i162.peel, label %.loopexit714.invoke

bb.br:                                            ; preds = %bb.bq
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph638, i64 %i.ic
  %i.ig = load i8, ptr %i.if, align 1, !alias.scope !4131, !noalias !4134, !noundef !9
  %i.ih = icmp sgt i8 %i.ig, -65
  br i1 %i.ih, label %.split.i.i162.peel, label %.loopexit714.invoke

.split.i.i162.peel:                               ; preds = %bb.br, %.split3.i.i161.peel
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph638, i64 %i.ic
  %i.ij = sub i64 %.sroa.43.0.ph637, %i.ic
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i163.peel

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i163.peel: ; preds = %.split.i.i162.peel, %bb.bp
  %.sroa.9.0.i164.peel = phi i64 [ %.sroa.43.0.ph637, %bb.bp ], [ %i.ij, %.split.i.i162.peel ]
  %.sroa.7.0.i165.peel = phi ptr [ %.sroa.24255.0.ph638, %bb.bp ], [ %i.ii, %.split.i.i162.peel ]
  %i.ik = icmp ugt i64 %i.ic, 4294967295
  %i.il = shl nuw i64 %i.ic, 32
  %.sroa.09.0.insert.insert.i.i166.peel = select i1 %i.ik, i64 513, i64 %i.il ; 2 uses
  %i.im = trunc i64 %.sroa.09.0.insert.insert.i.i166.peel to i1
  br i1 %i.im, label %.loopexit715, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167.peel, !prof !396

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167.peel: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i163.peel
  %.sroa.6.0.extract.shift.i.i.i168.peel = lshr i64 %.sroa.09.0.insert.insert.i.i166.peel, 32
  %.sroa.6.0.extract.trunc.i.i.i169.peel = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i168.peel to i32
  %i.in = add i32 %.sroa.61.0.ph636, %.sroa.6.0.extract.trunc.i.i.i169.peel
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread

6:                                                ; preds = %bb.bj
  %7 = inttoptr i64 %.sroa.15.0.ph634 to ptr
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread: ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167.peel, %.noexc170.peel
  %.sroa.13.sroa.0.2.peel.ph = phi i64 [ %.sroa.43.0.ph637, %.noexc170.peel ], [ %i.ic, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167.peel ]
  %.sroa.61.2.peel.ph = phi i32 [ %.sroa.61.0.ph636, %.noexc170.peel ], [ %i.in, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167.peel ]
  %.sroa.43.2.peel.ph = phi i64 [ 0, %.noexc170.peel ], [ %.sroa.9.0.i164.peel, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167.peel ]
  %.sroa.24255.2.peel.ph = phi ptr [ inttoptr (i64 1 to ptr), %.noexc170.peel ], [ %.sroa.7.0.i165.peel, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167.peel ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %.peel.next.preheader

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel: ; preds = %6, %bb.bk, %bb.bi
  %.sroa.13.sroa.13.2.peel = phi i32 [ %.sroa.24.sroa.9.3.peel, %bb.bi ], [ %.sroa.24.sroa.9.0.ph627, %6 ], [ %.sroa.91.sroa.14.0.copyload, %bb.bk ]
  %.sroa.13.sroa.12.2.peel = phi i32 [ %.sroa.24.sroa.8.3.peel, %bb.bi ], [ %.sroa.24.sroa.8.0.ph628, %6 ], [ %.sroa.91.sroa.10.0.copyload, %bb.bk ]
  %.sroa.13.sroa.0.2.peel = phi i64 [ %.sroa.24.sroa.0.3.peel, %bb.bi ], [ %.sroa.24.sroa.0.0.ph629, %6 ], [ %.sroa.91.sroa.0.0.copyload, %bb.bk ]
  %.sroa.0292.2.peel = phi ptr [ %5, %bb.bi ], [ %7, %6 ], [ %.sroa.79277.0.ph635, %bb.bk ] ; 2 uses
  %.sroa.79277.2.peel = phi ptr [ %.sroa.79277.9.peel, %bb.bi ], [ %.sroa.79277.0.ph635, %6 ], [ null, %bb.bk ]
  %.sroa.61.2.peel = phi i32 [ %.sroa.61.8.peel, %bb.bi ], [ %.sroa.61.0.ph636, %6 ], [ %.sroa.61.0.ph636, %bb.bk ]
  %.sroa.43.2.peel = phi i64 [ %.sroa.43.8.peel, %bb.bi ], [ %.sroa.43.0.ph637, %6 ], [ 0, %bb.bk ]
  %.sroa.24255.2.peel = phi ptr [ %.sroa.24255.8.peel, %bb.bi ], [ %.sroa.24255.0.ph638, %6 ], [ %.sroa.24255.0.ph638, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.not60.peel = icmp eq ptr %.sroa.0292.2.peel, null
  br i1 %.not60.peel, label %.outer._crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel
  %.sroa.24255.0617.ph = phi ptr [ %.sroa.24255.2.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ], [ %.sroa.24255.2.peel.ph, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread ]
  %.sroa.43.0616.ph = phi i64 [ %.sroa.43.2.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ], [ %.sroa.43.2.peel.ph, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread ]
  %.sroa.61.0615.ph = phi i32 [ %.sroa.61.2.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ], [ %.sroa.61.2.peel.ph, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread ]
  %.sroa.79277.0614.ph = phi ptr [ %.sroa.79277.2.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ], [ %.sroa.79277.0.ph635, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread ]
  %.sroa.0292.0612.ph = phi ptr [ %.sroa.0292.2.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ], [ %.sroa.24255.0.ph638, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread ]
  %.sroa.13.sroa.0.0611.ph = phi i64 [ %.sroa.13.sroa.0.2.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ], [ %.sroa.13.sroa.0.2.peel.ph, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread ]
  %.sroa.13.sroa.12.0610.ph = phi i32 [ %.sroa.13.sroa.12.2.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ], [ %.sroa.61.0.ph636, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread ]
  %.sroa.13.sroa.13.0609.ph = phi i32 [ %.sroa.13.sroa.13.2.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ], [ undef, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread ]
  br label %.peel.next

bb.bs:                                            ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.io = load i32, ptr %.sroa.13.sroa.12.0..sroa.13.0..sroa_idx.sroa_idx, align 8, !noundef !9 ; 5 uses
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10pydocstyle5rules6indent16UnderIndentationEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.z, ptr noundef nonnull align 8 %i.ft, i32 noundef %i.io, i32 noundef %i.io)
          to label %bb.bt unwind label %.loopexit544.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvNtCskLngH8kgpZI_15ruff_python_ast10docstrings11clean_space(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cq)
          to label %bb.bw unwind label %bb.bv

bb.bu:                                            ; preds = %bb.by, %bb.ck, %bb.bv
  %.pn76 = phi { ptr, i32 } [ %i.ip, %bb.bv ], [ %lpad.thr_comm, %bb.ck ], [ %lpad.thr_comm.split-lp, %bb.by ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.z) #38
          to label %.thread480 unwind label %bb.cl

bb.bv:                                            ; preds = %bb.ce, %bb.cd, %bb.bt
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bw:                                            ; preds = %bb.bt
  %i.iq = icmp ugt i64 %i.ff, 4294967295
  %i.ir = shl nuw i64 %i.ff, 32
  %.sroa.09.0.insert.insert.i = select i1 %i.iq, i64 513, i64 %i.ir ; 2 uses
  %i.is = trunc i64 %.sroa.09.0.insert.insert.i to i1
  br i1 %i.is, label %bb.bx, label %bb.bz, !prof !396

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4136
  store i8 2, ptr %i.f, align 1, !noalias !4136
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @607) #40
          to label %.noexc125 unwind label %bb.ck

.noexc125:                                        ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.cb
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bz:                                            ; preds = %bb.bw
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  %i.it = add i32 %i.io, %.sroa.6.0.extract.trunc.i.i ; 2 uses
  %.not75 = icmp ugt i32 %i.io, %i.it
  br i1 %.not75, label %bb.ca, label %bb.cb, !prof !396

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #40
          to label %bb.cc unwind label %bb.ck

bb.cb:                                            ; preds = %bb.bz
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w, i32 noundef %i.io, i32 noundef %i.it)
          to label %bb.cd unwind label %bb.by

bb.cc:                                            ; preds = %bb.ey, %bb.ea, %bb.ca
  unreachable

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.x)
          to label %bb.ce unwind label %bb.bv

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.y)
          to label %bb.cf unwind label %bb.bv

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.z)
          to label %bb.cg unwind label %.loopexit544.loopexit.split-lp

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.at

bb.ch:                                            ; preds = %bb.at
  %i.iu = trunc nuw i64 %.sroa.015.0.ph641 to i1
  %.not.not.i = icmp ugt i64 %.sroa.0.0.i113, %.sroa.0.0.i83
  %or.cond543 = and i1 %.not.not.i, %i.iu
  br i1 %or.cond543, label %bb.ci, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152

bb.ci:                                            ; preds = %bb.ch
  %i.iv = sub nuw i64 %.sroa.0.0.i113, %.sroa.0.0.i83
  %i.iw = load i64, ptr %i.de, align 8, !alias.scope !4139, !noalias !4142, !noundef !9 ; 3 uses
  %i.ix = load i64, ptr %i.ac, align 8, !range !540, !alias.scope !4139, !noalias !4142, !noundef !9
  %i.iy = icmp eq i64 %i.iw, %i.ix
  br i1 %i.iy, label %bb.cj, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE8grow_oneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit544.loopexit.split-lp

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.cj, %bb.ci
  %i.iz = load ptr, ptr %i.dd, align 8, !alias.scope !4139, !noalias !4142, !nonnull !9, !noundef !9
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %i.iw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ja, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.jb = add i64 %i.iw, 1
  store i64 %i.jb, ptr %i.de, align 8, !alias.scope !4139, !noalias !4142
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.iv, i64 %.sroa.517.0.ph640)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152

bb.ck:                                            ; preds = %bb.ca, %bb.bx
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #38
          to label %bb.bu unwind label %bb.cl

bb.cl:                                            ; preds = %.body, %.thread480, %bb.fk, %.body202, %bb.ej, %bb.dp, %bb.ck, %bb.bu
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.cm:                                            ; preds = %.peel.next, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.jd = icmp eq i64 %.sroa.43.0616, 0
  br i1 %i.jd, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.24255.0617) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4146)
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.24255.0617, i64 %.sroa.43.0616
  %i.jf = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !4148, !nonnull !9, !noundef !9
  %i.jg = invoke { i64, ptr } %i.jf(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %.sroa.24255.0617, ptr noundef nonnull readonly %i.je)
          to label %.noexc170 unwind label %.loopexit544.loopexit.loopexit, !inline_history !4007 ; 2 uses

.noexc170:                                        ; preds = %bb.cn
  %i.jh = extractvalue { i64, ptr } %i.jg, 0
  %i.ji = trunc nuw i64 %i.jh to i1
  br i1 %i.ji, label %bb.co, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176

bb.co:                                            ; preds = %.noexc170
  %i.jj = extractvalue { i64, ptr } %i.jg, 1
  %i.jk = invoke noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.jj, ptr noundef nonnull readonly %.sroa.24255.0617)
          to label %.noexc171 unwind label %.loopexit544.loopexit.loopexit ; 4 uses

.noexc171:                                        ; preds = %bb.co
  %.not.i.i.i157 = icmp ult i64 %i.jk, %.sroa.43.0616
  call void @llvm.assume(i1 %.not.i.i.i157)
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.24255.0617, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !alias.scope !4146, !noalias !4130, !noundef !9
  %cond.i158 = icmp eq i8 %i.jm, 13
  br i1 %cond.i158, label %bb.cp, label %.thread.i159

bb.cp:                                            ; preds = %.noexc171
  %i.jn = add nuw i64 %i.jk, 1                    ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %.sroa.43.0616
  br i1 %i.jo, label %bb.cq, label %.thread.i159

bb.cq:                                            ; preds = %bb.cp
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.24255.0617, i64 %i.jn
  %i.jq = load i8, ptr %i.jp, align 1, !alias.scope !4146, !noalias !4130, !noundef !9
  %i.jr = icmp eq i8 %i.jq, 10
  br i1 %i.jr, label %bb.cr, label %.thread.i159

.thread.i159:                                     ; preds = %bb.cq, %bb.cp, %.noexc171
  br label %bb.cr

bb.cr:                                            ; preds = %.thread.i159, %bb.cq
  %i.js = phi i64 [ 1, %.thread.i159 ], [ 2, %bb.cq ]
  %i.jt = add i64 %i.js, %i.jk                    ; 11 uses
  %i.ju = icmp eq i64 %i.jt, 0
  br i1 %i.ju, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i163, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.not.i.i160 = icmp ult i64 %i.jt, %.sroa.43.0616
  br i1 %.not.i.i160, label %bb.ct, label %.split3.i.i161

.split3.i.i161:                                   ; preds = %bb.cs
  %i.jv = icmp eq i64 %i.jt, %.sroa.43.0616
  br i1 %i.jv, label %.split.i.i162, label %.loopexit714.invoke

bb.ct:                                            ; preds = %bb.cs
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.24255.0617, i64 %i.jt
  %i.jx = load i8, ptr %i.jw, align 1, !alias.scope !4131, !noalias !4134, !noundef !9
  %i.jy = icmp sgt i8 %i.jx, -65
  br i1 %i.jy, label %.split.i.i162, label %.loopexit714.invoke

.split.i.i162:                                    ; preds = %bb.ct, %.split3.i.i161
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.24255.0617, i64 %i.jt
  %i.ka = sub i64 %.sroa.43.0616, %i.jt
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i163

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i163: ; preds = %.split.i.i162, %bb.cr
  %.sroa.9.0.i164 = phi i64 [ %.sroa.43.0616, %bb.cr ], [ %i.ka, %.split.i.i162 ]
  %.sroa.7.0.i165 = phi ptr [ %.sroa.24255.0617, %bb.cr ], [ %i.jz, %.split.i.i162 ]
  %i.kb = icmp ugt i64 %i.jt, 4294967295
  %i.kc = shl nuw i64 %i.jt, 32
  %.sroa.09.0.insert.insert.i.i166 = select i1 %i.kb, i64 513, i64 %i.kc ; 2 uses
  %i.kd = trunc i64 %.sroa.09.0.insert.insert.i.i166 to i1
  br i1 %i.kd, label %.loopexit715, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167, !prof !396

.loopexit715:                                     ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i163.peel, %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4149
  br label %.loopexit715.invoke

.loopexit715.invoke:                              ; preds = %.loopexit712, %.loopexit715
  %.sink = phi ptr [ %i.a, %.loopexit712 ], [ %i.e, %.loopexit715 ] ; 2 uses
  store i8 2, ptr %.sink, align 1, !noalias !9
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 43, ptr noundef nonnull %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @607) #40
          to label %.loopexit715.cont unwind label %.loopexit.split-lp545

.loopexit715.cont:                                ; preds = %.loopexit715.invoke
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i163
  %.sroa.6.0.extract.shift.i.i.i168 = lshr i64 %.sroa.09.0.insert.insert.i.i166, 32
  %.sroa.6.0.extract.trunc.i.i.i169 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i168 to i32
  %i.ke = add i32 %.sroa.61.0615, %.sroa.6.0.extract.trunc.i.i.i169
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176

.loopexit714.invoke:                              ; preds = %.split3.i.i232.peel, %bb.bf, %.split3.i.i161.peel, %bb.br, %.split3.i.i232, %bb.ag, %.split3.i.i161, %bb.ct
  %i.kf = phi ptr [ %.sroa.24255.0617, %.split3.i.i232 ], [ %.sroa.24255.0617, %bb.ct ], [ %.sroa.24255.0617, %.split3.i.i161 ], [ %.sroa.24255.0617, %bb.ag ], [ %.sroa.24255.0.ph638, %bb.br ], [ %.sroa.24255.0.ph638, %.split3.i.i161.peel ], [ %.sroa.24255.0.ph638, %bb.bf ], [ %.sroa.24255.0.ph638, %.split3.i.i232.peel ]
  %i.kg = phi i64 [ %.sroa.43.0616, %.split3.i.i232 ], [ %.sroa.43.0616, %bb.ct ], [ %.sroa.43.0616, %.split3.i.i161 ], [ %.sroa.43.0616, %bb.ag ], [ %.sroa.43.0.ph637, %bb.br ], [ %.sroa.43.0.ph637, %.split3.i.i161.peel ], [ %.sroa.43.0.ph637, %bb.bf ], [ %.sroa.43.0.ph637, %.split3.i.i232.peel ]
  %i.kh = phi i64 [ %i.ee, %.split3.i.i232 ], [ %i.ee, %bb.ag ], [ %i.jt, %.split3.i.i161 ], [ %i.jt, %bb.ct ], [ %i.gu, %.split3.i.i232.peel ], [ %i.gu, %bb.bf ], [ %i.ic, %.split3.i.i161.peel ], [ %i.ic, %bb.br ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kf, i64 noundef %i.kg, i64 noundef 0, i64 noundef %i.kh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @488) #40
          to label %.loopexit714.cont unwind label %.loopexit.split-lp545

.loopexit714.cont:                                ; preds = %.loopexit714.invoke
  unreachable

bb.cu:                                            ; preds = %bb.cx, %.outer._crit_edge
  %i.ki = phi i64 [ %.pre730, %bb.cx ], [ %i.dj, %.outer._crit_edge ]
  %i.kj = and i64 %i.ki, 8388608
  %i.kk = icmp eq i64 %i.kj, 0
  br i1 %i.kk, label %.thread524, label %bb.cy

.thread524:                                       ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.fm

bb.cv:                                            ; preds = %.outer._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !nonnull !9, !align !473, !noundef !9 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load i32, ptr %i.kn, align 8, !noundef !9
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 20
  %i.kq = load i32, ptr %i.kp, align 4, !noundef !9
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10pydocstyle5rules6indent23DocstringTabIndentationEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noundef nonnull align 8 %i.dh, i32 noundef %i.ko, i32 noundef %i.kq)
          to label %bb.cw unwind label %.loopexit.split-lp545

bb.cw:                                            ; preds = %bb.cv
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.v)
          to label %bb.cx unwind label %.loopexit.split-lp545

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.pre = load ptr, ptr %2, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 152
  %.pre730 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.cu

bb.cy:                                            ; preds = %bb.cu
  %i.kr = trunc nuw i64 %.sroa.015.0.ph.lcssa594 to i1
  br i1 %i.kr, label %bb.da, label %bb.db

bb.cz:                                            ; preds = %bb.eq, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ks = trunc nuw i8 %.sroa.027.3 to i1
  br i1 %i.ks, label %bb.fm, label %bb.fl

bb.da:                                            ; preds = %bb.cy
  %i.kt = load ptr, ptr %i.dd, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.ku = load i64, ptr %i.ac, align 8, !range !540, !noundef !9
  %i.kv = load i64, ptr %i.de, align 8, !noundef !9 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 384307168202282326
  call void @llvm.assume(i1 %i.kw)
  %.idx = mul nuw nsw i64 %i.kv, 24
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.kt, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr %i.kt, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.ku, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  store ptr %i.kx, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.ky = icmp eq i64 %i.kv, 0
  br i1 %i.ky, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph: ; preds = %bb.da
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.la = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.lc = add i64 %.sroa.517.0.ph.lcssa604, %.sroa.0.0.i83 ; 2 uses
  %i.ld = icmp eq i64 %i.lc, 0
  %i.le = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.lf = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit

bb.db:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEECsEhZmuQNqkz_11ruff_linter.exit179, %bb.cy
  %.sroa.027.3 = phi i8 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEECsEhZmuQNqkz_11ruff_linter.exit179 ], [ 1, %bb.cy ] ; 9 uses
  %i.lg = load ptr, ptr %i.ab, align 8, !noundef !9
  %.not62 = icmp eq ptr %i.lg, null
  br i1 %.not62, label %bb.cz, label %bb.ek

.body:                                            ; preds = %bb.eh, %bb.dc, %bb.ej, %bb.dh
  %.pn71 = phi { ptr, i32 } [ %.pn69, %bb.dh ], [ %.pn69, %bb.ej ], [ %i.lh, %bb.dc ], [ %i.oi, %bb.eh ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %common.resume unwind label %bb.cl

bb.dc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.df, %bb.de, %bb.dd
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit
  %i.li = phi ptr [ %i.kt, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph ], [ %i.og, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4152)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  store ptr %i.lj, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4152, !noalias !4155
  %.sroa.0304.0.copyload305 = load ptr, ptr %i.li, align 8, !noalias !4152 ; 2 uses
  %.sroa.7.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx306, i64 16, i1 false), !noalias !4152
  %.not61 = icmp eq ptr %.sroa.0304.0.copyload305, null
  br i1 %.not61, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.dd

bb.dd:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %.sroa.0304.0.copyload305, ptr %i.t, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %i.lk = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.de unwind label %bb.dc     ; 2 uses

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEECsEhZmuQNqkz_11ruff_linter.exit179 unwind label %.loopexit.split-lp545

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEECsEhZmuQNqkz_11ruff_linter.exit179: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.db

bb.de:                                            ; preds = %bb.dd
  %i.ll = extractvalue { ptr, i64 } %i.lk, 0
  %i.lm = extractvalue { ptr, i64 } %i.lk, 1
  %i.ln = invoke { ptr, i64 } @_RNvNtCskLngH8kgpZI_15ruff_python_ast10docstrings13leading_space(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ll, i64 noundef %i.lm)
          to label %bb.df unwind label %bb.dc

bb.df:                                            ; preds = %bb.de
  %i.lo = extractvalue { ptr, i64 } %i.ln, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvNtCskLngH8kgpZI_15ruff_python_ast10docstrings11clean_space(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cq)
          to label %bb.dg unwind label %bb.dc

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.lp = load i32, ptr %i.kz, align 8, !noundef !9 ; 10 uses
  %i.lq = load ptr, ptr %2, align 8, !nonnull !9, !align !473, !noundef !9
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10pydocstyle5rules6indent15OverIndentationEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noundef nonnull align 8 %i.lq, i32 noundef %i.lp, i32 noundef %i.lp)
          to label %bb.dj unwind label %bb.di

bb.dh:                                            ; preds = %bb.dp, %bb.di
  %.pn69 = phi { ptr, i32 } [ %i.ls, %bb.di ], [ %lpad.phi, %bb.dp ] ; 2 uses
  %.sroa.023.0 = phi i8 [ %.sroa.023.1, %bb.di ], [ %.sroa.023.2, %bb.dp ]
  %i.lr = trunc nuw i8 %.sroa.023.0 to i1
  br i1 %i.lr, label %bb.ej, label %.body

bb.di:                                            ; preds = %bb.ee, %bb.dg
  %.sroa.023.1 = phi i8 [ %.sroa.023.3, %bb.ee ], [ 1, %bb.dg ]
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dj:                                            ; preds = %bb.dg
  %i.lt = load i64, ptr %i.la, align 8, !noundef !9 ; 2 uses
  %i.lu = icmp sgt i64 %i.lt, -1
  call void @llvm.assume(i1 %i.lu)
  %i.lv = icmp eq i64 %i.lt, 0
  br i1 %i.lv, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.lw = icmp ugt i64 %i.lo, 4294967295
  %i.lx = shl nuw i64 %i.lo, 32
  %.sroa.09.0.insert.insert.i180 = select i1 %i.lw, i64 513, i64 %i.lx ; 2 uses
  %i.ly = trunc i64 %.sroa.09.0.insert.insert.i180 to i1
  br i1 %i.ly, label %bb.dl, label %bb.dq, !prof !396

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4157
  store i8 2, ptr %i.d, align 1, !noalias !4157
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @607) #40
          to label %.noexc183 unwind label %.loopexit.split-lp

.noexc183:                                        ; preds = %bb.dl
  unreachable

bb.dm:                                            ; preds = %bb.dj
  %i.lz = load ptr, ptr %i.lb, align 8, !nonnull !9, !align !473, !noundef !9 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !noundef !9 ; 5 uses
  %i.md = zext i32 %i.lp to i64                   ; 5 uses
  %i.me = icmp eq i32 %i.lp, 0
  br i1 %i.me, label %bb.dt, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.not.i185 = icmp ugt i64 %i.mc, %i.md
  br i1 %.not.i185, label %bb.do, label %.split.i

.split.i:                                         ; preds = %bb.dn
  %i.mf = icmp eq i64 %i.mc, %i.md
  br i1 %i.mf, label %bb.dt, label %bb.ea

bb.do:                                            ; preds = %bb.dn
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.md
  %i.mh = load i8, ptr %i.mg, align 1, !alias.scope !4160, !noundef !9
  %i.mi = icmp sgt i8 %i.mh, -65
  br i1 %i.mi, label %bb.dt, label %bb.ea

.loopexit:                                        ; preds = %bb.ds, %bb.eb, %bb.ed
  %.sroa.023.2.ph = phi i8 [ 0, %bb.eb ], [ %.sroa.023.3, %bb.ds ], [ %.sroa.023.3, %bb.ed ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.loopexit.split-lp:                               ; preds = %.invoke, %bb.ea, %bb.dl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dp:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.023.2 = phi i8 [ %.sroa.023.2.ph, %.loopexit ], [ 1, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.r) #38
          to label %bb.dh unwind label %bb.cl

bb.dq:                                            ; preds = %bb.dk
  %.sroa.6.0.extract.shift.i.i181 = lshr i64 %.sroa.09.0.insert.insert.i180, 32
  %.sroa.6.0.extract.trunc.i.i182 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i181 to i32
  %i.mj = add i32 %i.lp, %.sroa.6.0.extract.trunc.i.i182 ; 2 uses
  %.not68 = icmp ugt i32 %i.lp, %i.mj
  br i1 %.not68, label %.invoke, label %bb.dr, !prof !396

.invoke:                                          ; preds = %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter5CharsENtB6_8SpecTake9spec_foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCINvNtB8_3map8map_foldcB1M_B1M_NvYcNtNtB1Q_6traits7TextLen8text_lenNvYB1M_NtNtNtBc_3ops5arith3Add3addE0ECsEhZmuQNqkz_11ruff_linter.exit, %bb.dq
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #40
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.dr:                                            ; preds = %bb.dq
  store i32 %i.lp, ptr %i.le, align 8
  store i32 %i.mj, ptr %i.lf, align 4
  store ptr null, ptr %i.q, align 8
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ec, %bb.dr
  %.sroa.023.3 = phi i8 [ 1, %bb.dr ], [ 0, %bb.ec ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.ed unwind label %.loopexit

bb.dt:                                            ; preds = %bb.do, %.split.i, %bb.dm
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mc ; 4 uses
  br i1 %i.ld, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter5CharsENtB6_8SpecTake9spec_foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCINvNtB8_3map8map_foldcB1M_B1M_NvYcNtNtB1Q_6traits7TextLen8text_lenNvYB1M_NtNtNtBc_3ops5arith3Add3addE0ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.md
  br label %bb.dv

bb.dv:                                            ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeINtNtNtBf_3ops9try_trait17NeverShortCircuitB1S_ENCINvMB2H_B2E_10wrap_mut_2B1S_cNCINvNtBb_3map8map_foldcB1S_B1S_NvYcNtNtB1W_6traits7TextLen8text_lenNvYB1S_NtNtB2J_5arith3Add3addE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %bb.du
  %i.mm = phi i64 [ %i.lc, %bb.du ], [ %i.oa, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeINtNtNtBf_3ops9try_trait17NeverShortCircuitB1S_ENCINvMB2H_B2E_10wrap_mut_2B1S_cNCINvNtBb_3map8map_foldcB1S_B1S_NvYcNtNtB1W_6traits7TextLen8text_lenNvYB1S_NtNtB2J_5arith3Add3addE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i ]
  %i.mn = phi ptr [ %i.ml, %bb.du ], [ %i.nz, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeINtNtNtBf_3ops9try_trait17NeverShortCircuitB1S_ENCINvMB2H_B2E_10wrap_mut_2B1S_cNCINvNtBb_3map8map_foldcB1S_B1S_NvYcNtNtB1W_6traits7TextLen8text_lenNvYB1S_NtNtB2J_5arith3Add3addE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i ] ; 6 uses
  %.sroa.01.0.i.i.i = phi i32 [ 0, %bb.du ], [ %i.ob, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeINtNtNtBf_3ops9try_trait17NeverShortCircuitB1S_ENCINvMB2H_B2E_10wrap_mut_2B1S_cNCINvNtBb_3map8map_foldcB1S_B1S_NvYcNtNtB1W_6traits7TextLen8text_lenNvYB1S_NtNtB2J_5arith3Add3addE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i ] ; 2 uses
  %.not.i.i.i.i188 = icmp eq ptr %i.mn, %i.mk
  br i1 %.not.i.i.i.i188, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter5CharsENtB6_8SpecTake9spec_foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCINvNtB8_3map8map_foldcB1M_B1M_NvYcNtNtB1Q_6traits7TextLen8text_lenNvYB1M_NtNtNtBc_3ops5arith3Add3addE0ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 1 ; 3 uses
  %i.mp = load i8, ptr %i.mn, align 1, !noalias !4163, !noundef !9 ; 4 uses
  %i.mq = icmp sgt i8 %i.mp, -1
  br i1 %i.mq, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeINtNtNtBf_3ops9try_trait17NeverShortCircuitB1S_ENCINvMB2H_B2E_10wrap_mut_2B1S_cNCINvNtBb_3map8map_foldcB1S_B1S_NvYcNtNtB1W_6traits7TextLen8text_lenNvYB1S_NtNtB2J_5arith3Add3addE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i: ; preds = %bb.dw
  %i.mr = and i8 %i.mp, 31
  %i.ms = zext nneg i8 %i.mr to i32               ; 3 uses
  %i.mt = icmp ne ptr %i.mo, %i.mk
  call void @llvm.assume(i1 %i.mt)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 2 ; 3 uses
  %i.mv = load i8, ptr %i.mo, align 1, !noalias !4163, !noundef !9
  %i.mw = shl nuw nsw i32 %i.ms, 6
  %i.mx = and i8 %i.mv, 63
  %i.my = zext nneg i8 %i.mx to i32               ; 2 uses
  %i.mz = or disjoint i32 %i.mw, %i.my
  %i.na = icmp samesign ugt i8 %i.mp, -33
  br i1 %i.na, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i, label %bb.dx

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i
  %i.nb = icmp ne ptr %i.mu, %i.mk
  call void @llvm.assume(i1 %i.nb)
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mn, i64 3 ; 3 uses
  %i.nd = load i8, ptr %i.mu, align 1, !noalias !4163, !noundef !9
  %i.ne = shl nuw nsw i32 %i.my, 6
  %i.nf = and i8 %i.nd, 63
  %i.ng = zext nneg i8 %i.nf to i32
  %i.nh = or disjoint i32 %i.ne, %i.ng            ; 2 uses
  %i.ni = shl nuw nsw i32 %i.ms, 12
  %i.nj = or disjoint i32 %i.nh, %i.ni
  %i.nk = icmp samesign ugt i8 %i.mp, -17
  br i1 %i.nk, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i, label %bb.dx

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i
  %i.nl = icmp ne ptr %i.nc, %i.mk
  call void @llvm.assume(i1 %i.nl)
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %i.nn = load i8, ptr %i.nc, align 1, !noalias !4163, !noundef !9
  %i.no = shl nuw nsw i32 %i.ms, 18
  %i.np = and i32 %i.no, 1835008
  %i.nq = shl nuw nsw i32 %i.nh, 6
  %i.nr = and i8 %i.nn, 63
  %i.ns = zext nneg i8 %i.nr to i32
  %i.nt = or disjoint i32 %i.nq, %i.ns
  %i.nu = or disjoint i32 %i.nt, %i.np
  br label %bb.dx

bb.dx:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i
  %i.nv = phi ptr [ %i.nc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i ], [ %i.nm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i ], [ %i.mu, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i ] ; 3 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.nj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i ], [ %i.nu, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i ], [ %i.mz, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i ] ; 3 uses
  %i.nw = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 128
  br i1 %i.nw, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeINtNtNtBf_3ops9try_trait17NeverShortCircuitB1S_ENCINvMB2H_B2E_10wrap_mut_2B1S_cNCINvNtBb_3map8map_foldcB1S_B1S_NvYcNtNtB1W_6traits7TextLen8text_lenNvYB1S_NtNtB2J_5arith3Add3addE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.nx = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 2048
  br i1 %i.nx, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeINtNtNtBf_3ops9try_trait17NeverShortCircuitB1S_ENCINvMB2H_B2E_10wrap_mut_2B1S_cNCINvNtBb_3map8map_foldcB1S_B1S_NvYcNtNtB1W_6traits7TextLen8text_lenNvYB1S_NtNtB2J_5arith3Add3addE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ny = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 65536
  %..i.i.i.i.i.i.i.i = select i1 %i.ny, i32 3, i32 4
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeINtNtNtBf_3ops9try_trait17NeverShortCircuitB1S_ENCINvMB2H_B2E_10wrap_mut_2B1S_cNCINvNtBb_3map8map_foldcB1S_B1S_NvYcNtNtB1W_6traits7TextLen8text_lenNvYB1S_NtNtB2J_5arith3Add3addE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeINtNtNtBf_3ops9try_trait17NeverShortCircuitB1S_ENCINvMB2H_B2E_10wrap_mut_2B1S_cNCINvNtBb_3map8map_foldcB1S_B1S_NvYcNtNtB1W_6traits7TextLen8text_lenNvYB1S_NtNtB2J_5arith3Add3addE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.dw, %bb.dz, %bb.dy, %bb.dx
  %i.nz = phi ptr [ %i.nv, %bb.dy ], [ %i.nv, %bb.dz ], [ %i.nv, %bb.dx ], [ %i.mo, %bb.dw ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.dy ], [ %..i.i.i.i.i.i.i.i, %bb.dz ], [ 1, %bb.dx ], [ 1, %bb.dw ]
  %i.oa = add i64 %i.mm, -1                       ; 2 uses
  %i.ob = add i32 %.sroa.0.0.i.i.i.i.i.i.i.i, %.sroa.01.0.i.i.i ; 2 uses
  %i.oc = icmp eq i64 %i.oa, 0
  br i1 %i.oc, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter5CharsENtB6_8SpecTake9spec_foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCINvNtB8_3map8map_foldcB1M_B1M_NvYcNtNtB1Q_6traits7TextLen8text_lenNvYB1M_NtNtNtBc_3ops5arith3Add3addE0ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.dv

bb.ea:                                            ; preds = %bb.do, %.split.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ma, i64 noundef %i.mc, i64 noundef %i.md, i64 noundef %i.mc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #40
          to label %bb.cc unwind label %.loopexit.split-lp

_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter5CharsENtB6_8SpecTake9spec_foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCINvNtB8_3map8map_foldcB1M_B1M_NvYcNtNtB1Q_6traits7TextLen8text_lenNvYB1M_NtNtNtBc_3ops5arith3Add3addE0ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeINtNtNtBf_3ops9try_trait17NeverShortCircuitB1S_ENCINvMB2H_B2E_10wrap_mut_2B1S_cNCINvNtBb_3map8map_foldcB1S_B1S_NvYcNtNtB1W_6traits7TextLen8text_lenNvYB1S_NtNtB2J_5arith3Add3addE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %bb.dv, %bb.dt
  %.sroa.0.0.i.i189 = phi i32 [ 0, %bb.dt ], [ %.sroa.01.0.i.i.i, %bb.dv ], [ %i.ob, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeINtNtNtBf_3ops9try_trait17NeverShortCircuitB1S_ENCINvMB2H_B2E_10wrap_mut_2B1S_cNCINvNtBb_3map8map_foldcB1S_B1S_NvYcNtNtB1W_6traits7TextLen8text_lenNvYB1S_NtNtB2J_5arith3Add3addE0E0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.i ]
  %i.od = add i32 %.sroa.0.0.i.i189, %i.lp        ; 2 uses
  %.not67 = icmp ugt i32 %i.lp, %i.od
  br i1 %.not67, label %.invoke, label %bb.eb, !prof !396

bb.eb:                                            ; preds = %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter5CharsENtB6_8SpecTake9spec_foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCINvNtB8_3map8map_foldcB1M_B1M_NvYcNtNtB1Q_6traits7TextLen8text_lenNvYB1M_NtNtNtBc_3ops5arith3Add3addE0ECsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p, i32 noundef %i.lp, i32 noundef %i.od)
          to label %bb.ec unwind label %.loopexit

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ds

bb.ed:                                            ; preds = %bb.ds
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.o)
          to label %bb.ee unwind label %.loopexit

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.r)
          to label %bb.ef unwind label %bb.di

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.oe = trunc nuw i8 %.sroa.023.3 to i1
  br i1 %i.oe, label %bb.eg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.of = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4175, !noalias !4155, !nonnull !9, !noundef !9
  %i.og = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4175, !noalias !4155, !nonnull !9, !noundef !9 ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.of
  br i1 %i.oh, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.oi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.oj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.eg
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.dc

bb.ej:                                            ; preds = %bb.dh
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #38
          to label %.body unwind label %bb.cl

bb.ek:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.ok = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.el unwind label %.loopexit.split-lp545 ; 2 uses

bb.el:                                            ; preds = %bb.ek
  %i.ol = extractvalue { ptr, i64 } %i.ok, 0
  %i.om = extractvalue { ptr, i64 } %i.ok, 1
  %i.on = invoke { ptr, i64 } @_RNvNtCskLngH8kgpZI_15ruff_python_ast10docstrings13leading_space(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ol, i64 noundef %i.om)
          to label %bb.em unwind label %.loopexit.split-lp545 ; 2 uses

bb.em:                                            ; preds = %bb.el
  %i.oo = extractvalue { ptr, i64 } %i.on, 0      ; 3 uses
  %i.op = extractvalue { ptr, i64 } %i.on, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oo) ]
  %i.oq = icmp ult i64 %i.op, 32
  br i1 %i.oq, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.or = invoke noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count14do_count_chars(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.oo, i64 noundef %i.op)
          to label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit194 unwind label %.loopexit.split-lp545

bb.eo:                                            ; preds = %bb.em
  %i.os = invoke noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.oo, i64 noundef %i.op)
          to label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit194 unwind label %.loopexit.split-lp545

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit194: ; preds = %bb.en, %bb.eo
  %.sroa.0.0.i191 = phi i64 [ %i.or, %bb.en ], [ %i.os, %bb.eo ]
  %i.ot = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.ep unwind label %.loopexit.split-lp545

bb.ep:                                            ; preds = %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit194
  %i.ou = extractvalue { ptr, i64 } %i.ot, 1
  %i.ov = icmp ne i64 %i.op, %i.ou
  %.not63 = icmp ule i64 %.sroa.0.0.i191, %.sroa.0.0.i83
  %brmerge = select i1 %.not63, i1 true, i1 %i.ov
  br i1 %brmerge, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.cz

bb.er:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ow = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ox = load i32, ptr %i.ow, align 8, !noundef !9 ; 6 uses
  %i.oy = load ptr, ptr %2, align 8, !nonnull !9, !align !473, !noundef !9
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10pydocstyle5rules6indent15OverIndentationEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noundef nonnull align 8 %i.oy, i32 noundef %i.ox, i32 noundef %i.ox)
          to label %bb.es unwind label %.loopexit.split-lp545

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvNtCskLngH8kgpZI_15ruff_python_ast10docstrings11clean_space(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cq)
          to label %bb.eu unwind label %bb.et

.body202:                                         ; preds = %bb.fh, %.thread539, %bb.et, %bb.fk, %bb.ew
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp534, %bb.ew ], [ %lpad.phi538, %bb.fk ], [ %i.oz, %bb.et ], [ %lpad.thr_comm.split-lp534541, %.thread539 ], [ %i.pk, %bb.fh ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.m) #38
          to label %.loopexit544 unwind label %bb.cl

bb.et:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i201, %bb.es
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %.body202

bb.eu:                                            ; preds = %bb.es
  %i.pa = icmp ugt i64 %i.op, 4294967295
  %i.pb = shl nuw i64 %i.op, 32
  %.sroa.09.0.insert.insert.i195 = select i1 %i.pa, i64 513, i64 %i.pb ; 2 uses
  %i.pc = trunc i64 %.sroa.09.0.insert.insert.i195 to i1
  br i1 %i.pc, label %bb.ev, label %bb.ex, !prof !396

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4177
  store i8 2, ptr %i.c, align 1, !noalias !4177
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @607) #40
          to label %.noexc198 unwind label %.thread535

.noexc198:                                        ; preds = %bb.ev
  unreachable

.thread535:                                       ; preds = %bb.ey, %bb.ev
  %lpad.thr_comm533 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.ew:                                            ; preds = %bb.fe, %bb.fc
  %lpad.thr_comm.split-lp534 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ph, label %bb.fk, label %.body202

bb.ex:                                            ; preds = %bb.eu
  %.sroa.6.0.extract.shift.i.i196 = lshr i64 %.sroa.09.0.insert.insert.i195, 32
  %.sroa.6.0.extract.trunc.i.i197 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i196 to i32
  %i.pd = add i32 %i.ox, %.sroa.6.0.extract.trunc.i.i197 ; 3 uses
  %.not64 = icmp ugt i32 %i.ox, %i.pd
  br i1 %.not64, label %bb.ey, label %bb.ez, !prof !396

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #40
          to label %bb.cc unwind label %.thread535

bb.ez:                                            ; preds = %bb.ex
  %i.pe = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.pf = load i64, ptr %i.pe, align 8, !noundef !9 ; 2 uses
  %i.pg = icmp sgt i64 %i.pf, -1
  call void @llvm.assume(i1 %i.pg)
  %i.ph = icmp eq i64 %i.pf, 0                    ; 3 uses
  br i1 %i.ph, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.pi = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 %i.ox, ptr %i.pi, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 %i.pd, ptr %i.pj, align 4
  store ptr null, ptr %i.k, align 8
  br label %bb.fc

bb.fb:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, i32 noundef %i.ox, i32 noundef %i.pd)
          to label %bb.fd unwind label %.thread539

.thread539:                                       ; preds = %bb.fb
  %lpad.thr_comm.split-lp534541 = landingpad { ptr, i32 }
          cleanup
  br label %.body202

bb.fc:                                            ; preds = %bb.fd, %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.fe unwind label %bb.ew

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.fc

bb.fe:                                            ; preds = %bb.fc
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.ff unwind label %bb.ew

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.ph, label %bb.fg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit205

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit205: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i201, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.m)
          to label %bb.fj unwind label %.loopexit.split-lp545

bb.fg:                                            ; preds = %bb.ff
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i201 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.pk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body202 unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.pl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i201: ; preds = %bb.fg
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit205 unwind label %bb.et

bb.fj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.eq

bb.fk:                                            ; preds = %.thread535, %bb.ew
  %lpad.phi538 = phi { ptr, i32 } [ %lpad.thr_comm533, %.thread535 ], [ %lpad.thr_comm.split-lp534, %bb.ew ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #38
          to label %.body202 unwind label %bb.cl

bb.fl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEECsEhZmuQNqkz_11ruff_linter.exit, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread798

bb.fm:                                            ; preds = %.thread524, %bb.cz
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.pm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.pn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %.loopexit544, %.thread480, %.body, %bb.fn
  %common.resume.op = phi { ptr, i32 } [ %i.pm, %bb.fn ], [ %.pn78484, %.thread480 ], [ %.pn78, %.loopexit544 ], [ %.pn71, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.fm
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %bb.fl

.thread480:                                       ; preds = %.loopexit544.loopexit.loopexit, %.loopexit544.loopexit.loopexit.split-lp, %.loopexit544.loopexit.split-lp, %bb.bu, %.loopexit544
  %.pn78484 = phi { ptr, i32 } [ %.pn78, %.loopexit544 ], [ %.pn76, %bb.bu ], [ %lpad.loopexit.split-lp550, %.loopexit544.loopexit.split-lp ], [ %lpad.loopexit708, %.loopexit544.loopexit.loopexit ], [ %lpad.loopexit.split-lp709, %.loopexit544.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #38
          to label %common.resume unwind label %bb.cl
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules35mixed_case_variable_in_global_scope35mixed_case_variable_in_global_scope(ptr noundef nonnull align 8 captures(address, read_provenance) %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = tail call noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming7helpers13is_mixed_case(ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17current_statement(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.e)
  %i.g = tail call noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming7helpers25is_named_tuple_assignment(ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.e)
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.d, %bb.a, %bb.h
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !9, !align !473, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !9, !align !473, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1312
  %i.m = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming8settingsNtB5_11IgnoreNames7matches(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  br i1 %i.m, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.n = load i64, ptr %i.a, align 8, !range !394, !noundef !9
end_hunk_0

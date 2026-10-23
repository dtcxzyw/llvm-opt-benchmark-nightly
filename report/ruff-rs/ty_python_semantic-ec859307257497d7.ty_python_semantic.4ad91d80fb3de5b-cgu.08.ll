Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.08?download=true
inline.NumInlined: 8661
inline.NumDeleted: 4050
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict28validate_merged_dict_literalNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1y_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_:bb.a
  %i.bi = alloca [20 x i8], align 4               ; 4 uses
  %i.bj = alloca [48 x i8], align 8               ; 9 uses
  %i.bk = alloca [16 x i8], align 4               ; 5 uses
  %i.bl = alloca [80 x i8], align 8               ; 5 uses
  %i.bm = alloca [80 x i8], align 8               ; 5 uses
  %i.bn = alloca [80 x i8], align 8               ; 5 uses
  %i.bo = alloca [80 x i8], align 8               ; 7 uses
  %i.bp = alloca [48 x i8], align 8               ; 4 uses
  %i.bq = alloca [80 x i8], align 8               ; 5 uses
  %i.br = alloca [16 x i8], align 4               ; 5 uses
  %i.bs = alloca [16 x i8], align 4               ; 5 uses
  %i.bt = alloca [16 x i8], align 4               ; 4 uses
  %i.bu = alloca [16 x i8], align 4               ; 10 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 16 uses
  %i.bv = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val55 = load ptr, ptr %i.bv, align 8, !nonnull !12, !align !19, !noundef !12 ; 16 uses
  %i.bw = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %.val56 = load ptr, ptr %i.bw, align 8, !nonnull !12, !align !29, !noundef !12 ; 10 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !12 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %._crit_edge232, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.a
  %.idx = mul nuw nsw i64 %i.ca, 144
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx
  %.val61 = load ptr, ptr %6, align 8, !nonnull !12, !align !19 ; 4 uses
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.6160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.au, i64 15 ; 4 uses
  %i.ce = load i64, ptr %3, align 8, !range !69   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.cj = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.cl = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.cm = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %i.as, i64 116
  %i.ct = getelementptr inbounds nuw i8, ptr %i.as, i64 117
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %.sroa.4.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.741.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.do = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.dq = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.03.sroa.5.sroa.5.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.03.sroa.5.sroa.6.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.03.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.03.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.03.sroa.7.sroa.5.0..sroa.03.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.03.sroa.7.sroa.6.0..sroa.03.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %.sroa.5.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %i.y, i64 15 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.dy = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.4114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.4.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.08.sroa.4.sroa.4.0..sroa.08.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.08.sroa.4.sroa.5.0..sroa.08.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.08.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.08.sroa.6.sroa.4.0..sroa.08.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %.sroa.08.sroa.6.sroa.5.0..sroa.08.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %.sroa.039.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.039.sroa.2.sroa.2.0..sroa.039.sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.039.sroa.2.sroa.3.0..sroa.039.sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.039.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.039.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.039.sroa.4.sroa.2.0..sroa.039.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %.sroa.039.sroa.4.sroa.3.0..sroa.039.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.15..15..15..15..15..15..15..15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph231, %.backedge
  %.sroa.0.0229 = phi i1 [ true, %.lr.ph231 ], [ %.sroa.0.0.be, %.backedge ] ; 5 uses
  %.sroa.4.0228 = phi ptr [ %i.cc, %.lr.ph231 ], [ %i.ec, %.backedge ] ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.4.0228, i64 -144 ; 10 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.4.0228, i64 -72 ; 6 uses
  %i.ee = load i32, ptr %i.ed, align 8, !range !65, !noundef !12
  %.not = icmp eq i32 %i.ee, -1
  br i1 %.not, label %bb.d, label %bb.c

._crit_edge232:                                   ; preds = %.backedge, %bb.a
  %.sroa.0.0.lcssa = phi i1 [ true, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  ret i1 %.sroa.0.0.lcssa

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call fastcc void @_RNCNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder10typed_dictNtB8_20TypeInferenceBuilder27infer_typed_dict_expression0Be_(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.bu, ptr nonnull %.val61, ptr noundef nonnull align 8 %i.ed)
  %.sroa.0156.0.copyload = load i32, ptr %i.bu, align 4 ; 2 uses
  %.sroa.4157.0.copyload = load i8, ptr %.sroa.4157.0..sroa_idx, align 4
  %.sroa.5159.0.copyload = load i32, ptr %.sroa.5159.0..sroa_idx, align 4 ; 2 uses
  %i.ef = icmp ne i32 %.sroa.0156.0.copyload, 17
  call void @llvm.assume(i1 %i.ef)
  %i.eg = icmp ne i32 %.sroa.0156.0.copyload, 28
  %i.eh = icmp ne i8 %.sroa.4157.0.copyload, 2
  %or.cond.not235 = select i1 %i.eg, i1 true, i1 %i.eh
  %.not41 = icmp eq i32 %.sroa.5159.0.copyload, 0
  %or.cond189 = select i1 %or.cond.not235, i1 true, i1 %.not41
  br i1 %or.cond189, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type17as_string_literal.exit.thread, label %bb.bo

bb.d:                                             ; preds = %bb.b
  call fastcc void @_RNCNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder10typed_dictNtB8_20TypeInferenceBuilder27infer_typed_dict_expression0Be_(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.h, ptr nonnull %.val61, ptr noundef nonnull align 8 %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.ei = call { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.ec) ; 2 uses
  %i.ej = extractvalue { i64, ptr } %i.ei, 0      ; 2 uses
  %i.ek = extractvalue { i64, ptr } %i.ei, 1      ; 2 uses
  %i.el = call { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.ec) ; 2 uses
  %i.em = extractvalue { i64, ptr } %i.el, 0      ; 2 uses
  %i.en = extractvalue { i64, ptr } %i.el, 1      ; 2 uses
  store i64 %i.ce, ptr %i.ao, align 8
  store ptr %i.cg, ptr %i.dh, align 8
  store i64 %i.ej, ptr %i.di, align 8
  store ptr %i.ek, ptr %i.dj, align 8
  store i64 %i.em, ptr %i.dk, align 8
  store ptr %i.en, ptr %i.dl, align 8
  %.val.i = load ptr, ptr %0, align 8, !noalias !9969, !nonnull !12, !noundef !12 ; 9 uses
  %.val131.i = load ptr, ptr %i.bv, align 8, !noalias !9969, !nonnull !12, !align !19, !noundef !12 ; 9 uses
  %.val132.i = load ptr, ptr %i.bw, align 8, !noalias !9969, !nonnull !12, !align !29, !noundef !12 ; 5 uses
  %i.eo = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i), !noalias !9969, !inline_history !9879 ; 4 uses
  %i.ep = load i32, ptr %i.ec, align 8, !range !54, !noalias !9969, !noundef !12
  %i.eq = icmp eq i32 %i.ep, 6
  br i1 %i.eq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.er = getelementptr inbounds i8, ptr %.sroa.4.0228, i64 -136
  %i.es = call fastcc noundef zeroext i1 @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict28validate_merged_dict_literalNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1y_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull align 8 %i.er, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 dereferenceable(72) %5, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !noalias !9970, !inline_history !9879
  br label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.et = call fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict27unpacked_keyword_is_gradual(ptr noundef nonnull %.val.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.i), !noalias !9971, !inline_history !9879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9969
  br i1 %i.et, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !9969
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict43extract_unpacked_typed_dict_from_value_type(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ag, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i, ptr noundef nonnull align 4 %.val132.i, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.h)
  %i.eu = load i32, ptr %i.dm, align 8, !range !64, !noalias !9969, !noundef !12
  %.not.i = icmp eq i32 %i.eu, -1
  br i1 %.not.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !9969
  %i.ev = load ptr, ptr %i.eo, align 8, !noalias !9971, !noundef !12 ; 3 uses
  %.not128.i = icmp eq ptr %i.ev, null
  br i1 %.not128.i, label %bb.bj, label %bb.bi

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !9969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false), !noalias !9969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !9969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9969
  invoke void @_RNvXNtCs5e9M2GLoJMY_8indexmap3mapINtB2_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %5)
          to label %bb.l unwind label %.body.thread167, !noalias !9971, !inline_history !9879

.body.thread167:                                  ; preds = %bb.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9969
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21unpack_keys_and_items(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.t, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i, ptr noundef nonnull align 4 %.val132.i), !inline_history !9879
  %i.ex = load i32, ptr %i.t, align 4, !range !13, !noundef !12
  %.not120.i = icmp eq i32 %i.ex, -1
  br i1 %.not120.i, label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit, label %bb.av

bb.k:                                             ; preds = %.body125
  br i1 %.sroa.05.2.i, label %bb.au, label %common.resume

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !noalias !9969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !9969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !9969
  %i.ey = load i32, ptr %i.h, align 4, !range !70, !noundef !12 ; 2 uses
  %i.ez = icmp ne i32 %i.ey, 17
  call void @llvm.assume(i1 %i.ez), !noalias !9972
  %i.fa = add nsw i32 %i.ey, -23
  %switch.i128 = icmp ult i32 %i.fa, 2
  br i1 %switch.i128, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict25full_object_ty_annotation.exit

bb.n:                                             ; preds = %bb.l
  store i32 -1, ptr %i.ac, align 4, !alias.scope !9973, !noalias !9972
  br label %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict25full_object_ty_annotation.exit

.body125:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110, %bb.q, %bb.r, %bb.o
  %.pn.pn.i = phi { ptr, i32 } [ %i.fd, %bb.q ], [ %i.fb, %bb.o ], [ %i.fe, %bb.r ], [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110 ] ; 2 uses
  %.sroa.05.2.i = phi i1 [ true, %bb.q ], [ %.sroa.05.3.i, %bb.o ], [ true, %bb.r ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(72) %i.ae) #41
          to label %bb.k unwind label %bb.at, !noalias !9974, !inline_history !9879

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEbEECsoTR8nlGN3X_18ty_python_semantic.exit, %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict25full_object_ty_annotation.exit
  %.sroa.05.3.i = phi i1 [ false, %bb.y ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEbEECsoTR8nlGN3X_18ty_python_semantic.exit ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ true, %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict25full_object_ty_annotation.exit ]
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body125

_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict25full_object_ty_annotation.exit: ; preds = %bb.n, %bb.m
  invoke fastcc void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict34validate_extracted_typed_dict_keys(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.ad, ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ao, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ae)
          to label %bb.p unwind label %bb.o, !noalias !9975, !inline_history !9879

bb.p:                                             ; preds = %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict25full_object_ty_annotation.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9969
  %i.fc = load i8, ptr %i.dn, align 8, !range !27, !noalias !9969, !noundef !12
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.do, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dp, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i unwind label %bb.q, !noalias !9971

bb.q:                                             ; preds = %bb.p
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ad) #41
          to label %.body125 unwind label %bb.t, !noalias !9971

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i: ; preds = %bb.p
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.r, !noalias !9971

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ad)
          to label %.body125 unwind label %bb.s, !noalias !9971

bb.s:                                             ; preds = %bb.r
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !9971
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !9971
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEbEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEbEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !9969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ab, ptr noundef nonnull align 8 dereferenceable(20) %i.dq, i64 20, i1 false), !noalias !9969
  %i.fh = invoke fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict38validate_extracted_typed_dict_openness(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ae)
          to label %bb.u unwind label %bb.o, !noalias !9976, !inline_history !9879

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEbEECsoTR8nlGN3X_18ty_python_semantic.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9969
  %i.fi = load ptr, ptr %i.af, align 8, !noalias !9969, !noundef !12 ; 3 uses
  %.not122.i = icmp ne ptr %i.fi, null            ; 3 uses
  %i.fj = load i64, ptr %i.dr, align 8, !noalias !9969
  %i.fk = load i64, ptr %i.ds, align 8, !noalias !9969
  %.sroa.03.sroa.6.0.i = zext i1 %.not122.i to i64 ; 2 uses
  %.sroa.03.sroa.5.sroa.6.0.i = select i1 %.not122.i, i64 %i.fk, i64 undef ; 2 uses
  %.sroa.5.0.i = select i1 %.not122.i, i64 %i.fj, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9969
  store i64 %.sroa.03.sroa.6.0.i, ptr %i.aa, align 8, !noalias !9969
  store ptr null, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !noalias !9969
  store ptr %i.fi, ptr %.sroa.03.sroa.5.sroa.5.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !9969
  store i64 %.sroa.03.sroa.5.sroa.6.0.i, ptr %.sroa.03.sroa.5.sroa.6.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !9969
  store i64 %.sroa.03.sroa.6.0.i, ptr %.sroa.03.sroa.6.0..sroa_idx.i, align 8, !noalias !9969
  store ptr null, ptr %.sroa.03.sroa.7.0..sroa_idx.i, align 8, !noalias !9969
  store ptr %i.fi, ptr %.sroa.03.sroa.7.sroa.5.0..sroa.03.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !9969
  store i64 %.sroa.03.sroa.5.sroa.6.0.i, ptr %.sroa.03.sroa.7.sroa.6.0..sroa.03.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !9969
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i62, align 8, !noalias !9969
  br label %bb.v

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit120, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !9969
  invoke void @_RNvXsA_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1V_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %bb.w unwind label %bb.ah, !noalias !9974, !inline_history !9879

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110: ; preds = %bb.ar, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.as, %bb.ah
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %bb.ar ], [ %lpad.thr_comm.split-lp, %bb.ah ], [ %lpad.loopexit.split-lp, %bb.as ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1V_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %.body125 unwind label %bb.at

bb.w:                                             ; preds = %bb.v
  %i.fl = load i32, ptr %i.dt, align 8, !range !13, !noalias !9969, !noundef !12
  %.not123.i = icmp eq i32 %i.fl, -1
  br i1 %.not123.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !9969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !noalias !9969
  %i.fm = load i8, ptr %i.du, align 8, !range !27, !noalias !9969, !noundef !12
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.ag, label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !9969
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1V_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEB2o_.exit unwind label %bb.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEB2o_.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9969
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dx, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i unwind label %bb.z, !noalias !9974

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEB2o_.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae) #41
          to label %common.resume unwind label %bb.ac, !noalias !9974

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEB2o_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.aa, !noalias !9974

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae)
          to label %common.resume unwind label %bb.ab, !noalias !9974

bb.ab:                                            ; preds = %bb.aa
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !9974
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !9974
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9969
  %i.fs = trunc nuw i8 %i.fc to i1
  %i.ft = and i1 %i.fh, %i.fs
  br label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit

bb.ad:                                            ; preds = %bb.ai, %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !9977)
  call void @llvm.experimental.noalias.scope.decl(metadata !9978), !noalias !9974
  call void @llvm.experimental.noalias.scope.decl(metadata !9979), !noalias !9974
  call void @llvm.experimental.noalias.scope.decl(metadata !9980), !noalias !9974
  %i.fu = load i8, ptr %i.dv, align 1, !range !20, !alias.scope !9981, !noalias !9974, !noundef !12
  %i.fv = and i8 %i.fu, -2
  %switch.i.i.i.i116 = icmp eq i8 %i.fv, -48
  br i1 %switch.i.i.i.i116, label %bb.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit120

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !9982), !noalias !9974
  %.pn.i.i.i.i.i117 = load ptr, ptr %i.y, align 8, !alias.scope !9983, !noalias !9974, !nonnull !12, !noundef !12
  %.sroa.0.0.i.i.i.i.i118 = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i117, i64 -8
  %i.fw = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i118, i64 -1 release, align 8, !noalias !9984
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit120, !prof !17

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit120 unwind label %bb.ah

bb.ag:                                            ; preds = %bb.x
  %i.fy = invoke { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE12get_index_ofBO_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9974, !inline_history !9879

bb.ah:                                            ; preds = %bb.v, %bb.af, %bb.ap
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110

bb.ai:                                            ; preds = %bb.ag
  %i.fz = extractvalue { i64, i64 } %i.fy, 0
  %i.ga = icmp eq i64 %i.fz, 1
  br i1 %i.ga, label %bb.ad, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !9969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !9969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !9969
  call void @llvm.experimental.noalias.scope.decl(metadata !9985)
  %i.gb = load i8, ptr %i.dv, align 1, !range !20, !alias.scope !9985, !noalias !9974, !noundef !12
  %i.gc = and i8 %i.gb, -2
  %switch.i111 = icmp eq i8 %i.gc, -48
  br i1 %switch.i111, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %.pn.i112 = load ptr, ptr %i.y, align 8, !alias.scope !9985, !noalias !9974, !nonnull !12, !noundef !12
  %.sroa.0.0.i113 = getelementptr inbounds i8, ptr %.pn.i112, i64 -8
  %i.gd = atomicrmw add ptr %.sroa.0.0.i113, i64 1 monotonic, align 8, !noalias !9986
  %i.ge = icmp slt i64 %i.gd, 0
  br i1 %i.ge, label %bb.al, label %bb.am, !prof !17

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y) #42
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %bb.al
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit120: ; preds = %bb.ae, %bb.ad, %bb.af, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !9969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !9969
  br label %bb.v

bb.am:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.y, i64 16, i1 false), !noalias !9974
  invoke void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB1a_9generated10AnyNodeRefEE5entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.v)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9974, !inline_history !9879

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !9969
  invoke void @_RINvMs2_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB6_5EntryNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB1g_9generated10AnyNodeRefEE10and_modifyNCINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB3m_5infer7builder10typed_dictNtB53_20TypeInferenceBuilder27infer_typed_dict_expression0E0EB3o_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.x, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.di)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9974, !inline_history !9879

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !9969
  %i.gf = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_5EntryNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB1f_9generated10AnyNodeRefEE9or_insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.x, i64 noundef %i.ej, ptr %i.ek)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9974, !inline_history !9879 ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !9969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !9969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !noalias !9969
  %i.gg = invoke { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE11insert_fullCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.u)
          to label %bb.aq unwind label %bb.ah, !noalias !9974, !inline_history !9879 ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9969
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit120

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ao, %bb.an, %bb.am, %bb.ag, %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9987)
  call void @llvm.experimental.noalias.scope.decl(metadata !9988), !noalias !9974
  call void @llvm.experimental.noalias.scope.decl(metadata !9989), !noalias !9974
  call void @llvm.experimental.noalias.scope.decl(metadata !9990), !noalias !9974
  %i.gh = load i8, ptr %i.dv, align 1, !range !20, !alias.scope !9991, !noalias !9974, !noundef !12
  %i.gi = and i8 %i.gh, -2
  %switch.i.i.i.i106 = icmp eq i8 %i.gi, -48
  br i1 %switch.i.i.i.i106, label %bb.ar, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110

bb.ar:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.experimental.noalias.scope.decl(metadata !9992), !noalias !9974
  %.pn.i.i.i.i.i107 = load ptr, ptr %i.y, align 8, !alias.scope !9993, !noalias !9974, !nonnull !12, !noundef !12
  %.sroa.0.0.i.i.i.i.i108 = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i107, i64 -8
  %i.gj = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i108, i64 -1 release, align 8, !noalias !9994
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %bb.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110, !prof !17

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110 unwind label %bb.at

bb.at:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110, %bb.as, %bb.au, %bb.bc, %bb.bg, %bb.ba, %.body125
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !9974, !inline_history !9879
  unreachable

common.resume:                                    ; preds = %bb.cr, %bb.df, %bb.dt, %bb.ck, %.thread173, %bb.cj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit87, %bb.dv, %bb.k, %bb.ba, %bb.z, %bb.aa, %bb.au, %bb.bc, %bb.bg
  %common.resume.op = phi { ptr, i32 } [ %i.gu, %bb.bg ], [ %i.fo, %bb.z ], [ %.pn.pn.i, %bb.k ], [ %i.gq, %bb.bc ], [ %.pn.pn.pn.i164, %bb.au ], [ %i.gp, %bb.ba ], [ %i.kv, %bb.dv ], [ %i.fp, %bb.aa ], [ %i.kg, %bb.cr ], [ %.pn52176, %.thread173 ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit ], [ %i.kn, %bb.df ], [ %.pn49, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit87 ], [ %i.ku, %bb.dt ], [ %.pn52176, %bb.cj ], [ %.pn52176, %bb.ck ]
  resume { ptr, i32 } %common.resume.op

bb.au:                                            ; preds = %.body.thread167, %bb.k
  %.pn.pn.pn.i164 = phi { ptr, i32 } [ %i.ew, %.body.thread167 ], [ %.pn.pn.i, %bb.k ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1S_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.at

bb.av:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9969
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.s, i8 noundef 9, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i, ptr noundef nonnull align 4 %.val132.i, ptr noalias readonly align 8 captures(address, read_provenance) poison), !noalias !9971, !inline_history !9879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.gm = call noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type16is_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i, ptr noundef nonnull align 4 %.val132.i, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.s), !noalias !9971, !inline_history !9879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9969
  br i1 %i.gm, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !9969
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.r, ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic21INVALID_ARGUMENT_TYPE, i64 noundef %i.em, ptr noundef %i.en), !noalias !9971, !inline_history !9879
  %i.gn = load i64, ptr %i.r, align 8, !range !41, !noalias !9969, !noundef !12
  %.not121.i = icmp eq i64 %i.gn, -2
  br i1 %.not121.i, label %bb.az, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9969
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.m, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i), !noalias !9971, !inline_history !9879
  %.val133.i = load i32, ptr %i.m, align 4, !range !28, !noalias !9969, !noundef !12
  %i.go = icmp eq i32 %.val133.i, 37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9969
  br i1 %i.go, label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit, label %bb.bf

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 80, i1 false), !noalias !9969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9969
  invoke void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.t, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i, ptr noundef nonnull align 4 %.val132.i)
          to label %bb.bb unwind label %bb.ba

bb.az:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9969
  br label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit

bb.ba:                                            ; preds = %bb.ay
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.p) #41
          to label %common.resume unwind label %bb.at, !noalias !9971, !inline_history !9879

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9969
  store ptr %i.o, ptr %i.n, align 8, !noalias !9969
  store ptr @_RNvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4114.0..sroa_idx.i, align 8, !noalias !9969
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.p, ptr noundef nonnull @68, ptr noundef nonnull %i.n)
          to label %bb.bd unwind label %bb.bc, !noalias !9971, !inline_history !9879

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.dz)
          to label %common.resume unwind label %bb.at

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9969
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.q)
          to label %bb.be unwind label %bb.bc, !noalias !9971, !inline_history !9879

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9969
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.dz), !noalias !9971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9969
  br label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit

bb.bf:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9969
  store ptr null, ptr %i.l, align 8, !noalias !9969
  store i64 0, ptr %i.ea, align 8, !noalias !9969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9969
  call void @llvm.experimental.noalias.scope.decl(metadata !9995)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.dy, i64 16, i1 false)
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i)
          to label %.noexc101 unwind label %bb.bg

.noexc101:                                        ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9996
  %.val.i99 = load i32, ptr %i.b, align 4, !range !70, !noalias !9996, !noundef !12 ; 3 uses
  %i.gr = icmp ne i32 %.val.i99, 17
  call void @llvm.assume(i1 %i.gr), !noalias !9971
  %i.gs = add nsw i32 %.val.i99, -4
  %i.gt = icmp samesign ugt i32 %.val.i99, 3
  %narrow.i.i = select i1 %i.gt, i32 %i.gs, i32 13
  switch i32 %narrow.i.i, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread3.i [
    i32 1, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i
    i32 2, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread.i
  ]

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i: ; preds = %.noexc101
  %.val1.i = load i8, ptr %i.eb, align 4, !noalias !9996
  %spec.select.i.i = trunc i8 %.val1.i to i1
  br i1 %spec.select.i.i, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread.i, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread3.i

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread3.i: ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i, %.noexc101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.dy, i64 16, i1 false)
  store i8 1, ptr %.sroa.4.0..sroa_idx.i100, align 4, !alias.scope !9995, !noalias !9971
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness5extra.exit

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread.i: ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i, %.noexc101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9996
  store i32 38, ptr %i.k, align 4, !alias.scope !9995, !noalias !9971
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness5extra.exit

bb.bg:                                            ; preds = %bb.bf, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness5extra.exit
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1S_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.at

_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness5extra.exit: ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread.i, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread3.i
  %i.gv = invoke fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict38validate_extracted_typed_dict_openness(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %5)
          to label %bb.bh unwind label %bb.bg, !noalias !9976, !inline_history !9879

bb.bh:                                            ; preds = %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness5extra.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9969
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1S_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l), !noalias !9971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9969
  br label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit

bb.bi:                                            ; preds = %bb.h
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.gx = load <2 x i64>, ptr %i.gw, align 8, !noalias !9971
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.h
  %.sroa.06.sroa.0.0.i = phi i64 [ 1, %bb.bi ], [ 0, %bb.h ] ; 2 uses
  %i.gy = phi <2 x i64> [ %i.gx, %bb.bi ], [ <i64 undef, i64 0>, %bb.h ] ; 2 uses
  store i64 %.sroa.06.sroa.0.0.i, ptr %i.ak, align 8, !noalias !9969
  store ptr null, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !9969
  store ptr %i.ev, ptr %.sroa.08.sroa.4.sroa.4.0..sroa.08.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !9969
  %i.gz = extractelement <2 x i64> %i.gy, i64 0
  store i64 %i.gz, ptr %.sroa.08.sroa.4.sroa.5.0..sroa.08.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !9969
  store i64 %.sroa.06.sroa.0.0.i, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !9969
  store ptr null, ptr %.sroa.08.sroa.6.0..sroa_idx.i, align 8, !noalias !9969
  store ptr %i.ev, ptr %.sroa.08.sroa.6.sroa.4.0..sroa.08.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !9969
  store <2 x i64> %i.gy, ptr %.sroa.08.sroa.6.sroa.5.0..sroa.08.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !9969
  call void @_RINvXs8_NtCs5e9M2GLoJMY_8indexmap3setINtB6_8IndexSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB1F_8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysBO_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEEB4d_(ptr noalias noundef nonnull align 8 dereferenceable(72) %5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ak), !noalias !9971, !inline_history !9879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9969
  %i.ha = load ptr, ptr %i.eo, align 8, !noalias !9971, !noundef !12 ; 3 uses
  %.not129.i = icmp eq ptr %i.ha, null
  br i1 %.not129.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.hc = load <2 x i64>, ptr %i.hb, align 8, !noalias !9971
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.sroa.037.sroa.6.0.i = phi i64 [ 1, %bb.bk ], [ 0, %bb.bj ] ; 2 uses
  %i.hd = phi <2 x i64> [ %i.hc, %bb.bk ], [ <i64 undef, i64 0>, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !9969
  store i64 %.sroa.037.sroa.6.0.i, ptr %i.aj, align 8, !noalias !9969
  store ptr null, ptr %.sroa.039.sroa.2.0..sroa_idx.i, align 8, !noalias !9969
  store ptr %i.ha, ptr %.sroa.039.sroa.2.sroa.2.0..sroa.039.sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !9969
  %i.he = extractelement <2 x i64> %i.hd, i64 0
  store i64 %i.he, ptr %.sroa.039.sroa.2.sroa.3.0..sroa.039.sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !9969
  store i64 %.sroa.037.sroa.6.0.i, ptr %.sroa.039.sroa.3.0..sroa_idx.i, align 8, !noalias !9969
  store ptr null, ptr %.sroa.039.sroa.4.0..sroa_idx.i, align 8, !noalias !9969
  store ptr %i.ha, ptr %.sroa.039.sroa.4.sroa.2.0..sroa.039.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !9969
  store <2 x i64> %i.hd, ptr %.sroa.039.sroa.4.sroa.3.0..sroa.039.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !9969
  %i.hf = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aj), !noalias !9997, !inline_history !9879
  %i.hg = extractvalue { ptr, ptr } %i.hf, 0      ; 2 uses
  %.not130.i227 = icmp eq ptr %i.hg, null
  br i1 %.not130.i227, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bl, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit97
  %i.hh = phi ptr [ %i.hp, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit97 ], [ %i.hg, %bb.bl ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !9969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !9969
  call void @llvm.experimental.noalias.scope.decl(metadata !9998)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 15
  %i.hj = load i8, ptr %i.hi, align 1, !range !20, !alias.scope !9998, !noalias !9997, !noundef !12
  %i.hk = and i8 %i.hj, -2
  %switch.i94 = icmp eq i8 %i.hk, -48
  br i1 %switch.i94, label %bb.bm, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit97

bb.bm:                                            ; preds = %.lr.ph
  %.pn.i95 = load ptr, ptr %i.hh, align 8, !alias.scope !9998, !noalias !9997, !nonnull !12, !noundef !12
  %.sroa.0.0.i96 = getelementptr inbounds i8, ptr %.pn.i95, i64 -8
  %i.hl = atomicrmw add ptr %.sroa.0.0.i96, i64 1 monotonic, align 8, !noalias !9999
  %i.hm = icmp slt i64 %i.hl, 0
  br i1 %i.hm, label %bb.bn, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit97, !prof !17

bb.bn:                                            ; preds = %bb.bm
  call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hh) #42, !noalias !10000
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit97: ; preds = %.lr.ph, %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.hh, i64 16, i1 false), !noalias !9997
  call void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB1a_9generated10AnyNodeRefEE5entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ah), !noalias !9997, !inline_history !9879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9969
  %i.hn = call noundef nonnull align 8 ptr @_RNvMs2_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_5EntryNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB1f_9generated10AnyNodeRefEE9or_insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ai, i64 noundef -1, ptr undef), !noalias !9997, !inline_history !9879 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9969
  %i.ho = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aj), !noalias !9997, !inline_history !9879
  %i.hp = extractvalue { ptr, ptr } %i.ho, 0      ; 2 uses
  %.not130.i = icmp eq ptr %i.hp, null
  br i1 %.not130.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit97, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9969
  br label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit

_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit: ; preds = %bb.ax, %bb.az, %bb.be, %bb.bh, %bb.j, %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i, %._crit_edge
  %.sroa.0.1.i63 = phi i1 [ %i.es, %bb.e ], [ true, %._crit_edge ], [ %i.ft, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ true, %bb.j ], [ false, %bb.az ], [ %i.gv, %bb.bh ], [ false, %bb.be ], [ true, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.hq = select i1 %.sroa.0.1.i63, i1 %.sroa.0.0229, i1 false
  br label %.backedge

bb.bo:                                            ; preds = %bb.c
  %.sroa.6160.0.copyload = load i32, ptr %.sroa.6160.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.hr = call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literals2_1__NtB8_17StringLiteralType5valueDNtNtBc_2db2DbEL_EBc_(i32 noundef %.sroa.5159.0.copyload, i32 noundef %.sroa.6160.0.copyload, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55) ; 2 uses
  %i.hs = extractvalue { ptr, i64 } %i.hr, 0      ; 2 uses
  %i.ht = extractvalue { ptr, i64 } %i.hr, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10001)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.hu = icmp ult i64 %i.ht, 17
  br i1 %i.hu, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hv = call { ptr, i64 } @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer9new_exact(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hs, i64 noundef %i.ht), !noalias !10002 ; 2 uses
  %i.hw = extractvalue { ptr, i64 } %i.hv, 0      ; 2 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i, label %bb.br

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit190

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.f, i8 0, i64 15, i1 false), !noalias !10003
  %i.hy = trunc nuw nsw i64 %i.ht to i8
  %i.hz = or disjoint i8 %i.hy, -64
  store i8 %i.hz, ptr %.15..15..15..15..15..15..15..15..sroa_idx, align 1, !noalias !10003
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull readonly align 1 %i.hs, i64 %i.ht, i1 false), !noalias !10002
  %.0..0..0..0..0..sroa.02.0.copyload3.i = load ptr, ptr %i.f, align 8, !noalias !10004
  %.8..8..8..8..8..sroa.6.0.copyload5.i = load i64, ptr %.8..8..8..8..8..sroa_idx, align 8, !noalias !10004
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.ia = extractvalue { ptr, i64 } %i.hv, 1
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i: ; preds = %bb.br, %bb.bq
  %.sroa.02.0.i = phi ptr [ %.0..0..0..0..0..sroa.02.0.copyload3.i, %bb.bq ], [ %i.hw, %bb.br ]
  %.sroa.6.0.i = phi i64 [ %.8..8..8..8..8..sroa.6.0.copyload5.i, %bb.bq ], [ %i.ia, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ib = icmp ugt i64 %.sroa.6.0.i, -72057594037927937
  br i1 %i.ib, label %.loopexit190, label %_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECsoTR8nlGN3X_18ty_python_semantic.exit, !prof !35

.loopexit190:                                     ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i
  call void @_RINvNvXsQ_Csj8vhLppEnlJ_8char_strINtNtCs4NRVxsYgnAr_4core6result6ResultppENtB8_13UnwrapWithMsg15unwrap_with_msg17do_panic_with_msgNtNtNtB8_6errors13reserve_error12ReserveErrorEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42, !noalias !10001
  unreachable

_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i
  store ptr %.sroa.02.0.i, ptr %i.au, align 8, !alias.scope !10001
  store i64 %.sroa.6.0.i, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !10001
  %i.ic = invoke { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE12get_index_ofBO_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.au)
          to label %bb.bs unwind label %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type17as_string_literal.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bt, i8 noundef 9, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noundef nonnull align 4 %.val56, ptr noalias readonly align 8 captures(address, read_provenance) poison)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, ptr noundef nonnull align 4 dereferenceable(16) %i.bu, i64 16, i1 false)
  %i.id = call noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type16is_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.an, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noundef nonnull align 4 %.val56, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br i1 %i.id, label %bb.cm, label %bb.cl

bb.bs:                                            ; preds = %_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ie = extractvalue { i64, i64 } %i.ic, 0
  %i.if = icmp eq i64 %i.ie, 1
  br i1 %i.if, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.cg, %bb.bs
  %.sroa.0.1 = phi i1 [ %.sroa.0.0229, %bb.bs ], [ %i.jg, %bb.cg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.ig = call { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE11insert_fullCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ap) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %.backedge

bb.bu:                                            ; preds = %bb.bs
  %i.ih = load i8, ptr %i.cd, align 1, !range !20, !alias.scope !10005, !noundef !12 ; 3 uses
  %i.ii = load i64, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !10005, !noundef !12
  %i.ij = load ptr, ptr %i.au, align 8, !alias.scope !10005
  %i.ik = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55)
          to label %.noexc unwind label %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.bu
  %i.il = icmp ugt i8 %i.ih, -49
  %.sroa.01.0.i = select i1 %i.il, ptr %i.ij, ptr %i.au
  %i.im = icmp ult i8 %i.ih, -48
  %i.in = zext i8 %i.ih to i64
  %i.io = add nsw i64 %i.in, -192
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.io, i64 16)
  %i.ip = and i64 %i.ii, 72057594037927935
  %.sroa.0.0.i65 = select i1 %i.im, i64 %spec.store.select.i, i64 %i.ip
  %i.iq = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3geteEB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ik, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i65)
          to label %.noexc67 unwind label %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc67:                                         ; preds = %.noexc
  %.not.i66 = icmp eq ptr %i.iq, null
  br i1 %.not.i66, label %.thread.i, label %bb.bv

bb.bv:                                            ; preds = %.noexc67
  %.sroa.06.0.copyload.i = load i32, ptr %i.iq, align 4, !alias.scope !10006, !noalias !10007
  %.not.i.i = icmp eq i32 %.sroa.06.0.copyload.i, -1
  br i1 %.not.i.i, label %.thread.i, label %bb.bw

.thread.i:                                        ; preds = %bb.bv, %.noexc67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10008
  invoke void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.e, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55)
          to label %.noexc68 unwind label %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc68:                                         ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10008
  br label %bb.bw

bb.bw:                                            ; preds = %.noexc68, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke fastcc void @_RNCNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder10typed_dictNtB8_20TypeInferenceBuilder27infer_typed_dict_expression0Be_(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.at, ptr nonnull %.val61, ptr noundef nonnull align 8 %i.ec)
          to label %bb.bx unwind label %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.ir = load i8, ptr %i.cd, align 1, !range !20, !alias.scope !10009, !noundef !12 ; 3 uses
  %i.is = load i64, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !10009, !noundef !12
  %i.it = and i64 %i.is, 72057594037927935
  %i.iu = icmp ult i8 %i.ir, -48
  %i.iv = zext i8 %i.ir to i64
  %i.iw = add nsw i64 %i.iv, -192
  %spec.store.select.i69 = call i64 @llvm.umin.i64(i64 %i.iw, i64 16)
  %.sroa.0.0.i70 = select i1 %i.iu, i64 %spec.store.select.i69, i64 %i.it
  %i.ix = icmp ugt i8 %i.ir, -49
  %i.iy = load ptr, ptr %i.au, align 8, !alias.scope !10009
  %.sroa.01.0.i71 = select i1 %i.ix, ptr %i.iy, ptr %i.au
  %i.iz = invoke { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.ed)
          to label %bb.by unwind label %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %i.ja = invoke { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.ec)
end_hunk_0

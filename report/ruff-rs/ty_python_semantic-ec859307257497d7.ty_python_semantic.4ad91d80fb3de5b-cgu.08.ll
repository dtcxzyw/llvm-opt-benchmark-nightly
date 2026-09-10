Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.08?download=true
inline.NumInlined: 8661
inline.NumDeleted: 4050
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict28validate_merged_dict_literalNCNvMNtNtNtB4_5infer7builder4dictNtB1w_20TypeInferenceBuilder28infer_keyword_only_dict_calls0_0EB6_:bb.a
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.aq
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict28validate_merged_dict_literalNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1y_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 dereferenceable(72) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 6 uses
  %i.c = alloca [20 x i8], align 4                ; 6 uses
  %.sroa.7.i = alloca [16 x i8], align 4          ; 5 uses
  %i.d = alloca [96 x i8], align 8                ; 14 uses
  %i.e = alloca [20 x i8], align 4                ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [16 x i8], align 4                ; 6 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 4 uses
  %i.k = alloca [20 x i8], align 4                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [20 x i8], align 4                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [80 x i8], align 8                ; 5 uses
  %i.p = alloca [80 x i8], align 8                ; 5 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 4                ; 4 uses
  %i.t = alloca [32 x i8], align 4                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [48 x i8], align 8                ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 13 uses
  %i.z = alloca [48 x i8], align 8                ; 7 uses
  %i.aa = alloca [72 x i8], align 8               ; 14 uses
  %i.ab = alloca [20 x i8], align 4               ; 4 uses
  %i.ac = alloca [16 x i8], align 4               ; 5 uses
  %i.ad = alloca [80 x i8], align 8               ; 10 uses
  %i.ae = alloca [72 x i8], align 8               ; 13 uses
  %i.af = alloca [48 x i8], align 8               ; 10 uses
  %i.ag = alloca [48 x i8], align 8               ; 6 uses
  %i.ah = alloca [16 x i8], align 8               ; 4 uses
  %i.ai = alloca [48 x i8], align 8               ; 4 uses
  %i.aj = alloca [72 x i8], align 8               ; 12 uses
  %i.ak = alloca [72 x i8], align 8               ; 11 uses
  %i.al = alloca [16 x i8], align 4               ; 4 uses
  %i.am = alloca [16 x i8], align 4               ; 4 uses
  %i.an = alloca [16 x i8], align 4               ; 4 uses
  %i.ao = alloca [48 x i8], align 8               ; 12 uses
  %i.ap = alloca [16 x i8], align 8               ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 4 uses
  %i.ar = alloca [48 x i8], align 8               ; 5 uses
  %i.as = alloca [120 x i8], align 8              ; 17 uses
  %i.at = alloca [16 x i8], align 4               ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 16 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [80 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 4               ; 5 uses
  %i.ay = alloca [80 x i8], align 8               ; 5 uses
  %i.az = alloca [80 x i8], align 8               ; 6 uses
  %i.ba = alloca [48 x i8], align 8               ; 4 uses
  %i.bb = alloca [80 x i8], align 8               ; 6 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 4               ; 5 uses
  %i.be = alloca [80 x i8], align 8               ; 5 uses
  %i.bf = alloca [80 x i8], align 8               ; 5 uses
  %i.bg = alloca [48 x i8], align 8               ; 4 uses
  %i.bh = alloca [80 x i8], align 8               ; 6 uses
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
  %.sroa.0.0229 = phi i8 [ 1, %.lr.ph231 ], [ %.sroa.0.0.be, %.backedge ] ; 5 uses
  %.sroa.4.0228 = phi ptr [ %i.cc, %.lr.ph231 ], [ %i.ec, %.backedge ] ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.4.0228, i64 -144 ; 10 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.4.0228, i64 -72 ; 6 uses
  %i.ee = load i32, ptr %i.ed, align 8, !range !65, !noundef !12
  %.not = icmp eq i32 %i.ee, -1
  br i1 %.not, label %bb.d, label %bb.c

._crit_edge232.loopexit:                          ; preds = %.backedge
  %7 = trunc nuw i8 %.sroa.0.0.be to i1
  br label %._crit_edge232

._crit_edge232:                                   ; preds = %._crit_edge232.loopexit, %bb.a
  %.sroa.0.0.lcssa = phi i1 [ true, %bb.a ], [ %7, %._crit_edge232.loopexit ]
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
  br i1 %or.cond189, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type17as_string_literal.exit.thread, label %bb.bq

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
  %.val.i = load ptr, ptr %0, align 8, !noalias !10233, !nonnull !12, !noundef !12 ; 9 uses
  %.val131.i = load ptr, ptr %i.bv, align 8, !noalias !10233, !nonnull !12, !align !19, !noundef !12 ; 9 uses
  %.val132.i = load ptr, ptr %i.bw, align 8, !noalias !10233, !nonnull !12, !align !29, !noundef !12 ; 5 uses
  %i.eo = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i), !noalias !10233, !inline_history !10141 ; 4 uses
  %i.ep = load i32, ptr %i.ec, align 8, !range !54, !noalias !10233, !noundef !12
  %i.eq = icmp eq i32 %i.ep, 6
  br i1 %i.eq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.er = getelementptr inbounds i8, ptr %.sroa.4.0228, i64 -136
  %i.es = call fastcc noundef zeroext i1 @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict28validate_merged_dict_literalNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1y_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull align 8 %i.er, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 dereferenceable(72) %5, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !noalias !10234, !inline_history !10141
  %8 = zext i1 %i.es to i8
  br label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.et = call fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict27unpacked_keyword_is_gradual(ptr noundef nonnull %.val.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.i), !noalias !10235, !inline_history !10141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10233
  br i1 %i.et, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !10233
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict43extract_unpacked_typed_dict_from_value_type(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ag, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i, ptr noundef nonnull align 4 %.val132.i, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.h)
  %i.eu = load i32, ptr %i.dm, align 8, !range !64, !noalias !10233, !noundef !12
  %.not.i = icmp eq i32 %i.eu, -1
  br i1 %.not.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !10233
  %i.ev = load ptr, ptr %i.eo, align 8, !noalias !10235, !noundef !12 ; 3 uses
  %.not128.i = icmp eq ptr %i.ev, null
  br i1 %.not128.i, label %bb.bl, label %bb.bk

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !10233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false), !noalias !10233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !10233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10233
  invoke void @_RNvXNtCs5e9M2GLoJMY_8indexmap3mapINtB2_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %5)
          to label %bb.l unwind label %.body.thread167, !noalias !10235, !inline_history !10141

.body.thread167:                                  ; preds = %bb.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !10233
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21unpack_keys_and_items(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.t, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i, ptr noundef nonnull align 4 %.val132.i), !inline_history !10141
  %i.ex = load i32, ptr %i.t, align 4, !range !13, !noundef !12
  %.not120.i = icmp eq i32 %i.ex, -1
  br i1 %.not120.i, label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit, label %bb.ax

bb.k:                                             ; preds = %.body125
  br i1 %.sroa.05.2.i, label %bb.aw, label %common.resume

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !noalias !10233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !10233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !10233
  %i.ey = load i32, ptr %i.h, align 4, !range !70, !noundef !12 ; 2 uses
  %i.ez = icmp ne i32 %i.ey, 17
  call void @llvm.assume(i1 %i.ez), !noalias !10236
  %i.fa = add nsw i32 %i.ey, -23
  %switch.i128 = icmp ult i32 %i.fa, 2
  br i1 %switch.i128, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict25full_object_ty_annotation.exit

bb.n:                                             ; preds = %bb.l
  store i32 -1, ptr %i.ac, align 4, !alias.scope !10237, !noalias !10238
  br label %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict25full_object_ty_annotation.exit

.body125:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110, %bb.q, %bb.r, %bb.o
  %.pn.pn.i = phi { ptr, i32 } [ %i.fd, %bb.q ], [ %i.fb, %bb.o ], [ %i.fe, %bb.r ], [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110 ] ; 2 uses
  %.sroa.05.2.i = phi i1 [ true, %bb.q ], [ %.sroa.05.3.i, %bb.o ], [ true, %bb.r ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(72) %i.ae) #41
          to label %bb.k unwind label %bb.av, !noalias !10239, !inline_history !10141

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEbEECsoTR8nlGN3X_18ty_python_semantic.exit, %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict25full_object_ty_annotation.exit
  %.sroa.05.3.i = phi i1 [ false, %bb.z ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEbEECsoTR8nlGN3X_18ty_python_semantic.exit ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ true, %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict25full_object_ty_annotation.exit ]
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body125

_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict25full_object_ty_annotation.exit: ; preds = %bb.n, %bb.m
  invoke fastcc void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict34validate_extracted_typed_dict_keys(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.ad, ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ao, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ae)
          to label %bb.p unwind label %bb.o, !noalias !10240, !inline_history !10141

bb.p:                                             ; preds = %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict25full_object_ty_annotation.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10233
  %i.fc = load i8, ptr %i.dn, align 8, !range !27, !noalias !10233, !noundef !12
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.do, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dp, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i unwind label %bb.q, !noalias !10235

bb.q:                                             ; preds = %bb.p
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ad) #41
          to label %.body125 unwind label %bb.t, !noalias !10235

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i: ; preds = %bb.p
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.r, !noalias !10235

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ad)
          to label %.body125 unwind label %bb.s, !noalias !10235

bb.s:                                             ; preds = %bb.r
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !10235
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !10235
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEbEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEbEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !10233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !10233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ab, ptr noundef nonnull align 8 dereferenceable(20) %i.dq, i64 20, i1 false), !noalias !10233
  %i.fh = invoke fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict38validate_extracted_typed_dict_openness(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ae)
          to label %bb.u unwind label %bb.o, !noalias !10241, !inline_history !10141

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEbEECsoTR8nlGN3X_18ty_python_semantic.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10233
  %9 = select i1 %i.fh, i8 %i.fc, i8 0
  %i.fi = load ptr, ptr %i.af, align 8, !noalias !10233, !noundef !12 ; 3 uses
  %.not122.i = icmp ne ptr %i.fi, null            ; 3 uses
  %i.fj = load i64, ptr %i.dr, align 8, !noalias !10233
  %i.fk = load i64, ptr %i.ds, align 8, !noalias !10233
  %.sroa.03.sroa.6.0.i = zext i1 %.not122.i to i64 ; 2 uses
  %.sroa.03.sroa.5.sroa.6.0.i = select i1 %.not122.i, i64 %i.fk, i64 undef ; 2 uses
  %.sroa.5.0.i = select i1 %.not122.i, i64 %i.fj, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10233
  store i64 %.sroa.03.sroa.6.0.i, ptr %i.aa, align 8, !noalias !10233
  store ptr null, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !noalias !10233
  store ptr %i.fi, ptr %.sroa.03.sroa.5.sroa.5.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !10233
  store i64 %.sroa.03.sroa.5.sroa.6.0.i, ptr %.sroa.03.sroa.5.sroa.6.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !10233
  store i64 %.sroa.03.sroa.6.0.i, ptr %.sroa.03.sroa.6.0..sroa_idx.i, align 8, !noalias !10233
  store ptr null, ptr %.sroa.03.sroa.7.0..sroa_idx.i, align 8, !noalias !10233
  store ptr %i.fi, ptr %.sroa.03.sroa.7.sroa.5.0..sroa.03.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !10233
  store i64 %.sroa.03.sroa.5.sroa.6.0.i, ptr %.sroa.03.sroa.7.sroa.6.0..sroa.03.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !10233
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i62, align 8, !noalias !10233
  br label %bb.v

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit120, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10233
  invoke void @_RNvXsA_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1V_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %bb.x unwind label %bb.w, !noalias !10239, !inline_history !10141

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110: ; preds = %bb.at, %bb.as, %bb.au, %bb.ai, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.fl, %bb.w ], [ %lpad.thr_comm.split-lp, %bb.ai ], [ %lpad.phi, %bb.au ], [ %lpad.phi, %bb.as ], [ %lpad.phi, %bb.at ]
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1V_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %.body125 unwind label %bb.av

bb.w:                                             ; preds = %bb.ag, %bb.v
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110

bb.x:                                             ; preds = %bb.v
  %i.fm = load i32, ptr %i.dt, align 8, !range !13, !noalias !10233, !noundef !12
  %.not123.i = icmp eq i32 %i.fm, -1
  br i1 %.not123.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !noalias !10233
  %i.fn = load i8, ptr %i.du, align 8, !range !27, !noalias !10233, !noundef !12
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.ah, label %bb.ae

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10233
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1V_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEB2o_.exit unwind label %bb.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEB2o_.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10233
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dx, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i unwind label %bb.aa, !noalias !10239

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEB2o_.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae) #41
          to label %common.resume unwind label %bb.ad, !noalias !10239

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyEEB2o_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.ab, !noalias !10239

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae)
          to label %common.resume unwind label %bb.ac, !noalias !10239

bb.ac:                                            ; preds = %bb.ab
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !10239
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !10239
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !10233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !10233
  br label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit

bb.ae:                                            ; preds = %bb.aj, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !10242)
  call void @llvm.experimental.noalias.scope.decl(metadata !10243), !noalias !10239
  call void @llvm.experimental.noalias.scope.decl(metadata !10244), !noalias !10239
  call void @llvm.experimental.noalias.scope.decl(metadata !10245), !noalias !10239
  %i.ft = load i8, ptr %i.dv, align 1, !range !20, !alias.scope !10246, !noalias !10239, !noundef !12
  %i.fu = and i8 %i.ft, -2
  %switch.i.i.i.i116 = icmp eq i8 %i.fu, -48
  br i1 %switch.i.i.i.i116, label %bb.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit120

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !10247), !noalias !10239
  %.pn.i.i.i.i.i117 = load ptr, ptr %i.y, align 8, !alias.scope !10248, !noalias !10239, !nonnull !12, !noundef !12
  %.sroa.0.0.i.i.i.i.i118 = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i117, i64 -8
  %i.fv = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i118, i64 1 release, align 8, !noalias !10249
  %i.fw = icmp eq i64 %i.fv, 1
  br i1 %i.fw, label %bb.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit120, !prof !17

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit120 unwind label %bb.w

bb.ah:                                            ; preds = %bb.y
  %i.fx = invoke { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE12get_index_ofBO_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %bb.aj unwind label %.loopexit, !noalias !10239, !inline_history !10141

bb.ai:                                            ; preds = %bb.aq
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110

bb.aj:                                            ; preds = %bb.ah
  %i.fy = extractvalue { i64, i64 } %i.fx, 0
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.ae, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !10233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !10233
  call void @llvm.experimental.noalias.scope.decl(metadata !10250)
  %i.ga = load i8, ptr %i.dv, align 1, !range !20, !alias.scope !10250, !noalias !10251, !noundef !12
  %i.gb = and i8 %i.ga, -2
  %switch.i111 = icmp eq i8 %i.gb, -48
  br i1 %switch.i111, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %.pn.i112 = load ptr, ptr %i.y, align 8, !alias.scope !10250, !noalias !10251, !nonnull !12, !noundef !12
  %.sroa.0.0.i113 = getelementptr inbounds i8, ptr %.pn.i112, i64 -8
  %i.gc = atomicrmw add ptr %.sroa.0.0.i113, i64 1 monotonic, align 8, !noalias !10252
  %i.gd = icmp slt i64 %i.gc, 0
  br i1 %i.gd, label %bb.am, label %bb.an, !prof !17

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y) #42
          to label %.noexc114 unwind label %.loopexit.split-lp

.noexc114:                                        ; preds = %bb.am
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit120: ; preds = %bb.af, %bb.ae, %bb.ag, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10233
  br label %bb.v

bb.an:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.y, i64 16, i1 false), !noalias !10239
  invoke void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB1a_9generated10AnyNodeRefEE5entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.v)
          to label %bb.ao unwind label %.loopexit, !noalias !10239, !inline_history !10141

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10233
  invoke void @_RINvMs2_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB6_5EntryNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB1g_9generated10AnyNodeRefEE10and_modifyNCINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB3m_5infer7builder10typed_dictNtB53_20TypeInferenceBuilder27infer_typed_dict_expression0E0EB3o_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.x, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.di)
          to label %bb.ap unwind label %.loopexit, !noalias !10239, !inline_history !10141

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !10233
  %i.ge = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_5EntryNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB1f_9generated10AnyNodeRefEE9or_insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.x, i64 noundef %i.ej, ptr %i.ek)
          to label %bb.aq unwind label %.loopexit, !noalias !10239, !inline_history !10141 ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !10233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !noalias !10233
  %i.gf = invoke { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE11insert_fullCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.u)
          to label %bb.ar unwind label %bb.ai, !noalias !10239, !inline_history !10141 ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10233
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit120

.loopexit:                                        ; preds = %bb.ah, %bb.an, %bb.ao, %bb.ap
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10253)
  call void @llvm.experimental.noalias.scope.decl(metadata !10254), !noalias !10239
  call void @llvm.experimental.noalias.scope.decl(metadata !10255), !noalias !10239
  call void @llvm.experimental.noalias.scope.decl(metadata !10256), !noalias !10239
  %i.gg = load i8, ptr %i.dv, align 1, !range !20, !alias.scope !10257, !noalias !10239, !noundef !12
  %i.gh = and i8 %i.gg, -2
  %switch.i.i.i.i106 = icmp eq i8 %i.gh, -48
  br i1 %switch.i.i.i.i106, label %bb.at, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110

bb.at:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !10258), !noalias !10239
  %.pn.i.i.i.i.i107 = load ptr, ptr %i.y, align 8, !alias.scope !10259, !noalias !10239, !nonnull !12, !noundef !12
  %.sroa.0.0.i.i.i.i.i108 = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i107, i64 -8
  %i.gi = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i108, i64 1 release, align 8, !noalias !10260
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %bb.au, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110, !prof !17

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110 unwind label %bb.av

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit110, %bb.au, %bb.aw, %bb.be, %bb.bi, %bb.bc, %.body125
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !10239, !inline_history !10141
  unreachable

common.resume:                                    ; preds = %bb.cu, %bb.di, %bb.dw, %bb.cn, %.thread173, %bb.cm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit87, %bb.dy, %bb.k, %bb.bc, %bb.aa, %bb.ab, %bb.aw, %bb.be, %bb.bi
  %common.resume.op = phi { ptr, i32 } [ %i.gt, %bb.bi ], [ %i.fp, %bb.aa ], [ %.pn.pn.i, %bb.k ], [ %i.gp, %bb.be ], [ %.pn.pn.pn.i164, %bb.aw ], [ %i.go, %bb.bc ], [ %i.kt, %bb.dy ], [ %i.fq, %bb.ab ], [ %i.ke, %bb.cu ], [ %.pn52176, %.thread173 ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit ], [ %i.kl, %bb.di ], [ %.pn49, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit87 ], [ %i.ks, %bb.dw ], [ %.pn52176, %bb.cm ], [ %.pn52176, %bb.cn ]
  resume { ptr, i32 } %common.resume.op

bb.aw:                                            ; preds = %.body.thread167, %bb.k
  %.pn.pn.pn.i164 = phi { ptr, i32 } [ %i.ew, %.body.thread167 ], [ %.pn.pn.i, %bb.k ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1S_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.av

bb.ax:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10233
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.s, i8 noundef 9, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i, ptr noundef nonnull align 4 %.val132.i, ptr noalias readonly align 8 captures(address, read_provenance) poison), !noalias !10235, !inline_history !10141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.gl = call noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type16is_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i, ptr noundef nonnull align 4 %.val132.i, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.s), !noalias !10235, !inline_history !10141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10233
  br i1 %i.gl, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10233
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.r, ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic21INVALID_ARGUMENT_TYPE, i64 noundef %i.em, ptr noundef %i.en), !noalias !10235, !inline_history !10141
  %i.gm = load i64, ptr %i.r, align 8, !range !41, !noalias !10233, !noundef !12
  %.not121.i = icmp eq i64 %i.gm, -2
  br i1 %.not121.i, label %bb.bb, label %bb.ba

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10233
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.m, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i), !noalias !10235, !inline_history !10141
  %.val133.i = load i32, ptr %i.m, align 4, !range !28, !noalias !10233, !noundef !12
  %i.gn = icmp eq i32 %.val133.i, 37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10233
  br i1 %i.gn, label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit, label %bb.bh

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 80, i1 false), !noalias !10233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10233
  invoke void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.t, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i, ptr noundef nonnull align 4 %.val132.i)
          to label %bb.bd unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10233
  br label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit

bb.bc:                                            ; preds = %bb.ba
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.p) #41
          to label %common.resume unwind label %bb.av, !noalias !10235, !inline_history !10141

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10233
  store ptr %i.o, ptr %i.n, align 8, !noalias !10233
  store ptr @_RNvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4114.0..sroa_idx.i, align 8, !noalias !10233
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.p, ptr noundef nonnull @68, ptr noundef nonnull %i.n)
          to label %bb.bf unwind label %bb.be, !noalias !10235, !inline_history !10141

bb.be:                                            ; preds = %bb.bf, %bb.bd
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.dz)
          to label %common.resume unwind label %bb.av

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10233
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.q)
          to label %bb.bg unwind label %bb.be, !noalias !10235, !inline_history !10141

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10233
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.dz), !noalias !10235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10233
  br label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit

bb.bh:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10233
  store ptr null, ptr %i.l, align 8, !noalias !10233
  store i64 0, ptr %i.ea, align 8, !noalias !10233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10233
  call void @llvm.experimental.noalias.scope.decl(metadata !10261)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.dy, i64 16, i1 false)
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val131.i)
          to label %.noexc101 unwind label %bb.bi

.noexc101:                                        ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10262
  %.val.i99 = load i32, ptr %i.b, align 4, !range !70, !noalias !10262, !noundef !12 ; 3 uses
  %i.gq = icmp ne i32 %.val.i99, 17
  call void @llvm.assume(i1 %i.gq), !noalias !10235
  %i.gr = add nsw i32 %.val.i99, -4
  %i.gs = icmp samesign ugt i32 %.val.i99, 3
  %narrow.i.i = select i1 %i.gs, i32 %i.gr, i32 13
  switch i32 %narrow.i.i, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread3.i [
    i32 1, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i
    i32 2, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread.i
  ]

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i: ; preds = %.noexc101
  %.val1.i = load i8, ptr %i.eb, align 4, !noalias !10262
  %spec.select.i.i = trunc i8 %.val1.i to i1
  br i1 %spec.select.i.i, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread.i, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread3.i

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread3.i: ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i, %.noexc101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.dy, i64 16, i1 false)
  store i8 1, ptr %.sroa.4.0..sroa_idx.i100, align 4, !alias.scope !10261, !noalias !10263
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness5extra.exit

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread.i: ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i, %.noexc101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10262
  store i32 38, ptr %i.k, align 4, !alias.scope !10261, !noalias !10263
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness5extra.exit

bb.bi:                                            ; preds = %bb.bh, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness5extra.exit
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1S_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.av

_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness5extra.exit: ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread.i, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread3.i
  %i.gu = invoke fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict38validate_extracted_typed_dict_openness(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %5)
          to label %bb.bj unwind label %bb.bi, !noalias !10241, !inline_history !10141

bb.bj:                                            ; preds = %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness5extra.exit
  %10 = zext i1 %i.gu to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10233
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict20UnpackedTypedDictKeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1S_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l), !noalias !10235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10233
  br label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit

bb.bk:                                            ; preds = %bb.h
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.gw = load <2 x i64>, ptr %i.gv, align 8, !noalias !10235
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.h
  %.sroa.06.sroa.0.0.i = phi i64 [ 1, %bb.bk ], [ 0, %bb.h ] ; 2 uses
  %i.gx = phi <2 x i64> [ %i.gw, %bb.bk ], [ <i64 undef, i64 0>, %bb.h ] ; 2 uses
  store i64 %.sroa.06.sroa.0.0.i, ptr %i.ak, align 8, !noalias !10233
  store ptr null, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !10233
  store ptr %i.ev, ptr %.sroa.08.sroa.4.sroa.4.0..sroa.08.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !10233
  %i.gy = extractelement <2 x i64> %i.gx, i64 0
  store i64 %i.gy, ptr %.sroa.08.sroa.4.sroa.5.0..sroa.08.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !10233
  store i64 %.sroa.06.sroa.0.0.i, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !10233
  store ptr null, ptr %.sroa.08.sroa.6.0..sroa_idx.i, align 8, !noalias !10233
  store ptr %i.ev, ptr %.sroa.08.sroa.6.sroa.4.0..sroa.08.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !10233
  store <2 x i64> %i.gx, ptr %.sroa.08.sroa.6.sroa.5.0..sroa.08.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !10233
  call void @_RINvXs8_NtCs5e9M2GLoJMY_8indexmap3setINtB6_8IndexSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB1F_8adapters6cloned6ClonedINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysBO_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEEB4d_(ptr noalias noundef nonnull align 8 dereferenceable(72) %5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ak), !noalias !10235, !inline_history !10141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !10233
  %i.gz = load ptr, ptr %i.eo, align 8, !noalias !10235, !noundef !12 ; 3 uses
  %.not129.i = icmp eq ptr %i.gz, null
  br i1 %.not129.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.hb = load <2 x i64>, ptr %i.ha, align 8, !noalias !10235
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.037.sroa.6.0.i = phi i64 [ 1, %bb.bm ], [ 0, %bb.bl ] ; 2 uses
  %i.hc = phi <2 x i64> [ %i.hb, %bb.bm ], [ <i64 undef, i64 0>, %bb.bl ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !10233
  store i64 %.sroa.037.sroa.6.0.i, ptr %i.aj, align 8, !noalias !10233
  store ptr null, ptr %.sroa.039.sroa.2.0..sroa_idx.i, align 8, !noalias !10233
  store ptr %i.gz, ptr %.sroa.039.sroa.2.sroa.2.0..sroa.039.sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !10233
  %i.hd = extractelement <2 x i64> %i.hc, i64 0
  store i64 %i.hd, ptr %.sroa.039.sroa.2.sroa.3.0..sroa.039.sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !10233
  store i64 %.sroa.037.sroa.6.0.i, ptr %.sroa.039.sroa.3.0..sroa_idx.i, align 8, !noalias !10233
  store ptr null, ptr %.sroa.039.sroa.4.0..sroa_idx.i, align 8, !noalias !10233
  store ptr %i.gz, ptr %.sroa.039.sroa.4.sroa.2.0..sroa.039.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !10233
  store <2 x i64> %i.hc, ptr %.sroa.039.sroa.4.sroa.3.0..sroa.039.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !10233
  %i.he = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aj), !noalias !10264, !inline_history !10141
  %i.hf = extractvalue { ptr, ptr } %i.he, 0      ; 2 uses
  %.not130.i227 = icmp eq ptr %i.hf, null
  br i1 %.not130.i227, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bn, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit97
  %i.hg = phi ptr [ %i.ho, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit97 ], [ %i.hf, %bb.bn ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !10233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !10233
  call void @llvm.experimental.noalias.scope.decl(metadata !10265)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 15
  %i.hi = load i8, ptr %i.hh, align 1, !range !20, !alias.scope !10265, !noalias !10266, !noundef !12
  %i.hj = and i8 %i.hi, -2
  %switch.i94 = icmp eq i8 %i.hj, -48
  br i1 %switch.i94, label %bb.bo, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit97

bb.bo:                                            ; preds = %.lr.ph
  %.pn.i95 = load ptr, ptr %i.hg, align 8, !alias.scope !10265, !noalias !10266, !nonnull !12, !noundef !12
  %.sroa.0.0.i96 = getelementptr inbounds i8, ptr %.pn.i95, i64 -8
  %i.hk = atomicrmw add ptr %.sroa.0.0.i96, i64 1 monotonic, align 8, !noalias !10267
  %i.hl = icmp slt i64 %i.hk, 0
  br i1 %i.hl, label %bb.bp, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit97, !prof !17

bb.bp:                                            ; preds = %bb.bo
  call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hg) #42, !noalias !10266
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit97: ; preds = %.lr.ph, %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.hg, i64 16, i1 false), !noalias !10264
  call void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB1a_9generated10AnyNodeRefEE5entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ah), !noalias !10264, !inline_history !10141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !10233
  %i.hm = call noundef nonnull align 8 ptr @_RNvMs2_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_5EntryNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB1f_9generated10AnyNodeRefEE9or_insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ai, i64 noundef -1, ptr undef), !noalias !10264, !inline_history !10141 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10233
  %i.hn = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aj), !noalias !10264, !inline_history !10141
  %i.ho = extractvalue { ptr, ptr } %i.hn, 0      ; 2 uses
  %.not130.i = icmp eq ptr %i.ho, null
  br i1 %.not130.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit97, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !10233
  br label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit

_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit: ; preds = %bb.az, %bb.bb, %bb.bg, %bb.bj, %bb.j, %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i, %._crit_edge
  %.sroa.0.1.i63 = phi i8 [ %8, %bb.e ], [ 1, %._crit_edge ], [ %9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ 1, %bb.j ], [ 0, %bb.bb ], [ %10, %bb.bj ], [ 0, %bb.bg ], [ 1, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %11 = and i8 %.sroa.0.0229, %.sroa.0.1.i63
  br label %.backedge

bb.bq:                                            ; preds = %bb.c
  %.sroa.6160.0.copyload = load i32, ptr %.sroa.6160.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.hp = call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literals2_1__NtB8_17StringLiteralType5valueDNtNtBc_2db2DbEL_EBc_(i32 noundef %.sroa.5159.0.copyload, i32 noundef %.sroa.6160.0.copyload, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55) ; 2 uses
  %i.hq = extractvalue { ptr, i64 } %i.hp, 0      ; 2 uses
  %i.hr = extractvalue { ptr, i64 } %i.hp, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10268)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.hs = icmp ult i64 %i.hr, 17
  br i1 %i.hs, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ht = call { ptr, i64 } @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer9new_exact(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hq, i64 noundef %i.hr), !noalias !10269 ; 2 uses
  %i.hu = extractvalue { ptr, i64 } %i.ht, 0      ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i, label %bb.bt

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i: ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit190

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.f, i8 0, i64 15, i1 false), !noalias !10270
  %i.hw = trunc nuw nsw i64 %i.hr to i8
  %i.hx = or disjoint i8 %i.hw, -64
  store i8 %i.hx, ptr %.15..15..15..15..15..15..15..15..sroa_idx, align 1, !noalias !10270
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull readonly align 1 %i.hq, i64 %i.hr, i1 false), !noalias !10269
  %.0..0..0..0..0..sroa.02.0.copyload3.i = load ptr, ptr %i.f, align 8, !noalias !10271
  %.8..8..8..8..8..sroa.6.0.copyload5.i = load i64, ptr %.8..8..8..8..8..sroa_idx, align 8, !noalias !10271
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i

bb.bt:                                            ; preds = %bb.br
  %i.hy = extractvalue { ptr, i64 } %i.ht, 1
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i: ; preds = %bb.bt, %bb.bs
  %.sroa.02.0.i = phi ptr [ %.0..0..0..0..0..sroa.02.0.copyload3.i, %bb.bs ], [ %i.hu, %bb.bt ]
  %.sroa.6.0.i = phi i64 [ %.8..8..8..8..8..sroa.6.0.copyload5.i, %bb.bs ], [ %i.hy, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.hz = icmp ugt i64 %.sroa.6.0.i, -72057594037927937
  br i1 %i.hz, label %.loopexit190, label %_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECsoTR8nlGN3X_18ty_python_semantic.exit, !prof !35

.loopexit190:                                     ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.thread.i
  call void @_RINvNvXsQ_Csj8vhLppEnlJ_8char_strINtNtCs4NRVxsYgnAr_4core6result6ResultppENtB8_13UnwrapWithMsg15unwrap_with_msg17do_panic_with_msgNtNtNtB8_6errors13reserve_error12ReserveErrorEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42, !noalias !10268
  unreachable

_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr14from_exact_str.exit.i
  store ptr %.sroa.02.0.i, ptr %i.au, align 8, !alias.scope !10268, !noalias !10272
  store i64 %.sroa.6.0.i, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !10268, !noalias !10272
  %i.ia = invoke { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE12get_index_ofBO_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.au)
          to label %bb.bu unwind label %.thread181.loopexit

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type17as_string_literal.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bt, i8 noundef 9, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noundef nonnull align 4 %.val56, ptr noalias readonly align 8 captures(address, read_provenance) poison)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, ptr noundef nonnull align 4 dereferenceable(16) %i.bu, i64 16, i1 false)
  %i.ib = call noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type16is_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.an, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noundef nonnull align 4 %.val56, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br i1 %i.ib, label %bb.cp, label %bb.co

.thread181.loopexit:                              ; preds = %.thread.i, %bb.bw, %.noexc, %bb.by, %_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.bz, %bb.ca, %bb.cb, %bb.cf
  %lpad.loopexit191 = landingpad { ptr, i32 }
          cleanup
  br label %.thread173

.thread181.loopexit.split-lp:                     ; preds = %bb.ce
  %lpad.loopexit.split-lp192 = landingpad { ptr, i32 }
          cleanup
  br label %.thread173

bb.bu:                                            ; preds = %_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nameNtB3_4Name3newReECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ic = extractvalue { i64, i64 } %i.ia, 0
  %i.id = icmp eq i64 %i.ic, 1
  br i1 %i.id, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.cj, %bb.bu
  %.sroa.0.1 = phi i8 [ %.sroa.0.0229, %bb.bu ], [ %12, %bb.cj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.ie = call { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuE11insert_fullCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ap) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %.backedge

bb.bw:                                            ; preds = %bb.bu
  %i.if = load i8, ptr %i.cd, align 1, !range !20, !alias.scope !10273, !noundef !12 ; 3 uses
  %i.ig = load i64, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !10273, !noundef !12
  %i.ih = load ptr, ptr %i.au, align 8, !alias.scope !10273
  %i.ii = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55)
          to label %.noexc unwind label %.thread181.loopexit

.noexc:                                           ; preds = %bb.bw
  %i.ij = icmp ugt i8 %i.if, -49
  %.sroa.01.0.i = select i1 %i.ij, ptr %i.ih, ptr %i.au
  %i.ik = icmp ult i8 %i.if, -48
  %i.il = zext i8 %i.if to i64
  %i.im = add nsw i64 %i.il, -192
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.im, i64 16)
  %i.in = and i64 %i.ig, 72057594037927935
  %.sroa.0.0.i65 = select i1 %i.ik, i64 %spec.store.select.i, i64 %i.in
  %i.io = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3geteEB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ii, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i65)
          to label %.noexc67 unwind label %.thread181.loopexit ; 2 uses

.noexc67:                                         ; preds = %.noexc
  %.not.i66 = icmp eq ptr %i.io, null
  br i1 %.not.i66, label %.thread.i, label %bb.bx

bb.bx:                                            ; preds = %.noexc67
  %.sroa.06.0.copyload.i = load i32, ptr %i.io, align 4, !alias.scope !10274, !noalias !10275
  %.not.i.i = icmp eq i32 %.sroa.06.0.copyload.i, -1
  br i1 %.not.i.i, label %.thread.i, label %bb.by

.thread.i:                                        ; preds = %bb.bx, %.noexc67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10276
  invoke void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.e, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55)
          to label %.noexc68 unwind label %.thread181.loopexit

.noexc68:                                         ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10276
  br label %bb.by

bb.by:                                            ; preds = %.noexc68, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke fastcc void @_RNCNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder10typed_dictNtB8_20TypeInferenceBuilder27infer_typed_dict_expression0Be_(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.at, ptr nonnull %.val61, ptr noundef nonnull align 8 %i.ec)
          to label %bb.bz unwind label %.thread181.loopexit

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.ip = load i8, ptr %i.cd, align 1, !range !20, !alias.scope !10277, !noundef !12 ; 3 uses
  %i.iq = load i64, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !10277, !noundef !12
  %i.ir = and i64 %i.iq, 72057594037927935
  %i.is = icmp ult i8 %i.ip, -48
  %i.it = zext i8 %i.ip to i64
  %i.iu = add nsw i64 %i.it, -192
  %spec.store.select.i69 = call i64 @llvm.umin.i64(i64 %i.iu, i64 16)
  %.sroa.0.0.i70 = select i1 %i.is, i64 %spec.store.select.i69, i64 %i.ir
  %i.iv = icmp ugt i8 %i.ip, -49
  %i.iw = load ptr, ptr %i.au, align 8, !alias.scope !10277
  %.sroa.01.0.i71 = select i1 %i.iv, ptr %i.iw, ptr %i.au
  %i.ix = invoke { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.ed)
          to label %bb.ca unwind label %.thread181.loopexit ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.iy = invoke { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.ec)
          to label %bb.cb unwind label %.thread181.loopexit ; 2 uses

bb.cb:                                            ; preds = %bb.ca
  %i.iz = extractvalue { i64, ptr } %i.ix, 1
  %i.ja = extractvalue { i64, ptr } %i.ix, 0
  %i.jb = extractvalue { i64, ptr } %i.iy, 0
  %i.jc = extractvalue { i64, ptr } %i.iy, 1
  store ptr %0, ptr %i.ch, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ci, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  store i32 -1, ptr %i.cj, align 8
  store ptr %.sroa.01.0.i71, ptr %i.ck, align 8
  store i64 %.sroa.0.0.i70, ptr %i.cl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 4 dereferenceable(16) %i.at, i64 16, i1 false)
  store i64 %i.ce, ptr %i.as, align 8
  store ptr %i.cg, ptr %i.cn, align 8
  store i64 %i.ja, ptr %i.co, align 8
  store ptr %i.iz, ptr %i.cp, align 8
  store i64 %i.jb, ptr %i.cq, align 8
  store ptr %i.jc, ptr %i.cr, align 8
  store i8 1, ptr %i.cs, align 4
  store i8 1, ptr %i.ct, align 1
  %i.jd = invoke noundef zeroext i1 @_RNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_22TypedDictKeyAssignment8validate(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.as)
          to label %bb.cc unwind label %.thread181.loopexit

bb.cc:                                            ; preds = %bb.cb
  %12 = select i1 %i.jd, i8 %.sroa.0.0229, i8 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.experimental.noalias.scope.decl(metadata !10278)
  %i.je = load i8, ptr %i.cd, align 1, !range !20, !alias.scope !10278, !noalias !10279, !noundef !12
  %i.jf = and i8 %i.je, -2
  %switch.i = icmp eq i8 %i.jf, -48
  br i1 %switch.i, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %.pn.i72 = load ptr, ptr %i.au, align 8, !alias.scope !10278, !noalias !10279, !nonnull !12, !noundef !12
  %.sroa.0.0.i73 = getelementptr inbounds i8, ptr %.pn.i72, i64 -8
  %i.jg = atomicrmw add ptr %.sroa.0.0.i73, i64 1 monotonic, align 8, !noalias !10280
  %i.jh = icmp slt i64 %i.jg, 0
  br i1 %i.jh, label %bb.ce, label %bb.cf, !prof !17

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.au) #42
          to label %.noexc74 unwind label %.thread181.loopexit.split-lp

.noexc74:                                         ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  invoke void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB1a_9generated10AnyNodeRefEE5entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.aq)
          to label %bb.cg unwind label %.thread181.loopexit

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.ji = invoke { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.ed)
          to label %bb.ci unwind label %bb.ck     ; 2 uses

bb.ch:                                            ; preds = %bb.ci
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.thread173

bb.ci:                                            ; preds = %bb.cg
  %i.jk = extractvalue { i64, ptr } %i.ji, 0      ; 2 uses
  %i.jl = extractvalue { i64, ptr } %i.ji, 1
  %i.jm = icmp ult i64 %i.jk, 94
  call void @llvm.assume(i1 %i.jm)
  %i.jn = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_5EntryNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB1f_9generated10AnyNodeRefEE9or_insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ar, i64 noundef %i.jk, ptr %i.jl)
          to label %bb.cj unwind label %bb.ch     ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.bv

.backedge:                                        ; preds = %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit, %bb.bv, %bb.dc
  %.sroa.0.0.be = phi i8 [ %.sroa.0.3, %bb.dc ], [ %.sroa.0.1, %bb.bv ], [ %11, %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict41validate_merged_unpacked_keyword_argumentNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1L_20TypeInferenceBuilder27infer_typed_dict_expression0EB6_.exit ] ; 2 uses
  %i.jo = icmp eq ptr %i.by, %i.ec
  br i1 %i.jo, label %._crit_edge232.loopexit, label %bb.b

bb.ck:                                            ; preds = %bb.cg
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entry5EntryNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_6option6OptionNtNtB1I_9generated10AnyNodeRefEEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(48) %i.ar) #41
          to label %.thread173 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.dy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit87, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit83, %bb.do, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit, %bb.cy, %bb.cn, %bb.dw, %bb.dm, %bb.dk, %bb.di, %bb.cw, %bb.cu, %bb.ck
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

.thread173:                                       ; preds = %.thread181.loopexit, %.thread181.loopexit.split-lp, %bb.ch, %bb.ck
  %.pn52176 = phi { ptr, i32 } [ %i.jp, %bb.ck ], [ %i.jj, %bb.ch ], [ %lpad.loopexit191, %.thread181.loopexit ], [ %lpad.loopexit.split-lp192, %.thread181.loopexit.split-lp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10281)
  call void @llvm.experimental.noalias.scope.decl(metadata !10282)
  call void @llvm.experimental.noalias.scope.decl(metadata !10283)
  call void @llvm.experimental.noalias.scope.decl(metadata !10284)
  %i.jr = load i8, ptr %i.cd, align 1, !range !20, !alias.scope !10285, !noundef !12
  %i.js = and i8 %i.jr, -2
  %switch.i.i.i.i = icmp eq i8 %i.js, -48
  br i1 %switch.i.i.i.i, label %bb.cm, label %common.resume

bb.cm:                                            ; preds = %.thread173
  call void @llvm.experimental.noalias.scope.decl(metadata !10286)
  %.pn.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !10287, !nonnull !12, !noundef !12
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i, i64 -8
  %i.jt = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i, i64 1 release, align 8, !noalias !10287
  %i.ju = icmp eq i64 %i.jt, 1
  br i1 %i.ju, label %bb.cn, label %common.resume, !prof !17

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %common.resume unwind label %bb.cl

bb.co:                                            ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type17as_string_literal.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.bb, ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic11INVALID_KEY, ptr noundef nonnull align 8 %i.ed)
  %i.jv = load i64, ptr %i.bb, align 8, !range !41, !noundef !12
  %.not42 = icmp eq i64 %i.jv, -2
  br i1 %.not42, label %bb.ct, label %bb.cs

bb.cp:                                            ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type17as_string_literal.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10288
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.c, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55), !noalias !10289
  %i.jw = load i32, ptr %i.c, align 4, !range !28, !alias.scope !10290, !noalias !10291, !noundef !12 ; 2 uses
  %i.jx = icmp samesign ult i32 %i.jw, 37
  br i1 %i.jx, label %bb.cq, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType43arbitrary_key_initialization_type_excluding.exit.thread

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false), !noalias !10292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10292
  %i.jy = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55), !noalias !10293 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !10294, !noundef !12 ; 3 uses
  %.not36.i = icmp eq ptr %i.jz, null
  br i1 %.not36.i, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType43arbitrary_key_initialization_type_excluding.exit, label %bb.cr

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType43arbitrary_key_initialization_type_excluding.exit.thread: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10288
  store i32 -1, ptr %i.bs, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %bb.de

bb.cr:                                            ; preds = %bb.cq
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kb = load <2 x i64>, ptr %i.ka, align 8, !noalias !10294
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType43arbitrary_key_initialization_type_excluding.exit

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType43arbitrary_key_initialization_type_excluding.exit: ; preds = %bb.cq, %bb.cr
  %.sroa.02.sroa.0.0.i = phi i64 [ 1, %bb.cr ], [ 0, %bb.cq ] ; 2 uses
  %i.kc = phi <2 x i64> [ %i.kb, %bb.cr ], [ <i64 undef, i64 0>, %bb.cq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10295)
  call void @llvm.experimental.noalias.scope.decl(metadata !10296)
  store i32 %i.jw, ptr %i.cy, align 8, !alias.scope !10297, !noalias !10298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.449.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.i, i64 12, i1 false), !noalias !10292
  store i64 %.sroa.02.sroa.0.0.i, ptr %i.d, align 8, !alias.scope !10299, !noalias !10300
  store ptr null, ptr %.sroa.4.0..sroa_idx40.i, align 8, !alias.scope !10299, !noalias !10300
  store ptr %i.jz, ptr %.sroa.5.0..sroa_idx.i76, align 8, !alias.scope !10299, !noalias !10300
  %i.kd = extractelement <2 x i64> %i.kc, i64 0
  store i64 %i.kd, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !10299, !noalias !10300
  store i64 %.sroa.02.sroa.0.0.i, ptr %.sroa.741.0..sroa_idx.i, align 8, !alias.scope !10299, !noalias !10300
  store ptr null, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !10299, !noalias !10300
  store ptr %i.jz, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !10299, !noalias !10300
  store <2 x i64> %i.kc, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !10299, !noalias !10300
  store ptr %5, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !10299, !noalias !10300
  call void @_RINvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_16IntersectionType13from_elementsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB1L_7sources4once4OnceNtB8_4TypeEINtNtB1J_3map3MapINtNtB1J_6filter6FilterINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtB8_10typed_dict14TypedDictFieldENCNvMs2_B5t_NtB5t_13TypedDictType43arbitrary_key_initialization_type_excluding0ENCB63_s_0EEB2Z_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.bs, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noundef nonnull align 4 %.val56, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10292
  %.pr = load i32, ptr %i.bs, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %.not44 = icmp eq i32 %.pr, -1
  br i1 %.not44, label %bb.de, label %bb.dd

bb.cs:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(80) %i.bb, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cu, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  store i32 34, ptr %i.ax, align 4
  invoke void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ay, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.ax, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noundef nonnull align 4 %.val56)
          to label %bb.cv unwind label %bb.cu

bb.ct:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.dc

bb.cu:                                            ; preds = %bb.cs
  %i.ke = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.az) #41
          to label %common.resume unwind label %bb.cl

bb.cv:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  invoke void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.aw, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.bu, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noundef nonnull align 4 %.val56)
          to label %bb.cx unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.az) #41
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit unwind label %bb.cl

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr %i.ay, ptr %i.av, align 8
  store ptr @_RNvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  store ptr %i.aw, ptr %i.cv, align 8
  store ptr @_RNvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.439.0..sroa_idx, align 8
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.az, ptr noundef nonnull @61, ptr noundef nonnull %i.av)
          to label %bb.cz unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cz, %bb.cx
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.cw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit unwind label %bb.cl

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ba)
          to label %bb.da unwind label %bb.cy

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.cw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit79 unwind label %bb.db

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit: ; preds = %bb.cy, %bb.db, %bb.cw
  %.pn = phi { ptr, i32 } [ %i.kh, %bb.db ], [ %i.kf, %bb.cw ], [ %i.kg, %bb.cy ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.cx)
          to label %common.resume unwind label %bb.cl

bb.db:                                            ; preds = %bb.da
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit79: ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.de, %bb.dv, %bb.ea, %bb.dg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit79, %bb.ct
  %.sroa.0.3 = phi i8 [ %.sroa.0.4, %bb.dg ], [ 0, %bb.ea ], [ 0, %bb.dv ], [ 0, %bb.ct ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit79 ], [ %.sroa.0.0229, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %.backedge

bb.dd:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType43arbitrary_key_initialization_type_excluding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call fastcc void @_RNCNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder10typed_dictNtB8_20TypeInferenceBuilder27infer_typed_dict_expression0Be_(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.br, ptr nonnull %.val61, ptr noundef nonnull align 8 %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(16) %i.br, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %i.bs, i64 16, i1 false)
  %i.ki = call noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type16is_assignable_to(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.am, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noundef nonnull align 4 %.val56, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br i1 %i.ki, label %bb.dg, label %bb.df

bb.de:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType43arbitrary_key_initialization_type_excluding.exit.thread, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType43arbitrary_key_initialization_type_excluding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.bi, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55)
  %.val57 = load i32, ptr %i.bi, align 4, !range !28, !noundef !12
  %i.kj = icmp eq i32 %.val57, 38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br i1 %i.kj, label %bb.dt, label %bb.dc

bb.df:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.bq, ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic21INVALID_ARGUMENT_TYPE, ptr noundef nonnull align 8 %i.ec)
  %i.kk = load i64, ptr %i.bq, align 8, !range !41, !noundef !12
  %.not46 = icmp eq i64 %i.kk, -2
  br i1 %.not46, label %.sink.split, label %bb.dh

.sink.split:                                      ; preds = %bb.df, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.dg

bb.dg:                                            ; preds = %.sink.split, %bb.dd
  %.sroa.0.4 = phi i8 [ %.sroa.0.0229, %bb.dd ], [ 0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.dc

bb.dh:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bo, ptr noundef nonnull align 8 dereferenceable(80) %i.bq, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  invoke void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bn, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.br, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noundef nonnull align 4 %.val56)
          to label %bb.dj unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.bo) #41
          to label %common.resume unwind label %bb.cl

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  invoke void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bm, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.bs, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noundef nonnull align 4 %.val56)
          to label %bb.dl unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.km = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.bo) #41
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit87 unwind label %bb.cl

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cz, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  store i32 34, ptr %i.bk, align 4
  invoke void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bl, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.bk, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noundef nonnull align 4 %.val56)
          to label %bb.dn unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.kn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.bo) #41
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit83 unwind label %bb.cl

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr %i.bn, ptr %i.bj, align 8
  store ptr @_RNvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  store ptr %i.bm, ptr %i.da, align 8
  store ptr @_RNvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  store ptr %i.bl, ptr %i.db, align 8
  store ptr @_RNvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.bo, ptr noundef nonnull @62, ptr noundef nonnull %i.bj)
          to label %bb.dp unwind label %bb.do

bb.do:                                            ; preds = %bb.dp, %bb.dn
  %i.ko = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.dc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit83 unwind label %bb.cl

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.bp)
          to label %bb.dq unwind label %bb.do

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.dc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit85 unwind label %bb.dr

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit83: ; preds = %bb.do, %bb.dr, %bb.dm
  %.pn47 = phi { ptr, i32 } [ %i.kp, %bb.dr ], [ %i.kn, %bb.dm ], [ %i.ko, %bb.do ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.dd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit87 unwind label %bb.cl

bb.dr:                                            ; preds = %bb.dq
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit83

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit85: ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.dd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit89 unwind label %bb.ds

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit87: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit83, %bb.ds, %bb.dk
  %.pn49 = phi { ptr, i32 } [ %i.kq, %bb.ds ], [ %i.km, %bb.dk ], [ %.pn47, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit83 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.de)
          to label %common.resume unwind label %bb.cl

bb.ds:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit85
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit87

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit89: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %.sink.split

bb.dt:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.bh, ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic11INVALID_KEY, ptr noundef nonnull align 8 %i.ed)
  %i.kr = load i64, ptr %i.bh, align 8, !range !41, !noundef !12
  %.not45 = icmp eq i64 %i.kr, -2
  br i1 %.not45, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, ptr noundef nonnull align 8 dereferenceable(80) %i.bh, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.df, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  store i32 34, ptr %i.bd, align 4
  invoke void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.be, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.bd, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val55, ptr noundef nonnull align 4 %.val56)
          to label %bb.dx unwind label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.dc

bb.dw:                                            ; preds = %bb.du
  %i.ks = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.bf) #41
          to label %common.resume unwind label %bb.cl

bb.dx:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store ptr %i.be, ptr %i.bc, align 8
  store ptr @_RNvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.bf, ptr noundef nonnull @63, ptr noundef nonnull %i.bc)
          to label %bb.dz unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dz, %bb.dx
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.dg)
          to label %common.resume unwind label %bb.cl

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.bg)
          to label %bb.ea unwind label %bb.dy

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.dc
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict28validate_merged_dict_literalNCNvMs_NtNtNtB4_5infer7builder10typed_dictNtB1y_20TypeInferenceBuilder28infer_typed_dict_constructors1_0EB6_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 dereferenceable(72) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 6 uses
  %.sroa.7.i = alloca [16 x i8], align 4          ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 14 uses
  %i.c = alloca [20 x i8], align 4                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = alloca [120 x i8], align 8               ; 17 uses
  %i.n = alloca [16 x i8], align 4                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 16 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [80 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 4                ; 5 uses
  %i.s = alloca [80 x i8], align 8                ; 5 uses
  %i.t = alloca [80 x i8], align 8                ; 6 uses
  %i.u = alloca [48 x i8], align 8                ; 4 uses
  %i.v = alloca [80 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 4                ; 5 uses
  %i.y = alloca [80 x i8], align 8                ; 5 uses
  %i.z = alloca [80 x i8], align 8                ; 5 uses
  %i.aa = alloca [48 x i8], align 8               ; 4 uses
  %i.ab = alloca [80 x i8], align 8               ; 6 uses
  %i.ac = alloca [20 x i8], align 4               ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 9 uses
  %i.ae = alloca [16 x i8], align 4               ; 5 uses
  %i.af = alloca [80 x i8], align 8               ; 5 uses
  %i.ag = alloca [80 x i8], align 8               ; 5 uses
  %i.ah = alloca [80 x i8], align 8               ; 5 uses
  %i.ai = alloca [80 x i8], align 8               ; 7 uses
  %i.aj = alloca [48 x i8], align 8               ; 4 uses
  %i.ak = alloca [80 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 4               ; 5 uses
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_printer-c9b1b4ab60cb696b.grep_printer.c955879db871477a-cgu.0?download=true
inline.NumInlined: 241
inline.NumDeleted: 127
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtCshhHc5tDBDRu_12grep_printer7summaryNtB2_6ConfigNtNtCskKLDkoKarTP_4core7default7Default7default:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 97, !dbg !2098
  store i8 1, ptr %i.n, align 1, !dbg !2098
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 98, !dbg !2098
  store i8 1, ptr %i.o, align 2, !dbg !2098
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2098
  store ptr %i.i, ptr %i.p, align 8, !dbg !2098
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92, !dbg !2098
  store i8 0, ptr %i.q, align 4, !dbg !2098
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 94, !dbg !2098
  store i8 0, ptr %i.r, align 2, !dbg !2098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2083
  ret void, !dbg !2099

bb.j:                                             ; preds = %bb.e
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigEBF_.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !2100
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE9from_iterCshhHc5tDBDRu_12grep_printer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2101 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2267), !dbg !2322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2268), !dbg !2323
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 65, !dbg !2324 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !dbg !2324, !range !2274, !alias.scope !2275, !noundef !144
  %i.e = trunc nuw i8 %i.d to i1, !dbg !2324
  br i1 %i.e, label %bb.l, label %bb.b, !dbg !2324

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2325
  %.val.i.i = load ptr, ptr %i.f, align 8, !dbg !2326, !alias.scope !2275, !nonnull !144, !noundef !144 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !2326
  %.val1.i.i = load i64, ptr %i.g, align 8, !dbg !2326, !alias.scope !2275, !noundef !144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2276), !dbg !2327
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2277, !noundef !144 ; 6 uses
  %.not.i.i.i = icmp ugt i64 %i.j, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !2277 ; 2 uses
  %i.k = icmp ult i64 %i.j, %.promoted.i.i.i, !dbg !2328
  %or.cond27.i.i.i = or i1 %.not.i.i.i, %i.k, !dbg !2328
  br i1 %or.cond27.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i, label %.lr.ph.split.preheader.i.i.i, !dbg !2328

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i8, ptr %i.m, align 8, !alias.scope !2277, !noundef !144 ; 2 uses
  %i.o = zext nneg i8 %i.n to i64                 ; 4 uses
  %i.p = icmp ult i8 %i.n, 5
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr i8, ptr %i.l, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %.pre.i.i.i = load i8, ptr %i.r, align 1, !dbg !2329, !alias.scope !2277 ; 2 uses
  br label %.lr.ph.split.i.i.i, !dbg !2330

.lr.ph.split.i.i.i:                               ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i
  %i.s = phi i64 [ %i.ag, %bb.e ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  %i.t = sub nuw i64 %i.j, %i.s, !dbg !2331       ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.s, !dbg !2332 ; 2 uses
  %i.v = icmp samesign ult i64 %i.t, 16, !dbg !2330
  br i1 %i.v, label %.preheader.i.i.i.i, label %bb.c, !dbg !2330

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.j, %i.s, !dbg !2333
  br i1 %.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i, !dbg !2333

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.w = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef range(i64 0, -9223372036854775808) %i.t), !dbg !2334, !noalias !2286 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0, !dbg !2334
  %i.y = extractvalue { i64, i64 } %i.w, 1, !dbg !2334
  %i.z = trunc nuw i64 %i.x to i1, !dbg !2335
  br i1 %i.z, label %.loopexit.i.i.i, label %.loopexit15.i.i.i, !dbg !2335

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.ad, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.04.011.i.i.i.i, !dbg !2336
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !2336, !alias.scope !2287, !noalias !2286, !noundef !144
  %i.ac = icmp eq i8 %i.ab, %.pre.i.i.i, !dbg !2336
  br i1 %i.ac, label %.loopexit.i.i.i, label %bb.d, !dbg !2336

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1, !dbg !2337 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ad, %i.t, !dbg !2333
  br i1 %exitcond.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i, !dbg !2333

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.y, %bb.c ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ], !dbg !2338 ; 2 uses
  %i.ae = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.t, !dbg !2339
  tail call void @llvm.assume(i1 %i.ae), !dbg !2340
  %i.af = add i64 %i.s, 1, !dbg !2341
  %i.ag = add i64 %i.af, %.sroa.5.0.i.i.i.i, !dbg !2342 ; 7 uses
  store i64 %i.ag, ptr %i.h, align 8, !dbg !2342, !alias.scope !2277
  %.not11.i.i.i = icmp ult i64 %i.ag, %i.o, !dbg !2343
  %.not12.i.i.i = icmp ugt i64 %i.ag, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not11.i.i.i, %.not12.i.i.i, !dbg !2343
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f, !dbg !2343

.loopexit15.i.i.i:                                ; preds = %bb.c, %.preheader.i.i.i.i, %bb.d
  store i64 %i.j, ptr %i.h, align 8, !dbg !2344, !alias.scope !2277
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i, !dbg !2345

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i
  %i.ah = icmp ult i64 %i.j, %i.ag, !dbg !2328
  br i1 %i.ah, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i, label %.lr.ph.split.i.i.i, !dbg !2328

bb.f:                                             ; preds = %.loopexit.i.i.i
  %i.ai = sub nuw i64 %i.ag, %i.o, !dbg !2346     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ai, !dbg !2347
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aj, ptr nonnull %i.l, i64 %i.o), !dbg !2348, !noalias !2290
  %i.ak = icmp eq i32 %bcmp.i.i.i, 0, !dbg !2348
  br i1 %i.ak, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.e, !dbg !2349

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.f
  %i.al = load i64, ptr %1, align 8, !dbg !2350, !alias.scope !2275, !noundef !144 ; 2 uses
  %i.am = sub nuw i64 %i.ai, %i.al, !dbg !2351
  store i64 %i.ag, ptr %1, align 8, !dbg !2352, !alias.scope !2275
  br label %select.unfold, !dbg !2353

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i: ; preds = %bb.e, %.loopexit15.i.i.i, %bb.b
  store i8 1, ptr %i.c, align 1, !dbg !2354, !alias.scope !2296
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !2355
  %i.ao = load i8, ptr %i.an, align 8, !dbg !2355, !range !2274, !alias.scope !2296, !noundef !144
  %i.ap = trunc nuw i8 %i.ao to i1, !dbg !2355
  %.pre.i2.i.i = load i64, ptr %1, align 8, !dbg !2356, !alias.scope !2296 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !2357, !alias.scope !2296 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ap, i1 true, i1 %.not.i3.i.i, !dbg !2355
  %i.aq = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i, !dbg !2355
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %bb.l, !dbg !2358

select.unfold:                                    ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.aq, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i ], !dbg !2359
  %.pn = phi i64 [ %i.al, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !2360, !noalias !2297
  %i.ar = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !2361, !noalias !2297 ; 7 uses
  %i.as = icmp eq ptr %i.ar, null, !dbg !2362
  br i1 %i.as, label %bb.g, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshhHc5tDBDRu_12grep_printer.exit, !dbg !2363

bb.g:                                             ; preds = %select.unfold
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #26, !dbg !2364
  unreachable, !dbg !2364

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshhHc5tDBDRu_12grep_printer.exit: ; preds = %select.unfold
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn, !dbg !2365
  store ptr %.sroa.0.1.i.i, ptr %i.ar, align 8, !dbg !2366, !captures !285
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !2366
  store i64 %.sroa.4.1.i.i, ptr %i.at, align 8, !dbg !2366
  store i64 4, ptr %i.b, align 8, !dbg !2367
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2367 ; 3 uses
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2367
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2367 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !2367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !dbg !2368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2302), !dbg !2369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2303), !dbg !2369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2304), !dbg !2370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2306), !dbg !2370
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 65 ; 2 uses
  %.promoted.i.i = load i8, ptr %i.au, align 1, !alias.scope !2307
  %.promoted11.i.i = load i64, ptr %i.a, align 8, !alias.scope !2308 ; 4 uses
  %i.av = trunc nuw i8 %.promoted.i.i to i1, !dbg !2371
  br i1 %i.av, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCshhHc5tDBDRu_12grep_printer.exit, label %.lr.ph.i.i, !dbg !2371

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshhHc5tDBDRu_12grep_printer.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !2307, !nonnull !144, !noundef !144 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !2307, !noundef !144 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !2309, !noundef !144 ; 8 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.az, %.val1.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bc = load i8, ptr %i.bb, align 8, !alias.scope !2308 ; 2 uses
  %i.bd = zext nneg i8 %i.bc to i64               ; 4 uses
  %i.be = icmp ult i8 %i.bc, 5
  %i.bf = getelementptr i8, ptr %i.ba, i64 %i.bd
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bi = load i8, ptr %i.bh, align 8, !range !2274, !alias.scope !2308
  %i.bj = trunc nuw i8 %i.bi to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !2308 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.promoted15.i.i = load i64, ptr %i.bk, align 8, !alias.scope !2309
  br label %.lr.ph.split.i.i, !dbg !2372

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.not.i3.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.promoted11.i.i
  %or.cond.not.i.i.i.us.i.i = select i1 %i.bj, i1 true, i1 %.not.i3.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2310), !dbg !2373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2311), !dbg !2374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2312), !dbg !2375
  br i1 %or.cond.not.i.i.i.us.i.i, label %._crit_edge.split.us.split.us.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCshhHc5tDBDRu_12grep_printer.exit

._crit_edge.split.us.split.us.i.i:                ; preds = %.lr.ph.split.us.i.i
  %.sroa.0.1.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted11.i.i
  %i.bl = sub nuw i64 %.pre2.i.i.i.i.i, %.promoted11.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !2376
  store ptr %.sroa.0.1.i.i.us.i.i, ptr %i.bm, align 8, !dbg !2377, !noalias !2313, !captures !285
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 24, !dbg !2377
  store i64 %i.bl, ptr %i.bn, align 8, !dbg !2377, !noalias !2313
  store i64 2, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !2378, !alias.scope !2314
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCshhHc5tDBDRu_12grep_printer.exit, !dbg !2371

.lr.ph.split.i.i:                                 ; preds = %.noexc11, %.lr.ph.split.preheader.i.i
  %i.bo = phi ptr [ %i.cr, %.noexc11 ], [ %i.ar, %.lr.ph.split.preheader.i.i ]
  %i.bp = phi i64 [ %i.cu, %.noexc11 ], [ 1, %.lr.ph.split.preheader.i.i ] ; 5 uses
  %i.bq = phi i64 [ %i.cm, %.noexc11 ], [ %.promoted15.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.lcssa91314.i.i = phi i64 [ %.lcssa912.i.i, %.noexc11 ], [ %.promoted11.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2310), !dbg !2373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2311), !dbg !2374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2312), !dbg !2375
  %i.br = icmp ult i64 %i.az, %i.bq, !dbg !2372
  br i1 %i.br, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i, !dbg !2372

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %.lr.ph.split.i.i
  tail call void @llvm.assume(i1 %i.be)
  %.pre.i.i.i.i.i = load i8, ptr %i.bg, align 1, !dbg !2379, !alias.scope !2309 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i, !dbg !2380

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.j, %.lr.ph.split.preheader.i.i.i.i.i
  %i.bs = phi i64 [ %i.cg, %bb.j ], [ %i.bq, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
  %i.bt = sub nuw i64 %i.az, %i.bs, !dbg !2381    ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.bs, !dbg !2382 ; 2 uses
  %i.bv = icmp samesign ult i64 %i.bt, 16, !dbg !2380
  br i1 %i.bv, label %.preheader.i.i.i.i.i.i, label %bb.h, !dbg !2380

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.az, %i.bs, !dbg !2383
  br i1 %.not.i.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !2383

bb.h:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.bw = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef range(i64 0, -9223372036854775808) %i.bt)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2384 ; 2 uses

.noexc10:                                         ; preds = %bb.h
  %i.bx = extractvalue { i64, i64 } %i.bw, 0, !dbg !2384
  %i.by = extractvalue { i64, i64 } %i.bw, 1, !dbg !2384
  %i.bz = trunc nuw i64 %i.bx to i1, !dbg !2385
  br i1 %i.bz, label %.loopexit.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i.i.i, !dbg !2385

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.i
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.cd, %bb.i ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.04.011.i.i.i.i.i.i, !dbg !2386
  %i.cb = load i8, ptr %i.ca, align 1, !dbg !2386, !alias.scope !2315, !noalias !2316, !noundef !144
  %i.cc = icmp eq i8 %i.cb, %.pre.i.i.i.i.i, !dbg !2386
  br i1 %i.cc, label %.loopexit.i.i.i.i.i, label %bb.i, !dbg !2386

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cd = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1, !dbg !2387 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.cd, %i.bt, !dbg !2383
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !2383

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc10
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.by, %.noexc10 ], [ %.sroa.04.011.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], !dbg !2388 ; 2 uses
  %i.ce = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.bt, !dbg !2389
  tail call void @llvm.assume(i1 %i.ce), !dbg !2390
  %i.cf = add i64 %i.bs, 1, !dbg !2391
  %i.cg = add i64 %i.cf, %.sroa.5.0.i.i.i.i.i.i, !dbg !2392 ; 8 uses
  %.not11.i.i.i.i.i = icmp ult i64 %i.cg, %i.bd, !dbg !2393
  %.not12.i.i.i.i.i = icmp ugt i64 %i.cg, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i, !dbg !2393
  br i1 %or.cond.i.i.i.i.i, label %bb.j, label %bb.k, !dbg !2393

bb.j:                                             ; preds = %bb.k, %.loopexit.i.i.i.i.i
  %i.ch = icmp ult i64 %i.az, %i.cg, !dbg !2372
  br i1 %i.ch, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !2372

bb.k:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.ci = sub nuw i64 %i.cg, %i.bd, !dbg !2394    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ci, !dbg !2395
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.cj, ptr nonnull %i.ba, i64 %i.bd), !dbg !2396, !noalias !2317
  %i.ck = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !2396
  br i1 %i.ck, label %select.unfold.i.i, label %bb.j, !dbg !2397

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i.i.i: ; preds = %bb.j, %.noexc10, %.preheader.i.i.i.i.i.i, %bb.i, %.lr.ph.split.i.i
  %i.cl = phi i64 [ %i.bq, %.lr.ph.split.i.i ], [ %i.az, %bb.i ], [ %i.az, %.noexc10 ], [ %i.az, %.preheader.i.i.i.i.i.i ], [ %i.cg, %bb.j ]
  store i8 1, ptr %i.au, align 1, !dbg !2398, !alias.scope !2318
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa91314.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.bj, i1 true, i1 %.not.i3.i.i.i.i, !dbg !2399
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCshhHc5tDBDRu_12grep_printer.exit, !dbg !2400

select.unfold.i.i:                                ; preds = %bb.k, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i.i.i
  %i.cm = phi i64 [ %i.cl, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i.i.i ], [ %i.cg, %bb.k ]
  %.lcssa912.i.i = phi i64 [ %.lcssa91314.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i.i.i ], [ %i.cg, %bb.k ]
  %i.cn = phi i1 [ true, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i.i.i ], [ false, %bb.k ]
  %.pn.i.i = phi i64 [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i.i.i ], [ %i.ci, %bb.k ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa91314.i.i, !dbg !2401
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa91314.i.i, !dbg !2401
  %i.co = icmp samesign ult i64 %i.bp, 576460752303423488, !dbg !2402
  tail call void @llvm.assume(i1 %i.co), !dbg !2403
  %i.cp = load i64, ptr %i.b, align 8, !dbg !2404, !range !181, !alias.scope !2314, !noundef !144
  %i.cq = icmp eq i64 %i.bp, %i.cp, !dbg !2405
  br i1 %i.cq, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCshhHc5tDBDRu_12grep_printer.exit.i.i, label %.noexc11, !dbg !2405

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCshhHc5tDBDRu_12grep_printer.exit.i.i: ; preds = %select.unfold.i.i
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bp, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCshhHc5tDBDRu_12grep_printer.exit.i.i..noexc11_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2406

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCshhHc5tDBDRu_12grep_printer.exit.i.i..noexc11_crit_edge: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCshhHc5tDBDRu_12grep_printer.exit.i.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2407, !alias.scope !2314
  br label %.noexc11, !dbg !2406

.noexc11:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCshhHc5tDBDRu_12grep_printer.exit.i.i..noexc11_crit_edge, %select.unfold.i.i
  %i.cr = phi ptr [ %.pre, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCshhHc5tDBDRu_12grep_printer.exit.i.i..noexc11_crit_edge ], [ %i.bo, %select.unfold.i.i ], !dbg !2407 ; 2 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.bp, !dbg !2376 ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i, ptr %i.cs, align 8, !dbg !2377, !noalias !2313, !captures !285
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8, !dbg !2377
  store i64 %.sroa.4.1.i.i.i.i, ptr %i.ct, align 8, !dbg !2377, !noalias !2313
  %i.cu = add nuw nsw i64 %i.bp, 1, !dbg !2408    ; 2 uses
  store i64 %i.cu, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !2378, !alias.scope !2314
  br i1 %i.cn, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCshhHc5tDBDRu_12grep_printer.exit, label %.lr.ph.split.i.i, !dbg !2371

bb.l:                                             ; preds = %bb.a, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i
  store i64 0, ptr %0, align 8, !dbg !2409
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2409
  store ptr inttoptr (i64 8 to ptr), ptr %i.cv, align 8, !dbg !2409
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2409
  store i64 0, ptr %i.cw, align 8, !dbg !2409
  br label %bb.m, !dbg !2410

bb.m:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCshhHc5tDBDRu_12grep_printer.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2410
  ret void, !dbg !2411

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCshhHc5tDBDRu_12grep_printer.exit.i.i
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8, !dbg !2410 ; 2 uses
  %i.cx = icmp eq i64 %.val, 0, !dbg !2412
  br i1 %i.cx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECshhHc5tDBDRu_12grep_printer.exit, label %bb.n, !dbg !2412

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val9 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2410, !nonnull !144, !noundef !144
  %i.cy = shl nuw i64 %.val, 4, !dbg !2413
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !2414, !noalias !2320
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECshhHc5tDBDRu_12grep_printer.exit, !dbg !2415

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCshhHc5tDBDRu_12grep_printer.exit: ; preds = %.noexc11, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer.exit.i.i.i.i, %._crit_edge.split.us.split.us.i.i, %.lr.ph.split.us.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshhHc5tDBDRu_12grep_printer.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !2417
  br label %bb.m, !dbg !2410

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECshhHc5tDBDRu_12grep_printer.exit: ; preds = %bb.n, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp64, !dbg !2418
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCshhHc5tDBDRu_12grep_printer5statsNtB5_5StatsINtNtNtCskKLDkoKarTP_4core3ops5arith3AddRBF_E3add(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #0 !dbg !106 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !2424
  %i.b = load i64, ptr %i.a, align 8, !dbg !2424, !noundef !144 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48, !dbg !2426
  %i.d = load i64, ptr %i.c, align 8, !dbg !2426, !noundef !144
  %i.e = add i64 %i.d, %i.b, !dbg !2427           ; 4 uses
  %i.f = icmp ult i64 %i.e, %i.b, !dbg !2427
  br i1 %i.f, label %bb.f, label %bb.b, !dbg !2428, !prof !150

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56, !dbg !2426
  %i.h = load i32, ptr %i.g, align 8, !dbg !2426, !range !226, !noundef !144
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !2424
  %i.j = load i32, ptr %i.i, align 8, !dbg !2424, !range !226, !noundef !144
  %i.k = add nuw nsw i32 %i.j, %i.h, !dbg !2429   ; 3 uses
  %i.l = icmp samesign ugt i32 %i.k, 999999999, !dbg !2430
  br i1 %i.l, label %bb.c, label %bb.e, !dbg !2430

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.e, -1, !dbg !2431
  br i1 %i.m, label %bb.f, label %bb.d, !dbg !2432, !prof !150

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.e, 1, !dbg !2431
  %i.o = add nsw i32 %i.k, -1000000000, !dbg !2433
  br label %bb.e, !dbg !2434

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.i = phi i32 [ %i.o, %bb.d ], [ %i.k, %bb.b ], !dbg !2435
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.d ], [ %i.e, %bb.b ], !dbg !2435
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2436
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !2437
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !2438
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !2439
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2440
  store i64 %.sroa.0.0.i, ptr %i.t, align 8, !dbg !2440
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2440
  store i32 %.sroa.4.0.i, ptr %i.u, align 8, !dbg !2440
  %i.v = load <2 x i64>, ptr %1, align 8, !dbg !2441
  %i.w = load <2 x i64>, ptr %2, align 8, !dbg !2442
  %i.x = add <2 x i64> %i.w, %i.v, !dbg !2441
  store <2 x i64> %i.x, ptr %0, align 8, !dbg !2440
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2440
  %i.z = load <2 x i64>, ptr %i.p, align 8, !dbg !2436
  %i.aa = load <2 x i64>, ptr %i.q, align 8, !dbg !2437
  %i.ab = add <2 x i64> %i.aa, %i.z, !dbg !2436
  store <2 x i64> %i.ab, ptr %i.y, align 8, !dbg !2440
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2440
  %i.ad = load <2 x i64>, ptr %i.r, align 8, !dbg !2438
  %i.ae = load <2 x i64>, ptr %i.s, align 8, !dbg !2439
  %i.af = add <2 x i64> %i.ae, %i.ad, !dbg !2438
  store <2 x i64> %i.af, ptr %i.ac, align 8, !dbg !2440
  ret void, !dbg !2443

bb.f:                                             ; preds = %bb.c, %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24, !dbg !2444
  unreachable, !dbg !2444
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer5color13UserColorSpecENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 !dbg !2445 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2453, !range !181, !noundef !144 ; 2 uses
  %i.a = icmp eq i64 %.val, 0, !dbg !2454
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit, label %bb.b, !dbg !2454

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2453
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2453, !nonnull !144, !noundef !144
  %i.c = mul nuw i64 %.val, 6, !dbg !2455
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !dbg !2456
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit, !dbg !2457

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2458
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer5jsont8SubMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 !dbg !2459 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2467, !range !181, !noundef !144 ; 2 uses
  %i.a = icmp eq i64 %.val, 0, !dbg !2468
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit, label %bb.b, !dbg !2468

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2467
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2467, !nonnull !144, !noundef !144
  %i.c = mul nuw i64 %.val, 48, !dbg !2469
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !2470
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit, !dbg !2471

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2472
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 !dbg !42 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2480, !range !181, !noundef !144 ; 2 uses
  %i.a = icmp eq i64 %.val, 0, !dbg !2481
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit, label %bb.b, !dbg !2481

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2480
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2480, !nonnull !144, !noundef !144
  %i.c = mul nuw i64 %.val, 56, !dbg !2482
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !2483
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit, !dbg !2484

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2485
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink4PartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 !dbg !21 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2493, !range !181, !noundef !144 ; 2 uses
  %i.a = icmp eq i64 %.val, 0, !dbg !2494
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit, label %bb.b, !dbg !2494

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2493
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2493, !nonnull !144, !noundef !144
  %i.c = mul nuw i64 %.val, 24, !dbg !2495
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !2496
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit, !dbg !2497

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2498
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 !dbg !105 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2506, !range !181, !noundef !144 ; 2 uses
  %i.a = icmp eq i64 %.val, 0, !dbg !2507
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit, label %bb.b, !dbg !2507

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2506
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2506, !nonnull !144, !noundef !144
  %i.c = shl nuw i64 %.val, 4, !dbg !2508
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !2509
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit, !dbg !2510

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !2511
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 !dbg !7 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !2518, !range !181, !noundef !144 ; 2 uses
  %i.a = icmp eq i64 %.val, 0, !dbg !2519
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit, label %bb.b, !dbg !2519

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2518
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !2518, !nonnull !144, !noundef !144
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !dbg !2520
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhHc5tDBDRu_12grep_printer.exit, !dbg !2521

end_hunk_0
begin_hunk_1_@llvm.umax.i64
!2173 = distinct !DILocation(line: 435, column: 15, scope: !33, inlinedAt: !2172)
!2174 = distinct !DILocation(line: 466, column: 47, scope: !34, inlinedAt: !2173)
!2175 = distinct !DILocation(line: 541, column: 14, scope: !39, inlinedAt: !2174)
!2176 = distinct !DILocation(line: 424, column: 9, scope: !38, inlinedAt: !2175)
!2177 = distinct !DILocation(line: 302, column: 73, scope: !37, inlinedAt: !2176)
!2178 = distinct !DISubprogram(name: "write<&str>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeReECshhHc5tDBDRu_12grep_printer", scope: !158, file: !162, line: 1941, type: !145, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2179 = distinct !DILexicalBlock(scope: !2169, file: !283, line: 30, column: 17)
!2180 = distinct !DILexicalBlock(scope: !2101, file: !283, line: 24, column: 9)
!2181 = distinct !{!2181, i1 true, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCshhHc5tDBDRu_12grep_printer"}
!2182 = distinct !{!2182, !2181, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCshhHc5tDBDRu_12grep_printer: argument 0"}
!2183 = distinct !{!2183, !2181, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCshhHc5tDBDRu_12grep_printer: argument 1"}
!2184 = distinct !{!2184, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECshhHc5tDBDRu_12grep_printer"}
!2185 = distinct !{!2185, !2184, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECshhHc5tDBDRu_12grep_printer: argument 0"}
!2186 = distinct !DISubprogram(name: "spec_extend<&str, core::str::iter::Split<char>, alloc::alloc::Global>", linkageName: "_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCshhHc5tDBDRu_12grep_printer", scope: !2305, file: !286, line: 17, type: !145, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2187 = distinct !DILocation(line: 41, column: 9, scope: !2180)
!2188 = distinct !{!2188, !2184, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECshhHc5tDBDRu_12grep_printer: argument 1"}
!2189 = distinct !{!2189, i1 true, !"_RNvXsX_NtNtCskKLDkoKarTP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCshhHc5tDBDRu_12grep_printer"}
!2190 = distinct !{!2190, !2189, !"_RNvXsX_NtNtCskKLDkoKarTP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCshhHc5tDBDRu_12grep_printer: argument 0"}
!2191 = distinct !{!2191, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCshhHc5tDBDRu_12grep_printer"}
!2192 = distinct !{!2192, !2191, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCshhHc5tDBDRu_12grep_printer: argument 0"}
!2193 = distinct !DISubprogram(name: "extend_desugared<&str, alloc::alloc::Global, core::str::iter::Split<char>>", linkageName: "_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECshhHc5tDBDRu_12grep_printer", scope: !175, file: !173, line: 4094, type: !145, scopeLine: 4094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2194 = distinct !DILexicalBlock(scope: !2193, file: !173, line: 4102, column: 51)
!2195 = distinct !DILocation(line: 18, column: 14, scope: !2186, inlinedAt: !2187)
!2196 = distinct !DILocation(line: 4102, column: 44, scope: !2194, inlinedAt: !2195)
!2197 = distinct !DILocation(line: 512, column: 24, scope: !2106, inlinedAt: !2196)
!2198 = distinct !{!2198, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!2199 = distinct !{!2199, !2198, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!2200 = distinct !DILocation(line: 663, column: 28, scope: !2112, inlinedAt: !2197)
!2201 = distinct !DILocation(line: 437, column: 50, scope: !2116, inlinedAt: !2200)
!2202 = distinct !DILocation(line: 576, column: 15, scope: !2115, inlinedAt: !2201)
!2203 = distinct !DILocation(line: 337, column: 32, scope: !2114, inlinedAt: !2202)
!2204 = distinct !DISubprogram(name: "add<&str>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrORe3addCshhHc5tDBDRu_12grep_printer", scope: !179, file: !177, line: 937, type: !145, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2205 = distinct !DILexicalBlock(scope: !2194, file: !173, line: 4103, column: 13)
!2206 = distinct !DILocation(line: 4109, column: 46, scope: !2205, inlinedAt: !2195)
!2207 = distinct !DISubprogram(name: "write<&str>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeReECshhHc5tDBDRu_12grep_printer", scope: !158, file: !162, line: 1941, type: !145, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2208 = distinct !DILocation(line: 4109, column: 17, scope: !2205, inlinedAt: !2195)
!2209 = distinct !DISubprogram(name: "set_len<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7set_lenCshhHc5tDBDRu_12grep_printer", scope: !175, file: !173, line: 2216, type: !145, scopeLine: 2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2210 = distinct !DILocation(line: 4113, column: 22, scope: !2205, inlinedAt: !2195)
!2211 = distinct !DILocation(line: 441, column: 34, scope: !2124, inlinedAt: !2200)
!2212 = distinct !DILocation(line: 341, column: 29, scope: !2114, inlinedAt: !2202)
!2213 = distinct !DILocation(line: 28, column: 43, scope: !2122, inlinedAt: !2211)
!2214 = distinct !{!2214, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!2215 = distinct !{!2215, !2214, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!2216 = distinct !{!2216, !2198, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!2217 = distinct !DILocation(line: 31, column: 18, scope: !2134, inlinedAt: !2211)
!2218 = distinct !DILocation(line: 462, column: 67, scope: !2141, inlinedAt: !2200)
!2219 = distinct !DILocation(line: 576, column: 15, scope: !2289, inlinedAt: !2218)
!2220 = distinct !DILocation(line: 341, column: 29, scope: !2288, inlinedAt: !2219)
!2221 = distinct !DILocation(line: 463, column: 28, scope: !2141, inlinedAt: !2200)
!2222 = distinct !DILocation(line: 2399, column: 13, scope: !2149, inlinedAt: !2221)
!2223 = distinct !DILocation(line: 24, column: 22, scope: !2148, inlinedAt: !2222)
!2224 = distinct !{!2224, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer"}
!2225 = distinct !{!2225, !2224, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCshhHc5tDBDRu_12grep_printer: argument 0"}
!2226 = distinct !DILocation(line: 670, column: 26, scope: !2112, inlinedAt: !2197)
!2227 = distinct !DISubprogram(name: "len<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE3lenCshhHc5tDBDRu_12grep_printer", scope: !175, file: !173, line: 3099, type: !145, scopeLine: 3099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2228 = distinct !DILexicalBlock(scope: !2227, file: !173, line: 3100, column: 9)
!2229 = distinct !DILocation(line: 4103, column: 28, scope: !2194, inlinedAt: !2195)
!2230 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner8capacityCshhHc5tDBDRu_12grep_printer", scope: !170, file: !168, line: 615, type: !145, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2231 = distinct !DISubprogram(name: "capacity<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE8capacityCshhHc5tDBDRu_12grep_printer", scope: !172, file: !168, line: 308, type: !145, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2232 = distinct !DISubprogram(name: "capacity<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE8capacityCshhHc5tDBDRu_12grep_printer", scope: !175, file: !173, line: 1436, type: !145, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2233 = distinct !DILocation(line: 4104, column: 28, scope: !2205, inlinedAt: !2195)
!2234 = distinct !DILocation(line: 1437, column: 18, scope: !2232, inlinedAt: !2233)
!2235 = distinct !DILocation(line: 309, column: 20, scope: !2231, inlinedAt: !2234)
!2236 = distinct !DISubprogram(name: "reserve<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner7reserveCshhHc5tDBDRu_12grep_printer", scope: !170, file: !168, line: 652, type: !145, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2237 = distinct !DISubprogram(name: "reserve<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE7reserveCshhHc5tDBDRu_12grep_printer", scope: !172, file: !168, line: 339, type: !145, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2238 = distinct !DISubprogram(name: "reserve<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCshhHc5tDBDRu_12grep_printer", scope: !175, file: !173, line: 1460, type: !145, scopeLine: 1460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2239 = distinct !DILexicalBlock(scope: !2205, file: !173, line: 4105, column: 17)
!2240 = distinct !DILocation(line: 4106, column: 22, scope: !2239, inlinedAt: !2195)
!2241 = distinct !DILocation(line: 1461, column: 18, scope: !2238, inlinedAt: !2240)
!2242 = distinct !DILocation(line: 341, column: 29, scope: !2237, inlinedAt: !2241)
!2243 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullReECshhHc5tDBDRu_12grep_printer", scope: !170, file: !168, line: 610, type: !145, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2244 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrReECshhHc5tDBDRu_12grep_printer", scope: !170, file: !168, line: 605, type: !145, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2245 = distinct !DISubprogram(name: "ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE3ptrCshhHc5tDBDRu_12grep_printer", scope: !172, file: !168, line: 295, type: !145, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2246 = distinct !DISubprogram(name: "as_mut_ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE10as_mut_ptrCshhHc5tDBDRu_12grep_printer", scope: !175, file: !173, line: 2049, type: !145, scopeLine: 2049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2247 = distinct !DILocation(line: 4109, column: 33, scope: !2205, inlinedAt: !2195)
!2248 = distinct !DILocation(line: 2052, column: 18, scope: !2246, inlinedAt: !2247)
!2249 = distinct !DILocation(line: 296, column: 20, scope: !2245, inlinedAt: !2248)
!2250 = distinct !DILocation(line: 606, column: 14, scope: !2244, inlinedAt: !2249)
!2251 = distinct !DISubprogram(name: "new<&str>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecReE3newCshhHc5tDBDRu_12grep_printer", scope: !175, file: !173, line: 461, type: !145, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2252 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<&str, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecReEECshhHc5tDBDRu_12grep_printer", scope: !158, file: !162, line: 848, type: !151, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2253 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<&str, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECshhHc5tDBDRu_12grep_printer", scope: !158, file: !162, line: 848, type: !151, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2254 = distinct !DILocation(line: 43, column: 5, scope: !2101)
!2255 = distinct !DILocation(line: 848, column: 1, scope: !2253, inlinedAt: !2254)
!2256 = distinct !DILocation(line: 848, column: 1, scope: !2252, inlinedAt: !2255)
!2257 = distinct !DILocation(line: 425, column: 29, scope: !105, inlinedAt: !2256)
!2258 = distinct !DILocation(line: 874, column: 52, scope: !6, inlinedAt: !2257)
!2259 = distinct !DILocation(line: 639, column: 53, scope: !20, inlinedAt: !2258)
!2260 = distinct !{!2260, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer"}
!2261 = distinct !{!2261, !2260, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer: argument 0"}
!2262 = distinct !DILocation(line: 876, column: 28, scope: !6, inlinedAt: !2257)
!2263 = distinct !DILocation(line: 554, column: 23, scope: !4, inlinedAt: !2262)
!2264 = distinct !DILocation(line: 436, column: 9, scope: !3, inlinedAt: !2263)
!2265 = distinct !DILocation(line: 321, column: 22, scope: !2, inlinedAt: !2264)
!2266 = !DINamespace(name: "{impl#0}", scope: !284)
!2267 = !{!2103}
!2268 = !{!2105}
!2269 = !DIFile(filename: "library/core/src/str/iter.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "61c2132eeef87b75673cf36bf74bc4da")
!2270 = !DINamespace(name: "str", scope: !140)
!2271 = !DINamespace(name: "iter", scope: !2270)
!2272 = !DINamespace(name: "{impl#61}", scope: !2271)
!2273 = !DINamespace(name: "SplitInternal", scope: !2271)
!2274 = !{i8 0, i8 2}
!2275 = !{!2105, !2103}
!2276 = !{!2111}
!2277 = !{!2111, !2105, !2103}
!2278 = !DIFile(filename: "library/core/src/slice/index.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "a6478e6d30216db9f8cdcb9288808b92")
!2279 = !DINamespace(name: "index", scope: !186)
!2280 = !DINamespace(name: "{impl#4}", scope: !2279)
!2281 = !DIFile(filename: "library/core/src/str/pattern.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "632653a389978f6c4fa6825de87add57")
!2282 = !DINamespace(name: "pattern", scope: !2270)
!2283 = !DINamespace(name: "{impl#1}", scope: !2282)
!2284 = !DIFile(filename: "library/core/src/slice/memchr.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "90719a3fdf4b8ba29bc25ba24da39686")
!2285 = !DINamespace(name: "memchr", scope: !186)
!2286 = !{!2132, !2111, !2105, !2103}
!2287 = !{!2136}
!2288 = !DILexicalBlockFile(scope: !2114, file: !2278, discriminator: 2)
!2289 = !DILexicalBlockFile(scope: !2115, file: !185, discriminator: 2)
!2290 = !{!2132}
!2291 = !DIFile(filename: "library/core/src/str/traits.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "d8ae730ba1532c9b0c00bc889a42d36f")
!2292 = !DINamespace(name: "traits", scope: !2270)
!2293 = !DINamespace(name: "{impl#7}", scope: !2292)
!2294 = !DIFile(filename: "library/core/src/str/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "ee5db8a06788b44667bc8f81edc68c2b")
!2295 = !DINamespace(name: "{impl#0}", scope: !2270)
!2296 = !{!2161, !2105, !2103}
!2297 = !{!2165}
!2298 = !DILocation(line: 30, column: 34, scope: !2169)
!2299 = !DILocation(line: 522, column: 9, scope: !2170, inlinedAt: !2298)
!2300 = !DILocation(line: 969, column: 20, scope: !2171, inlinedAt: !2299)
!2301 = !DILocation(line: 33, column: 21, scope: !2179)
!2302 = !{!2182}
!2303 = !{!2183}
!2304 = !{!2185}
!2305 = !DINamespace(name: "{impl#0}", scope: !287)
!2306 = !{!2188}
!2307 = !{!2192, !2190, !2188, !2183}
!2308 = !{!2188, !2183}
!2309 = !{!2199, !2192, !2190, !2188, !2183}
!2310 = !{!2190}
!2311 = !{!2192}
!2312 = !{!2199}
!2313 = !{!2185, !2188, !2182, !2183}
!2314 = !{!2185, !2182}
!2315 = !{!2215}
!2316 = !{!2216, !2199, !2192, !2190, !2185, !2188, !2182, !2183}
!2317 = !{!2216, !2185, !2182}
!2318 = !{!2225, !2192, !2190, !2188, !2183}
!2319 = !DILocation(line: 25, column: 28, scope: !2101)
!2320 = !{!2261}
!2321 = !DILocation(line: 24, column: 13, scope: !2101)
!2322 = !DILocation(line: 24, column: 41, scope: !2101)
!2323 = !DILocation(line: 512, column: 24, scope: !2106, inlinedAt: !2107)
!2324 = !DILocation(line: 658, column: 12, scope: !2108, inlinedAt: !2109)
!2325 = !DILocation(line: 662, column: 24, scope: !2108, inlinedAt: !2109)
!2326 = !DILocation(line: 662, column: 37, scope: !2108, inlinedAt: !2109)
!2327 = !DILocation(line: 663, column: 28, scope: !2112, inlinedAt: !2109)
!2328 = !DILocation(line: 1122, column: 16, scope: !2113, inlinedAt: !2120)
!2329 = !DILocation(line: 440, column: 38, scope: !2121, inlinedAt: !2117)
!2330 = !DILocation(line: 28, column: 12, scope: !2122, inlinedAt: !2125)
!2331 = !DILocation(line: 1126, column: 31, scope: !2113, inlinedAt: !2120)
!2332 = !DILocation(line: 90, column: 24, scope: !2127, inlinedAt: !2128)
!2333 = !DILocation(line: 41, column: 11, scope: !2130, inlinedAt: !2131)
!2334 = !DILocation(line: 28, column: 74, scope: !2122, inlinedAt: !2125)
!2335 = !DILocation(line: 29, column: 12, scope: !2134, inlinedAt: !2125)
!2336 = !DILocation(line: 42, column: 12, scope: !2130, inlinedAt: !2131)
!2337 = !DILocation(line: 46, column: 9, scope: !2130, inlinedAt: !2131)
!2338 = !DILocation(line: 28, scope: !2122, inlinedAt: !2125)
!2339 = !DILocation(line: 31, column: 48, scope: !2134, inlinedAt: !2125)
!2340 = !DILocation(line: 210, column: 9, scope: !2137, inlinedAt: !2138)
!2341 = !DILocation(line: 459, column: 32, scope: !2124, inlinedAt: !2117)
!2342 = !DILocation(line: 459, column: 17, scope: !2124, inlinedAt: !2117)
!2343 = !DILocation(line: 460, column: 20, scope: !2124, inlinedAt: !2117)
!2344 = !DILocation(line: 470, column: 17, scope: !2123, inlinedAt: !2117)
!2345 = !DILocation(line: 471, column: 17, scope: !2123, inlinedAt: !2117)
!2346 = !DILocation(line: 461, column: 38, scope: !2124, inlinedAt: !2117)
!2347 = !DILocation(line: 90, column: 24, scope: !2139, inlinedAt: !2144)
!2348 = !DILocation(line: 157, column: 13, scope: !2146, inlinedAt: !2152)
!2349 = !DILocation(line: 463, column: 28, scope: !2141, inlinedAt: !2117)
!2350 = !DILocation(line: 666, column: 50, scope: !2153, inlinedAt: !2109)
!2351 = !DILocation(line: 221, column: 27, scope: !2155, inlinedAt: !2158)
!2352 = !DILocation(line: 667, column: 17, scope: !2159, inlinedAt: !2109)
!2353 = !DILocation(line: 669, column: 13, scope: !2112, inlinedAt: !2109)
!2354 = !DILocation(line: 644, column: 13, scope: !2162, inlinedAt: !2163)
!2355 = !DILocation(line: 646, column: 16, scope: !2162, inlinedAt: !2163)
!2356 = !DILocation(line: 648, column: 77, scope: !2162, inlinedAt: !2163)
!2357 = !DILocation(line: 0, scope: !2162, inlinedAt: !2163)
!2358 = !DILocation(line: 670, column: 26, scope: !2112, inlinedAt: !2109)
!2359 = !DILocation(line: 0, scope: !2108, inlinedAt: !2109)
!2360 = !DILocation(line: 0, scope: !34, inlinedAt: !2173)
!2361 = !DILocation(line: 130, column: 9, scope: !35, inlinedAt: !2177)
!2362 = !DILocation(line: 470, column: 25, scope: !40, inlinedAt: !2173)
!2363 = !DILocation(line: 470, column: 19, scope: !40, inlinedAt: !2173)
!2364 = !DILocation(line: 443, column: 25, scope: !41, inlinedAt: !2172)
!2365 = !DILocation(line: 0, scope: !2112, inlinedAt: !2109)
!2366 = !DILocation(line: 1964, column: 41, scope: !2178, inlinedAt: !2301)
!2367 = !DILocation(line: 36, column: 17, scope: !2179)
!2368 = !DILocation(line: 41, column: 64, scope: !2180)
!2369 = !DILocation(line: 41, column: 9, scope: !2180)
!2370 = !DILocation(line: 18, column: 14, scope: !2186, inlinedAt: !2187)
!2371 = !DILocation(line: 658, column: 12, scope: !2108, inlinedAt: !2197)
!2372 = !DILocation(line: 1122, column: 16, scope: !2113, inlinedAt: !2203)
!2373 = !DILocation(line: 4102, column: 44, scope: !2194, inlinedAt: !2195)
!2374 = !DILocation(line: 512, column: 24, scope: !2106, inlinedAt: !2196)
!2375 = !DILocation(line: 663, column: 28, scope: !2112, inlinedAt: !2197)
!2376 = !DILocation(line: 971, column: 18, scope: !2204, inlinedAt: !2206)
!2377 = !DILocation(line: 1964, column: 41, scope: !2207, inlinedAt: !2208)
!2378 = !DILocation(line: 2223, column: 9, scope: !2209, inlinedAt: !2210)
!2379 = !DILocation(line: 440, column: 38, scope: !2121, inlinedAt: !2200)
!2380 = !DILocation(line: 28, column: 12, scope: !2122, inlinedAt: !2211)
!2381 = !DILocation(line: 1126, column: 31, scope: !2113, inlinedAt: !2203)
!2382 = !DILocation(line: 90, column: 24, scope: !2127, inlinedAt: !2212)
!2383 = !DILocation(line: 41, column: 11, scope: !2130, inlinedAt: !2213)
!2384 = !DILocation(line: 28, column: 74, scope: !2122, inlinedAt: !2211)
!2385 = !DILocation(line: 29, column: 12, scope: !2134, inlinedAt: !2211)
!2386 = !DILocation(line: 42, column: 12, scope: !2130, inlinedAt: !2213)
!2387 = !DILocation(line: 46, column: 9, scope: !2130, inlinedAt: !2213)
!2388 = !DILocation(line: 28, scope: !2122, inlinedAt: !2211)
!2389 = !DILocation(line: 31, column: 48, scope: !2134, inlinedAt: !2211)
!2390 = !DILocation(line: 210, column: 9, scope: !2137, inlinedAt: !2217)
!2391 = !DILocation(line: 459, column: 32, scope: !2124, inlinedAt: !2200)
!2392 = !DILocation(line: 459, column: 17, scope: !2124, inlinedAt: !2200)
!2393 = !DILocation(line: 460, column: 20, scope: !2124, inlinedAt: !2200)
!2394 = !DILocation(line: 461, column: 38, scope: !2124, inlinedAt: !2200)
!2395 = !DILocation(line: 90, column: 24, scope: !2139, inlinedAt: !2220)
!2396 = !DILocation(line: 157, column: 13, scope: !2146, inlinedAt: !2223)
!2397 = !DILocation(line: 463, column: 28, scope: !2141, inlinedAt: !2200)
!2398 = !DILocation(line: 644, column: 13, scope: !2162, inlinedAt: !2226)
!2399 = !DILocation(line: 646, column: 16, scope: !2162, inlinedAt: !2226)
!2400 = !DILocation(line: 670, column: 26, scope: !2112, inlinedAt: !2197)
!2401 = !DILocation(line: 0, scope: !2112, inlinedAt: !2197)
!2402 = !DILocation(line: 3105, column: 37, scope: !2228, inlinedAt: !2229)
!2403 = !DILocation(line: 3105, column: 18, scope: !2228, inlinedAt: !2229)
!2404 = !DILocation(line: 616, column: 49, scope: !2230, inlinedAt: !2235)
!2405 = !DILocation(line: 4104, column: 16, scope: !2205, inlinedAt: !2195)
!2406 = !DILocation(line: 672, column: 17, scope: !2236, inlinedAt: !2242)
!2407 = !DILocation(line: 611, column: 9, scope: !2243, inlinedAt: !2250)
!2408 = !DILocation(line: 4113, column: 30, scope: !2205, inlinedAt: !2195)
!2409 = !DILocation(line: 462, column: 9, scope: !2251, inlinedAt: !2319)
!2410 = !DILocation(line: 43, column: 5, scope: !2101)
!2411 = !DILocation(line: 43, column: 6, scope: !2101)
!2412 = !DILocation(line: 631, column: 39, scope: !20, inlinedAt: !2258)
!2413 = !DILocation(line: 1431, column: 17, scope: !23, inlinedAt: !2259)
!2414 = !DILocation(line: 175, column: 14, scope: !1, inlinedAt: !2265)
!2415 = !DILocation(line: 312, column: 9, scope: !2, inlinedAt: !2264)
!2416 = !DILocation(line: 41, column: 72, scope: !2180)
!2417 = !DILocation(line: 42, column: 9, scope: !2180)
!2418 = !DILocation(line: 18, column: 5, scope: !2101)
!2419 = distinct !DILocation(line: 1257, column: 14, scope: !107, inlinedAt: !2424)
!2420 = distinct !DILocation(line: 671, column: 43, scope: !58, inlinedAt: !2419)
!2421 = distinct !DILocation(line: 968, column: 16, scope: !56, inlinedAt: !2420)
!2422 = distinct !DILocation(line: 675, column: 43, scope: !60, inlinedAt: !2419)
!2423 = distinct !DILocation(line: 968, column: 16, scope: !227, inlinedAt: !2422)
!2424 = !DILocation(line: 120, column: 35, scope: !106)
!2425 = !DILocation(line: 1257, column: 31, scope: !107, inlinedAt: !2424)
!2426 = !DILocation(line: 120, column: 52, scope: !106)
!2427 = !DILocation(line: 968, column: 37, scope: !56, inlinedAt: !2420)
!2428 = !DILocation(line: 483, column: 8, scope: !59, inlinedAt: !2421)
!2429 = !DILocation(line: 672, column: 29, scope: !58, inlinedAt: !2419)
!2430 = !DILocation(line: 673, column: 16, scope: !60, inlinedAt: !2419)
!2431 = !DILocation(line: 968, column: 37, scope: !56, inlinedAt: !2422)
!2432 = !DILocation(line: 483, column: 8, scope: !59, inlinedAt: !2423)
!2433 = !DILocation(line: 674, column: 17, scope: !60, inlinedAt: !2419)
!2434 = !DILocation(line: 673, column: 13, scope: !60, inlinedAt: !2419)
!2435 = !DILocation(line: 0, scope: !57, inlinedAt: !2419)
!2436 = !DILocation(line: 124, column: 29, scope: !106)
!2437 = !DILocation(line: 124, column: 51, scope: !106)
!2438 = !DILocation(line: 126, column: 28, scope: !106)
!2439 = !DILocation(line: 126, column: 49, scope: !106)
!2440 = !DILocation(line: 119, column: 9, scope: !106)
!2441 = !DILocation(line: 121, column: 23, scope: !106)
!2442 = !DILocation(line: 121, column: 39, scope: !106)
!2443 = !DILocation(line: 129, column: 6, scope: !106)
!2444 = !DILocation(line: 971, column: 21, scope: !108, inlinedAt: !2425)
!2445 = distinct !DISubprogram(name: "drop<grep_printer::color::UserColorSpec, alloc::alloc::Global>", linkageName: "_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer5color13UserColorSpecENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_", scope: !171, file: !168, line: 423, type: !145, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2446 = distinct !DILocation(line: 425, column: 29, scope: !2445)
!2447 = distinct !DILocation(line: 874, column: 52, scope: !6, inlinedAt: !2446)
!2448 = distinct !DILocation(line: 639, column: 53, scope: !20, inlinedAt: !2447)
!2449 = distinct !DILocation(line: 876, column: 28, scope: !6, inlinedAt: !2446)
!2450 = distinct !DILocation(line: 554, column: 23, scope: !4, inlinedAt: !2449)
!2451 = distinct !DILocation(line: 436, column: 9, scope: !3, inlinedAt: !2450)
!2452 = distinct !DILocation(line: 321, column: 22, scope: !2, inlinedAt: !2451)
!2453 = !DILocation(line: 425, column: 29, scope: !2445)
!2454 = !DILocation(line: 631, column: 39, scope: !20, inlinedAt: !2447)
!2455 = !DILocation(line: 1431, column: 17, scope: !23, inlinedAt: !2448)
!2456 = !DILocation(line: 175, column: 14, scope: !1, inlinedAt: !2452)
!2457 = !DILocation(line: 312, column: 9, scope: !2, inlinedAt: !2451)
!2458 = !DILocation(line: 426, column: 6, scope: !2445)
!2459 = distinct !DISubprogram(name: "drop<grep_printer::jsont::SubMatch, alloc::alloc::Global>", linkageName: "_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer5jsont8SubMatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_", scope: !171, file: !168, line: 423, type: !145, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2460 = distinct !DILocation(line: 425, column: 29, scope: !2459)
!2461 = distinct !DILocation(line: 874, column: 52, scope: !6, inlinedAt: !2460)
!2462 = distinct !DILocation(line: 639, column: 53, scope: !20, inlinedAt: !2461)
!2463 = distinct !DILocation(line: 876, column: 28, scope: !6, inlinedAt: !2460)
!2464 = distinct !DILocation(line: 554, column: 23, scope: !4, inlinedAt: !2463)
!2465 = distinct !DILocation(line: 436, column: 9, scope: !3, inlinedAt: !2464)
!2466 = distinct !DILocation(line: 321, column: 22, scope: !2, inlinedAt: !2465)
!2467 = !DILocation(line: 425, column: 29, scope: !2459)
!2468 = !DILocation(line: 631, column: 39, scope: !20, inlinedAt: !2461)
!2469 = !DILocation(line: 1431, column: 17, scope: !23, inlinedAt: !2462)
!2470 = !DILocation(line: 175, column: 14, scope: !1, inlinedAt: !2466)
!2471 = !DILocation(line: 312, column: 9, scope: !2, inlinedAt: !2465)
!2472 = !DILocation(line: 426, column: 6, scope: !2459)
!2473 = distinct !DILocation(line: 425, column: 29, scope: !42)
!2474 = distinct !DILocation(line: 874, column: 52, scope: !6, inlinedAt: !2473)
!2475 = distinct !DILocation(line: 639, column: 53, scope: !20, inlinedAt: !2474)
!2476 = distinct !DILocation(line: 876, column: 28, scope: !6, inlinedAt: !2473)
!2477 = distinct !DILocation(line: 554, column: 23, scope: !4, inlinedAt: !2476)
!2478 = distinct !DILocation(line: 436, column: 9, scope: !3, inlinedAt: !2477)
!2479 = distinct !DILocation(line: 321, column: 22, scope: !2, inlinedAt: !2478)
!2480 = !DILocation(line: 425, column: 29, scope: !42)
!2481 = !DILocation(line: 631, column: 39, scope: !20, inlinedAt: !2474)
!2482 = !DILocation(line: 1431, column: 17, scope: !23, inlinedAt: !2475)
!2483 = !DILocation(line: 175, column: 14, scope: !1, inlinedAt: !2479)
!2484 = !DILocation(line: 312, column: 9, scope: !2, inlinedAt: !2478)
!2485 = !DILocation(line: 426, column: 6, scope: !42)
!2486 = distinct !DILocation(line: 425, column: 29, scope: !21)
!2487 = distinct !DILocation(line: 874, column: 52, scope: !6, inlinedAt: !2486)
!2488 = distinct !DILocation(line: 639, column: 53, scope: !20, inlinedAt: !2487)
!2489 = distinct !DILocation(line: 876, column: 28, scope: !6, inlinedAt: !2486)
!2490 = distinct !DILocation(line: 554, column: 23, scope: !4, inlinedAt: !2489)
!2491 = distinct !DILocation(line: 436, column: 9, scope: !3, inlinedAt: !2490)
!2492 = distinct !DILocation(line: 321, column: 22, scope: !2, inlinedAt: !2491)
!2493 = !DILocation(line: 425, column: 29, scope: !21)
!2494 = !DILocation(line: 631, column: 39, scope: !20, inlinedAt: !2487)
!2495 = !DILocation(line: 1431, column: 17, scope: !23, inlinedAt: !2488)
!2496 = !DILocation(line: 175, column: 14, scope: !1, inlinedAt: !2492)
!2497 = !DILocation(line: 312, column: 9, scope: !2, inlinedAt: !2491)
!2498 = !DILocation(line: 426, column: 6, scope: !21)
!2499 = distinct !DILocation(line: 425, column: 29, scope: !105)
!2500 = distinct !DILocation(line: 874, column: 52, scope: !6, inlinedAt: !2499)
!2501 = distinct !DILocation(line: 639, column: 53, scope: !20, inlinedAt: !2500)
!2502 = distinct !DILocation(line: 876, column: 28, scope: !6, inlinedAt: !2499)
!2503 = distinct !DILocation(line: 554, column: 23, scope: !4, inlinedAt: !2502)
!2504 = distinct !DILocation(line: 436, column: 9, scope: !3, inlinedAt: !2503)
!2505 = distinct !DILocation(line: 321, column: 22, scope: !2, inlinedAt: !2504)
!2506 = !DILocation(line: 425, column: 29, scope: !105)
!2507 = !DILocation(line: 631, column: 39, scope: !20, inlinedAt: !2500)
!2508 = !DILocation(line: 1431, column: 17, scope: !23, inlinedAt: !2501)
!2509 = !DILocation(line: 175, column: 14, scope: !1, inlinedAt: !2505)
!2510 = !DILocation(line: 312, column: 9, scope: !2, inlinedAt: !2504)
!2511 = !DILocation(line: 426, column: 6, scope: !105)
!2512 = distinct !DILocation(line: 425, column: 29, scope: !7)
!2513 = distinct !DILocation(line: 874, column: 52, scope: !6, inlinedAt: !2512)
!2514 = distinct !DILocation(line: 876, column: 28, scope: !6, inlinedAt: !2512)
!2515 = distinct !DILocation(line: 554, column: 23, scope: !4, inlinedAt: !2514)
!2516 = distinct !DILocation(line: 436, column: 9, scope: !3, inlinedAt: !2515)
!2517 = distinct !DILocation(line: 321, column: 22, scope: !2, inlinedAt: !2516)
!2518 = !DILocation(line: 425, column: 29, scope: !7)
!2519 = !DILocation(line: 631, column: 39, scope: !20, inlinedAt: !2513)
!2520 = !DILocation(line: 175, column: 14, scope: !1, inlinedAt: !2517)
!2521 = !DILocation(line: 312, column: 9, scope: !2, inlinedAt: !2516)
!2522 = !DILocation(line: 426, column: 6, scope: !7)
!2523 = distinct !DISubprogram(name: "add_assign", linkageName: "_RNvXs1_NtCshhHc5tDBDRu_12grep_printer5statsNtB5_5StatsNtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssign10add_assign", scope: !2536, file: !218, line: 133, type: !145, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2524 = distinct !{!2524, i1 true, !"_RNvXs2_NtCshhHc5tDBDRu_12grep_printer5statsNtB5_5StatsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignRBF_E10add_assign"}
!2525 = distinct !{!2525, !2524, !"_RNvXs2_NtCshhHc5tDBDRu_12grep_printer5statsNtB5_5StatsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignRBF_E10add_assign: argument 0"}
!2526 = distinct !{!2526, !2524, !"_RNvXs2_NtCshhHc5tDBDRu_12grep_printer5statsNtB5_5StatsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignRBF_E10add_assign: argument 1"}
!2527 = distinct !DILocation(line: 134, column: 9, scope: !2523)
!2528 = distinct !DILocation(line: 140, column: 9, scope: !109, inlinedAt: !2527)
!2529 = distinct !DILocation(line: 1266, column: 17, scope: !110, inlinedAt: !2528)
!2530 = distinct !DILocation(line: 1257, column: 14, scope: !111, inlinedAt: !2529)
!2531 = distinct !DILocation(line: 671, column: 43, scope: !58, inlinedAt: !2530)
!2532 = distinct !DILocation(line: 968, column: 16, scope: !56, inlinedAt: !2531)
!2533 = distinct !DILocation(line: 675, column: 43, scope: !60, inlinedAt: !2530)
!2534 = distinct !DILocation(line: 968, column: 16, scope: !227, inlinedAt: !2533)
!2535 = distinct !DILocation(line: 1257, column: 31, scope: !111, inlinedAt: !2529)
!2536 = !DINamespace(name: "{impl#3}", scope: !219)
!2537 = !{!2525}
!2538 = !{!2526}
!2539 = !{!2525, !2526}
!2540 = !DILocation(line: 134, column: 9, scope: !2523)
!2541 = !DILocation(line: 140, column: 27, scope: !109, inlinedAt: !2527)
!2542 = !DILocation(line: 1266, column: 17, scope: !110, inlinedAt: !2528)
!2543 = !DILocation(line: 968, column: 37, scope: !56, inlinedAt: !2531)
!2544 = !DILocation(line: 483, column: 8, scope: !59, inlinedAt: !2532)
!2545 = !DILocation(line: 672, column: 29, scope: !58, inlinedAt: !2530)
!2546 = !DILocation(line: 673, column: 16, scope: !60, inlinedAt: !2530)
!2547 = !DILocation(line: 968, column: 37, scope: !56, inlinedAt: !2533)
!2548 = !DILocation(line: 483, column: 8, scope: !59, inlinedAt: !2534)
!2549 = !DILocation(line: 674, column: 17, scope: !60, inlinedAt: !2530)
!2550 = !DILocation(line: 673, column: 13, scope: !60, inlinedAt: !2530)
!2551 = !DILocation(line: 971, column: 21, scope: !112, inlinedAt: !2535)
!2552 = !DILocation(line: 0, scope: !57, inlinedAt: !2530)
!2553 = !DILocation(line: 1266, column: 9, scope: !110, inlinedAt: !2528)
!2554 = !DILocation(line: 141, column: 26, scope: !109, inlinedAt: !2527)
!2555 = !DILocation(line: 141, column: 9, scope: !109, inlinedAt: !2527)
!2556 = !DILocation(line: 143, column: 32, scope: !109, inlinedAt: !2527)
!2557 = !DILocation(line: 143, column: 9, scope: !109, inlinedAt: !2527)
!2558 = !DILocation(line: 145, column: 31, scope: !109, inlinedAt: !2527)
!2559 = !DILocation(line: 145, column: 9, scope: !109, inlinedAt: !2527)
!2560 = !DILocation(line: 135, column: 6, scope: !2523)
!2561 = distinct !DISubprogram(name: "fmt<alloc::string::String>", linkageName: "_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCshhHc5tDBDRu_12grep_printer", scope: !2564, file: !290, line: 2887, type: !145, scopeLine: 2887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2562 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt", scope: !2565, file: !273, line: 2773, type: !151, scopeLine: 2773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2563 = distinct !DILocation(line: 2887, column: 62, scope: !2561)
!2564 = !DINamespace(name: "{impl#80}", scope: !291)
!2565 = !DINamespace(name: "{impl#29}", scope: !274)
!2566 = !DILocation(line: 2887, column: 71, scope: !2561)
!2567 = !DILocation(line: 2887, column: 62, scope: !2561)
!2568 = !DILocation(line: 2774, column: 9, scope: !2562, inlinedAt: !2563)
!2569 = !DILocation(line: 2887, column: 84, scope: !2561)
!2570 = distinct !DISubprogram(name: "fmt<alloc::string::String>", linkageName: "_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCshhHc5tDBDRu_12grep_printer", scope: !2573, file: !290, line: 2887, type: !145, scopeLine: 2887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2571 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt", scope: !2574, file: !273, line: 2765, type: !151, scopeLine: 2765, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !144)
!2572 = distinct !DILocation(line: 2887, column: 62, scope: !2570)
!2573 = !DINamespace(name: "{impl#82}", scope: !291)
!2574 = !DINamespace(name: "{impl#28}", scope: !274)
!2575 = !DILocation(line: 2887, column: 71, scope: !2570)
!2576 = !DILocation(line: 2887, column: 62, scope: !2570)
!2577 = !DILocation(line: 2766, column: 9, scope: !2571, inlinedAt: !2572)
!2578 = !DILocation(line: 2887, column: 84, scope: !2570)
!2579 = distinct !DILocation(line: 1257, column: 14, scope: !111, inlinedAt: !2585)
!2580 = distinct !DILocation(line: 671, column: 43, scope: !58, inlinedAt: !2579)
!2581 = distinct !DILocation(line: 968, column: 16, scope: !56, inlinedAt: !2580)
!2582 = distinct !DILocation(line: 675, column: 43, scope: !60, inlinedAt: !2579)
!2583 = distinct !DILocation(line: 968, column: 16, scope: !227, inlinedAt: !2582)
!2584 = !DILocation(line: 140, column: 9, scope: !109)
!2585 = !DILocation(line: 1266, column: 17, scope: !110, inlinedAt: !2584)
!2586 = !DILocation(line: 1257, column: 31, scope: !111, inlinedAt: !2585)
!2587 = !DILocation(line: 140, column: 27, scope: !109)
!2588 = !DILocation(line: 968, column: 37, scope: !56, inlinedAt: !2580)
!2589 = !DILocation(line: 483, column: 8, scope: !59, inlinedAt: !2581)
!2590 = !DILocation(line: 672, column: 29, scope: !58, inlinedAt: !2579)
!2591 = !DILocation(line: 673, column: 16, scope: !60, inlinedAt: !2579)
!2592 = !DILocation(line: 968, column: 37, scope: !56, inlinedAt: !2582)
!2593 = !DILocation(line: 483, column: 8, scope: !59, inlinedAt: !2583)
!2594 = !DILocation(line: 674, column: 17, scope: !60, inlinedAt: !2579)
!2595 = !DILocation(line: 673, column: 13, scope: !60, inlinedAt: !2579)
!2596 = !DILocation(line: 0, scope: !57, inlinedAt: !2579)
!2597 = !DILocation(line: 1266, column: 9, scope: !110, inlinedAt: !2584)
!2598 = !DILocation(line: 141, column: 26, scope: !109)
!2599 = !DILocation(line: 141, column: 9, scope: !109)
!2600 = !DILocation(line: 143, column: 32, scope: !109)
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.10?download=true
inline.NumInlined: 701
inline.NumDeleted: 163
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE18sink_other_contextCs2NzvFoTxuAy_2rg:bb.a
  store ptr %i.ca, ptr %i.cb, align 8, !dbg !3230
  store i8 1, ptr %0, align 8, !dbg !3230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3231
  br label %bb.w, !dbg !3232

bb.t:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !3233
  %i.cd = load i8, ptr %i.cc, align 1, !dbg !3233, !range !550, !noundef !514
  %i.ce = trunc nuw i8 %i.cd to i1, !dbg !3233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3231
  br i1 %i.ce, label %bb.v, label %bb.u, !dbg !3234

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !3235
  store i8 0, ptr %i.cf, align 1, !dbg !3235
  store i8 0, ptr %0, align 8, !dbg !3235
  br label %bb.w, !dbg !3236

bb.v:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !3237
  store i64 %.8.val, ptr %i.cg, align 8, !dbg !3237
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 113, !dbg !3238
  store i8 1, ptr %i.ch, align 1, !dbg !3238
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !3239
  store i8 1, ptr %i.ci, align 1, !dbg !3239
  store i8 0, ptr %0, align 8, !dbg !3239
  br label %bb.w, !dbg !3240

bb.w:                                             ; preds = %bb.o, %.thread7, %bb.s, %bb.u, %bb.v
  ret void, !dbg !3240
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE21after_context_by_lineCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3241 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [2 x i8], align 1                 ; 3 uses
  %i.e = alloca [80 x i8], align 8                ; 15 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !3413 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !3413, !noundef !514 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !3413
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !3413

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !3414
  store i8 1, ptr %i.k, align 1, !dbg !3414
  br label %bb.d, !dbg !3415

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !3416 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !dbg !3416, !nonnull !514, !align !551, !noundef !514 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !3416
  %i.o = load i64, ptr %i.n, align 8, !dbg !3416, !range !543, !noundef !514
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !3416
  %i.q = load i64, ptr %i.p, align 8, !dbg !3416
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !3417
  %.val = load i64, ptr %i.r, align 8, !dbg !3417
  %i.s = trunc nuw i64 %i.o to i1, !dbg !3418
  %i.t = icmp uge i64 %.val, %i.q
  %spec.select.i = select i1 %i.s, i1 %i.t, i1 false, !dbg !3418
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !3419 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !3419, !noundef !514 ; 3 uses
  %.not = icmp ugt i64 %i.v, %4, !dbg !3420
  br i1 %.not, label %bb.e, label %bb.f, !dbg !3420, !prof !549

bb.d:                                             ; preds = %.split113.us, %.split115.us, %.thread70, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE12sink_matchedCs2NzvFoTxuAy_2rg.exit, %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, %bb.b
  %.sink = phi i8 [ 1, %.split113.us ], [ 0, %.split115.us ], [ 0, %.thread70 ], [ 1, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE12sink_matchedCs2NzvFoTxuAy_2rg.exit ], [ 0, %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit ], [ 0, %bb.b ]
  store i8 %.sink, ptr %0, align 8, !dbg !3421
  ret void, !dbg !3422

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25, !dbg !3423
  unreachable, !dbg !3423

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !3424
  %i.x = load i8, ptr %i.w, align 8, !dbg !3424, !range !550, !noundef !514
  %i.y = trunc nuw i8 %i.x to i1, !dbg !3424
  br i1 %i.y, label %.split, label %bb.g, !dbg !3425

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 57, !dbg !3424
  %i.aa = load i8, ptr %i.z, align 1, !dbg !3426, !noundef !514
  br label %.split, !dbg !3427

.split:                                           ; preds = %bb.g, %bb.f
  %.sroa.0.0 = phi i8 [ %i.aa, %bb.g ], [ 10, %bb.f ], !dbg !3428 ; 2 uses
  %.not.i21 = icmp ugt i64 %4, %3
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %.sroa.41.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 73
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  br i1 %.not.i21, label %bb.ag, label %.split.split, !dbg !3429, !prof !549

.split.split:                                     ; preds = %.split
  %spec.select.i.fr = freeze i1 %spec.select.i
  br i1 %spec.select.i.fr, label %.split.split.split.us, label %.split.split.split

.split.split.split.us:                            ; preds = %.split.split, %bb.af
  %i.bb = phi i64 [ %i.ei, %bb.af ], [ %i.i, %.split.split ]
  %.sroa.0.056.us = phi i64 [ %.sroa.10.0.ph.us, %bb.af ], [ %i.v, %.split.split ], !dbg !3430 ; 17 uses
  %i.bc = icmp ugt i64 %.sroa.0.056.us, %4, !dbg !3431
  br i1 %i.bc, label %.split99.us, label %bb.h, !dbg !3431, !prof !549

bb.h:                                             ; preds = %.split.split.split.us
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.056.us, !dbg !3432 ; 7 uses
  %i.be = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !3433, !noalias !3377, !nonnull !514, !noundef !514
  %i.bf = call { i64, ptr } %i.be(i8 noundef %.sroa.0.0, ptr noundef nonnull readonly %i.bd, ptr noundef nonnull readonly %i.ab), !dbg !3434, !noalias !3377, !inline_history !85 ; 2 uses
  %i.bg = extractvalue { i64, ptr } %i.bf, 0, !dbg !3435
  %i.bh = trunc nuw i64 %i.bg to i1, !dbg !3436
  br i1 %i.bh, label %bb.j, label %bb.i, !dbg !3436

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp ult i64 %.sroa.0.056.us, %4, !dbg !3437
  br i1 %i.bi, label %bb.k, label %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, !dbg !3437

bb.j:                                             ; preds = %bb.h
  %i.bj = sub nuw nsw i64 %4, %.sroa.0.056.us, !dbg !3438
  %i.bk = extractvalue { i64, ptr } %i.bf, 1, !dbg !3435
  %i.bl = ptrtoint ptr %i.bk to i64, !dbg !3439
  %i.bm = ptrtoint ptr %i.bd to i64, !dbg !3439
  %i.bn = sub i64 %i.bl, %i.bm, !dbg !3439        ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, -1, !dbg !3440
  call void @llvm.assume(i1 %i.bo), !dbg !3440, !noalias !3378
  %.not.i.i.us = icmp ult i64 %i.bn, %i.bj, !dbg !3441
  call void @llvm.assume(i1 %.not.i.i.us), !dbg !3441
  %i.bp = add nuw i64 %.sroa.0.056.us, 1, !dbg !3442
  %i.bq = add nuw i64 %i.bp, %i.bn, !dbg !3442    ; 2 uses
  %.not17.i.us = icmp ugt i64 %.sroa.0.056.us, %i.bq, !dbg !3443
  br i1 %.not17.i.us, label %.split101.us, label %bb.k, !dbg !3443, !prof !549

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.ph.us = phi i64 [ %i.bq, %bb.j ], [ %4, %bb.i ] ; 10 uses
  %.not18.us = icmp ugt i64 %.sroa.0.056.us, %.sroa.10.0.ph.us, !dbg !3444
  br i1 %.not18.us, label %.split103.us, label %bb.l, !dbg !3444, !prof !549

bb.l:                                             ; preds = %bb.k
  %.not19.us = icmp ugt i64 %.sroa.10.0.ph.us, %3
  br i1 %.not19.us, label %.split105.us, label %bb.m, !dbg !3445, !prof !614

bb.m:                                             ; preds = %bb.l
  %i.br = sub nuw nsw i64 %.sroa.10.0.ph.us, %.sroa.0.056.us, !dbg !3446 ; 6 uses
  %.val25.us = load ptr, ptr %i.l, align 8, !dbg !3447, !nonnull !514, !align !551, !noundef !514 ; 5 uses
  %.val26.us = load ptr, ptr %i.ac, align 8, !dbg !3447 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val25.us, i64 56, !dbg !3448 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 8, !dbg !3448, !range !550, !noalias !3386, !noundef !514
  %i.bu = trunc nuw i8 %i.bt to i1, !dbg !3448    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val25.us, i64 57, !dbg !3448 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !3448, !noalias !3386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3386
  store i8 %i.bw, ptr %i.ad, align 1, !noalias !3387
  %..i.i.us = select i1 %i.bu, i64 2, i64 1, !dbg !3449 ; 4 uses
  %i.bx = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.br, i64 %..i.i.us), !dbg !3450 ; 2 uses
  %i.by = sub nuw nsw i64 %i.br, %i.bx, !dbg !3451
  %i.bz = icmp eq i64 %i.by, %..i.i.us, !dbg !3452
  br i1 %i.bz, label %bb.n, label %bb.o, !dbg !3452

bb.n:                                             ; preds = %bb.m
  %.10.i.i.us = select i1 %i.bu, ptr @35, ptr %i.ad, !dbg !3449
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bx, !dbg !3453
  %bcmp.i.i.us = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(1) %.10.i.i.us, i64 %..i.i.us), !dbg !3454, !noalias !3388
  %i.cb = icmp eq i32 %bcmp.i.i.us, 0, !dbg !3454
  %i.cc = select i1 %i.cb, i64 %..i.i.us, i64 0, !dbg !3455
  %spec.select.i28.us = sub nuw nsw i64 %i.br, %i.cc, !dbg !3455
  br label %bb.o, !dbg !3455

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.3.0.i.i27.us = phi i64 [ %spec.select.i28.us, %bb.n ], [ %i.br, %bb.m ], !dbg !3456 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.us) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3457, !noalias !3386
  %.val.i.i.us = load ptr, ptr %.val26.us, align 8, !dbg !3458, !noalias !3389, !nonnull !514, !align !551, !noundef !514 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val.i.i.us, i64 48, !dbg !3459
  %.val.i.i.i.us = load ptr, ptr %i.cd, align 8, !dbg !3459, !noalias !3390, !nonnull !514, !noundef !514
  %i.ce = getelementptr i8, ptr %.val.i.i.us, i64 56, !dbg !3459
  %.val1.i.i.i.us = load ptr, ptr %i.ce, align 8, !dbg !3459, !noalias !3390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3460, !noalias !3391
  store i32 0, ptr %i.c, align 8, !dbg !3461, !noalias !3391
  store ptr %i.bd, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !3461, !noalias !3391
  store i64 %.sroa.3.0.i.i27.us, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !3461, !noalias !3391
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !3461, !noalias !3391
  store i64 %.sroa.3.0.i.i27.us, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !3461, !noalias !3391
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !3461, !noalias !3391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3462, !noalias !3391
  call fastcc void @_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull readonly %.val.i.i.i.us, ptr %.val1.i.i.i.us, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c) #24, !dbg !3463, !noalias !3388
  %i.cf = load i64, ptr %i.b, align 8, !dbg !3464, !range !543, !noalias !3391, !noundef !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3465, !noalias !3391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3466, !noalias !3391
  %i.cg = trunc nuw nsw i64 %i.cf to i8, !dbg !3467
  %i.ch = getelementptr inbounds nuw i8, ptr %.val25.us, i64 60, !dbg !3468
  %i.ci = load i8, ptr %i.ch, align 4, !dbg !3468, !range !550, !noundef !514
  %.not20.us = icmp eq i8 %i.ci, %i.cg, !dbg !3469
  br i1 %.not20.us, label %bb.ad, label %bb.p, !dbg !3469

bb.p:                                             ; preds = %bb.o
  store i64 %.sroa.10.0.ph.us, ptr %i.ae, align 8, !dbg !3470
  call void @llvm.experimental.noalias.scope.decl(metadata !3393), !dbg !3471
  %i.cj = load i8, ptr %i.af, align 8, !dbg !3472, !range !550, !alias.scope !3393, !noundef !514
  %i.ck = trunc nuw i8 %i.cj to i1, !dbg !3472
  br i1 %i.ck, label %bb.q, label %.thread.us, !dbg !3472

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !3394), !dbg !3473
  %i.cl = load i64, ptr %1, align 8, !dbg !3474, !range !543, !alias.scope !3394, !noalias !3395, !noundef !514
  %.not.i29.us = icmp eq i64 %i.cl, 0, !dbg !3475
  %i.cm = getelementptr inbounds nuw i8, ptr %.val25.us, i64 58, !dbg !3400 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 2, !dbg !3400, !range !610, !noalias !3396, !noundef !514 ; 2 uses
  br i1 %.not.i29.us, label %bb.r, label %bb.w, !dbg !3476

bb.r:                                             ; preds = %bb.q
  %i.co = icmp eq i8 %i.cn, 0, !dbg !3477
  br i1 %i.co, label %.thread.us, label %bb.s, !dbg !3477

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %.val25.us, i64 59, !dbg !3478
  %.sroa.01.0.i.us = load i8, ptr %i.cp, align 1, !dbg !3400, !noalias !3396, !noundef !514
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.10.0.ph.us, !dbg !3479
  %i.cr = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !3480, !noalias !3397, !nonnull !514, !noundef !514
  %i.cs = call { i64, ptr } %i.cr(i8 noundef %.sroa.01.0.i.us, ptr noundef nonnull readonly %i.bd, ptr noundef nonnull readonly %i.cq), !dbg !3481, !noalias !3398, !inline_history !208 ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0, !dbg !3482
  %i.cu = trunc nuw i64 %i.ct to i1, !dbg !3483
  br i1 %i.cu, label %bb.t, label %.thread.us, !dbg !3483

bb.t:                                             ; preds = %bb.s
  %i.cv = extractvalue { i64, ptr } %i.cs, 1, !dbg !3482
  %i.cw = ptrtoint ptr %i.cv to i64, !dbg !3484
  %i.cx = ptrtoint ptr %i.bd to i64, !dbg !3484
  %i.cy = sub i64 %i.cw, %i.cx, !dbg !3484        ; 3 uses
  %i.cz = icmp sgt i64 %i.cy, -1, !dbg !3485
  call void @llvm.assume(i1 %i.cz), !dbg !3485, !noalias !3395
  %.not.i.i31.us = icmp samesign ult i64 %i.cy, %i.br, !dbg !3486
  call void @llvm.assume(i1 %.not.i.i31.us), !dbg !3486, !noalias !3395
  %i.da = add nuw i64 %i.cy, %.sroa.0.056.us, !dbg !3487 ; 2 uses
  store i64 1, ptr %1, align 8, !dbg !3488, !alias.scope !3394, !noalias !3395
  store i64 %i.da, ptr %i.ag, align 8, !dbg !3488, !alias.scope !3394, !noalias !3395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3489, !noalias !3396
  %i.db = load ptr, ptr %i.ai, align 8, !dbg !3490, !alias.scope !3394, !noalias !3395, !nonnull !514, !align !551, !noundef !514
  %.val.i.us = load ptr, ptr %i.ah, align 8, !dbg !3491, !alias.scope !3394, !noalias !3395, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs3_NtCshhHc5tDBDRu_12grep_printer4jsonINtB5_8JSONSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink11binary_dataCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val.i.us, ptr noundef nonnull align 8 %i.db, i64 noundef %i.da), !dbg !3492, !noalias !3399
  %i.dc = load i8, ptr %i.a, align 8, !dbg !3493, !range !550, !noalias !3396, !noundef !514
  %i.dd = trunc nuw i8 %i.dc to i1, !dbg !3493
  br i1 %i.dd, label %.split109.us, label %bb.u, !dbg !3494

bb.u:                                             ; preds = %bb.t
  %i.de = load i8, ptr %i.aj, align 1, !dbg !3495, !range !550, !noalias !3396, !noundef !514
  %i.df = trunc nuw i8 %i.de to i1, !dbg !3495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3496, !noalias !3396
  br i1 %i.df, label %bb.v, label %.thread70, !dbg !3489

bb.v:                                             ; preds = %bb.u
  %i.dg = load i8, ptr %i.cm, align 2, !dbg !3497, !range !610, !noalias !3399, !noundef !514
  br label %bb.w, !dbg !3498

bb.w:                                             ; preds = %bb.v, %bb.q
  %.sroa.548.0.ph.in.in.us = phi i8 [ %i.dg, %bb.v ], [ %i.cn, %bb.q ]
  %.sroa.548.0.ph.in.us = icmp eq i8 %.sroa.548.0.ph.in.in.us, 1, !dbg !3499
  br i1 %.sroa.548.0.ph.in.us, label %.thread70, label %.thread.us, !dbg !3500

.thread.us:                                       ; preds = %bb.w, %bb.s, %bb.r, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !3401), !dbg !3501
  %i.dh = load i64, ptr %i.ak, align 8, !dbg !3502, !range !543, !alias.scope !3401, !noalias !3395, !noundef !514 ; 2 uses
  %i.di = trunc nuw i64 %i.dh to i1, !dbg !3503
  %i.dj = load i64, ptr %i.am, align 8, !alias.scope !3401, !noalias !3395 ; 3 uses
  %i.dk = icmp ult i64 %i.dj, %.sroa.0.056.us
  %or.cond.not.i.us = select i1 %i.di, i1 %i.dk, i1 false, !dbg !3503
  br i1 %or.cond.not.i.us, label %bb.x, label %.thread.us._crit_edge, !dbg !3503

.thread.us._crit_edge:                            ; preds = %.thread.us
  %.pre = load i64, ptr %i.al, align 8, !dbg !3504, !alias.scope !3393
  br label %bb.aa, !dbg !3503

bb.x:                                             ; preds = %.thread.us
  %i.dl = sub nuw nsw i64 %.sroa.0.056.us, %i.dj, !dbg !3505
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %i.dj, !dbg !3506
  %i.dn = load i8, ptr %i.bs, align 8, !dbg !3507, !range !550, !noalias !3402, !noundef !514
  %i.do = trunc nuw i8 %i.dn to i1, !dbg !3507
  br i1 %i.do, label %bb.z, label %bb.y, !dbg !3508

bb.y:                                             ; preds = %bb.x
  %i.dp = load i8, ptr %i.bv, align 1, !dbg !3509, !noalias !3402, !noundef !514
  br label %bb.z, !dbg !3510

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.us = phi i8 [ %i.dp, %bb.y ], [ 10, %bb.x ], !dbg !3511
  %i.dq = call noundef i64 @_RNvNtCshqpdr3wwzuw_13grep_searcher5lines5count(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.dl, i8 noundef %.sroa.0.0.i.us), !dbg !3512, !noalias !3403
  %i.dr = load i64, ptr %i.al, align 8, !dbg !3513, !alias.scope !3401, !noalias !3395, !noundef !514
  %i.ds = add i64 %i.dr, %i.dq, !dbg !3513        ; 2 uses
  store i64 %i.ds, ptr %i.al, align 8, !dbg !3513, !alias.scope !3401, !noalias !3395
  store i64 %.sroa.0.056.us, ptr %i.am, align 8, !dbg !3514, !alias.scope !3401, !noalias !3395
  br label %bb.aa, !dbg !3515

bb.aa:                                            ; preds = %.thread.us._crit_edge, %bb.z
  %i.dt = phi i64 [ %.pre, %.thread.us._crit_edge ], [ %i.ds, %bb.z ], !dbg !3504
  %i.du = load i64, ptr %i.an, align 8, !dbg !3516, !alias.scope !3393, !noundef !514
  %i.dv = add i64 %i.du, %.sroa.0.056.us, !dbg !3516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3517, !noalias !3404
  %i.dw = load ptr, ptr %i.ai, align 8, !dbg !3518, !alias.scope !3393, !nonnull !514, !align !551, !noundef !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3519, !noalias !3404
  %i.dx = load i8, ptr %i.bs, align 8, !dbg !3520, !range !550, !noalias !3395, !noundef !514
  %i.dy = load i8, ptr %i.bv, align 1, !dbg !3520, !noalias !3395
  store i8 %i.dx, ptr %i.ao, align 8, !dbg !3519, !noalias !3404
  store i8 %i.dy, ptr %i.ap, align 1, !dbg !3519, !noalias !3404
  store ptr %i.bd, ptr %i.aq, align 8, !dbg !3519, !noalias !3404
  store i64 %i.br, ptr %i.ar, align 8, !dbg !3519, !noalias !3404
  store i64 %i.dv, ptr %i.as, align 8, !dbg !3519, !noalias !3404
  store i64 %i.dh, ptr %i.e, align 8, !dbg !3519, !noalias !3404
  store i64 %i.dt, ptr %i.at, align 8, !dbg !3519, !noalias !3404
  store ptr %2, ptr %i.au, align 8, !dbg !3519, !noalias !3404
  store i64 %3, ptr %i.av, align 8, !dbg !3519, !noalias !3404
  store i64 %.sroa.0.056.us, ptr %i.aw, align 8, !dbg !3519, !noalias !3404
  store i64 %.sroa.10.0.ph.us, ptr %i.ax, align 8, !dbg !3519, !noalias !3404
  %.val24.us = load ptr, ptr %i.ah, align 8, !dbg !3521, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs3_NtCshhHc5tDBDRu_12grep_printer4jsonINtB5_8JSONSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matchedCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val24.us, ptr noundef nonnull align 8 %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e), !dbg !3522
  %i.dz = load i8, ptr %i.f, align 8, !dbg !3523, !range !550, !noalias !3404, !noundef !514
  %i.ea = trunc nuw i8 %i.dz to i1, !dbg !3523
  br i1 %i.ea, label %.split111.us, label %bb.ab, !dbg !3524

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load i8, ptr %i.ay, align 1, !dbg !3525, !range !550, !noalias !3404, !noundef !514
  %i.ec = trunc nuw i8 %i.eb to i1, !dbg !3525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3526, !noalias !3404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3527, !noalias !3404
  br i1 %i.ec, label %bb.ac, label %.thread70, !dbg !3528

bb.ac:                                            ; preds = %bb.ab
  store i64 %.sroa.10.0.ph.us, ptr %i.u, align 8, !dbg !3529, !alias.scope !3393
  store i8 1, ptr %i.az, align 1, !dbg !3530, !alias.scope !3393
  %i.ed = add i64 %i.bb, -1, !dbg !3531           ; 2 uses
  store i64 %i.ed, ptr %i.h, align 8, !dbg !3531
  br label %bb.af, !dbg !3532

bb.ad:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !3405
  call fastcc void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE18sink_after_contextCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 %.sroa.0.056.us, i64 %.sroa.10.0.ph.us), !dbg !3533
  %i.ee = load i8, ptr %i.g, align 8, !dbg !3534, !range !550, !noundef !514
  %i.ef = trunc nuw i8 %i.ee to i1, !dbg !3534
  br i1 %i.ef, label %.split113.us, label %bb.ae, !dbg !3535

bb.ae:                                            ; preds = %bb.ad
  %i.eg = load i8, ptr %i.ba, align 1, !dbg !3536, !range !550, !noundef !514
  %i.eh = trunc nuw i8 %i.eg to i1, !dbg !3536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3537
  br i1 %i.eh, label %thread-pre-split.us, label %.split115.us, !dbg !3405

thread-pre-split.us:                              ; preds = %bb.ae
  %.pr.us = load i64, ptr %i.h, align 8, !dbg !3538
  br label %bb.af, !dbg !3538

bb.af:                                            ; preds = %thread-pre-split.us, %bb.ac
  %i.ei = phi i64 [ %.pr.us, %thread-pre-split.us ], [ %i.ed, %bb.ac ], !dbg !3538 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0, !dbg !3538
  br i1 %i.ej, label %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, label %.split.split.split.us, !dbg !3538

.split.split.split:                               ; preds = %.split.split, %thread-pre-split
  %.sroa.0.056 = phi i64 [ %.sroa.10.0.ph, %thread-pre-split ], [ %i.v, %.split.split ], !dbg !3430 ; 9 uses
  %i.ek = icmp ugt i64 %.sroa.0.056, %4, !dbg !3431
  br i1 %i.ek, label %.split99.us, label %bb.ah, !dbg !3431, !prof !549

bb.ag:                                            ; preds = %.split
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %4, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #25, !dbg !3539, !noalias !3406
  unreachable, !dbg !3539

bb.ah:                                            ; preds = %.split.split.split
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.056, !dbg !3432 ; 2 uses
  %i.em = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !3433, !noalias !3377, !nonnull !514, !noundef !514
  %i.en = tail call { i64, ptr } %i.em(i8 noundef %.sroa.0.0, ptr noundef nonnull readonly %i.el, ptr noundef nonnull readonly %i.ab), !dbg !3434, !noalias !3377, !inline_history !85 ; 2 uses
  %i.eo = extractvalue { i64, ptr } %i.en, 0, !dbg !3435
  %i.ep = trunc nuw i64 %i.eo to i1, !dbg !3436
  br i1 %i.ep, label %bb.ai, label %bb.aj, !dbg !3436

.split99.us:                                      ; preds = %.split.split.split, %.split.split.split.us
end_hunk_0
begin_hunk_1_@_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE18sink_other_contextCs2NzvFoTxuAy_2rg:bb.a
  store ptr %i.ca, ptr %i.cb, align 8, !dbg !6067
  store i8 1, ptr %0, align 8, !dbg !6067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6068
  br label %bb.w, !dbg !6069

bb.t:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !6070
  %i.cd = load i8, ptr %i.cc, align 1, !dbg !6070, !range !550, !noundef !514
  %i.ce = trunc nuw i8 %i.cd to i1, !dbg !6070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6068
  br i1 %i.ce, label %bb.v, label %bb.u, !dbg !6071

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !6072
  store i8 0, ptr %i.cf, align 1, !dbg !6072
  store i8 0, ptr %0, align 8, !dbg !6072
  br label %bb.w, !dbg !6073

bb.v:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !6074
  store i64 %.8.val, ptr %i.cg, align 8, !dbg !6074
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 113, !dbg !6075
  store i8 1, ptr %i.ch, align 1, !dbg !6075
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !6076
  store i8 1, ptr %i.ci, align 1, !dbg !6076
  store i8 0, ptr %0, align 8, !dbg !6076
  br label %bb.w, !dbg !6077

bb.w:                                             ; preds = %bb.o, %.thread7, %bb.s, %bb.u, %bb.v
  ret void, !dbg !6077
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE21after_context_by_lineCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6078 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [2 x i8], align 1                 ; 3 uses
  %i.e = alloca [80 x i8], align 8                ; 15 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !6250 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !6250, !noundef !514 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !6250
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !6250

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !6251
  store i8 1, ptr %i.k, align 1, !dbg !6251
  br label %bb.d, !dbg !6252

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !6253 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !dbg !6253, !nonnull !514, !align !551, !noundef !514 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !6253
  %i.o = load i64, ptr %i.n, align 8, !dbg !6253, !range !543, !noundef !514
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !6253
  %i.q = load i64, ptr %i.p, align 8, !dbg !6253
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !6254
  %.val = load i64, ptr %i.r, align 8, !dbg !6254
  %i.s = trunc nuw i64 %i.o to i1, !dbg !6255
  %i.t = icmp uge i64 %.val, %i.q
  %spec.select.i = select i1 %i.s, i1 %i.t, i1 false, !dbg !6255
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !6256 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !6256, !noundef !514 ; 3 uses
  %.not = icmp ugt i64 %i.v, %4, !dbg !6257
  br i1 %.not, label %bb.e, label %bb.f, !dbg !6257, !prof !549

bb.d:                                             ; preds = %.split113.us, %.split115.us, %.thread70, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE12sink_matchedCs2NzvFoTxuAy_2rg.exit, %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, %bb.b
  %.sink = phi i8 [ 1, %.split113.us ], [ 0, %.split115.us ], [ 0, %.thread70 ], [ 1, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE12sink_matchedCs2NzvFoTxuAy_2rg.exit ], [ 0, %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit ], [ 0, %bb.b ]
  store i8 %.sink, ptr %0, align 8, !dbg !6258
  ret void, !dbg !6259

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25, !dbg !6260
  unreachable, !dbg !6260

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !6261
  %i.x = load i8, ptr %i.w, align 8, !dbg !6261, !range !550, !noundef !514
  %i.y = trunc nuw i8 %i.x to i1, !dbg !6261
  br i1 %i.y, label %.split, label %bb.g, !dbg !6262

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 57, !dbg !6261
  %i.aa = load i8, ptr %i.z, align 1, !dbg !6263, !noundef !514
  br label %.split, !dbg !6264

.split:                                           ; preds = %bb.g, %bb.f
  %.sroa.0.0 = phi i8 [ %i.aa, %bb.g ], [ 10, %bb.f ], !dbg !6265 ; 2 uses
  %.not.i21 = icmp ugt i64 %4, %3
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %.sroa.41.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 73
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  br i1 %.not.i21, label %bb.ag, label %.split.split, !dbg !6266, !prof !549

.split.split:                                     ; preds = %.split
  %spec.select.i.fr = freeze i1 %spec.select.i
  br i1 %spec.select.i.fr, label %.split.split.split.us, label %.split.split.split

.split.split.split.us:                            ; preds = %.split.split, %bb.af
  %i.bb = phi i64 [ %i.ei, %bb.af ], [ %i.i, %.split.split ]
  %.sroa.0.056.us = phi i64 [ %.sroa.10.0.ph.us, %bb.af ], [ %i.v, %.split.split ], !dbg !6267 ; 17 uses
  %i.bc = icmp ugt i64 %.sroa.0.056.us, %4, !dbg !6268
  br i1 %i.bc, label %.split99.us, label %bb.h, !dbg !6268, !prof !549

bb.h:                                             ; preds = %.split.split.split.us
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.056.us, !dbg !6269 ; 7 uses
  %i.be = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !6270, !noalias !6214, !nonnull !514, !noundef !514
  %i.bf = call { i64, ptr } %i.be(i8 noundef %.sroa.0.0, ptr noundef nonnull readonly %i.bd, ptr noundef nonnull readonly %i.ab), !dbg !6271, !noalias !6214, !inline_history !85 ; 2 uses
  %i.bg = extractvalue { i64, ptr } %i.bf, 0, !dbg !6272
  %i.bh = trunc nuw i64 %i.bg to i1, !dbg !6273
  br i1 %i.bh, label %bb.j, label %bb.i, !dbg !6273

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp ult i64 %.sroa.0.056.us, %4, !dbg !6274
  br i1 %i.bi, label %bb.k, label %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, !dbg !6274

bb.j:                                             ; preds = %bb.h
  %i.bj = sub nuw nsw i64 %4, %.sroa.0.056.us, !dbg !6275
  %i.bk = extractvalue { i64, ptr } %i.bf, 1, !dbg !6272
  %i.bl = ptrtoint ptr %i.bk to i64, !dbg !6276
  %i.bm = ptrtoint ptr %i.bd to i64, !dbg !6276
  %i.bn = sub i64 %i.bl, %i.bm, !dbg !6276        ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, -1, !dbg !6277
  call void @llvm.assume(i1 %i.bo), !dbg !6277, !noalias !6215
  %.not.i.i.us = icmp ult i64 %i.bn, %i.bj, !dbg !6278
  call void @llvm.assume(i1 %.not.i.i.us), !dbg !6278
  %i.bp = add nuw i64 %.sroa.0.056.us, 1, !dbg !6279
  %i.bq = add nuw i64 %i.bp, %i.bn, !dbg !6279    ; 2 uses
  %.not17.i.us = icmp ugt i64 %.sroa.0.056.us, %i.bq, !dbg !6280
  br i1 %.not17.i.us, label %.split101.us, label %bb.k, !dbg !6280, !prof !549

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.ph.us = phi i64 [ %i.bq, %bb.j ], [ %4, %bb.i ] ; 10 uses
  %.not18.us = icmp ugt i64 %.sroa.0.056.us, %.sroa.10.0.ph.us, !dbg !6281
  br i1 %.not18.us, label %.split103.us, label %bb.l, !dbg !6281, !prof !549

bb.l:                                             ; preds = %bb.k
  %.not19.us = icmp ugt i64 %.sroa.10.0.ph.us, %3
  br i1 %.not19.us, label %.split105.us, label %bb.m, !dbg !6282, !prof !614

bb.m:                                             ; preds = %bb.l
  %i.br = sub nuw nsw i64 %.sroa.10.0.ph.us, %.sroa.0.056.us, !dbg !6283 ; 6 uses
  %.val25.us = load ptr, ptr %i.l, align 8, !dbg !6284, !nonnull !514, !align !551, !noundef !514 ; 5 uses
  %.val26.us = load ptr, ptr %i.ac, align 8, !dbg !6284 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val25.us, i64 56, !dbg !6285 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 8, !dbg !6285, !range !550, !noalias !6223, !noundef !514
  %i.bu = trunc nuw i8 %i.bt to i1, !dbg !6285    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val25.us, i64 57, !dbg !6285 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !6285, !noalias !6223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6223
  store i8 %i.bw, ptr %i.ad, align 1, !noalias !6224
  %..i.i.us = select i1 %i.bu, i64 2, i64 1, !dbg !6286 ; 4 uses
  %i.bx = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.br, i64 %..i.i.us), !dbg !6287 ; 2 uses
  %i.by = sub nuw nsw i64 %i.br, %i.bx, !dbg !6288
  %i.bz = icmp eq i64 %i.by, %..i.i.us, !dbg !6289
  br i1 %i.bz, label %bb.n, label %bb.o, !dbg !6289

bb.n:                                             ; preds = %bb.m
  %.10.i.i.us = select i1 %i.bu, ptr @35, ptr %i.ad, !dbg !6286
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bx, !dbg !6290
  %bcmp.i.i.us = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(1) %.10.i.i.us, i64 %..i.i.us), !dbg !6291, !noalias !6225
  %i.cb = icmp eq i32 %bcmp.i.i.us, 0, !dbg !6291
  %i.cc = select i1 %i.cb, i64 %..i.i.us, i64 0, !dbg !6292
  %spec.select.i28.us = sub nuw nsw i64 %i.br, %i.cc, !dbg !6292
  br label %bb.o, !dbg !6292

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.3.0.i.i27.us = phi i64 [ %spec.select.i28.us, %bb.n ], [ %i.br, %bb.m ], !dbg !6293 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.us) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6294, !noalias !6223
  %.val.i.i.us = load ptr, ptr %.val26.us, align 8, !dbg !6295, !noalias !6226, !nonnull !514, !align !551, !noundef !514 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val.i.i.us, i64 48, !dbg !6296
  %.val.i.i.i.us = load ptr, ptr %i.cd, align 8, !dbg !6296, !noalias !6227, !nonnull !514, !noundef !514
  %i.ce = getelementptr i8, ptr %.val.i.i.us, i64 56, !dbg !6296
  %.val1.i.i.i.us = load ptr, ptr %i.ce, align 8, !dbg !6296, !noalias !6227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6297, !noalias !6228
  store i32 0, ptr %i.c, align 8, !dbg !6298, !noalias !6228
  store ptr %i.bd, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !6298, !noalias !6228
  store i64 %.sroa.3.0.i.i27.us, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !6298, !noalias !6228
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !6298, !noalias !6228
  store i64 %.sroa.3.0.i.i27.us, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !6298, !noalias !6228
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !6298, !noalias !6228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6299, !noalias !6228
  call fastcc void @_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull readonly %.val.i.i.i.us, ptr %.val1.i.i.i.us, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c) #24, !dbg !6300, !noalias !6225
  %i.cf = load i64, ptr %i.b, align 8, !dbg !6301, !range !543, !noalias !6228, !noundef !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6302, !noalias !6228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6303, !noalias !6228
  %i.cg = trunc nuw nsw i64 %i.cf to i8, !dbg !6304
  %i.ch = getelementptr inbounds nuw i8, ptr %.val25.us, i64 60, !dbg !6305
  %i.ci = load i8, ptr %i.ch, align 4, !dbg !6305, !range !550, !noundef !514
  %.not20.us = icmp eq i8 %i.ci, %i.cg, !dbg !6306
  br i1 %.not20.us, label %bb.ad, label %bb.p, !dbg !6306

bb.p:                                             ; preds = %bb.o
  store i64 %.sroa.10.0.ph.us, ptr %i.ae, align 8, !dbg !6307
  call void @llvm.experimental.noalias.scope.decl(metadata !6230), !dbg !6308
  %i.cj = load i8, ptr %i.af, align 8, !dbg !6309, !range !550, !alias.scope !6230, !noundef !514
  %i.ck = trunc nuw i8 %i.cj to i1, !dbg !6309
  br i1 %i.ck, label %bb.q, label %.thread.us, !dbg !6309

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !6231), !dbg !6310
  %i.cl = load i64, ptr %1, align 8, !dbg !6311, !range !543, !alias.scope !6231, !noalias !6232, !noundef !514
  %.not.i29.us = icmp eq i64 %i.cl, 0, !dbg !6312
  %i.cm = getelementptr inbounds nuw i8, ptr %.val25.us, i64 58, !dbg !6237 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 2, !dbg !6237, !range !610, !noalias !6233, !noundef !514 ; 2 uses
  br i1 %.not.i29.us, label %bb.r, label %bb.w, !dbg !6313

bb.r:                                             ; preds = %bb.q
  %i.co = icmp eq i8 %i.cn, 0, !dbg !6314
  br i1 %i.co, label %.thread.us, label %bb.s, !dbg !6314

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %.val25.us, i64 59, !dbg !6315
  %.sroa.01.0.i.us = load i8, ptr %i.cp, align 1, !dbg !6237, !noalias !6233, !noundef !514
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.10.0.ph.us, !dbg !6316
  %i.cr = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !6317, !noalias !6234, !nonnull !514, !noundef !514
  %i.cs = call { i64, ptr } %i.cr(i8 noundef %.sroa.01.0.i.us, ptr noundef nonnull readonly %i.bd, ptr noundef nonnull readonly %i.cq), !dbg !6318, !noalias !6235, !inline_history !263 ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0, !dbg !6319
  %i.cu = trunc nuw i64 %i.ct to i1, !dbg !6320
  br i1 %i.cu, label %bb.t, label %.thread.us, !dbg !6320

bb.t:                                             ; preds = %bb.s
  %i.cv = extractvalue { i64, ptr } %i.cs, 1, !dbg !6319
  %i.cw = ptrtoint ptr %i.cv to i64, !dbg !6321
  %i.cx = ptrtoint ptr %i.bd to i64, !dbg !6321
  %i.cy = sub i64 %i.cw, %i.cx, !dbg !6321        ; 3 uses
  %i.cz = icmp sgt i64 %i.cy, -1, !dbg !6322
  call void @llvm.assume(i1 %i.cz), !dbg !6322, !noalias !6232
  %.not.i.i31.us = icmp samesign ult i64 %i.cy, %i.br, !dbg !6323
  call void @llvm.assume(i1 %.not.i.i31.us), !dbg !6323, !noalias !6232
  %i.da = add nuw i64 %i.cy, %.sroa.0.056.us, !dbg !6324 ; 2 uses
  store i64 1, ptr %1, align 8, !dbg !6325, !alias.scope !6231, !noalias !6232
  store i64 %i.da, ptr %i.ag, align 8, !dbg !6325, !alias.scope !6231, !noalias !6232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6326, !noalias !6233
  %i.db = load ptr, ptr %i.ai, align 8, !dbg !6327, !alias.scope !6231, !noalias !6232, !nonnull !514, !align !551, !noundef !514
  %.val.i.us = load ptr, ptr %i.ah, align 8, !dbg !6328, !alias.scope !6231, !noalias !6232, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs3_NtCshhHc5tDBDRu_12grep_printer4jsonINtB5_8JSONSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink11binary_dataCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val.i.us, ptr noundef nonnull align 8 %i.db, i64 noundef %i.da), !dbg !6329, !noalias !6236
  %i.dc = load i8, ptr %i.a, align 8, !dbg !6330, !range !550, !noalias !6233, !noundef !514
  %i.dd = trunc nuw i8 %i.dc to i1, !dbg !6330
  br i1 %i.dd, label %.split109.us, label %bb.u, !dbg !6331

bb.u:                                             ; preds = %bb.t
  %i.de = load i8, ptr %i.aj, align 1, !dbg !6332, !range !550, !noalias !6233, !noundef !514
  %i.df = trunc nuw i8 %i.de to i1, !dbg !6332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6333, !noalias !6233
  br i1 %i.df, label %bb.v, label %.thread70, !dbg !6326

bb.v:                                             ; preds = %bb.u
  %i.dg = load i8, ptr %i.cm, align 2, !dbg !6334, !range !610, !noalias !6236, !noundef !514
  br label %bb.w, !dbg !6335

bb.w:                                             ; preds = %bb.v, %bb.q
  %.sroa.548.0.ph.in.in.us = phi i8 [ %i.dg, %bb.v ], [ %i.cn, %bb.q ]
  %.sroa.548.0.ph.in.us = icmp eq i8 %.sroa.548.0.ph.in.in.us, 1, !dbg !6336
  br i1 %.sroa.548.0.ph.in.us, label %.thread70, label %.thread.us, !dbg !6337

.thread.us:                                       ; preds = %bb.w, %bb.s, %bb.r, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !6238), !dbg !6338
  %i.dh = load i64, ptr %i.ak, align 8, !dbg !6339, !range !543, !alias.scope !6238, !noalias !6232, !noundef !514 ; 2 uses
  %i.di = trunc nuw i64 %i.dh to i1, !dbg !6340
  %i.dj = load i64, ptr %i.am, align 8, !alias.scope !6238, !noalias !6232 ; 3 uses
  %i.dk = icmp ult i64 %i.dj, %.sroa.0.056.us
  %or.cond.not.i.us = select i1 %i.di, i1 %i.dk, i1 false, !dbg !6340
  br i1 %or.cond.not.i.us, label %bb.x, label %.thread.us._crit_edge, !dbg !6340

.thread.us._crit_edge:                            ; preds = %.thread.us
  %.pre = load i64, ptr %i.al, align 8, !dbg !6341, !alias.scope !6230
  br label %bb.aa, !dbg !6340

bb.x:                                             ; preds = %.thread.us
  %i.dl = sub nuw nsw i64 %.sroa.0.056.us, %i.dj, !dbg !6342
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %i.dj, !dbg !6343
  %i.dn = load i8, ptr %i.bs, align 8, !dbg !6344, !range !550, !noalias !6239, !noundef !514
  %i.do = trunc nuw i8 %i.dn to i1, !dbg !6344
  br i1 %i.do, label %bb.z, label %bb.y, !dbg !6345

bb.y:                                             ; preds = %bb.x
  %i.dp = load i8, ptr %i.bv, align 1, !dbg !6346, !noalias !6239, !noundef !514
  br label %bb.z, !dbg !6347

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.us = phi i8 [ %i.dp, %bb.y ], [ 10, %bb.x ], !dbg !6348
  %i.dq = call noundef i64 @_RNvNtCshqpdr3wwzuw_13grep_searcher5lines5count(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.dl, i8 noundef %.sroa.0.0.i.us), !dbg !6349, !noalias !6240
  %i.dr = load i64, ptr %i.al, align 8, !dbg !6350, !alias.scope !6238, !noalias !6232, !noundef !514
  %i.ds = add i64 %i.dr, %i.dq, !dbg !6350        ; 2 uses
  store i64 %i.ds, ptr %i.al, align 8, !dbg !6350, !alias.scope !6238, !noalias !6232
  store i64 %.sroa.0.056.us, ptr %i.am, align 8, !dbg !6351, !alias.scope !6238, !noalias !6232
  br label %bb.aa, !dbg !6352

bb.aa:                                            ; preds = %.thread.us._crit_edge, %bb.z
  %i.dt = phi i64 [ %.pre, %.thread.us._crit_edge ], [ %i.ds, %bb.z ], !dbg !6341
  %i.du = load i64, ptr %i.an, align 8, !dbg !6353, !alias.scope !6230, !noundef !514
  %i.dv = add i64 %i.du, %.sroa.0.056.us, !dbg !6353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !6354, !noalias !6241
  %i.dw = load ptr, ptr %i.ai, align 8, !dbg !6355, !alias.scope !6230, !nonnull !514, !align !551, !noundef !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6356, !noalias !6241
  %i.dx = load i8, ptr %i.bs, align 8, !dbg !6357, !range !550, !noalias !6232, !noundef !514
  %i.dy = load i8, ptr %i.bv, align 1, !dbg !6357, !noalias !6232
  store i8 %i.dx, ptr %i.ao, align 8, !dbg !6356, !noalias !6241
  store i8 %i.dy, ptr %i.ap, align 1, !dbg !6356, !noalias !6241
  store ptr %i.bd, ptr %i.aq, align 8, !dbg !6356, !noalias !6241
  store i64 %i.br, ptr %i.ar, align 8, !dbg !6356, !noalias !6241
  store i64 %i.dv, ptr %i.as, align 8, !dbg !6356, !noalias !6241
  store i64 %i.dh, ptr %i.e, align 8, !dbg !6356, !noalias !6241
  store i64 %i.dt, ptr %i.at, align 8, !dbg !6356, !noalias !6241
  store ptr %2, ptr %i.au, align 8, !dbg !6356, !noalias !6241
  store i64 %3, ptr %i.av, align 8, !dbg !6356, !noalias !6241
  store i64 %.sroa.0.056.us, ptr %i.aw, align 8, !dbg !6356, !noalias !6241
  store i64 %.sroa.10.0.ph.us, ptr %i.ax, align 8, !dbg !6356, !noalias !6241
  %.val24.us = load ptr, ptr %i.ah, align 8, !dbg !6358, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs3_NtCshhHc5tDBDRu_12grep_printer4jsonINtB5_8JSONSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matchedCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val24.us, ptr noundef nonnull align 8 %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e), !dbg !6359
  %i.dz = load i8, ptr %i.f, align 8, !dbg !6360, !range !550, !noalias !6241, !noundef !514
  %i.ea = trunc nuw i8 %i.dz to i1, !dbg !6360
  br i1 %i.ea, label %.split111.us, label %bb.ab, !dbg !6361

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load i8, ptr %i.ay, align 1, !dbg !6362, !range !550, !noalias !6241, !noundef !514
  %i.ec = trunc nuw i8 %i.eb to i1, !dbg !6362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !6363, !noalias !6241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6364, !noalias !6241
  br i1 %i.ec, label %bb.ac, label %.thread70, !dbg !6365

bb.ac:                                            ; preds = %bb.ab
  store i64 %.sroa.10.0.ph.us, ptr %i.u, align 8, !dbg !6366, !alias.scope !6230
  store i8 1, ptr %i.az, align 1, !dbg !6367, !alias.scope !6230
  %i.ed = add i64 %i.bb, -1, !dbg !6368           ; 2 uses
  store i64 %i.ed, ptr %i.h, align 8, !dbg !6368
  br label %bb.af, !dbg !6369

bb.ad:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !6242
  call fastcc void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE18sink_after_contextCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 %.sroa.0.056.us, i64 %.sroa.10.0.ph.us), !dbg !6370
  %i.ee = load i8, ptr %i.g, align 8, !dbg !6371, !range !550, !noundef !514
  %i.ef = trunc nuw i8 %i.ee to i1, !dbg !6371
  br i1 %i.ef, label %.split113.us, label %bb.ae, !dbg !6372

bb.ae:                                            ; preds = %bb.ad
  %i.eg = load i8, ptr %i.ba, align 1, !dbg !6373, !range !550, !noundef !514
  %i.eh = trunc nuw i8 %i.eg to i1, !dbg !6373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6374
  br i1 %i.eh, label %thread-pre-split.us, label %.split115.us, !dbg !6242

thread-pre-split.us:                              ; preds = %bb.ae
  %.pr.us = load i64, ptr %i.h, align 8, !dbg !6375
  br label %bb.af, !dbg !6375

bb.af:                                            ; preds = %thread-pre-split.us, %bb.ac
  %i.ei = phi i64 [ %.pr.us, %thread-pre-split.us ], [ %i.ed, %bb.ac ], !dbg !6375 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0, !dbg !6375
  br i1 %i.ej, label %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, label %.split.split.split.us, !dbg !6375

.split.split.split:                               ; preds = %.split.split, %thread-pre-split
  %.sroa.0.056 = phi i64 [ %.sroa.10.0.ph, %thread-pre-split ], [ %i.v, %.split.split ], !dbg !6267 ; 9 uses
  %i.ek = icmp ugt i64 %.sroa.0.056, %4, !dbg !6268
  br i1 %i.ek, label %.split99.us, label %bb.ah, !dbg !6268, !prof !549

bb.ag:                                            ; preds = %.split
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %4, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #25, !dbg !6376, !noalias !6243
  unreachable, !dbg !6376

bb.ah:                                            ; preds = %.split.split.split
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.056, !dbg !6269 ; 2 uses
  %i.em = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !6270, !noalias !6214, !nonnull !514, !noundef !514
  %i.en = tail call { i64, ptr } %i.em(i8 noundef %.sroa.0.0, ptr noundef nonnull readonly %i.el, ptr noundef nonnull readonly %i.ab), !dbg !6271, !noalias !6214, !inline_history !85 ; 2 uses
  %i.eo = extractvalue { i64, ptr } %i.en, 0, !dbg !6272
  %i.ep = trunc nuw i64 %i.eo to i1, !dbg !6273
  br i1 %i.ep, label %bb.ai, label %bb.aj, !dbg !6273

.split99.us:                                      ; preds = %.split.split.split, %.split.split.split.us
end_hunk_1
begin_hunk_2_@_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE18sink_other_contextCs2NzvFoTxuAy_2rg:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8841
  store ptr %i.be, ptr %i.bf, align 8, !dbg !8841
  br label %bb.s, !dbg !8842

bb.p:                                             ; preds = %bb.g, %bb.n
  %.sroa.5.0.ph.in.in = phi i8 [ %i.bc, %bb.n ], [ %i.ad, %bb.g ]
  %.sroa.5.0.ph.in = icmp eq i8 %.sroa.5.0.ph.in.in, 1, !dbg !8843
  br i1 %.sroa.5.0.ph.in, label %.thread13, label %.thread, !dbg !8844

.thread13:                                        ; preds = %bb.m, %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !8845
  store i8 0, ptr %i.bg, align 1, !dbg !8845
  br label %bb.s, !dbg !8846

bb.q:                                             ; preds = %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE11count_linesCs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.0.val, i64 noundef %.8.val, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25, !dbg !8847
  unreachable, !dbg !8847

bb.r:                                             ; preds = %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE11count_linesCs2NzvFoTxuAy_2rg.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !8848
  store i64 %.8.val, ptr %i.bh, align 8, !dbg !8848
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 113, !dbg !8849
  store i8 1, ptr %i.bi, align 1, !dbg !8849
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !8850
  store i8 1, ptr %i.bj, align 1, !dbg !8850
  br label %bb.s, !dbg !8851

bb.s:                                             ; preds = %bb.o, %.thread13, %bb.r
  %.sink = phi i8 [ 1, %bb.o ], [ 0, %.thread13 ], [ 0, %bb.r ]
  store i8 %.sink, ptr %0, align 8, !dbg !8852
  ret void, !dbg !8851
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE21after_context_by_lineCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8853 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [2 x i8], align 1                 ; 3 uses
  %i.e = alloca [80 x i8], align 8                ; 15 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !9025 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !9025, !noundef !514 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !9025
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !9025

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !9026
  store i8 1, ptr %i.k, align 1, !dbg !9026
  br label %bb.d, !dbg !9027

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !9028 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !dbg !9028, !nonnull !514, !align !551, !noundef !514 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !9028
  %i.o = load i64, ptr %i.n, align 8, !dbg !9028, !range !543, !noundef !514
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !9028
  %i.q = load i64, ptr %i.p, align 8, !dbg !9028
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !9029
  %.val = load i64, ptr %i.r, align 8, !dbg !9029
  %i.s = trunc nuw i64 %i.o to i1, !dbg !9030
  %i.t = icmp uge i64 %.val, %i.q
  %spec.select.i = select i1 %i.s, i1 %i.t, i1 false, !dbg !9030
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !9031 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !9031, !noundef !514 ; 3 uses
  %.not = icmp ugt i64 %i.v, %4, !dbg !9032
  br i1 %.not, label %bb.e, label %bb.f, !dbg !9032, !prof !549

bb.d:                                             ; preds = %.split113.us, %.split115.us, %.thread70, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE12sink_matchedCs2NzvFoTxuAy_2rg.exit, %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, %bb.b
  %.sink = phi i8 [ 1, %.split113.us ], [ 0, %.split115.us ], [ 0, %.thread70 ], [ 1, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE12sink_matchedCs2NzvFoTxuAy_2rg.exit ], [ 0, %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit ], [ 0, %bb.b ]
  store i8 %.sink, ptr %0, align 8, !dbg !9033
  ret void, !dbg !9034

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25, !dbg !9035
  unreachable, !dbg !9035

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !9036
  %i.x = load i8, ptr %i.w, align 8, !dbg !9036, !range !550, !noundef !514
  %i.y = trunc nuw i8 %i.x to i1, !dbg !9036
  br i1 %i.y, label %.split, label %bb.g, !dbg !9037

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 57, !dbg !9036
  %i.aa = load i8, ptr %i.z, align 1, !dbg !9038, !noundef !514
  br label %.split, !dbg !9039

.split:                                           ; preds = %bb.g, %bb.f
  %.sroa.0.0 = phi i8 [ %i.aa, %bb.g ], [ 10, %bb.f ], !dbg !9040 ; 2 uses
  %.not.i21 = icmp ugt i64 %4, %3
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %.sroa.41.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 73
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  br i1 %.not.i21, label %bb.ag, label %.split.split, !dbg !9041, !prof !549

.split.split:                                     ; preds = %.split
  %spec.select.i.fr = freeze i1 %spec.select.i
  br i1 %spec.select.i.fr, label %.split.split.split.us, label %.split.split.split

.split.split.split.us:                            ; preds = %.split.split, %bb.af
  %i.bb = phi i64 [ %i.ei, %bb.af ], [ %i.i, %.split.split ]
  %.sroa.0.056.us = phi i64 [ %.sroa.10.0.ph.us, %bb.af ], [ %i.v, %.split.split ], !dbg !9042 ; 17 uses
  %i.bc = icmp ugt i64 %.sroa.0.056.us, %4, !dbg !9043
  br i1 %i.bc, label %.split99.us, label %bb.h, !dbg !9043, !prof !549

bb.h:                                             ; preds = %.split.split.split.us
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.056.us, !dbg !9044 ; 7 uses
  %i.be = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !9045, !noalias !8989, !nonnull !514, !noundef !514
  %i.bf = call { i64, ptr } %i.be(i8 noundef %.sroa.0.0, ptr noundef nonnull readonly %i.bd, ptr noundef nonnull readonly %i.ab), !dbg !9046, !noalias !8989, !inline_history !85 ; 2 uses
  %i.bg = extractvalue { i64, ptr } %i.bf, 0, !dbg !9047
  %i.bh = trunc nuw i64 %i.bg to i1, !dbg !9048
  br i1 %i.bh, label %bb.j, label %bb.i, !dbg !9048

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp ult i64 %.sroa.0.056.us, %4, !dbg !9049
  br i1 %i.bi, label %bb.k, label %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, !dbg !9049

bb.j:                                             ; preds = %bb.h
  %i.bj = sub nuw nsw i64 %4, %.sroa.0.056.us, !dbg !9050
  %i.bk = extractvalue { i64, ptr } %i.bf, 1, !dbg !9047
  %i.bl = ptrtoint ptr %i.bk to i64, !dbg !9051
  %i.bm = ptrtoint ptr %i.bd to i64, !dbg !9051
  %i.bn = sub i64 %i.bl, %i.bm, !dbg !9051        ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, -1, !dbg !9052
  call void @llvm.assume(i1 %i.bo), !dbg !9052, !noalias !8990
  %.not.i.i.us = icmp ult i64 %i.bn, %i.bj, !dbg !9053
  call void @llvm.assume(i1 %.not.i.i.us), !dbg !9053
  %i.bp = add nuw i64 %.sroa.0.056.us, 1, !dbg !9054
  %i.bq = add nuw i64 %i.bp, %i.bn, !dbg !9054    ; 2 uses
  %.not17.i.us = icmp ugt i64 %.sroa.0.056.us, %i.bq, !dbg !9055
  br i1 %.not17.i.us, label %.split101.us, label %bb.k, !dbg !9055, !prof !549

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.ph.us = phi i64 [ %i.bq, %bb.j ], [ %4, %bb.i ] ; 10 uses
  %.not18.us = icmp ugt i64 %.sroa.0.056.us, %.sroa.10.0.ph.us, !dbg !9056
  br i1 %.not18.us, label %.split103.us, label %bb.l, !dbg !9056, !prof !549

bb.l:                                             ; preds = %bb.k
  %.not19.us = icmp ugt i64 %.sroa.10.0.ph.us, %3
  br i1 %.not19.us, label %.split105.us, label %bb.m, !dbg !9057, !prof !614

bb.m:                                             ; preds = %bb.l
  %i.br = sub nuw nsw i64 %.sroa.10.0.ph.us, %.sroa.0.056.us, !dbg !9058 ; 6 uses
  %.val25.us = load ptr, ptr %i.l, align 8, !dbg !9059, !nonnull !514, !align !551, !noundef !514 ; 5 uses
  %.val26.us = load ptr, ptr %i.ac, align 8, !dbg !9059 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val25.us, i64 56, !dbg !9060 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 8, !dbg !9060, !range !550, !noalias !8998, !noundef !514
  %i.bu = trunc nuw i8 %i.bt to i1, !dbg !9060    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val25.us, i64 57, !dbg !9060 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !9060, !noalias !8998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8998
  store i8 %i.bw, ptr %i.ad, align 1, !noalias !8999
  %..i.i.us = select i1 %i.bu, i64 2, i64 1, !dbg !9061 ; 4 uses
  %i.bx = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.br, i64 %..i.i.us), !dbg !9062 ; 2 uses
  %i.by = sub nuw nsw i64 %i.br, %i.bx, !dbg !9063
  %i.bz = icmp eq i64 %i.by, %..i.i.us, !dbg !9064
  br i1 %i.bz, label %bb.n, label %bb.o, !dbg !9064

bb.n:                                             ; preds = %bb.m
  %.10.i.i.us = select i1 %i.bu, ptr @35, ptr %i.ad, !dbg !9061
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bx, !dbg !9065
  %bcmp.i.i.us = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(1) %.10.i.i.us, i64 %..i.i.us), !dbg !9066, !noalias !9000
  %i.cb = icmp eq i32 %bcmp.i.i.us, 0, !dbg !9066
  %i.cc = select i1 %i.cb, i64 %..i.i.us, i64 0, !dbg !9067
  %spec.select.i28.us = sub nuw nsw i64 %i.br, %i.cc, !dbg !9067
  br label %bb.o, !dbg !9067

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.3.0.i.i27.us = phi i64 [ %spec.select.i28.us, %bb.n ], [ %i.br, %bb.m ], !dbg !9068 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.us) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9069, !noalias !8998
  %.val.i.i.us = load ptr, ptr %.val26.us, align 8, !dbg !9070, !noalias !9001, !nonnull !514, !align !551, !noundef !514 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val.i.i.us, i64 48, !dbg !9071
  %.val.i.i.i.us = load ptr, ptr %i.cd, align 8, !dbg !9071, !noalias !9002, !nonnull !514, !noundef !514
  %i.ce = getelementptr i8, ptr %.val.i.i.us, i64 56, !dbg !9071
  %.val1.i.i.i.us = load ptr, ptr %i.ce, align 8, !dbg !9071, !noalias !9002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9072, !noalias !9003
  store i32 0, ptr %i.c, align 8, !dbg !9073, !noalias !9003
  store ptr %i.bd, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !9073, !noalias !9003
  store i64 %.sroa.3.0.i.i27.us, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !9073, !noalias !9003
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !9073, !noalias !9003
  store i64 %.sroa.3.0.i.i27.us, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !9073, !noalias !9003
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !9073, !noalias !9003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9074, !noalias !9003
  call fastcc void @_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull readonly %.val.i.i.i.us, ptr %.val1.i.i.i.us, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c) #24, !dbg !9075, !noalias !9000
  %i.cf = load i64, ptr %i.b, align 8, !dbg !9076, !range !543, !noalias !9003, !noundef !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9077, !noalias !9003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9078, !noalias !9003
  %i.cg = trunc nuw nsw i64 %i.cf to i8, !dbg !9079
  %i.ch = getelementptr inbounds nuw i8, ptr %.val25.us, i64 60, !dbg !9080
  %i.ci = load i8, ptr %i.ch, align 4, !dbg !9080, !range !550, !noundef !514
  %.not20.us = icmp eq i8 %i.ci, %i.cg, !dbg !9081
  br i1 %.not20.us, label %bb.ad, label %bb.p, !dbg !9081

bb.p:                                             ; preds = %bb.o
  store i64 %.sroa.10.0.ph.us, ptr %i.ae, align 8, !dbg !9082
  call void @llvm.experimental.noalias.scope.decl(metadata !9005), !dbg !9083
  %i.cj = load i8, ptr %i.af, align 8, !dbg !9084, !range !550, !alias.scope !9005, !noundef !514
  %i.ck = trunc nuw i8 %i.cj to i1, !dbg !9084
  br i1 %i.ck, label %bb.q, label %.thread.us, !dbg !9084

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !9006), !dbg !9085
  %i.cl = load i64, ptr %1, align 8, !dbg !9086, !range !543, !alias.scope !9006, !noalias !9007, !noundef !514
  %.not.i29.us = icmp eq i64 %i.cl, 0, !dbg !9087
  %i.cm = getelementptr inbounds nuw i8, ptr %.val25.us, i64 58, !dbg !9012 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 2, !dbg !9012, !range !610, !noalias !9008, !noundef !514 ; 2 uses
  br i1 %.not.i29.us, label %bb.r, label %bb.w, !dbg !9088

bb.r:                                             ; preds = %bb.q
  %i.co = icmp eq i8 %i.cn, 0, !dbg !9089
  br i1 %i.co, label %.thread.us, label %bb.s, !dbg !9089

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %.val25.us, i64 59, !dbg !9090
  %.sroa.01.0.i.us = load i8, ptr %i.cp, align 1, !dbg !9012, !noalias !9008, !noundef !514
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.10.0.ph.us, !dbg !9091
  %i.cr = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !9092, !noalias !9009, !nonnull !514, !noundef !514
  %i.cs = call { i64, ptr } %i.cr(i8 noundef %.sroa.01.0.i.us, ptr noundef nonnull readonly %i.bd, ptr noundef nonnull readonly %i.cq), !dbg !9093, !noalias !9010, !inline_history !317 ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0, !dbg !9094
  %i.cu = trunc nuw i64 %i.ct to i1, !dbg !9095
  br i1 %i.cu, label %bb.t, label %.thread.us, !dbg !9095

bb.t:                                             ; preds = %bb.s
  %i.cv = extractvalue { i64, ptr } %i.cs, 1, !dbg !9094
  %i.cw = ptrtoint ptr %i.cv to i64, !dbg !9096
  %i.cx = ptrtoint ptr %i.bd to i64, !dbg !9096
  %i.cy = sub i64 %i.cw, %i.cx, !dbg !9096        ; 3 uses
  %i.cz = icmp sgt i64 %i.cy, -1, !dbg !9097
  call void @llvm.assume(i1 %i.cz), !dbg !9097, !noalias !9007
  %.not.i.i31.us = icmp samesign ult i64 %i.cy, %i.br, !dbg !9098
  call void @llvm.assume(i1 %.not.i.i31.us), !dbg !9098, !noalias !9007
  %i.da = add nuw i64 %i.cy, %.sroa.0.056.us, !dbg !9099 ; 2 uses
  store i64 1, ptr %1, align 8, !dbg !9100, !alias.scope !9006, !noalias !9007
  store i64 %i.da, ptr %i.ag, align 8, !dbg !9100, !alias.scope !9006, !noalias !9007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9101, !noalias !9008
  %i.db = load ptr, ptr %i.ai, align 8, !dbg !9102, !alias.scope !9006, !noalias !9007, !nonnull !514, !align !551, !noundef !514
  %.val.i.us = load ptr, ptr %i.ah, align 8, !dbg !9103, !alias.scope !9006, !noalias !9007, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs6_NtCshhHc5tDBDRu_12grep_printer7summaryINtB5_11SummarySinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink11binary_dataCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val.i.us, ptr noundef nonnull align 8 %i.db, i64 noundef %i.da), !dbg !9104, !noalias !9011
  %i.dc = load i8, ptr %i.a, align 8, !dbg !9105, !range !550, !noalias !9008, !noundef !514
  %i.dd = trunc nuw i8 %i.dc to i1, !dbg !9105
  br i1 %i.dd, label %.split109.us, label %bb.u, !dbg !9106

bb.u:                                             ; preds = %bb.t
  %i.de = load i8, ptr %i.aj, align 1, !dbg !9107, !range !550, !noalias !9008, !noundef !514
  %i.df = trunc nuw i8 %i.de to i1, !dbg !9107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9108, !noalias !9008
  br i1 %i.df, label %bb.v, label %.thread70, !dbg !9101

bb.v:                                             ; preds = %bb.u
  %i.dg = load i8, ptr %i.cm, align 2, !dbg !9109, !range !610, !noalias !9011, !noundef !514
  br label %bb.w, !dbg !9110

bb.w:                                             ; preds = %bb.v, %bb.q
  %.sroa.548.0.ph.in.in.us = phi i8 [ %i.dg, %bb.v ], [ %i.cn, %bb.q ]
  %.sroa.548.0.ph.in.us = icmp eq i8 %.sroa.548.0.ph.in.in.us, 1, !dbg !9111
  br i1 %.sroa.548.0.ph.in.us, label %.thread70, label %.thread.us, !dbg !9112

.thread.us:                                       ; preds = %bb.w, %bb.s, %bb.r, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !9013), !dbg !9113
  %i.dh = load i64, ptr %i.ak, align 8, !dbg !9114, !range !543, !alias.scope !9013, !noalias !9007, !noundef !514 ; 2 uses
  %i.di = trunc nuw i64 %i.dh to i1, !dbg !9115
  %i.dj = load i64, ptr %i.am, align 8, !alias.scope !9013, !noalias !9007 ; 3 uses
  %i.dk = icmp ult i64 %i.dj, %.sroa.0.056.us
  %or.cond.not.i.us = select i1 %i.di, i1 %i.dk, i1 false, !dbg !9115
  br i1 %or.cond.not.i.us, label %bb.x, label %.thread.us._crit_edge, !dbg !9115

.thread.us._crit_edge:                            ; preds = %.thread.us
  %.pre = load i64, ptr %i.al, align 8, !dbg !9116, !alias.scope !9005
  br label %bb.aa, !dbg !9115

bb.x:                                             ; preds = %.thread.us
  %i.dl = sub nuw nsw i64 %.sroa.0.056.us, %i.dj, !dbg !9117
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %i.dj, !dbg !9118
  %i.dn = load i8, ptr %i.bs, align 8, !dbg !9119, !range !550, !noalias !9014, !noundef !514
  %i.do = trunc nuw i8 %i.dn to i1, !dbg !9119
  br i1 %i.do, label %bb.z, label %bb.y, !dbg !9120

bb.y:                                             ; preds = %bb.x
  %i.dp = load i8, ptr %i.bv, align 1, !dbg !9121, !noalias !9014, !noundef !514
  br label %bb.z, !dbg !9122

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.us = phi i8 [ %i.dp, %bb.y ], [ 10, %bb.x ], !dbg !9123
  %i.dq = call noundef i64 @_RNvNtCshqpdr3wwzuw_13grep_searcher5lines5count(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.dl, i8 noundef %.sroa.0.0.i.us), !dbg !9124, !noalias !9015
  %i.dr = load i64, ptr %i.al, align 8, !dbg !9125, !alias.scope !9013, !noalias !9007, !noundef !514
  %i.ds = add i64 %i.dr, %i.dq, !dbg !9125        ; 2 uses
  store i64 %i.ds, ptr %i.al, align 8, !dbg !9125, !alias.scope !9013, !noalias !9007
  store i64 %.sroa.0.056.us, ptr %i.am, align 8, !dbg !9126, !alias.scope !9013, !noalias !9007
  br label %bb.aa, !dbg !9127

bb.aa:                                            ; preds = %.thread.us._crit_edge, %bb.z
  %i.dt = phi i64 [ %.pre, %.thread.us._crit_edge ], [ %i.ds, %bb.z ], !dbg !9116
  %i.du = load i64, ptr %i.an, align 8, !dbg !9128, !alias.scope !9005, !noundef !514
  %i.dv = add i64 %i.du, %.sroa.0.056.us, !dbg !9128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9129, !noalias !9016
  %i.dw = load ptr, ptr %i.ai, align 8, !dbg !9130, !alias.scope !9005, !nonnull !514, !align !551, !noundef !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9131, !noalias !9016
  %i.dx = load i8, ptr %i.bs, align 8, !dbg !9132, !range !550, !noalias !9007, !noundef !514
  %i.dy = load i8, ptr %i.bv, align 1, !dbg !9132, !noalias !9007
  store i8 %i.dx, ptr %i.ao, align 8, !dbg !9131, !noalias !9016
  store i8 %i.dy, ptr %i.ap, align 1, !dbg !9131, !noalias !9016
  store ptr %i.bd, ptr %i.aq, align 8, !dbg !9131, !noalias !9016
  store i64 %i.br, ptr %i.ar, align 8, !dbg !9131, !noalias !9016
  store i64 %i.dv, ptr %i.as, align 8, !dbg !9131, !noalias !9016
  store i64 %i.dh, ptr %i.e, align 8, !dbg !9131, !noalias !9016
  store i64 %i.dt, ptr %i.at, align 8, !dbg !9131, !noalias !9016
  store ptr %2, ptr %i.au, align 8, !dbg !9131, !noalias !9016
  store i64 %3, ptr %i.av, align 8, !dbg !9131, !noalias !9016
  store i64 %.sroa.0.056.us, ptr %i.aw, align 8, !dbg !9131, !noalias !9016
  store i64 %.sroa.10.0.ph.us, ptr %i.ax, align 8, !dbg !9131, !noalias !9016
  %.val24.us = load ptr, ptr %i.ah, align 8, !dbg !9133, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs6_NtCshhHc5tDBDRu_12grep_printer7summaryINtB5_11SummarySinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matchedCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val24.us, ptr noundef nonnull align 8 %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e), !dbg !9134
  %i.dz = load i8, ptr %i.f, align 8, !dbg !9135, !range !550, !noalias !9016, !noundef !514
  %i.ea = trunc nuw i8 %i.dz to i1, !dbg !9135
  br i1 %i.ea, label %.split111.us, label %bb.ab, !dbg !9136

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load i8, ptr %i.ay, align 1, !dbg !9137, !range !550, !noalias !9016, !noundef !514
  %i.ec = trunc nuw i8 %i.eb to i1, !dbg !9137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9138, !noalias !9016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9139, !noalias !9016
  br i1 %i.ec, label %bb.ac, label %.thread70, !dbg !9140

bb.ac:                                            ; preds = %bb.ab
  store i64 %.sroa.10.0.ph.us, ptr %i.u, align 8, !dbg !9141, !alias.scope !9005
  store i8 1, ptr %i.az, align 1, !dbg !9142, !alias.scope !9005
  %i.ed = add i64 %i.bb, -1, !dbg !9143           ; 2 uses
  store i64 %i.ed, ptr %i.h, align 8, !dbg !9143
  br label %bb.af, !dbg !9144

bb.ad:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9017
  call fastcc void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE18sink_after_contextCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 %.sroa.0.056.us, i64 %.sroa.10.0.ph.us), !dbg !9145
  %i.ee = load i8, ptr %i.g, align 8, !dbg !9146, !range !550, !noundef !514
  %i.ef = trunc nuw i8 %i.ee to i1, !dbg !9146
  br i1 %i.ef, label %.split113.us, label %bb.ae, !dbg !9147

bb.ae:                                            ; preds = %bb.ad
  %i.eg = load i8, ptr %i.ba, align 1, !dbg !9148, !range !550, !noundef !514
  %i.eh = trunc nuw i8 %i.eg to i1, !dbg !9148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9149
  br i1 %i.eh, label %thread-pre-split.us, label %.split115.us, !dbg !9017

thread-pre-split.us:                              ; preds = %bb.ae
  %.pr.us = load i64, ptr %i.h, align 8, !dbg !9150
  br label %bb.af, !dbg !9150

bb.af:                                            ; preds = %thread-pre-split.us, %bb.ac
  %i.ei = phi i64 [ %.pr.us, %thread-pre-split.us ], [ %i.ed, %bb.ac ], !dbg !9150 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0, !dbg !9150
  br i1 %i.ej, label %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, label %.split.split.split.us, !dbg !9150

.split.split.split:                               ; preds = %.split.split, %thread-pre-split
  %.sroa.0.056 = phi i64 [ %.sroa.10.0.ph, %thread-pre-split ], [ %i.v, %.split.split ], !dbg !9042 ; 9 uses
  %i.ek = icmp ugt i64 %.sroa.0.056, %4, !dbg !9043
  br i1 %i.ek, label %.split99.us, label %bb.ah, !dbg !9043, !prof !549

bb.ag:                                            ; preds = %.split
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %4, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #25, !dbg !9151, !noalias !9018
  unreachable, !dbg !9151

bb.ah:                                            ; preds = %.split.split.split
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.056, !dbg !9044 ; 2 uses
  %i.em = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !9045, !noalias !8989, !nonnull !514, !noundef !514
  %i.en = tail call { i64, ptr } %i.em(i8 noundef %.sroa.0.0, ptr noundef nonnull readonly %i.el, ptr noundef nonnull readonly %i.ab), !dbg !9046, !noalias !8989, !inline_history !85 ; 2 uses
  %i.eo = extractvalue { i64, ptr } %i.en, 0, !dbg !9047
  %i.ep = trunc nuw i64 %i.eo to i1, !dbg !9048
  br i1 %i.ep, label %bb.ai, label %bb.aj, !dbg !9048

.split99.us:                                      ; preds = %.split.split.split, %.split.split.split.us
end_hunk_2
begin_hunk_3_@_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE18sink_other_contextCs2NzvFoTxuAy_2rg:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11595
  store ptr %i.be, ptr %i.bf, align 8, !dbg !11595
  br label %bb.s, !dbg !11596

bb.p:                                             ; preds = %bb.g, %bb.n
  %.sroa.5.0.ph.in.in = phi i8 [ %i.bc, %bb.n ], [ %i.ad, %bb.g ]
  %.sroa.5.0.ph.in = icmp eq i8 %.sroa.5.0.ph.in.in, 1, !dbg !11597
  br i1 %.sroa.5.0.ph.in, label %.thread13, label %.thread, !dbg !11598

.thread13:                                        ; preds = %bb.m, %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !11599
  store i8 0, ptr %i.bg, align 1, !dbg !11599
  br label %bb.s, !dbg !11600

bb.q:                                             ; preds = %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE11count_linesCs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.0.val, i64 noundef %.8.val, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25, !dbg !11601
  unreachable, !dbg !11601

bb.r:                                             ; preds = %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE11count_linesCs2NzvFoTxuAy_2rg.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !11602
  store i64 %.8.val, ptr %i.bh, align 8, !dbg !11602
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 113, !dbg !11603
  store i8 1, ptr %i.bi, align 1, !dbg !11603
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !11604
  store i8 1, ptr %i.bj, align 1, !dbg !11604
  br label %bb.s, !dbg !11605

bb.s:                                             ; preds = %bb.o, %.thread13, %bb.r
  %.sink = phi i8 [ 1, %bb.o ], [ 0, %.thread13 ], [ 0, %bb.r ]
  store i8 %.sink, ptr %0, align 8, !dbg !11606
  ret void, !dbg !11605
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE21after_context_by_lineCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11607 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [2 x i8], align 1                 ; 3 uses
  %i.e = alloca [80 x i8], align 8                ; 15 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !11779 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !11779, !noundef !514 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !11779
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !11779

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !11780
  store i8 1, ptr %i.k, align 1, !dbg !11780
  br label %bb.d, !dbg !11781

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !11782 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !dbg !11782, !nonnull !514, !align !551, !noundef !514 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !11782
  %i.o = load i64, ptr %i.n, align 8, !dbg !11782, !range !543, !noundef !514
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !11782
  %i.q = load i64, ptr %i.p, align 8, !dbg !11782
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !11783
  %.val = load i64, ptr %i.r, align 8, !dbg !11783
  %i.s = trunc nuw i64 %i.o to i1, !dbg !11784
  %i.t = icmp uge i64 %.val, %i.q
  %spec.select.i = select i1 %i.s, i1 %i.t, i1 false, !dbg !11784
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !11785 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !11785, !noundef !514 ; 3 uses
  %.not = icmp ugt i64 %i.v, %4, !dbg !11786
  br i1 %.not, label %bb.e, label %bb.f, !dbg !11786, !prof !549

bb.d:                                             ; preds = %.split113.us, %.split115.us, %.thread70, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE12sink_matchedCs2NzvFoTxuAy_2rg.exit, %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, %bb.b
  %.sink = phi i8 [ 1, %.split113.us ], [ 0, %.split115.us ], [ 0, %.thread70 ], [ 1, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE12sink_matchedCs2NzvFoTxuAy_2rg.exit ], [ 0, %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit ], [ 0, %bb.b ]
  store i8 %.sink, ptr %0, align 8, !dbg !11787
  ret void, !dbg !11788

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25, !dbg !11789
  unreachable, !dbg !11789

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !11790
  %i.x = load i8, ptr %i.w, align 8, !dbg !11790, !range !550, !noundef !514
  %i.y = trunc nuw i8 %i.x to i1, !dbg !11790
  br i1 %i.y, label %.split, label %bb.g, !dbg !11791

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 57, !dbg !11790
  %i.aa = load i8, ptr %i.z, align 1, !dbg !11792, !noundef !514
  br label %.split, !dbg !11793

.split:                                           ; preds = %bb.g, %bb.f
  %.sroa.0.0 = phi i8 [ %i.aa, %bb.g ], [ 10, %bb.f ], !dbg !11794 ; 2 uses
  %.not.i21 = icmp ugt i64 %4, %3
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %.sroa.41.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 73
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  br i1 %.not.i21, label %bb.ag, label %.split.split, !dbg !11795, !prof !549

.split.split:                                     ; preds = %.split
  %spec.select.i.fr = freeze i1 %spec.select.i
  br i1 %spec.select.i.fr, label %.split.split.split.us, label %.split.split.split

.split.split.split.us:                            ; preds = %.split.split, %bb.af
  %i.bb = phi i64 [ %i.ei, %bb.af ], [ %i.i, %.split.split ]
  %.sroa.0.056.us = phi i64 [ %.sroa.10.0.ph.us, %bb.af ], [ %i.v, %.split.split ], !dbg !11796 ; 17 uses
  %i.bc = icmp ugt i64 %.sroa.0.056.us, %4, !dbg !11797
  br i1 %i.bc, label %.split99.us, label %bb.h, !dbg !11797, !prof !549

bb.h:                                             ; preds = %.split.split.split.us
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.056.us, !dbg !11798 ; 7 uses
  %i.be = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !11799, !noalias !11743, !nonnull !514, !noundef !514
  %i.bf = call { i64, ptr } %i.be(i8 noundef %.sroa.0.0, ptr noundef nonnull readonly %i.bd, ptr noundef nonnull readonly %i.ab), !dbg !11800, !noalias !11743, !inline_history !85 ; 2 uses
  %i.bg = extractvalue { i64, ptr } %i.bf, 0, !dbg !11801
  %i.bh = trunc nuw i64 %i.bg to i1, !dbg !11802
  br i1 %i.bh, label %bb.j, label %bb.i, !dbg !11802

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp ult i64 %.sroa.0.056.us, %4, !dbg !11803
  br i1 %i.bi, label %bb.k, label %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, !dbg !11803

bb.j:                                             ; preds = %bb.h
  %i.bj = sub nuw nsw i64 %4, %.sroa.0.056.us, !dbg !11804
  %i.bk = extractvalue { i64, ptr } %i.bf, 1, !dbg !11801
  %i.bl = ptrtoint ptr %i.bk to i64, !dbg !11805
  %i.bm = ptrtoint ptr %i.bd to i64, !dbg !11805
  %i.bn = sub i64 %i.bl, %i.bm, !dbg !11805       ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, -1, !dbg !11806
  call void @llvm.assume(i1 %i.bo), !dbg !11806, !noalias !11744
  %.not.i.i.us = icmp ult i64 %i.bn, %i.bj, !dbg !11807
  call void @llvm.assume(i1 %.not.i.i.us), !dbg !11807
  %i.bp = add nuw i64 %.sroa.0.056.us, 1, !dbg !11808
  %i.bq = add nuw i64 %i.bp, %i.bn, !dbg !11808   ; 2 uses
  %.not17.i.us = icmp ugt i64 %.sroa.0.056.us, %i.bq, !dbg !11809
  br i1 %.not17.i.us, label %.split101.us, label %bb.k, !dbg !11809, !prof !549

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.ph.us = phi i64 [ %i.bq, %bb.j ], [ %4, %bb.i ] ; 10 uses
  %.not18.us = icmp ugt i64 %.sroa.0.056.us, %.sroa.10.0.ph.us, !dbg !11810
  br i1 %.not18.us, label %.split103.us, label %bb.l, !dbg !11810, !prof !549

bb.l:                                             ; preds = %bb.k
  %.not19.us = icmp ugt i64 %.sroa.10.0.ph.us, %3
  br i1 %.not19.us, label %.split105.us, label %bb.m, !dbg !11811, !prof !614

bb.m:                                             ; preds = %bb.l
  %i.br = sub nuw nsw i64 %.sroa.10.0.ph.us, %.sroa.0.056.us, !dbg !11812 ; 6 uses
  %.val25.us = load ptr, ptr %i.l, align 8, !dbg !11813, !nonnull !514, !align !551, !noundef !514 ; 5 uses
  %.val26.us = load ptr, ptr %i.ac, align 8, !dbg !11813 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val25.us, i64 56, !dbg !11814 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 8, !dbg !11814, !range !550, !noalias !11752, !noundef !514
  %i.bu = trunc nuw i8 %i.bt to i1, !dbg !11814   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val25.us, i64 57, !dbg !11814 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !11814, !noalias !11752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11752
  store i8 %i.bw, ptr %i.ad, align 1, !noalias !11753
  %..i.i.us = select i1 %i.bu, i64 2, i64 1, !dbg !11815 ; 4 uses
  %i.bx = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.br, i64 %..i.i.us), !dbg !11816 ; 2 uses
  %i.by = sub nuw nsw i64 %i.br, %i.bx, !dbg !11817
  %i.bz = icmp eq i64 %i.by, %..i.i.us, !dbg !11818
  br i1 %i.bz, label %bb.n, label %bb.o, !dbg !11818

bb.n:                                             ; preds = %bb.m
  %.10.i.i.us = select i1 %i.bu, ptr @35, ptr %i.ad, !dbg !11815
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bx, !dbg !11819
  %bcmp.i.i.us = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(1) %.10.i.i.us, i64 %..i.i.us), !dbg !11820, !noalias !11754
  %i.cb = icmp eq i32 %bcmp.i.i.us, 0, !dbg !11820
  %i.cc = select i1 %i.cb, i64 %..i.i.us, i64 0, !dbg !11821
  %spec.select.i28.us = sub nuw nsw i64 %i.br, %i.cc, !dbg !11821
  br label %bb.o, !dbg !11821

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.3.0.i.i27.us = phi i64 [ %spec.select.i28.us, %bb.n ], [ %i.br, %bb.m ], !dbg !11822 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.us) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11823, !noalias !11752
  %.val.i.i.us = load ptr, ptr %.val26.us, align 8, !dbg !11824, !noalias !11755, !nonnull !514, !align !551, !noundef !514 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val.i.i.us, i64 48, !dbg !11825
  %.val.i.i.i.us = load ptr, ptr %i.cd, align 8, !dbg !11825, !noalias !11756, !nonnull !514, !noundef !514
  %i.ce = getelementptr i8, ptr %.val.i.i.us, i64 56, !dbg !11825
  %.val1.i.i.i.us = load ptr, ptr %i.ce, align 8, !dbg !11825, !noalias !11756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11826, !noalias !11757
  store i32 0, ptr %i.c, align 8, !dbg !11827, !noalias !11757
  store ptr %i.bd, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !11827, !noalias !11757
  store i64 %.sroa.3.0.i.i27.us, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !11827, !noalias !11757
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !11827, !noalias !11757
  store i64 %.sroa.3.0.i.i27.us, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !11827, !noalias !11757
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !11827, !noalias !11757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11828, !noalias !11757
  call fastcc void @_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull readonly %.val.i.i.i.us, ptr %.val1.i.i.i.us, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c) #24, !dbg !11829, !noalias !11754
  %i.cf = load i64, ptr %i.b, align 8, !dbg !11830, !range !543, !noalias !11757, !noundef !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11831, !noalias !11757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11832, !noalias !11757
  %i.cg = trunc nuw nsw i64 %i.cf to i8, !dbg !11833
  %i.ch = getelementptr inbounds nuw i8, ptr %.val25.us, i64 60, !dbg !11834
  %i.ci = load i8, ptr %i.ch, align 4, !dbg !11834, !range !550, !noundef !514
  %.not20.us = icmp eq i8 %i.ci, %i.cg, !dbg !11835
  br i1 %.not20.us, label %bb.ad, label %bb.p, !dbg !11835

bb.p:                                             ; preds = %bb.o
  store i64 %.sroa.10.0.ph.us, ptr %i.ae, align 8, !dbg !11836
  call void @llvm.experimental.noalias.scope.decl(metadata !11759), !dbg !11837
  %i.cj = load i8, ptr %i.af, align 8, !dbg !11838, !range !550, !alias.scope !11759, !noundef !514
  %i.ck = trunc nuw i8 %i.cj to i1, !dbg !11838
  br i1 %i.ck, label %bb.q, label %.thread.us, !dbg !11838

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !11760), !dbg !11839
  %i.cl = load i64, ptr %1, align 8, !dbg !11840, !range !543, !alias.scope !11760, !noalias !11761, !noundef !514
  %.not.i29.us = icmp eq i64 %i.cl, 0, !dbg !11841
  %i.cm = getelementptr inbounds nuw i8, ptr %.val25.us, i64 58, !dbg !11766 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 2, !dbg !11766, !range !610, !noalias !11762, !noundef !514 ; 2 uses
  br i1 %.not.i29.us, label %bb.r, label %bb.w, !dbg !11842

bb.r:                                             ; preds = %bb.q
  %i.co = icmp eq i8 %i.cn, 0, !dbg !11843
  br i1 %i.co, label %.thread.us, label %bb.s, !dbg !11843

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %.val25.us, i64 59, !dbg !11844
  %.sroa.01.0.i.us = load i8, ptr %i.cp, align 1, !dbg !11766, !noalias !11762, !noundef !514
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.10.0.ph.us, !dbg !11845
  %i.cr = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !11846, !noalias !11763, !nonnull !514, !noundef !514
  %i.cs = call { i64, ptr } %i.cr(i8 noundef %.sroa.01.0.i.us, ptr noundef nonnull readonly %i.bd, ptr noundef nonnull readonly %i.cq), !dbg !11847, !noalias !11764, !inline_history !370 ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0, !dbg !11848
  %i.cu = trunc nuw i64 %i.ct to i1, !dbg !11849
  br i1 %i.cu, label %bb.t, label %.thread.us, !dbg !11849

bb.t:                                             ; preds = %bb.s
  %i.cv = extractvalue { i64, ptr } %i.cs, 1, !dbg !11848
  %i.cw = ptrtoint ptr %i.cv to i64, !dbg !11850
  %i.cx = ptrtoint ptr %i.bd to i64, !dbg !11850
  %i.cy = sub i64 %i.cw, %i.cx, !dbg !11850       ; 3 uses
  %i.cz = icmp sgt i64 %i.cy, -1, !dbg !11851
  call void @llvm.assume(i1 %i.cz), !dbg !11851, !noalias !11761
  %.not.i.i31.us = icmp samesign ult i64 %i.cy, %i.br, !dbg !11852
  call void @llvm.assume(i1 %.not.i.i31.us), !dbg !11852, !noalias !11761
  %i.da = add nuw i64 %i.cy, %.sroa.0.056.us, !dbg !11853 ; 2 uses
  store i64 1, ptr %1, align 8, !dbg !11854, !alias.scope !11760, !noalias !11761
  store i64 %i.da, ptr %i.ag, align 8, !dbg !11854, !alias.scope !11760, !noalias !11761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11855, !noalias !11762
  %i.db = load ptr, ptr %i.ai, align 8, !dbg !11856, !alias.scope !11760, !noalias !11761, !nonnull !514, !align !551, !noundef !514
  %.val.i.us = load ptr, ptr %i.ah, align 8, !dbg !11857, !alias.scope !11760, !noalias !11761, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs6_NtCshhHc5tDBDRu_12grep_printer7summaryINtB5_11SummarySinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink11binary_dataCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val.i.us, ptr noundef nonnull align 8 %i.db, i64 noundef %i.da), !dbg !11858, !noalias !11765
  %i.dc = load i8, ptr %i.a, align 8, !dbg !11859, !range !550, !noalias !11762, !noundef !514
  %i.dd = trunc nuw i8 %i.dc to i1, !dbg !11859
  br i1 %i.dd, label %.split109.us, label %bb.u, !dbg !11860

bb.u:                                             ; preds = %bb.t
  %i.de = load i8, ptr %i.aj, align 1, !dbg !11861, !range !550, !noalias !11762, !noundef !514
  %i.df = trunc nuw i8 %i.de to i1, !dbg !11861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11862, !noalias !11762
  br i1 %i.df, label %bb.v, label %.thread70, !dbg !11855

bb.v:                                             ; preds = %bb.u
  %i.dg = load i8, ptr %i.cm, align 2, !dbg !11863, !range !610, !noalias !11765, !noundef !514
  br label %bb.w, !dbg !11864

bb.w:                                             ; preds = %bb.v, %bb.q
  %.sroa.548.0.ph.in.in.us = phi i8 [ %i.dg, %bb.v ], [ %i.cn, %bb.q ]
  %.sroa.548.0.ph.in.us = icmp eq i8 %.sroa.548.0.ph.in.in.us, 1, !dbg !11865
  br i1 %.sroa.548.0.ph.in.us, label %.thread70, label %.thread.us, !dbg !11866

.thread.us:                                       ; preds = %bb.w, %bb.s, %bb.r, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !11767), !dbg !11867
  %i.dh = load i64, ptr %i.ak, align 8, !dbg !11868, !range !543, !alias.scope !11767, !noalias !11761, !noundef !514 ; 2 uses
  %i.di = trunc nuw i64 %i.dh to i1, !dbg !11869
  %i.dj = load i64, ptr %i.am, align 8, !alias.scope !11767, !noalias !11761 ; 3 uses
  %i.dk = icmp ult i64 %i.dj, %.sroa.0.056.us
  %or.cond.not.i.us = select i1 %i.di, i1 %i.dk, i1 false, !dbg !11869
  br i1 %or.cond.not.i.us, label %bb.x, label %.thread.us._crit_edge, !dbg !11869

.thread.us._crit_edge:                            ; preds = %.thread.us
  %.pre = load i64, ptr %i.al, align 8, !dbg !11870, !alias.scope !11759
  br label %bb.aa, !dbg !11869

bb.x:                                             ; preds = %.thread.us
  %i.dl = sub nuw nsw i64 %.sroa.0.056.us, %i.dj, !dbg !11871
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %i.dj, !dbg !11872
  %i.dn = load i8, ptr %i.bs, align 8, !dbg !11873, !range !550, !noalias !11768, !noundef !514
  %i.do = trunc nuw i8 %i.dn to i1, !dbg !11873
  br i1 %i.do, label %bb.z, label %bb.y, !dbg !11874

bb.y:                                             ; preds = %bb.x
  %i.dp = load i8, ptr %i.bv, align 1, !dbg !11875, !noalias !11768, !noundef !514
  br label %bb.z, !dbg !11876

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.us = phi i8 [ %i.dp, %bb.y ], [ 10, %bb.x ], !dbg !11877
  %i.dq = call noundef i64 @_RNvNtCshqpdr3wwzuw_13grep_searcher5lines5count(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.dl, i8 noundef %.sroa.0.0.i.us), !dbg !11878, !noalias !11769
  %i.dr = load i64, ptr %i.al, align 8, !dbg !11879, !alias.scope !11767, !noalias !11761, !noundef !514
  %i.ds = add i64 %i.dr, %i.dq, !dbg !11879       ; 2 uses
  store i64 %i.ds, ptr %i.al, align 8, !dbg !11879, !alias.scope !11767, !noalias !11761
  store i64 %.sroa.0.056.us, ptr %i.am, align 8, !dbg !11880, !alias.scope !11767, !noalias !11761
  br label %bb.aa, !dbg !11881

bb.aa:                                            ; preds = %.thread.us._crit_edge, %bb.z
  %i.dt = phi i64 [ %.pre, %.thread.us._crit_edge ], [ %i.ds, %bb.z ], !dbg !11870
  %i.du = load i64, ptr %i.an, align 8, !dbg !11882, !alias.scope !11759, !noundef !514
  %i.dv = add i64 %i.du, %.sroa.0.056.us, !dbg !11882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11883, !noalias !11770
  %i.dw = load ptr, ptr %i.ai, align 8, !dbg !11884, !alias.scope !11759, !nonnull !514, !align !551, !noundef !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11885, !noalias !11770
  %i.dx = load i8, ptr %i.bs, align 8, !dbg !11886, !range !550, !noalias !11761, !noundef !514
  %i.dy = load i8, ptr %i.bv, align 1, !dbg !11886, !noalias !11761
  store i8 %i.dx, ptr %i.ao, align 8, !dbg !11885, !noalias !11770
  store i8 %i.dy, ptr %i.ap, align 1, !dbg !11885, !noalias !11770
  store ptr %i.bd, ptr %i.aq, align 8, !dbg !11885, !noalias !11770
  store i64 %i.br, ptr %i.ar, align 8, !dbg !11885, !noalias !11770
  store i64 %i.dv, ptr %i.as, align 8, !dbg !11885, !noalias !11770
  store i64 %i.dh, ptr %i.e, align 8, !dbg !11885, !noalias !11770
  store i64 %i.dt, ptr %i.at, align 8, !dbg !11885, !noalias !11770
  store ptr %2, ptr %i.au, align 8, !dbg !11885, !noalias !11770
  store i64 %3, ptr %i.av, align 8, !dbg !11885, !noalias !11770
  store i64 %.sroa.0.056.us, ptr %i.aw, align 8, !dbg !11885, !noalias !11770
  store i64 %.sroa.10.0.ph.us, ptr %i.ax, align 8, !dbg !11885, !noalias !11770
  %.val24.us = load ptr, ptr %i.ah, align 8, !dbg !11887, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs6_NtCshhHc5tDBDRu_12grep_printer7summaryINtB5_11SummarySinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matchedCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val24.us, ptr noundef nonnull align 8 %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e), !dbg !11888
  %i.dz = load i8, ptr %i.f, align 8, !dbg !11889, !range !550, !noalias !11770, !noundef !514
  %i.ea = trunc nuw i8 %i.dz to i1, !dbg !11889
  br i1 %i.ea, label %.split111.us, label %bb.ab, !dbg !11890

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load i8, ptr %i.ay, align 1, !dbg !11891, !range !550, !noalias !11770, !noundef !514
  %i.ec = trunc nuw i8 %i.eb to i1, !dbg !11891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11892, !noalias !11770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11893, !noalias !11770
  br i1 %i.ec, label %bb.ac, label %.thread70, !dbg !11894

bb.ac:                                            ; preds = %bb.ab
  store i64 %.sroa.10.0.ph.us, ptr %i.u, align 8, !dbg !11895, !alias.scope !11759
  store i8 1, ptr %i.az, align 1, !dbg !11896, !alias.scope !11759
  %i.ed = add i64 %i.bb, -1, !dbg !11897          ; 2 uses
  store i64 %i.ed, ptr %i.h, align 8, !dbg !11897
  br label %bb.af, !dbg !11898

bb.ad:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11771
  call fastcc void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE18sink_after_contextCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 %.sroa.0.056.us, i64 %.sroa.10.0.ph.us), !dbg !11899
  %i.ee = load i8, ptr %i.g, align 8, !dbg !11900, !range !550, !noundef !514
  %i.ef = trunc nuw i8 %i.ee to i1, !dbg !11900
  br i1 %i.ef, label %.split113.us, label %bb.ae, !dbg !11901

bb.ae:                                            ; preds = %bb.ad
  %i.eg = load i8, ptr %i.ba, align 1, !dbg !11902, !range !550, !noundef !514
  %i.eh = trunc nuw i8 %i.eg to i1, !dbg !11902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11903
  br i1 %i.eh, label %thread-pre-split.us, label %.split115.us, !dbg !11771

thread-pre-split.us:                              ; preds = %bb.ae
  %.pr.us = load i64, ptr %i.h, align 8, !dbg !11904
  br label %bb.af, !dbg !11904

bb.af:                                            ; preds = %thread-pre-split.us, %bb.ac
  %i.ei = phi i64 [ %.pr.us, %thread-pre-split.us ], [ %i.ed, %bb.ac ], !dbg !11904 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0, !dbg !11904
  br i1 %i.ej, label %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, label %.split.split.split.us, !dbg !11904

.split.split.split:                               ; preds = %.split.split, %thread-pre-split
  %.sroa.0.056 = phi i64 [ %.sroa.10.0.ph, %thread-pre-split ], [ %i.v, %.split.split ], !dbg !11796 ; 9 uses
  %i.ek = icmp ugt i64 %.sroa.0.056, %4, !dbg !11797
  br i1 %i.ek, label %.split99.us, label %bb.ah, !dbg !11797, !prof !549

bb.ag:                                            ; preds = %.split
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %4, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #25, !dbg !11905, !noalias !11772
  unreachable, !dbg !11905

bb.ah:                                            ; preds = %.split.split.split
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.056, !dbg !11798 ; 2 uses
  %i.em = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !11799, !noalias !11743, !nonnull !514, !noundef !514
  %i.en = tail call { i64, ptr } %i.em(i8 noundef %.sroa.0.0, ptr noundef nonnull readonly %i.el, ptr noundef nonnull readonly %i.ab), !dbg !11800, !noalias !11743, !inline_history !85 ; 2 uses
  %i.eo = extractvalue { i64, ptr } %i.en, 0, !dbg !11801
  %i.ep = trunc nuw i64 %i.eo to i1, !dbg !11802
  br i1 %i.ep, label %bb.ai, label %bb.aj, !dbg !11802

.split99.us:                                      ; preds = %.split.split.split, %.split.split.split.us
end_hunk_3
begin_hunk_4_@_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE18sink_other_contextCs2NzvFoTxuAy_2rg:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14513
  br label %bb.w, !dbg !14514

bb.t:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !14515
  %i.cd = load i8, ptr %i.cc, align 1, !dbg !14515, !range !550, !noundef !514
  %i.ce = trunc nuw i8 %i.cd to i1, !dbg !14515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14513
  br i1 %i.ce, label %bb.v, label %bb.u, !dbg !14516

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14517
  store i8 0, ptr %i.cf, align 1, !dbg !14517
  store i8 0, ptr %0, align 8, !dbg !14517
  br label %bb.w, !dbg !14518

bb.v:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !14519
  store i64 %.8.val, ptr %i.cg, align 8, !dbg !14519
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 113, !dbg !14520
  store i8 1, ptr %i.ch, align 1, !dbg !14520
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14521
  store i8 1, ptr %i.ci, align 1, !dbg !14521
  store i8 0, ptr %0, align 8, !dbg !14521
  br label %bb.w, !dbg !14522

bb.w:                                             ; preds = %bb.o, %.thread7, %bb.s, %bb.u, %bb.v
  ret void, !dbg !14522
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE21after_context_by_lineCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14523 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [2 x i8], align 1                 ; 3 uses
  %i.e = alloca [80 x i8], align 8                ; 15 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !14705 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !14705, !noundef !514 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !14705
  br i1 %i.k, label %bb.b, label %bb.c, !dbg !14705

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14706
  store i8 1, ptr %i.l, align 1, !dbg !14706
  br label %bb.d, !dbg !14707

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !14708 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !dbg !14708, !nonnull !514, !align !551, !noundef !514 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !14708
  %i.p = load i64, ptr %i.o, align 8, !dbg !14708, !range !543, !noundef !514
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !14708
  %i.r = load i64, ptr %i.q, align 8, !dbg !14708
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !14709
  %.val = load i64, ptr %i.s, align 8, !dbg !14709
  %i.t = trunc nuw i64 %i.p to i1, !dbg !14710
  %i.u = icmp uge i64 %.val, %i.r
  %spec.select.i = select i1 %i.t, i1 %i.u, i1 false, !dbg !14710
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !14711 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !14711, !noundef !514 ; 3 uses
  %.not = icmp ugt i64 %i.w, %4, !dbg !14712
  br i1 %.not, label %bb.e, label %bb.f, !dbg !14712, !prof !549

bb.d:                                             ; preds = %.split116.us, %.split118.us, %.thread69, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE12sink_matchedCs2NzvFoTxuAy_2rg.exit, %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, %bb.b
  %.sink = phi i8 [ 1, %.split116.us ], [ 0, %.split118.us ], [ 0, %.thread69 ], [ 1, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE12sink_matchedCs2NzvFoTxuAy_2rg.exit ], [ 0, %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit ], [ 0, %bb.b ]
  store i8 %.sink, ptr %0, align 8, !dbg !14713
  ret void, !dbg !14714

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25, !dbg !14715
  unreachable, !dbg !14715

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 56, !dbg !14716
  %i.y = load i8, ptr %i.x, align 8, !dbg !14716, !range !550, !noundef !514
  %i.z = trunc nuw i8 %i.y to i1, !dbg !14716
  br i1 %i.z, label %.split, label %bb.g, !dbg !14717

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 57, !dbg !14716
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !14718, !noundef !514
  br label %.split, !dbg !14719

.split:                                           ; preds = %bb.g, %bb.f
  %.sroa.0.0 = phi i8 [ %i.ab, %bb.g ], [ 10, %bb.f ], !dbg !14720 ; 2 uses
  %.not.i21 = icmp ugt i64 %4, %3
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %.sroa.41.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.old.i = getelementptr inbounds nuw i8, ptr %1, i64 113 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 73
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  br i1 %.not.i21, label %bb.ak, label %.split.split, !dbg !14721, !prof !549

.split.split:                                     ; preds = %.split
  %spec.select.i.fr = freeze i1 %spec.select.i
  br i1 %spec.select.i.fr, label %.split.split.split.us, label %.split.split.split

.split.split.split.us:                            ; preds = %.split.split, %bb.aj
  %i.bc = phi i64 [ %i.ew, %bb.aj ], [ %i.j, %.split.split ]
  %.sroa.0.055.us = phi i64 [ %.sroa.10.0.ph.us, %bb.aj ], [ %i.w, %.split.split ], !dbg !14722 ; 18 uses
  %i.bd = icmp ugt i64 %.sroa.0.055.us, %4, !dbg !14723
  br i1 %i.bd, label %.split100.us, label %bb.h, !dbg !14723, !prof !549

bb.h:                                             ; preds = %.split.split.split.us
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.055.us, !dbg !14724 ; 7 uses
  %i.bf = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !14725, !noalias !14665, !nonnull !514, !noundef !514
  %i.bg = call { i64, ptr } %i.bf(i8 noundef %.sroa.0.0, ptr noundef nonnull readonly %i.be, ptr noundef nonnull readonly %i.ac), !dbg !14726, !noalias !14665, !inline_history !85 ; 2 uses
  %i.bh = extractvalue { i64, ptr } %i.bg, 0, !dbg !14727
  %i.bi = trunc nuw i64 %i.bh to i1, !dbg !14728
  br i1 %i.bi, label %bb.j, label %bb.i, !dbg !14728

bb.i:                                             ; preds = %bb.h
  %i.bj = icmp ult i64 %.sroa.0.055.us, %4, !dbg !14729
  br i1 %i.bj, label %bb.k, label %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, !dbg !14729

bb.j:                                             ; preds = %bb.h
  %i.bk = sub nuw nsw i64 %4, %.sroa.0.055.us, !dbg !14730
  %i.bl = extractvalue { i64, ptr } %i.bg, 1, !dbg !14727
  %i.bm = ptrtoint ptr %i.bl to i64, !dbg !14731
  %i.bn = ptrtoint ptr %i.be to i64, !dbg !14731
  %i.bo = sub i64 %i.bm, %i.bn, !dbg !14731       ; 3 uses
  %i.bp = icmp sgt i64 %i.bo, -1, !dbg !14732
  call void @llvm.assume(i1 %i.bp), !dbg !14732, !noalias !14666
  %.not.i.i.us = icmp ult i64 %i.bo, %i.bk, !dbg !14733
  call void @llvm.assume(i1 %.not.i.i.us), !dbg !14733
  %i.bq = add nuw i64 %.sroa.0.055.us, 1, !dbg !14734
  %i.br = add nuw i64 %i.bq, %i.bo, !dbg !14734   ; 2 uses
  %.not17.i.us = icmp ugt i64 %.sroa.0.055.us, %i.br, !dbg !14735
  br i1 %.not17.i.us, label %.split102.us, label %bb.k, !dbg !14735, !prof !549

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.ph.us = phi i64 [ %i.br, %bb.j ], [ %4, %bb.i ] ; 10 uses
  %.not18.us = icmp ugt i64 %.sroa.0.055.us, %.sroa.10.0.ph.us, !dbg !14736
  br i1 %.not18.us, label %.split104.us, label %bb.l, !dbg !14736, !prof !549

bb.l:                                             ; preds = %bb.k
  %.not19.us = icmp ugt i64 %.sroa.10.0.ph.us, %3
  br i1 %.not19.us, label %.split106.us, label %bb.m, !dbg !14737, !prof !614

bb.m:                                             ; preds = %bb.l
  %i.bs = sub nuw nsw i64 %.sroa.10.0.ph.us, %.sroa.0.055.us, !dbg !14738 ; 6 uses
  %.val25.us = load ptr, ptr %i.m, align 8, !dbg !14739, !nonnull !514, !align !551, !noundef !514 ; 7 uses
  %.val26.us = load ptr, ptr %i.ad, align 8, !dbg !14739 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val25.us, i64 56, !dbg !14740 ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 8, !dbg !14740, !range !550, !noalias !14674, !noundef !514
  %i.bv = trunc nuw i8 %i.bu to i1, !dbg !14740   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val25.us, i64 57, !dbg !14740 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !14740, !noalias !14674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14674
  store i8 %i.bx, ptr %i.ae, align 1, !noalias !14675
  %..i.i.us = select i1 %i.bv, i64 2, i64 1, !dbg !14741 ; 4 uses
  %i.by = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.bs, i64 %..i.i.us), !dbg !14742 ; 2 uses
  %i.bz = sub nuw nsw i64 %i.bs, %i.by, !dbg !14743
  %i.ca = icmp eq i64 %i.bz, %..i.i.us, !dbg !14744
  br i1 %i.ca, label %bb.n, label %bb.o, !dbg !14744

bb.n:                                             ; preds = %bb.m
  %.10.i.i.us = select i1 %i.bv, ptr @35, ptr %i.ae, !dbg !14741
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.by, !dbg !14745
  %bcmp.i.i.us = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(1) %.10.i.i.us, i64 %..i.i.us), !dbg !14746, !noalias !14676
  %i.cc = icmp eq i32 %bcmp.i.i.us, 0, !dbg !14746
  %i.cd = select i1 %i.cc, i64 %..i.i.us, i64 0, !dbg !14747
  %spec.select.i28.us = sub nuw nsw i64 %i.bs, %i.cd, !dbg !14747
  br label %bb.o, !dbg !14747

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.3.0.i.i27.us = phi i64 [ %spec.select.i28.us, %bb.n ], [ %i.bs, %bb.m ], !dbg !14748 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.us) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14749, !noalias !14674
  %.val.i.i.us = load ptr, ptr %.val26.us, align 8, !dbg !14750, !noalias !14677, !nonnull !514, !align !551, !noundef !514 ; 2 uses
  %i.ce = getelementptr i8, ptr %.val.i.i.us, i64 48, !dbg !14751
  %.val.i.i.i.us = load ptr, ptr %i.ce, align 8, !dbg !14751, !noalias !14678, !nonnull !514, !noundef !514
  %i.cf = getelementptr i8, ptr %.val.i.i.us, i64 56, !dbg !14751
  %.val1.i.i.i.us = load ptr, ptr %i.cf, align 8, !dbg !14751, !noalias !14678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14752, !noalias !14679
  store i32 0, ptr %i.c, align 8, !dbg !14753, !noalias !14679
  store ptr %i.be, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !14753, !noalias !14679
  store i64 %.sroa.3.0.i.i27.us, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !14753, !noalias !14679
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !14753, !noalias !14679
  store i64 %.sroa.3.0.i.i27.us, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !14753, !noalias !14679
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !14753, !noalias !14679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14754, !noalias !14679
  call fastcc void @_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull readonly %.val.i.i.i.us, ptr %.val1.i.i.i.us, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c) #24, !dbg !14755, !noalias !14676
  %i.cg = load i64, ptr %i.b, align 8, !dbg !14756, !range !543, !noalias !14679, !noundef !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14757, !noalias !14679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14758, !noalias !14679
  %i.ch = trunc nuw nsw i64 %i.cg to i8, !dbg !14759
  %i.ci = getelementptr inbounds nuw i8, ptr %.val25.us, i64 60, !dbg !14760
  %i.cj = load i8, ptr %i.ci, align 4, !dbg !14760, !range !550, !noundef !514
  %.not20.us = icmp eq i8 %i.cj, %i.ch, !dbg !14761
  br i1 %.not20.us, label %bb.ah, label %bb.p, !dbg !14761

bb.p:                                             ; preds = %bb.o
  store i64 %.sroa.10.0.ph.us, ptr %i.af, align 8, !dbg !14762
  call void @llvm.experimental.noalias.scope.decl(metadata !14681), !dbg !14763
  %i.ck = load i8, ptr %i.ag, align 8, !dbg !14764, !range !550, !alias.scope !14681, !noundef !514
  %i.cl = trunc nuw i8 %i.ck to i1, !dbg !14764
  br i1 %i.cl, label %bb.q, label %.thread.us, !dbg !14764

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !14682), !dbg !14765
  %i.cm = load i64, ptr %1, align 8, !dbg !14766, !range !543, !alias.scope !14682, !noalias !14683, !noundef !514
  %.not.i30.us = icmp eq i64 %i.cm, 0, !dbg !14767
  %i.cn = getelementptr inbounds nuw i8, ptr %.val25.us, i64 58, !dbg !14688 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 2, !dbg !14688, !range !610, !noalias !14684, !noundef !514 ; 2 uses
  br i1 %.not.i30.us, label %bb.r, label %bb.w, !dbg !14768

bb.r:                                             ; preds = %bb.q
  %i.cp = icmp eq i8 %i.co, 0, !dbg !14769
  br i1 %i.cp, label %.thread.us, label %bb.s, !dbg !14769

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %.val25.us, i64 59, !dbg !14770
  %.sroa.01.0.i.us = load i8, ptr %i.cq, align 1, !dbg !14688, !noalias !14684, !noundef !514
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.10.0.ph.us, !dbg !14771
  %i.cs = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !14772, !noalias !14685, !nonnull !514, !noundef !514
  %i.ct = call { i64, ptr } %i.cs(i8 noundef %.sroa.01.0.i.us, ptr noundef nonnull readonly %i.be, ptr noundef nonnull readonly %i.cr), !dbg !14773, !noalias !14686, !inline_history !427 ; 2 uses
  %i.cu = extractvalue { i64, ptr } %i.ct, 0, !dbg !14774
  %i.cv = trunc nuw i64 %i.cu to i1, !dbg !14775
  br i1 %i.cv, label %bb.t, label %.thread.us, !dbg !14775

bb.t:                                             ; preds = %bb.s
  %i.cw = extractvalue { i64, ptr } %i.ct, 1, !dbg !14774
  %i.cx = ptrtoint ptr %i.cw to i64, !dbg !14776
  %i.cy = ptrtoint ptr %i.be to i64, !dbg !14776
  %i.cz = sub i64 %i.cx, %i.cy, !dbg !14776       ; 3 uses
  %i.da = icmp sgt i64 %i.cz, -1, !dbg !14777
  call void @llvm.assume(i1 %i.da), !dbg !14777, !noalias !14683
  %.not.i.i32.us = icmp samesign ult i64 %i.cz, %i.bs, !dbg !14778
  call void @llvm.assume(i1 %.not.i.i32.us), !dbg !14778, !noalias !14683
  %i.db = add nuw i64 %i.cz, %.sroa.0.055.us, !dbg !14779 ; 2 uses
  store i64 1, ptr %1, align 8, !dbg !14780, !alias.scope !14682, !noalias !14683
  store i64 %i.db, ptr %i.ah, align 8, !dbg !14780, !alias.scope !14682, !noalias !14683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14781, !noalias !14684
  %i.dc = load ptr, ptr %i.aj, align 8, !dbg !14782, !alias.scope !14682, !noalias !14683, !nonnull !514, !align !551, !noundef !514
  %.val.i33.us = load ptr, ptr %i.ai, align 8, !dbg !14783, !alias.scope !14682, !noalias !14683, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs5_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink11binary_dataCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %.val.i33.us, ptr noundef nonnull align 8 %i.dc, i64 noundef %i.db), !dbg !14784, !noalias !14687
  %i.dd = load i8, ptr %i.a, align 8, !dbg !14785, !range !550, !noalias !14684, !noundef !514
  %i.de = trunc nuw i8 %i.dd to i1, !dbg !14785
  br i1 %i.de, label %.split110.us, label %bb.u, !dbg !14786

bb.u:                                             ; preds = %bb.t
  %i.df = load i8, ptr %i.ak, align 1, !dbg !14787, !range !550, !noalias !14684, !noundef !514
  %i.dg = trunc nuw i8 %i.df to i1, !dbg !14787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14788, !noalias !14684
  br i1 %i.dg, label %bb.v, label %.thread69, !dbg !14781

bb.v:                                             ; preds = %bb.u
  %i.dh = load i8, ptr %i.cn, align 2, !dbg !14789, !range !610, !noalias !14687, !noundef !514
  br label %bb.w, !dbg !14790

bb.w:                                             ; preds = %bb.v, %bb.q
  %.sroa.551.0.ph.in.in.us = phi i8 [ %i.dh, %bb.v ], [ %i.co, %bb.q ]
  %.sroa.551.0.ph.in.us = icmp eq i8 %.sroa.551.0.ph.in.in.us, 1, !dbg !14791
  br i1 %.sroa.551.0.ph.in.us, label %.thread69, label %.thread.us, !dbg !14792

.thread.us:                                       ; preds = %bb.w, %bb.s, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14793, !noalias !14689
  call void @llvm.experimental.noalias.scope.decl(metadata !14690), !dbg !14794
  call void @llvm.experimental.noalias.scope.decl(metadata !14691), !dbg !14794
  %i.di = load i64, ptr %i.v, align 8, !dbg !14795, !alias.scope !14691, !noalias !14683, !noundef !514
  %i.dj = icmp uge i64 %i.di, %.sroa.0.055.us, !dbg !14795 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val25.us, i64 40, !dbg !14796
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !14796, !noalias !14692, !noundef !514
  %.not5.i.us = icmp eq i64 %i.dl, 0, !dbg !14796
  br i1 %.not5.i.us, label %bb.y, label %bb.x, !dbg !14796

bb.x:                                             ; preds = %.thread.us
  %.old1.i.us = load i8, ptr %.old.i, align 1, !dbg !14797, !range !550, !alias.scope !14691, !noalias !14683, !noundef !514
  %.old2.i.us = trunc nuw i8 %.old1.i.us to i1, !dbg !14797
  %.old2.not.i.us = xor i1 %.old2.i.us, true, !dbg !14797
  %brmerge4.i.us = or i1 %i.dj, %.old2.not.i.us, !dbg !14797
  br i1 %brmerge4.i.us, label %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us.thread, label %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us, !dbg !14797

bb.y:                                             ; preds = %.thread.us
  %i.dm = getelementptr inbounds nuw i8, ptr %.val25.us, i64 32, !dbg !14798
  %i.dn = load i64, ptr %i.dm, align 8, !dbg !14798, !noalias !14692, !noundef !514
  %i.do = icmp ne i64 %i.dn, 0, !dbg !14798
  %i.dp = load i8, ptr %.old.i, align 1, !range !550, !alias.scope !14691, !noalias !14683
  %i.dq = trunc nuw i8 %i.dp to i1
  %or.cond.i29.us = select i1 %i.do, i1 %i.dq, i1 false, !dbg !14799
  %or.cond.not.i.us = xor i1 %or.cond.i29.us, true, !dbg !14799
  %brmerge.i.us = or i1 %i.dj, %or.cond.not.i.us, !dbg !14799
  br i1 %brmerge.i.us, label %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us.thread, label %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us, !dbg !14799

_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us.thread: ; preds = %bb.x, %bb.y
  store i8 1, ptr %i.al, align 1, !dbg !14800, !alias.scope !14690, !noalias !14683
  br label %bb.z, !dbg !14801

_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us: ; preds = %bb.x, %bb.y
  %i.dr = load ptr, ptr %i.aj, align 8, !dbg !14802, !alias.scope !14691, !noalias !14683, !nonnull !514, !align !551, !noundef !514
  %.val.i.us = load ptr, ptr %i.ai, align 8, !dbg !14803, !alias.scope !14691, !noalias !14683, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs5_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink13context_breakCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %.val.i.us, ptr noundef nonnull align 8 %i.dr), !dbg !14804, !noalias !14693
  %.pre = load i8, ptr %i.g, align 8, !dbg !14805, !range !550, !noalias !14689
  %i.ds = trunc nuw i8 %.pre to i1, !dbg !14805
  br i1 %i.ds, label %.split112.us, label %bb.z, !dbg !14801

bb.z:                                             ; preds = %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us.thread, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us
  %i.dt = load i8, ptr %i.al, align 1, !dbg !14806, !range !550, !noalias !14689, !noundef !514
  %i.du = trunc nuw i8 %i.dt to i1, !dbg !14806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14807, !noalias !14689
  br i1 %i.du, label %bb.aa, label %.thread69, !dbg !14793

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !14694), !dbg !14808
  %i.dv = load i64, ptr %i.am, align 8, !dbg !14809, !range !543, !alias.scope !14694, !noalias !14683, !noundef !514 ; 2 uses
  %i.dw = trunc nuw i64 %i.dv to i1, !dbg !14810
  %i.dx = load i64, ptr %i.ao, align 8, !alias.scope !14694, !noalias !14683 ; 3 uses
  %i.dy = icmp ult i64 %i.dx, %.sroa.0.055.us
  %or.cond.not.i34.us = select i1 %i.dw, i1 %i.dy, i1 false, !dbg !14810
  br i1 %or.cond.not.i34.us, label %bb.ab, label %._crit_edge, !dbg !14810

._crit_edge:                                      ; preds = %bb.aa
  %.pre147 = load i64, ptr %i.an, align 8, !dbg !14811, !alias.scope !14681
  br label %bb.ae, !dbg !14810

bb.ab:                                            ; preds = %bb.aa
  %i.dz = sub nuw nsw i64 %.sroa.0.055.us, %i.dx, !dbg !14812
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 %i.dx, !dbg !14813
  %i.eb = load i8, ptr %i.bt, align 8, !dbg !14814, !range !550, !noalias !14695, !noundef !514
  %i.ec = trunc nuw i8 %i.eb to i1, !dbg !14814
  br i1 %i.ec, label %bb.ad, label %bb.ac, !dbg !14815

bb.ac:                                            ; preds = %bb.ab
  %i.ed = load i8, ptr %i.bw, align 1, !dbg !14816, !noalias !14695, !noundef !514
  br label %bb.ad, !dbg !14817

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.i.us = phi i8 [ %i.ed, %bb.ac ], [ 10, %bb.ab ], !dbg !14818
  %i.ee = call noundef i64 @_RNvNtCshqpdr3wwzuw_13grep_searcher5lines5count(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ea, i64 noundef %i.dz, i8 noundef %.sroa.0.0.i.us), !dbg !14819, !noalias !14696
  %i.ef = load i64, ptr %i.an, align 8, !dbg !14820, !alias.scope !14694, !noalias !14683, !noundef !514
  %i.eg = add i64 %i.ef, %i.ee, !dbg !14820       ; 2 uses
  store i64 %i.eg, ptr %i.an, align 8, !dbg !14820, !alias.scope !14694, !noalias !14683
  store i64 %.sroa.0.055.us, ptr %i.ao, align 8, !dbg !14821, !alias.scope !14694, !noalias !14683
  br label %bb.ae, !dbg !14822

bb.ae:                                            ; preds = %._crit_edge, %bb.ad
  %i.eh = phi i64 [ %.pre147, %._crit_edge ], [ %i.eg, %bb.ad ], !dbg !14811
  %i.ei = load i64, ptr %i.ap, align 8, !dbg !14823, !alias.scope !14681, !noundef !514
  %i.ej = add i64 %i.ei, %.sroa.0.055.us, !dbg !14823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14824, !noalias !14689
  %i.ek = load ptr, ptr %i.aj, align 8, !dbg !14825, !alias.scope !14681, !nonnull !514, !align !551, !noundef !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14826, !noalias !14689
  %i.el = load i8, ptr %i.bt, align 8, !dbg !14827, !range !550, !noalias !14683, !noundef !514
  %i.em = load i8, ptr %i.bw, align 1, !dbg !14827, !noalias !14683
  store i8 %i.el, ptr %i.aq, align 8, !dbg !14826, !noalias !14689
  store i8 %i.em, ptr %i.ar, align 1, !dbg !14826, !noalias !14689
  store ptr %i.be, ptr %i.as, align 8, !dbg !14826, !noalias !14689
  store i64 %i.bs, ptr %i.at, align 8, !dbg !14826, !noalias !14689
  store i64 %i.ej, ptr %i.au, align 8, !dbg !14826, !noalias !14689
  store i64 %i.dv, ptr %i.e, align 8, !dbg !14826, !noalias !14689
  store i64 %i.eh, ptr %i.av, align 8, !dbg !14826, !noalias !14689
  store ptr %2, ptr %i.aw, align 8, !dbg !14826, !noalias !14689
  store i64 %3, ptr %i.ax, align 8, !dbg !14826, !noalias !14689
  store i64 %.sroa.0.055.us, ptr %i.ay, align 8, !dbg !14826, !noalias !14689
  store i64 %.sroa.10.0.ph.us, ptr %i.az, align 8, !dbg !14826, !noalias !14689
  %.val24.us = load ptr, ptr %i.ai, align 8, !dbg !14828, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs5_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matchedCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %.val24.us, ptr noundef nonnull align 8 %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e), !dbg !14829
  %i.en = load i8, ptr %i.f, align 8, !dbg !14830, !range !550, !noalias !14689, !noundef !514
  %i.eo = trunc nuw i8 %i.en to i1, !dbg !14830
  br i1 %i.eo, label %.split114.us, label %bb.af, !dbg !14831

bb.af:                                            ; preds = %bb.ae
  %i.ep = load i8, ptr %i.ba, align 1, !dbg !14832, !range !550, !noalias !14689, !noundef !514
  %i.eq = trunc nuw i8 %i.ep to i1, !dbg !14832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14833, !noalias !14689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14834, !noalias !14689
  br i1 %i.eq, label %bb.ag, label %.thread69, !dbg !14835

end_hunk_4
begin_hunk_5_@_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE18sink_other_contextCs2NzvFoTxuAy_2rg:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17528
  br label %bb.w, !dbg !17529

bb.t:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !17530
  %i.cd = load i8, ptr %i.cc, align 1, !dbg !17530, !range !550, !noundef !514
  %i.ce = trunc nuw i8 %i.cd to i1, !dbg !17530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17528
  br i1 %i.ce, label %bb.v, label %bb.u, !dbg !17531

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !17532
  store i8 0, ptr %i.cf, align 1, !dbg !17532
  store i8 0, ptr %0, align 8, !dbg !17532
  br label %bb.w, !dbg !17533

bb.v:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !17534
  store i64 %.8.val, ptr %i.cg, align 8, !dbg !17534
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 113, !dbg !17535
  store i8 1, ptr %i.ch, align 1, !dbg !17535
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !17536
  store i8 1, ptr %i.ci, align 1, !dbg !17536
  store i8 0, ptr %0, align 8, !dbg !17536
  br label %bb.w, !dbg !17537

bb.w:                                             ; preds = %bb.o, %.thread7, %bb.s, %bb.u, %bb.v
  ret void, !dbg !17537
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE21after_context_by_lineCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17538 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [2 x i8], align 1                 ; 3 uses
  %i.e = alloca [80 x i8], align 8                ; 15 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !17720 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !17720, !noundef !514 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !17720
  br i1 %i.k, label %bb.b, label %bb.c, !dbg !17720

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !17721
  store i8 1, ptr %i.l, align 1, !dbg !17721
  br label %bb.d, !dbg !17722

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !17723 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !dbg !17723, !nonnull !514, !align !551, !noundef !514 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !17723
  %i.p = load i64, ptr %i.o, align 8, !dbg !17723, !range !543, !noundef !514
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !17723
  %i.r = load i64, ptr %i.q, align 8, !dbg !17723
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !17724
  %.val = load i64, ptr %i.s, align 8, !dbg !17724
  %i.t = trunc nuw i64 %i.p to i1, !dbg !17725
  %i.u = icmp uge i64 %.val, %i.r
  %spec.select.i = select i1 %i.t, i1 %i.u, i1 false, !dbg !17725
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !17726 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !17726, !noundef !514 ; 3 uses
  %.not = icmp ugt i64 %i.w, %4, !dbg !17727
  br i1 %.not, label %bb.e, label %bb.f, !dbg !17727, !prof !549

bb.d:                                             ; preds = %.split116.us, %.split118.us, %.thread69, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE12sink_matchedCs2NzvFoTxuAy_2rg.exit, %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, %bb.b
  %.sink = phi i8 [ 1, %.split116.us ], [ 0, %.split118.us ], [ 0, %.thread69 ], [ 1, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE12sink_matchedCs2NzvFoTxuAy_2rg.exit ], [ 0, %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit ], [ 0, %bb.b ]
  store i8 %.sink, ptr %0, align 8, !dbg !17728
  ret void, !dbg !17729

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25, !dbg !17730
  unreachable, !dbg !17730

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 56, !dbg !17731
  %i.y = load i8, ptr %i.x, align 8, !dbg !17731, !range !550, !noundef !514
  %i.z = trunc nuw i8 %i.y to i1, !dbg !17731
  br i1 %i.z, label %.split, label %bb.g, !dbg !17732

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 57, !dbg !17731
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !17733, !noundef !514
  br label %.split, !dbg !17734

.split:                                           ; preds = %bb.g, %bb.f
  %.sroa.0.0 = phi i8 [ %i.ab, %bb.g ], [ 10, %bb.f ], !dbg !17735 ; 2 uses
  %.not.i21 = icmp ugt i64 %4, %3
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %.sroa.41.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.old.i = getelementptr inbounds nuw i8, ptr %1, i64 113 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 73
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  br i1 %.not.i21, label %bb.ak, label %.split.split, !dbg !17736, !prof !549

.split.split:                                     ; preds = %.split
  %spec.select.i.fr = freeze i1 %spec.select.i
  br i1 %spec.select.i.fr, label %.split.split.split.us, label %.split.split.split

.split.split.split.us:                            ; preds = %.split.split, %bb.aj
  %i.bc = phi i64 [ %i.ew, %bb.aj ], [ %i.j, %.split.split ]
  %.sroa.0.055.us = phi i64 [ %.sroa.10.0.ph.us, %bb.aj ], [ %i.w, %.split.split ], !dbg !17737 ; 18 uses
  %i.bd = icmp ugt i64 %.sroa.0.055.us, %4, !dbg !17738
  br i1 %i.bd, label %.split100.us, label %bb.h, !dbg !17738, !prof !549

bb.h:                                             ; preds = %.split.split.split.us
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.055.us, !dbg !17739 ; 7 uses
  %i.bf = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !17740, !noalias !17680, !nonnull !514, !noundef !514
  %i.bg = call { i64, ptr } %i.bf(i8 noundef %.sroa.0.0, ptr noundef nonnull readonly %i.be, ptr noundef nonnull readonly %i.ac), !dbg !17741, !noalias !17680, !inline_history !85 ; 2 uses
  %i.bh = extractvalue { i64, ptr } %i.bg, 0, !dbg !17742
  %i.bi = trunc nuw i64 %i.bh to i1, !dbg !17743
  br i1 %i.bi, label %bb.j, label %bb.i, !dbg !17743

bb.i:                                             ; preds = %bb.h
  %i.bj = icmp ult i64 %.sroa.0.055.us, %4, !dbg !17744
  br i1 %i.bj, label %bb.k, label %_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep9next_impl.exit, !dbg !17744

bb.j:                                             ; preds = %bb.h
  %i.bk = sub nuw nsw i64 %4, %.sroa.0.055.us, !dbg !17745
  %i.bl = extractvalue { i64, ptr } %i.bg, 1, !dbg !17742
  %i.bm = ptrtoint ptr %i.bl to i64, !dbg !17746
  %i.bn = ptrtoint ptr %i.be to i64, !dbg !17746
  %i.bo = sub i64 %i.bm, %i.bn, !dbg !17746       ; 3 uses
  %i.bp = icmp sgt i64 %i.bo, -1, !dbg !17747
  call void @llvm.assume(i1 %i.bp), !dbg !17747, !noalias !17681
  %.not.i.i.us = icmp ult i64 %i.bo, %i.bk, !dbg !17748
  call void @llvm.assume(i1 %.not.i.i.us), !dbg !17748
  %i.bq = add nuw i64 %.sroa.0.055.us, 1, !dbg !17749
  %i.br = add nuw i64 %i.bq, %i.bo, !dbg !17749   ; 2 uses
  %.not17.i.us = icmp ugt i64 %.sroa.0.055.us, %i.br, !dbg !17750
  br i1 %.not17.i.us, label %.split102.us, label %bb.k, !dbg !17750, !prof !549

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.ph.us = phi i64 [ %i.br, %bb.j ], [ %4, %bb.i ] ; 10 uses
  %.not18.us = icmp ugt i64 %.sroa.0.055.us, %.sroa.10.0.ph.us, !dbg !17751
  br i1 %.not18.us, label %.split104.us, label %bb.l, !dbg !17751, !prof !549

bb.l:                                             ; preds = %bb.k
  %.not19.us = icmp ugt i64 %.sroa.10.0.ph.us, %3
  br i1 %.not19.us, label %.split106.us, label %bb.m, !dbg !17752, !prof !614

bb.m:                                             ; preds = %bb.l
  %i.bs = sub nuw nsw i64 %.sroa.10.0.ph.us, %.sroa.0.055.us, !dbg !17753 ; 6 uses
  %.val25.us = load ptr, ptr %i.m, align 8, !dbg !17754, !nonnull !514, !align !551, !noundef !514 ; 7 uses
  %.val26.us = load ptr, ptr %i.ad, align 8, !dbg !17754 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val25.us, i64 56, !dbg !17755 ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 8, !dbg !17755, !range !550, !noalias !17689, !noundef !514
  %i.bv = trunc nuw i8 %i.bu to i1, !dbg !17755   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val25.us, i64 57, !dbg !17755 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !17755, !noalias !17689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17689
  store i8 %i.bx, ptr %i.ae, align 1, !noalias !17690
  %..i.i.us = select i1 %i.bv, i64 2, i64 1, !dbg !17756 ; 4 uses
  %i.by = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.bs, i64 %..i.i.us), !dbg !17757 ; 2 uses
  %i.bz = sub nuw nsw i64 %i.bs, %i.by, !dbg !17758
  %i.ca = icmp eq i64 %i.bz, %..i.i.us, !dbg !17759
  br i1 %i.ca, label %bb.n, label %bb.o, !dbg !17759

bb.n:                                             ; preds = %bb.m
  %.10.i.i.us = select i1 %i.bv, ptr @35, ptr %i.ae, !dbg !17756
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.by, !dbg !17760
  %bcmp.i.i.us = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(1) %.10.i.i.us, i64 %..i.i.us), !dbg !17761, !noalias !17691
  %i.cc = icmp eq i32 %bcmp.i.i.us, 0, !dbg !17761
  %i.cd = select i1 %i.cc, i64 %..i.i.us, i64 0, !dbg !17762
  %spec.select.i28.us = sub nuw nsw i64 %i.bs, %i.cd, !dbg !17762
  br label %bb.o, !dbg !17762

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.3.0.i.i27.us = phi i64 [ %spec.select.i28.us, %bb.n ], [ %i.bs, %bb.m ], !dbg !17763 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.us) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17764, !noalias !17689
  %.val.i.i.us = load ptr, ptr %.val26.us, align 8, !dbg !17765, !noalias !17692, !nonnull !514, !align !551, !noundef !514 ; 2 uses
  %i.ce = getelementptr i8, ptr %.val.i.i.us, i64 48, !dbg !17766
  %.val.i.i.i.us = load ptr, ptr %i.ce, align 8, !dbg !17766, !noalias !17693, !nonnull !514, !noundef !514
  %i.cf = getelementptr i8, ptr %.val.i.i.us, i64 56, !dbg !17766
  %.val1.i.i.i.us = load ptr, ptr %i.cf, align 8, !dbg !17766, !noalias !17693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17767, !noalias !17694
  store i32 0, ptr %i.c, align 8, !dbg !17768, !noalias !17694
  store ptr %i.be, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !17768, !noalias !17694
  store i64 %.sroa.3.0.i.i27.us, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !17768, !noalias !17694
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !17768, !noalias !17694
  store i64 %.sroa.3.0.i.i27.us, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !17768, !noalias !17694
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !17768, !noalias !17694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17769, !noalias !17694
  call fastcc void @_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull readonly %.val.i.i.i.us, ptr %.val1.i.i.i.us, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c) #24, !dbg !17770, !noalias !17691
  %i.cg = load i64, ptr %i.b, align 8, !dbg !17771, !range !543, !noalias !17694, !noundef !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17772, !noalias !17694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17773, !noalias !17694
  %i.ch = trunc nuw nsw i64 %i.cg to i8, !dbg !17774
  %i.ci = getelementptr inbounds nuw i8, ptr %.val25.us, i64 60, !dbg !17775
  %i.cj = load i8, ptr %i.ci, align 4, !dbg !17775, !range !550, !noundef !514
  %.not20.us = icmp eq i8 %i.cj, %i.ch, !dbg !17776
  br i1 %.not20.us, label %bb.ah, label %bb.p, !dbg !17776

bb.p:                                             ; preds = %bb.o
  store i64 %.sroa.10.0.ph.us, ptr %i.af, align 8, !dbg !17777
  call void @llvm.experimental.noalias.scope.decl(metadata !17696), !dbg !17778
  %i.ck = load i8, ptr %i.ag, align 8, !dbg !17779, !range !550, !alias.scope !17696, !noundef !514
  %i.cl = trunc nuw i8 %i.ck to i1, !dbg !17779
  br i1 %i.cl, label %bb.q, label %.thread.us, !dbg !17779

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !17697), !dbg !17780
  %i.cm = load i64, ptr %1, align 8, !dbg !17781, !range !543, !alias.scope !17697, !noalias !17698, !noundef !514
  %.not.i30.us = icmp eq i64 %i.cm, 0, !dbg !17782
  %i.cn = getelementptr inbounds nuw i8, ptr %.val25.us, i64 58, !dbg !17703 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 2, !dbg !17703, !range !610, !noalias !17699, !noundef !514 ; 2 uses
  br i1 %.not.i30.us, label %bb.r, label %bb.w, !dbg !17783

bb.r:                                             ; preds = %bb.q
  %i.cp = icmp eq i8 %i.co, 0, !dbg !17784
  br i1 %i.cp, label %.thread.us, label %bb.s, !dbg !17784

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %.val25.us, i64 59, !dbg !17785
  %.sroa.01.0.i.us = load i8, ptr %i.cq, align 1, !dbg !17703, !noalias !17699, !noundef !514
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.10.0.ph.us, !dbg !17786
  %i.cs = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !17787, !noalias !17700, !nonnull !514, !noundef !514
  %i.ct = call { i64, ptr } %i.cs(i8 noundef %.sroa.01.0.i.us, ptr noundef nonnull readonly %i.be, ptr noundef nonnull readonly %i.cr), !dbg !17788, !noalias !17701, !inline_history !485 ; 2 uses
  %i.cu = extractvalue { i64, ptr } %i.ct, 0, !dbg !17789
  %i.cv = trunc nuw i64 %i.cu to i1, !dbg !17790
  br i1 %i.cv, label %bb.t, label %.thread.us, !dbg !17790

bb.t:                                             ; preds = %bb.s
  %i.cw = extractvalue { i64, ptr } %i.ct, 1, !dbg !17789
  %i.cx = ptrtoint ptr %i.cw to i64, !dbg !17791
  %i.cy = ptrtoint ptr %i.be to i64, !dbg !17791
  %i.cz = sub i64 %i.cx, %i.cy, !dbg !17791       ; 3 uses
  %i.da = icmp sgt i64 %i.cz, -1, !dbg !17792
  call void @llvm.assume(i1 %i.da), !dbg !17792, !noalias !17698
  %.not.i.i32.us = icmp samesign ult i64 %i.cz, %i.bs, !dbg !17793
  call void @llvm.assume(i1 %.not.i.i32.us), !dbg !17793, !noalias !17698
  %i.db = add nuw i64 %i.cz, %.sroa.0.055.us, !dbg !17794 ; 2 uses
  store i64 1, ptr %1, align 8, !dbg !17795, !alias.scope !17697, !noalias !17698
  store i64 %i.db, ptr %i.ah, align 8, !dbg !17795, !alias.scope !17697, !noalias !17698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17796, !noalias !17699
  %i.dc = load ptr, ptr %i.aj, align 8, !dbg !17797, !alias.scope !17697, !noalias !17698, !nonnull !514, !align !551, !noundef !514
  %.val.i33.us = load ptr, ptr %i.ai, align 8, !dbg !17798, !alias.scope !17697, !noalias !17698, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs5_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink11binary_dataCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %.val.i33.us, ptr noundef nonnull align 8 %i.dc, i64 noundef %i.db), !dbg !17799, !noalias !17702
  %i.dd = load i8, ptr %i.a, align 8, !dbg !17800, !range !550, !noalias !17699, !noundef !514
  %i.de = trunc nuw i8 %i.dd to i1, !dbg !17800
  br i1 %i.de, label %.split110.us, label %bb.u, !dbg !17801

bb.u:                                             ; preds = %bb.t
  %i.df = load i8, ptr %i.ak, align 1, !dbg !17802, !range !550, !noalias !17699, !noundef !514
  %i.dg = trunc nuw i8 %i.df to i1, !dbg !17802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17803, !noalias !17699
  br i1 %i.dg, label %bb.v, label %.thread69, !dbg !17796

bb.v:                                             ; preds = %bb.u
  %i.dh = load i8, ptr %i.cn, align 2, !dbg !17804, !range !610, !noalias !17702, !noundef !514
  br label %bb.w, !dbg !17805

bb.w:                                             ; preds = %bb.v, %bb.q
  %.sroa.551.0.ph.in.in.us = phi i8 [ %i.dh, %bb.v ], [ %i.co, %bb.q ]
  %.sroa.551.0.ph.in.us = icmp eq i8 %.sroa.551.0.ph.in.in.us, 1, !dbg !17806
  br i1 %.sroa.551.0.ph.in.us, label %.thread69, label %.thread.us, !dbg !17807

.thread.us:                                       ; preds = %bb.w, %bb.s, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17808, !noalias !17704
  call void @llvm.experimental.noalias.scope.decl(metadata !17705), !dbg !17809
  call void @llvm.experimental.noalias.scope.decl(metadata !17706), !dbg !17809
  %i.di = load i64, ptr %i.v, align 8, !dbg !17810, !alias.scope !17706, !noalias !17698, !noundef !514
  %i.dj = icmp uge i64 %i.di, %.sroa.0.055.us, !dbg !17810 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val25.us, i64 40, !dbg !17811
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !17811, !noalias !17707, !noundef !514
  %.not5.i.us = icmp eq i64 %i.dl, 0, !dbg !17811
  br i1 %.not5.i.us, label %bb.y, label %bb.x, !dbg !17811

bb.x:                                             ; preds = %.thread.us
  %.old1.i.us = load i8, ptr %.old.i, align 1, !dbg !17812, !range !550, !alias.scope !17706, !noalias !17698, !noundef !514
  %.old2.i.us = trunc nuw i8 %.old1.i.us to i1, !dbg !17812
  %.old2.not.i.us = xor i1 %.old2.i.us, true, !dbg !17812
  %brmerge4.i.us = or i1 %i.dj, %.old2.not.i.us, !dbg !17812
  br i1 %brmerge4.i.us, label %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us.thread, label %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us, !dbg !17812

bb.y:                                             ; preds = %.thread.us
  %i.dm = getelementptr inbounds nuw i8, ptr %.val25.us, i64 32, !dbg !17813
  %i.dn = load i64, ptr %i.dm, align 8, !dbg !17813, !noalias !17707, !noundef !514
  %i.do = icmp ne i64 %i.dn, 0, !dbg !17813
  %i.dp = load i8, ptr %.old.i, align 1, !range !550, !alias.scope !17706, !noalias !17698
  %i.dq = trunc nuw i8 %i.dp to i1
  %or.cond.i29.us = select i1 %i.do, i1 %i.dq, i1 false, !dbg !17814
  %or.cond.not.i.us = xor i1 %or.cond.i29.us, true, !dbg !17814
  %brmerge.i.us = or i1 %i.dj, %or.cond.not.i.us, !dbg !17814
  br i1 %brmerge.i.us, label %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us.thread, label %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us, !dbg !17814

_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us.thread: ; preds = %bb.x, %bb.y
  store i8 1, ptr %i.al, align 1, !dbg !17815, !alias.scope !17705, !noalias !17698
  br label %bb.z, !dbg !17816

_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us: ; preds = %bb.x, %bb.y
  %i.dr = load ptr, ptr %i.aj, align 8, !dbg !17817, !alias.scope !17706, !noalias !17698, !nonnull !514, !align !551, !noundef !514
  %.val.i.us = load ptr, ptr %i.ai, align 8, !dbg !17818, !alias.scope !17706, !noalias !17698, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs5_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink13context_breakCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %.val.i.us, ptr noundef nonnull align 8 %i.dr), !dbg !17819, !noalias !17708
  %.pre = load i8, ptr %i.g, align 8, !dbg !17820, !range !550, !noalias !17704
  %i.ds = trunc nuw i8 %.pre to i1, !dbg !17820
  br i1 %i.ds, label %.split112.us, label %bb.z, !dbg !17816

bb.z:                                             ; preds = %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us.thread, %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkBY_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEE18sink_break_contextCs2NzvFoTxuAy_2rg.exit.us
  %i.dt = load i8, ptr %i.al, align 1, !dbg !17821, !range !550, !noalias !17704, !noundef !514
  %i.du = trunc nuw i8 %i.dt to i1, !dbg !17821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17822, !noalias !17704
  br i1 %i.du, label %bb.aa, label %.thread69, !dbg !17808

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !17709), !dbg !17823
  %i.dv = load i64, ptr %i.am, align 8, !dbg !17824, !range !543, !alias.scope !17709, !noalias !17698, !noundef !514 ; 2 uses
  %i.dw = trunc nuw i64 %i.dv to i1, !dbg !17825
  %i.dx = load i64, ptr %i.ao, align 8, !alias.scope !17709, !noalias !17698 ; 3 uses
  %i.dy = icmp ult i64 %i.dx, %.sroa.0.055.us
  %or.cond.not.i34.us = select i1 %i.dw, i1 %i.dy, i1 false, !dbg !17825
  br i1 %or.cond.not.i34.us, label %bb.ab, label %._crit_edge, !dbg !17825

._crit_edge:                                      ; preds = %bb.aa
  %.pre147 = load i64, ptr %i.an, align 8, !dbg !17826, !alias.scope !17696
  br label %bb.ae, !dbg !17825

bb.ab:                                            ; preds = %bb.aa
  %i.dz = sub nuw nsw i64 %.sroa.0.055.us, %i.dx, !dbg !17827
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 %i.dx, !dbg !17828
  %i.eb = load i8, ptr %i.bt, align 8, !dbg !17829, !range !550, !noalias !17710, !noundef !514
  %i.ec = trunc nuw i8 %i.eb to i1, !dbg !17829
  br i1 %i.ec, label %bb.ad, label %bb.ac, !dbg !17830

bb.ac:                                            ; preds = %bb.ab
  %i.ed = load i8, ptr %i.bw, align 1, !dbg !17831, !noalias !17710, !noundef !514
  br label %bb.ad, !dbg !17832

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.i.us = phi i8 [ %i.ed, %bb.ac ], [ 10, %bb.ab ], !dbg !17833
  %i.ee = call noundef i64 @_RNvNtCshqpdr3wwzuw_13grep_searcher5lines5count(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ea, i64 noundef %i.dz, i8 noundef %.sroa.0.0.i.us), !dbg !17834, !noalias !17711
  %i.ef = load i64, ptr %i.an, align 8, !dbg !17835, !alias.scope !17709, !noalias !17698, !noundef !514
  %i.eg = add i64 %i.ef, %i.ee, !dbg !17835       ; 2 uses
  store i64 %i.eg, ptr %i.an, align 8, !dbg !17835, !alias.scope !17709, !noalias !17698
  store i64 %.sroa.0.055.us, ptr %i.ao, align 8, !dbg !17836, !alias.scope !17709, !noalias !17698
  br label %bb.ae, !dbg !17837

bb.ae:                                            ; preds = %._crit_edge, %bb.ad
  %i.eh = phi i64 [ %.pre147, %._crit_edge ], [ %i.eg, %bb.ad ], !dbg !17826
  %i.ei = load i64, ptr %i.ap, align 8, !dbg !17838, !alias.scope !17696, !noundef !514
  %i.ej = add i64 %i.ei, %.sroa.0.055.us, !dbg !17838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17839, !noalias !17704
  %i.ek = load ptr, ptr %i.aj, align 8, !dbg !17840, !alias.scope !17696, !nonnull !514, !align !551, !noundef !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !17841, !noalias !17704
  %i.el = load i8, ptr %i.bt, align 8, !dbg !17842, !range !550, !noalias !17698, !noundef !514
  %i.em = load i8, ptr %i.bw, align 1, !dbg !17842, !noalias !17698
  store i8 %i.el, ptr %i.aq, align 8, !dbg !17841, !noalias !17704
  store i8 %i.em, ptr %i.ar, align 1, !dbg !17841, !noalias !17704
  store ptr %i.be, ptr %i.as, align 8, !dbg !17841, !noalias !17704
  store i64 %i.bs, ptr %i.at, align 8, !dbg !17841, !noalias !17704
  store i64 %i.ej, ptr %i.au, align 8, !dbg !17841, !noalias !17704
  store i64 %i.dv, ptr %i.e, align 8, !dbg !17841, !noalias !17704
  store i64 %i.eh, ptr %i.av, align 8, !dbg !17841, !noalias !17704
  store ptr %2, ptr %i.aw, align 8, !dbg !17841, !noalias !17704
  store i64 %3, ptr %i.ax, align 8, !dbg !17841, !noalias !17704
  store i64 %.sroa.0.055.us, ptr %i.ay, align 8, !dbg !17841, !noalias !17704
  store i64 %.sroa.10.0.ph.us, ptr %i.az, align 8, !dbg !17841, !noalias !17704
  %.val24.us = load ptr, ptr %i.ai, align 8, !dbg !17843, !nonnull !514, !align !551, !noundef !514
  call void @_RNvXs5_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matchedCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %.val24.us, ptr noundef nonnull align 8 %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e), !dbg !17844
  %i.en = load i8, ptr %i.f, align 8, !dbg !17845, !range !550, !noalias !17704, !noundef !514
  %i.eo = trunc nuw i8 %i.en to i1, !dbg !17845
  br i1 %i.eo, label %.split114.us, label %bb.af, !dbg !17846

bb.af:                                            ; preds = %bb.ae
  %i.ep = load i8, ptr %i.ba, align 1, !dbg !17847, !range !550, !noalias !17704, !noundef !514
  %i.eq = trunc nuw i8 %i.ep to i1, !dbg !17847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !17848, !noalias !17704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !17849, !noalias !17704
  br i1 %i.eq, label %bb.ag, label %.thread69, !dbg !17850

end_hunk_5
begin_hunk_6_@_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE9put_valueCs2NzvFoTxuAy_2rg:bb.a
  %i.eb = getelementptr inbounds nuw [64 x i8], ptr %i.ea, i64 %i.g, !dbg !18771
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEE8try_lockCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.eb)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !18772

bb.bm:                                            ; preds = %bb.bl
  %i.ec = load i64, ptr %i.a, align 8, !dbg !18769, !range !543, !noundef !514
  %i.ed = trunc nuw i64 %i.ec to i1, !dbg !18775
  br i1 %i.ed, label %bb.bn, label %bb.h, !dbg !18775

bb.bn:                                            ; preds = %bb.bm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18760), !dbg !18777
  %.val.i16.7 = load ptr, ptr %i.i, align 8, !dbg !18802, !alias.scope !18760 ; 4 uses
  %.val3.i17.7 = load i8, ptr %i.j, align 8, !dbg !18802, !range !610, !alias.scope !18760, !noundef !514 ; 2 uses
  %.not.i.i18.7 = icmp eq i8 %.val3.i17.7, 2, !dbg !18803
  br i1 %.not.i.i18.7, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.7, label %bb.bo, !dbg !18803

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.7) ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i16.7, i64 4, !dbg !18804
  %i.ef = trunc nuw i8 %.val3.i17.7 to i1, !dbg !18805
  br i1 %i.ef, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7, label %bb.bp, !dbg !18805

bb.bp:                                            ; preds = %bb.bo
  %i.eg = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !18806, !noalias !18760
  %i.eh = and i64 %i.eg, 9223372036854775807, !dbg !18807
  %i.ei = icmp eq i64 %i.eh, 0, !dbg !18807
  br i1 %i.ei, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7, label %bb.bq, !dbg !18807, !prof !569

bb.bq:                                            ; preds = %bb.bp
  %i.ej = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc24.7 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !18808

.noexc24.7:                                       ; preds = %bb.bq
  br i1 %i.ej, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7, label %bb.br, !dbg !18809

bb.br:                                            ; preds = %.noexc24.7
  store atomic i8 1, ptr %i.ee monotonic, align 1, !dbg !18810, !noalias !18760
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7, !dbg !18811

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7: ; preds = %bb.br, %.noexc24.7, %bb.bp, %bb.bo
  %i.ek = atomicrmw xchg ptr %.val.i16.7, i32 0 release, align 4, !dbg !18812, !noalias !18760
  %i.el = icmp eq i32 %i.ek, 2, !dbg !18813
  br i1 %i.el, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.7, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.7, !dbg !18813, !prof !549

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.7: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16.7)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.7 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !18802

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.7: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.7, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.7, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18769
  %i.em = load i64, ptr %i.c, align 8, !dbg !18773, !noundef !514 ; 2 uses
  %i.en = icmp ult i64 %i.g, %i.em, !dbg !18774
  br i1 %i.en, label %bb.bs, label %bb.f, !dbg !18774

bb.bs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.7
  %i.eo = load ptr, ptr %i.h, align 8, !dbg !18770, !nonnull !514, !noundef !514
  %i.ep = getelementptr inbounds nuw [64 x i8], ptr %i.eo, i64 %i.g, !dbg !18771
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEE8try_lockCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.ep)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !18772

bb.bt:                                            ; preds = %bb.bs
  %i.eq = load i64, ptr %i.a, align 8, !dbg !18769, !range !543, !noundef !514
  %i.er = trunc nuw i64 %i.eq to i1, !dbg !18775
  br i1 %i.er, label %bb.bu, label %bb.h, !dbg !18775

bb.bu:                                            ; preds = %bb.bt
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18761), !dbg !18777
  %.val.i16.8 = load ptr, ptr %i.i, align 8, !dbg !18802, !alias.scope !18761 ; 4 uses
  %.val3.i17.8 = load i8, ptr %i.j, align 8, !dbg !18802, !range !610, !alias.scope !18761, !noundef !514 ; 2 uses
  %.not.i.i18.8 = icmp eq i8 %.val3.i17.8, 2, !dbg !18803
  br i1 %.not.i.i18.8, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.8, label %bb.bv, !dbg !18803

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.8) ]
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i16.8, i64 4, !dbg !18804
  %i.et = trunc nuw i8 %.val3.i17.8 to i1, !dbg !18805
  br i1 %i.et, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, label %bb.bw, !dbg !18805

bb.bw:                                            ; preds = %bb.bv
  %i.eu = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !18806, !noalias !18761
  %i.ev = and i64 %i.eu, 9223372036854775807, !dbg !18807
  %i.ew = icmp eq i64 %i.ev, 0, !dbg !18807
  br i1 %i.ew, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, label %bb.bx, !dbg !18807, !prof !569

bb.bx:                                            ; preds = %bb.bw
  %i.ex = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc24.8 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !18808

.noexc24.8:                                       ; preds = %bb.bx
  br i1 %i.ex, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, label %bb.by, !dbg !18809

bb.by:                                            ; preds = %.noexc24.8
  store atomic i8 1, ptr %i.es monotonic, align 1, !dbg !18810, !noalias !18761
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, !dbg !18811

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8: ; preds = %bb.by, %.noexc24.8, %bb.bw, %bb.bv
  %i.ey = atomicrmw xchg ptr %.val.i16.8, i32 0 release, align 4, !dbg !18812, !noalias !18761
  %i.ez = icmp eq i32 %i.ey, 2, !dbg !18813
  br i1 %i.ez, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.8, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.8, !dbg !18813, !prof !549

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.8: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16.8)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.8 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !18802

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.8: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.8, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.8, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18769
  %i.fa = load i64, ptr %i.c, align 8, !dbg !18773, !noundef !514 ; 2 uses
  %i.fb = icmp ult i64 %i.g, %i.fa, !dbg !18774
  br i1 %i.fb, label %bb.bz, label %bb.f, !dbg !18774

bb.bz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.8
  %i.fc = load ptr, ptr %i.h, align 8, !dbg !18770, !nonnull !514, !noundef !514
  %i.fd = getelementptr inbounds nuw [64 x i8], ptr %i.fc, i64 %i.g, !dbg !18771
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEE8try_lockCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.fd)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !18772

bb.ca:                                            ; preds = %bb.bz
  %i.fe = load i64, ptr %i.a, align 8, !dbg !18769, !range !543, !noundef !514
  %i.ff = trunc nuw i64 %i.fe to i1, !dbg !18775
  br i1 %i.ff, label %bb.cb, label %bb.h, !dbg !18775

bb.cb:                                            ; preds = %bb.ca
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18762), !dbg !18777
  %.val.i16.9 = load ptr, ptr %i.i, align 8, !dbg !18802, !alias.scope !18762 ; 4 uses
  %.val3.i17.9 = load i8, ptr %i.j, align 8, !dbg !18802, !range !610, !alias.scope !18762, !noundef !514 ; 2 uses
  %.not.i.i18.9 = icmp eq i8 %.val3.i17.9, 2, !dbg !18803
  br i1 %.not.i.i18.9, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.9, label %bb.cc, !dbg !18803

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.9) ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i16.9, i64 4, !dbg !18804
  %i.fh = trunc nuw i8 %.val3.i17.9 to i1, !dbg !18805
  br i1 %i.fh, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.cd, !dbg !18805

bb.cd:                                            ; preds = %bb.cc
  %i.fi = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !18806, !noalias !18762
  %i.fj = and i64 %i.fi, 9223372036854775807, !dbg !18807
  %i.fk = icmp eq i64 %i.fj, 0, !dbg !18807
  br i1 %i.fk, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.ce, !dbg !18807, !prof !569

bb.ce:                                            ; preds = %bb.cd
  %i.fl = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc24.9 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !18808

.noexc24.9:                                       ; preds = %bb.ce
  br i1 %i.fl, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, label %bb.cf, !dbg !18809

bb.cf:                                            ; preds = %.noexc24.9
  store atomic i8 1, ptr %i.fg monotonic, align 1, !dbg !18810, !noalias !18762
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, !dbg !18811

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9: ; preds = %bb.cf, %.noexc24.9, %bb.cd, %bb.cc
  %i.fm = atomicrmw xchg ptr %.val.i16.9, i32 0 release, align 4, !dbg !18812, !noalias !18762
  %i.fn = icmp eq i32 %i.fm, 2, !dbg !18813
  br i1 %i.fn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.9, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.9, !dbg !18813, !prof !549

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.9: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16.9)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.9 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !18802

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit26.9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.9, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19.9, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18777
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEECs2NzvFoTxuAy_2rg(ptr nonnull %1), !dbg !18814
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit, !dbg !18814

bb.cg:                                            ; preds = %.body, %.loopexit.split-lp.loopexit.split-lp
  %.pn29 = phi { ptr, i32 } [ %i.v, %.body ], [ %lpad.loopexit.split-lp36, %.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn29, !dbg !18801

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20, %bb.v, %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.1, %bb.ac, %bb.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.2, %bb.aj, %bb.ao, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.3, %bb.aq, %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.4, %bb.ax, %bb.bc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.5, %bb.be, %bb.bj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.6, %bb.bl, %bb.bq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.7, %bb.bs, %bb.bx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.8, %bb.bz, %bb.ce, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i20.9, %bb.a, %bb.f, %bb.c
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEECs2NzvFoTxuAy_2rg(ptr nonnull %1) #22
          to label %bb.cg unwind label %bb.p, !dbg !18814
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_RNvXNtCsiykmk5uyuii_6memchr3extPhNtB2_7Pointer8distanceCs2NzvFoTxuAy_2rg(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !dbg !90 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !dbg !18817
  %i.b = ptrtoint ptr %1 to i64, !dbg !18817
  %i.c = sub i64 %i.a, %i.b, !dbg !18817          ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1, !dbg !18818
  tail call void @llvm.assume(i1 %i.d), !dbg !18818
  ret i64 %i.c, !dbg !18819
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsb_Cs7LWxN68iDgu_12grep_matcherRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB5_7Matcher4findCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18820 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !dbg !18949, !nonnull !514, !align !551, !noundef !514 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18924), !dbg !18949
  %i.e = getelementptr i8, ptr %.val, i64 48, !dbg !18950
  %.val.i = load ptr, ptr %i.e, align 8, !dbg !18950, !noalias !18925, !nonnull !514, !noundef !514 ; 5 uses
  %i.f = getelementptr i8, ptr %.val, i64 56, !dbg !18950
  %.val1.i = load ptr, ptr %i.f, align 8, !dbg !18950, !noalias !18925 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18926), !dbg !18950
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18927), !dbg !18951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18952, !noalias !18928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18953, !noalias !18928
  store i32 0, ptr %i.c, align 8, !dbg !18954, !noalias !18928
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18954
  store ptr %1, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !dbg !18954, !noalias !18928
  %.sroa.6.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18954
  store i64 %2, ptr %.sroa.6.0..sroa_idx6.i.i.i, align 8, !dbg !18954, !noalias !18928
  %.sroa.77.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !18954
  store i64 0, ptr %.sroa.77.0..sroa_idx.i.i.i, align 8, !dbg !18954, !noalias !18928
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !18954
  store i64 %2, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !dbg !18954, !noalias !18928
  %.sroa.98.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !18954
  store i8 0, ptr %.sroa.98.0..sroa_idx.i.i.i, align 8, !dbg !18954, !noalias !18928
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18932), !dbg !18955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18928
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 32, !dbg !18956
  %i.h = load ptr, ptr %i.g, align 8, !dbg !18956, !noalias !18936, !nonnull !514, !noundef !514 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 138, !dbg !18957
  %i.j = load i8, ptr %i.i, align 2, !dbg !18957, !range !720, !noalias !18937, !noundef !514
  %cond.i.i.i.i = icmp eq i8 %i.j, 2, !dbg !18958
  br i1 %cond.i.i.i.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i.i.i, label %._crit_edge.i.i.i.i, !dbg !18958

._crit_edge.i.i.i.i:                              ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.l = load ptr, ptr %i.k, align 8, !dbg !18959, !noalias !18938 ; 6 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !18960, !range !543, !noalias !18938, !noundef !514
  %i.n = trunc nuw i64 %i.m to i1, !dbg !18961
  br i1 %i.n, label %bb.b, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i, !dbg !18961

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !18960
  %i.p = load i64, ptr %i.o, align 8, !dbg !18960, !noalias !18938
  %i.q = icmp ult i64 %2, %i.p, !dbg !18962
  br i1 %i.q, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i.i.i, label %bb.c, !dbg !18962

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 60, !dbg !18963
  %i.s = load i32, ptr %i.r, align 4, !dbg !18963, !noalias !18938, !noundef !514
  %i.t = and i32 %i.s, 1, !dbg !18964
  %.not8.i.i.i.i.i = icmp eq i32 %i.t, 0, !dbg !18964
  br i1 %.not8.i.i.i.i.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i, label %bb.d, !dbg !18965

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 64, !dbg !18966
  %i.v = load i32, ptr %i.u, align 8, !dbg !18966, !noalias !18938, !noundef !514
  %i.w = and i32 %i.v, 2, !dbg !18967
  %.not9.i.i.i.i.i = icmp eq i32 %i.w, 0, !dbg !18967
  br i1 %.not9.i.i.i.i.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i, label %bb.e, !dbg !18968

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !18969
  %i.y = load i64, ptr %i.x, align 8, !dbg !18969, !range !543, !noalias !18938, !noundef !514
  %i.z = trunc nuw i64 %i.y to i1, !dbg !18970
  br i1 %i.z, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i, !dbg !18970

_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !18969
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !18969, !noalias !18938
  %i.ac = icmp ugt i64 %2, %i.ab, !dbg !18971
  br i1 %i.ac, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i.i.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i, !dbg !18972

_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i.i.i: ; preds = %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i, %bb.b, %bb.a
  store i64 0, ptr %i.d, align 8, !dbg !18973, !alias.scope !18932, !noalias !18928
  br label %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit.i.i.i, !dbg !18974

_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i: ; preds = %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i, %bb.e, %bb.d, %bb.c, %._crit_edge.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.ad = tail call noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB2a_NtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtNtB3i_6marker4SendNtB4P_4SyncNtB47_10UnwindSafeEL_EE3get0jECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @30), !dbg !18975, !noalias !18939 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i, i64 40, !dbg !18976 ; 2 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8, !dbg !18977, !noalias !18940 ; 2 uses
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !18978
  br i1 %i.ag, label %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread.i.i.i, label %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i.i.i, !dbg !18978, !prof !569

_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread.i.i.i: ; preds = %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i
  store atomic i64 1, ptr %i.ae release, align 8, !dbg !18979, !noalias !18940
  %i.ah = inttoptr i64 %i.ad to ptr, !dbg !18980
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18981
  store ptr %.val1.i, ptr %i.ai, align 8, !dbg !18981, !noalias !18941
  store i64 1, ptr %i.b, align 8, !dbg !18981, !noalias !18941
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18981
  store ptr %i.ah, ptr %i.aj, align 8, !dbg !18981, !noalias !18941
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !18981
  store i8 0, ptr %i.ak, align 8, !dbg !18981, !noalias !18941
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 16, !dbg !18982
  %i.am = load ptr, ptr %i.al, align 8, !dbg !18982, !noalias !18936, !nonnull !514, !noundef !514
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i, i64 24, !dbg !18982
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !18982, !noalias !18936, !nonnull !514, !align !551, !noundef !514 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !18983
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !18983, !range !730, !invariant.load !514, !noalias !18937
  %i.ar = add nsw i64 %i.aq, -1, !dbg !18983
  %i.as = and i64 %i.ar, -16, !dbg !18983
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.as, !dbg !18983
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !18983
  br label %bb.f, !dbg !18984

_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i.i.i: ; preds = %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i
  call void @_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %.val1.i, i64 noundef %i.ad, i64 noundef %i.af), !dbg !18985, !noalias !18937
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !dbg !18986, !range !543, !noalias !18941
  %i.av = trunc nuw i64 %.pre.i.i.i to i1, !dbg !18984
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i, i64 16, !dbg !18982
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !18982, !noalias !18936, !nonnull !514, !noundef !514
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 24, !dbg !18982
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !18982, !noalias !18936, !nonnull !514, !align !551, !noundef !514 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !18983
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !18983, !range !730, !invariant.load !514, !noalias !18937
  %i.bc = add nsw i64 %i.bb, -1, !dbg !18983
  %i.bd = and i64 %i.bc, -16, !dbg !18983
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bd, !dbg !18983
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !18983 ; 2 uses
  br i1 %i.av, label %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i._crit_edge.i.i, label %bb.g, !dbg !18984

_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i._crit_edge.i.i: ; preds = %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !dbg !18987, !noalias !18941
  br label %bb.f, !dbg !18984

bb.f:                                             ; preds = %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i._crit_edge.i.i, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread.i.i.i
  %i.bg = phi ptr [ %.val1.i, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread.i.i.i ], [ %.pre.i.i, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i._crit_edge.i.i ], !dbg !18987
  %i.bh = phi ptr [ %i.au, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread.i.i.i ], [ %i.bf, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i._crit_edge.i.i ]
  %i.bi = phi ptr [ %i.ao, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread.i.i.i ], [ %i.az, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i._crit_edge.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 48, !dbg !18988
  br label %bb.h, !dbg !18989

bb.g:                                             ; preds = %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18986
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !18990, !noalias !18941, !nonnull !514, !noundef !514
  br label %bb.h, !dbg !18991

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bm = phi ptr [ %i.bh, %bb.f ], [ %i.bf, %bb.g ]
  %i.bn = phi ptr [ %i.bi, %bb.f ], [ %i.az, %bb.g ]
  %i.bo = phi i1 [ true, %bb.f ], [ false, %bb.g ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.bj, %bb.f ], [ %i.bl, %bb.g ], !dbg !18992
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 72, !dbg !18993
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !18993, !invariant.load !514, !noalias !18937, !nonnull !514
  invoke void %i.bq(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull %i.bm, ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.sroa.0.0.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
          to label %bb.i unwind label %bb.o, !dbg !18994, !noalias !18945

bb.i:                                             ; preds = %bb.h
  %.sroa.46.0..sroa_idx.i3.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18995
  %.sroa.46.0.copyload.i.i.i.i = load ptr, ptr %.sroa.46.0..sroa_idx.i3.i.i.i, align 8, !dbg !18995, !noalias !18941 ; 5 uses
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18995
  %.sroa.57.0.copyload.i.i.i.i = load ptr, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !dbg !18995, !noalias !18941 ; 4 uses
  %i.br = ptrtoint ptr %.sroa.46.0.copyload.i.i.i.i to i64, !dbg !18996 ; 2 uses
  br i1 %i.bo, label %bb.j, label %bb.k, !dbg !18997

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18998, !noalias !18946
  store i64 %i.br, ptr %i.a, align 8, !dbg !18998, !noalias !18946
  %i.bs = icmp eq ptr %.sroa.46.0.copyload.i.i.i.i, inttoptr (i64 2 to ptr), !dbg !18999
  br i1 %i.bs, label %.noexc9.i.i.i.i, label %.noexc10.i.i.i.i, !dbg !18999, !prof !549

bb.k:                                             ; preds = %bb.i
  %.sroa.68.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !18995
  %.sroa.68.0.copyload.i.i.i.i = load i8, ptr %.sroa.68.0..sroa_idx.i.i.i.i, align 8, !dbg !18995, !noalias !18941
  %i.bt = trunc nuw i8 %.sroa.68.0.copyload.i.i.i.i to i1, !dbg !19000
  br i1 %i.bt, label %bb.m, label %bb.l, !dbg !19000

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i.i.i) ]
  call fastcc void @_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE9put_valueCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %.sroa.57.0.copyload.i.i.i.i, ptr noalias noundef nonnull align 8 %.sroa.46.0.copyload.i.i.i.i) #24, !dbg !19001, !noalias !18947
  br label %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit.i.i.i, !dbg !19001

bb.m:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i.i.i.i) ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEECs2NzvFoTxuAy_2rg(ptr nonnull %.sroa.46.0.copyload.i.i.i.i), !dbg !19002, !noalias !18947
  br label %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit.i.i.i, !dbg !19002

.noexc9.i.i.i.i:                                  ; preds = %bb.j
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #25, !dbg !19003, !noalias !18947
  unreachable, !dbg !19003

.noexc10.i.i.i.i:                                 ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i.i.i) ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.57.0.copyload.i.i.i.i, i64 40, !dbg !19004
  store atomic i64 %i.br, ptr %i.bu release, align 8, !dbg !19005, !noalias !18947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19006, !noalias !18946
  br label %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit.i.i.i, !dbg !19006

bb.n:                                             ; preds = %bb.o
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i.i.i.i, !dbg !19007

bb.o:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3T_4SyncNtB3c_10UnwindSafeEL_EEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #22
          to label %bb.n unwind label %bb.p, !dbg !19008, !noalias !18947

bb.p:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !19007, !noalias !18947
  unreachable, !dbg !19007

_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit.i.i.i: ; preds = %.noexc10.i.i.i.i, %bb.m, %bb.l, %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18974, !noalias !18928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19009, !noalias !18928
  %i.bw = load i64, ptr %i.d, align 8, !dbg !19010, !range !543, !noalias !18928, !noundef !514
  %i.bx = trunc nuw i64 %i.bw to i1, !dbg !19011
  br i1 %i.bx, label %bb.q, label %_RNvXsb_Cs7LWxN68iDgu_12grep_matcherRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB5_7Matcher4findCs2NzvFoTxuAy_2rg.exit, !dbg !19011

bb.q:                                             ; preds = %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !19012
  %i.bz = load i64, ptr %i.by, align 8, !dbg !19012, !noalias !18928, !noundef !514 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !19012
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !19012, !noalias !18928, !noundef !514 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.bz, %i.cb, !dbg !19013
  br i1 %.not.i.i.i, label %bb.r, label %_RNvXsb_Cs7LWxN68iDgu_12grep_matcherRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB5_7Matcher4findCs2NzvFoTxuAy_2rg.exit, !dbg !19013, !prof !549

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25, !dbg !19014, !noalias !18945
  unreachable, !dbg !19014

_RNvXsb_Cs7LWxN68iDgu_12grep_matcherRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB5_7Matcher4findCs2NzvFoTxuAy_2rg.exit: ; preds = %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit.i.i.i, %bb.q
  %.sroa.6.0.i.i.i = phi i64 [ undef, %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit.i.i.i ], [ %i.cb, %bb.q ], !dbg !19015
end_hunk_6

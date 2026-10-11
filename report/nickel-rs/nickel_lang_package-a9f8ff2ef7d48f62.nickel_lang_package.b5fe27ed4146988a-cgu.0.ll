Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25764
inline.NumDeleted: 11075
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he777b2e8467804a9E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !47707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !47693
  br i1 %i.cd, label %bb.k, label %bb.j

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit121.i: ; preds = %"_ZN77_$LT$nickel_lang_package..version..SemVer$u20$as$u20$core..cmp..PartialEq$GT$2eq17he4e3087b0cdb953bE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !47693
  store ptr %i.x, ptr %i.v, align 8, !noalias !47693
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1a08e43d34059d58E", ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !47693
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !47709
  store ptr @0, ptr %i.f, align 8, !noalias !47693
  store i64 1, ptr %.sroa.534.0..sroa_idx.i, align 8, !noalias !47693
  store ptr %i.v, ptr %.sroa.735.0..sroa_idx.i, align 8, !noalias !47693
  store i64 1, ptr %.sroa.836.0..sroa_idx.i, align 8, !noalias !47693
  store ptr null, ptr %.sroa.1037.0..sroa_idx.i, align 8, !noalias !47693
  %i.ce = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !47710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !47709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !47693
  br i1 %i.ce, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit121.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !47693
  br label %bb.l

bb.k:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit121.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !47693
  br label %"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h144b0da8ec71b8d4E.exit"

bb.l:                                             ; preds = %.split89.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit146.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit141.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit136.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit131.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit126.i, %bb.j, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit111.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit106.i
  %i.cf = icmp eq ptr %i.aw, %i.aq
  br i1 %i.cf, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45c297d0bb89a848E.exit.thread.i", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45c297d0bb89a848E.exit.i"

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit126.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !47693
  store ptr %i.be, ptr %i.o, align 8, !noalias !47693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !47693
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.01.091.i, i64 64
  store ptr %i.cg, ptr %i.n, align 8, !noalias !47693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !47693
  store ptr %i.o, ptr %i.m, align 8, !noalias !47693
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1a08e43d34059d58E", ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !47693
  store ptr %i.n, ptr %i.at, align 8, !noalias !47693
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1a08e43d34059d58E", ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !47693
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !47711
  store ptr @1797, ptr %i.e, align 8, !noalias !47693
  store i64 2, ptr %.sroa.558.0..sroa_idx.i, align 8, !noalias !47693
  store ptr %i.m, ptr %.sroa.759.0..sroa_idx.i, align 8, !noalias !47693
  store i64 2, ptr %.sroa.860.0..sroa_idx.i, align 8, !noalias !47693
  store ptr null, ptr %.sroa.1061.0..sroa_idx.i, align 8, !noalias !47693
  %i.ch = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !47712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !47711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !47693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !47693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !47693
  br i1 %i.ch, label %"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h144b0da8ec71b8d4E.exit", label %bb.l

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit131.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !47693
  store ptr %i.be, ptr %i.l, align 8, !noalias !47693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !47693
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.01.091.i, i64 64
  store ptr %i.ci, ptr %i.k, align 8, !noalias !47693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !47693
  store ptr %i.l, ptr %i.j, align 8, !noalias !47693
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1a08e43d34059d58E", ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !47693
  store ptr %i.k, ptr %i.as, align 8, !noalias !47693
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1a08e43d34059d58E", ptr %.sroa.468.0..sroa_idx.i, align 8, !noalias !47693
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !47713
  store ptr @1798, ptr %i.d, align 8, !noalias !47693
  store i64 2, ptr %.sroa.564.0..sroa_idx.i, align 8, !noalias !47693
  store ptr %i.j, ptr %.sroa.765.0..sroa_idx.i, align 8, !noalias !47693
  store i64 2, ptr %.sroa.866.0..sroa_idx.i, align 8, !noalias !47693
  store ptr null, ptr %.sroa.1067.0..sroa_idx.i, align 8, !noalias !47693
  %i.cj = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !47714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !47713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !47693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !47693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !47693
  br i1 %i.cj, label %"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h144b0da8ec71b8d4E.exit", label %bb.l

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit136.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !47693
  store ptr %i.be, ptr %i.q, align 8, !noalias !47693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !47693
  store ptr %i.q, ptr %i.p, align 8, !noalias !47693
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1a08e43d34059d58E", ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !47693
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !47715
  store ptr @1799, ptr %i.c, align 8, !noalias !47693
  store i64 1, ptr %.sroa.552.0..sroa_idx.i, align 8, !noalias !47693
  store ptr %i.p, ptr %.sroa.753.0..sroa_idx.i, align 8, !noalias !47693
  store i64 1, ptr %.sroa.854.0..sroa_idx.i, align 8, !noalias !47693
  store ptr null, ptr %.sroa.1055.0..sroa_idx.i, align 8, !noalias !47693
  %i.ck = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !47716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !47715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !47693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !47693
  br i1 %i.ck, label %"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h144b0da8ec71b8d4E.exit", label %bb.l

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit141.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !47693
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.01.091.i, i64 64
  store ptr %i.cl, ptr %i.ad, align 8, !noalias !47693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !47693
  store ptr %i.ad, ptr %i.ac, align 8, !noalias !47693
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1a08e43d34059d58E", ptr %.sroa.444.0..sroa_idx.i, align 8, !noalias !47693
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !47717
  store ptr @1801, ptr %i.b, align 8, !noalias !47693
  store i64 1, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !47693
  store ptr %i.ac, ptr %.sroa.717.0..sroa_idx.i, align 8, !noalias !47693
  store i64 1, ptr %.sroa.818.0..sroa_idx.i, align 8, !noalias !47693
  store ptr null, ptr %.sroa.1019.0..sroa_idx.i, align 8, !noalias !47693
  %i.cm = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !47718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !47717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !47693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !47693
  br i1 %i.cm, label %"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h144b0da8ec71b8d4E.exit", label %bb.l

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit146.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !47693
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.01.091.i, i64 64
  store ptr %i.cn, ptr %i.ab, align 8, !noalias !47693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !47693
  store ptr %i.ab, ptr %i.aa, align 8, !noalias !47693
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1a08e43d34059d58E", ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !47693
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !47719
  store ptr @1803, ptr %i.a, align 8, !noalias !47693
  store i64 1, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !47693
  store ptr %i.aa, ptr %.sroa.723.0..sroa_idx.i, align 8, !noalias !47693
  store i64 1, ptr %.sroa.824.0..sroa_idx.i, align 8, !noalias !47693
  store ptr null, ptr %.sroa.1025.0..sroa_idx.i, align 8, !noalias !47693
  %i.co = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !47720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !47719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !47693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !47693
  br i1 %i.co, label %"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h144b0da8ec71b8d4E.exit", label %bb.l

.split89.i:                                       ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.cp = load ptr, ptr %i.ar, align 8, !invariant.load !41, !noalias !47721, !nonnull !41
  %i.cq = call noundef zeroext i1 %i.cp(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1804, i64 noundef 1), !noalias !47722, !inline_history !47664
  br i1 %i.cq, label %"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h144b0da8ec71b8d4E.exit", label %bb.l

"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h144b0da8ec71b8d4E.exit": ; preds = %.split78.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit106.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit111.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit126.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit131.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit136.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit141.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit146.i, %.split89.i, %.split.i, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45c297d0bb89a848E.exit.thread.i", %bb.k
  %.sroa.0.0.i = phi i1 [ true, %.split.i ], [ false, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45c297d0bb89a848E.exit.thread.i" ], [ true, %bb.k ], [ true, %.split89.i ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit146.i ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit141.i ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit136.i ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit131.i ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit126.i ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit111.i ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit106.i ], [ true, %.split78.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf28de5f90cdf8a58E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !41, !align !46, !noundef !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !41, !align !42, !noundef !41
  %i.d = tail call noundef zeroext i1 @"_ZN71_$LT$dyn$u20$serde_core..de..Expected$u20$as$u20$core..fmt..Display$GT$3fmt17h3e4b470d38031941E"(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hfbfc0b2ae931e1adE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !41, !align !42, !noundef !41 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47729)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !47728, !noalias !47729, !nonnull !41, !noundef !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !47728, !noalias !47729, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !47730
  store ptr %i.h, ptr %i.d, align 8, !noalias !47730
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !47730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !47730
  store ptr %i.f, ptr %i.c, align 8, !noalias !47730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !47730
  store ptr %i.d, ptr %i.b, align 8, !noalias !47730
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !47730
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.l, align 8, !noalias !47730
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h032ce202775dc989E", ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !47730
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7.i = load ptr, ptr %i.m, align 8, !alias.scope !47729, !noalias !47728
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !47729, !noalias !47728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !47731
  store ptr @2664, ptr %i.a, align 8, !noalias !47730
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !47730
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !47730
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !47730
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !47730
  %i.n = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !47732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !47731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !47730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !47730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !47730
  ret i1 %i.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h112ec09cd5634c39E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47762)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47764)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !alias.scope !47765, !noalias !47766, !noundef !41 ; 3 uses
  %i.d = zext nneg i8 %i.c to i64                 ; 4 uses
  %i.e = icmp ult i8 %i.c, 64
  tail call void @llvm.assume(i1 %i.e)
  %i.f = sub nuw nsw i64 64, %i.d                 ; 4 uses
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %i.c, 0
  br i1 %i.h, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i"

bb.c:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i", %bb.b
  %.sroa.6.0.i.i = phi i64 [ %2, %bb.b ], [ %i.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i" ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ %1, %bb.b ], [ %i.o, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i" ] ; 2 uses
  %i.i = lshr i64 %.sroa.6.0.i.i, 6               ; 3 uses
  %i.j = and i64 %.sroa.6.0.i.i, -64
  %i.k = and i64 %.sroa.6.0.i.i, 63               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.j
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %bb.e, label %bb.d

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i": ; preds = %bb.b
  %i.n = sub nuw i64 %2, %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %1, i64 %i.f, i1 false), !alias.scope !47767, !noalias !47768
  %i.q = load i64, ptr %0, align 8, !alias.scope !47769, !noalias !47770, !noundef !41
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %0, align 8, !alias.scope !47769, !noalias !47770
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4sha18compress8compress17h1d9848602312bc8eE(ptr noalias noundef nonnull align 4 dereferenceable(20) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.a, i64 noundef range(i64 1, 0) 1), !noalias !47766
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %0, align 8, !alias.scope !47771, !noalias !47772, !noundef !41
  %i.u = add i64 %i.t, %i.i
  store i64 %i.u, ptr %0, align 8, !alias.scope !47771, !noalias !47772
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4sha18compress8compress17h1d9848602312bc8eE(ptr noalias noundef nonnull align 4 dereferenceable(20) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef range(i64 1, 0) %i.i), !noalias !47773
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.a, ptr nonnull readonly align 1 %i.l, i64 %i.k, i1 false), !alias.scope !47774, !noalias !47775
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17hb6dd02f585d4f38cE.exit"

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !alias.scope !47776, !noalias !47777
  %i.x = add nuw nsw i64 %2, %i.d
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17hb6dd02f585d4f38cE.exit"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17hb6dd02f585d4f38cE.exit": ; preds = %bb.e, %bb.f
  %storemerge.in.i.i = phi i64 [ %i.k, %bb.e ], [ %i.x, %bb.f ]
  %storemerge.i.i = trunc nuw nsw i64 %storemerge.in.i.i to i8
  store i8 %storemerge.i.i, ptr %i.b, align 8, !alias.scope !47765, !noalias !47766
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h162e77bd3ae41ec3E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47813)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47815)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !alias.scope !47816, !noalias !47817, !noundef !41 ; 3 uses
  %i.d = zext nneg i8 %i.c to i64                 ; 4 uses
  %i.e = icmp ult i8 %i.c, 64
  tail call void @llvm.assume(i1 %i.e)
  %i.f = sub nuw nsw i64 64, %i.d                 ; 4 uses
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %i.c, 0
  br i1 %i.h, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i"

bb.c:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i", %bb.b
  %.sroa.6.0.i.i = phi i64 [ %2, %bb.b ], [ %i.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i" ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ %1, %bb.b ], [ %i.o, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i" ] ; 2 uses
  %i.i = lshr i64 %.sroa.6.0.i.i, 6               ; 3 uses
  %i.j = and i64 %.sroa.6.0.i.i, -64
  %i.k = and i64 %.sroa.6.0.i.i, 63               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.j
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %bb.e, label %bb.d

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i": ; preds = %bb.b
  %i.n = sub nuw i64 %2, %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %1, i64 %i.f, i1 false), !alias.scope !47818, !noalias !47819
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !47820, !noalias !47821, !noundef !41
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !alias.scope !47820, !noalias !47821
  tail call void @_ZN4sha26sha25611compress25617h76ee626fd7734764E(ptr noalias noundef nonnull align 8 dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.a, i64 noundef range(i64 1, 0) 1), !noalias !47817
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !47822, !noalias !47823, !noundef !41
  %i.v = add i64 %i.u, %i.i
  store i64 %i.v, ptr %i.t, align 8, !alias.scope !47822, !noalias !47823
  tail call void @_ZN4sha26sha25611compress25617h76ee626fd7734764E(ptr noalias noundef nonnull align 8 dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef range(i64 1, 0) %i.i), !noalias !47824
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.a, ptr nonnull readonly align 1 %i.l, i64 %i.k, i1 false), !alias.scope !47825, !noalias !47826
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17hc2e7adc31ddf628fE.exit"

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !alias.scope !47827, !noalias !47828
  %i.x = add nuw nsw i64 %2, %i.d
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17hc2e7adc31ddf628fE.exit"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17hc2e7adc31ddf628fE.exit": ; preds = %bb.e, %bb.f
  %storemerge.in.i.i = phi i64 [ %i.k, %bb.e ], [ %i.x, %bb.f ]
  %storemerge.i.i = trunc nuw nsw i64 %storemerge.in.i.i to i8
  store i8 %storemerge.i.i, ptr %i.b, align 8, !alias.scope !47816, !noalias !47817
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17ha8ee9100575f979cE"(ptr noalias noundef nonnull align 16 dereferenceable(224) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47864)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47866)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.c = load i8, ptr %i.b, align 16, !alias.scope !47867, !noalias !47868, !noundef !41 ; 3 uses
  %i.d = zext nneg i8 %i.c to i64                 ; 4 uses
  %i.e = icmp sgt i8 %i.c, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = sub nuw nsw i64 128, %i.d                ; 4 uses
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %i.c, 0
  br i1 %i.h, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i"

bb.c:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i", %bb.b
  %.sroa.6.0.i.i = phi i64 [ %2, %bb.b ], [ %i.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i" ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ %1, %bb.b ], [ %i.o, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i" ] ; 2 uses
  %i.i = lshr i64 %.sroa.6.0.i.i, 7               ; 3 uses
  %i.j = and i64 %.sroa.6.0.i.i, -128
  %i.k = and i64 %.sroa.6.0.i.i, 127              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.j
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %bb.e, label %bb.d

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i": ; preds = %bb.b
  %i.n = sub nuw i64 %2, %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %i.f, i1 false), !alias.scope !47869, !noalias !47870
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load i128, ptr %i.q, align 16, !alias.scope !47871, !noalias !47872, !noundef !41
  %i.s = add i128 %i.r, 1
  store i128 %i.s, ptr %i.q, align 16, !alias.scope !47871, !noalias !47872
  tail call void @_ZN4sha26sha51211compress51217h593e08f9c0af29a5E(ptr noalias noundef nonnull align 16 dereferenceable(224) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.a, i64 noundef range(i64 1, 0) 1), !noalias !47868
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.t = zext nneg i64 %i.i to i128
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = load i128, ptr %i.u, align 16, !alias.scope !47873, !noalias !47874, !noundef !41
  %i.w = add i128 %i.v, %i.t
  store i128 %i.w, ptr %i.u, align 16, !alias.scope !47873, !noalias !47874
end_hunk_0
begin_hunk_1_@"_ZN72_$LT$nickel_lang_package..PrecisePkg$u20$as$u20$core..cmp..PartialEq$GT$2eq17hee1baf20ff3385d9E":bb.a
  %i.ba = load i128, ptr %i.ay, align 1
  %i.bb = load i128, ptr %i.az, align 1
  %i.bc = xor i128 %i.ba, %i.bb
  %i.bd = getelementptr i8, ptr %i.ay, i64 16
  %i.be = getelementptr i8, ptr %i.az, i64 16
  %i.bf = load i32, ptr %i.bd, align 1
  %i.bg = load i32, ptr %i.be, align 1
  %i.bh = zext i32 %i.bf to i128
  %i.bi = zext i32 %i.bg to i128
  %i.bj = xor i128 %i.bh, %i.bi
  %i.bk = or i128 %i.bc, %i.bj
  %i.bl = icmp ne i128 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %"_ZN77_$LT$nickel_lang_package..PreciseIndexPkg$u20$as$u20$core..cmp..PartialEq$GT$2eq17h989a21b6baa23626E.exit"

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val = load ptr, ptr %i.bo, align 8, !nonnull !41, !noundef !41
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val3 = load i64, ptr %i.bp, align 8, !noundef !41
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val4 = load ptr, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val5 = load i64, ptr %i.br, align 8
  %i.bs = tail call fastcc noundef zeroext i1 @"_ZN59_$LT$std..path..PathBuf$u20$as$u20$core..cmp..PartialEq$GT$2eq17h9f81c58160f78e12E"(ptr %.val, i64 %.val3, ptr %.val4, i64 %.val5)
  br label %"_ZN77_$LT$nickel_lang_package..PreciseIndexPkg$u20$as$u20$core..cmp..PartialEq$GT$2eq17h989a21b6baa23626E.exit"
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$nickel_lang_package..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h7fa087c2fac9f75aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [64 x i8], align 8                ; 11 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 6 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [48 x i8], align 8                ; 8 uses
  %i.x = alloca [48 x i8], align 8                ; 8 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [48 x i8], align 8                ; 8 uses
  %i.aa = alloca [48 x i8], align 8               ; 8 uses
  %i.ab = alloca [48 x i8], align 8               ; 8 uses
  %i.ac = alloca [48 x i8], align 8               ; 8 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [48 x i8], align 8               ; 9 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [8 x i8], align 8                ; 5 uses
  %i.ba = alloca [48 x i8], align 8               ; 9 uses
  %i.bb = alloca [24 x i8], align 8               ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 9 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [32 x i8], align 8               ; 7 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [8 x i8], align 8                ; 4 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [48 x i8], align 8               ; 9 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [80 x i8], align 8               ; 13 uses
  %i.bs = alloca [16 x i8], align 8               ; 5 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [8 x i8], align 8                ; 4 uses
  %i.bw = alloca [8 x i8], align 8                ; 4 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [8 x i8], align 8                ; 4 uses
  %i.bz = alloca [32 x i8], align 8               ; 7 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [8 x i8], align 8                ; 2 uses
  %i.cc = load i64, ptr %0, align 8, !range !113, !noundef !41 ; 3 uses
  %i.cd = icmp ne i64 %i.cc, -9223372036854775793
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = xor i64 %i.cc, -9223372036854775808
  %i.cf = icmp slt i64 %i.cc, 0
  %i.cg = select i1 %i.cf, i64 %i.ce, i64 15
  switch i64 %i.cg, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit197
    i64 5, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit202
    i64 6, label %bb.f
    i64 7, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit207
    i64 8, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit212
    i64 9, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit217
    i64 10, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit222
    i64 11, label %bb.g
    i64 12, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit227
    i64 13, label %bb.h
    i64 14, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit232
    i64 15, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit237
    i64 16, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit242
    i64 17, label %.split
    i64 18, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit252
    i64 19, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit257
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.ch, ptr %i.cb, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !range !64, !noundef !41
  %.not = icmp eq i64 %i.cj, -9223372036854775808
  br i1 %.not, label %bb.r, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit262

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ck, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !41, !noundef !41
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !noundef !41
  store ptr %i.cm, ptr %i.bi, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.co, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr %i.bi, ptr %i.bh, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.484.0..sroa_idx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.bj, ptr %i.cq, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6b0efdc81e084a49E", ptr %.sroa.488.0..sroa_idx, align 8
  %.val186 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val187 = load ptr, ptr %i.cr, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !79107
  store ptr @1930, ptr %i.ad, align 8
  %.sroa.5335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 2, ptr %.sroa.5335.0..sroa_idx, align 8
  %.sroa.7336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.bh, ptr %.sroa.7336.0..sroa_idx, align 8
  %.sroa.8337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 2, ptr %.sroa.8337.0..sroa_idx, align 8
  %.sroa.10338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr null, ptr %.sroa.10338.0..sroa_idx, align 8
  %i.cs = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val186, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val187, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ad), !noalias !79107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !79107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

bb.d:                                             ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !range !74, !noundef !41
  %i.cv = trunc nuw i32 %i.cu to i1
  br i1 %i.cv, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit267, label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val185 = load ptr, ptr %i.cw, align 8
  %.val184 = load ptr, ptr %1, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.val185, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !invariant.load !41, !noalias !79108, !nonnull !41
  %i.cz = tail call noundef zeroext i1 %i.cy(ptr noundef nonnull align 1 %.val184, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1934, i64 noundef 56), !noalias !79108, !inline_history !8
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit197: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.da, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.db, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !41, !noundef !41
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.df = load i64, ptr %i.de, align 8, !noundef !41
  store ptr %i.dd, ptr %i.bu, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.df, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !41, !noundef !41
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !41
  store ptr %i.di, ptr %i.bt, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %i.dk, ptr %i.dl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !41, !noundef !41
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dp = load i64, ptr %i.do, align 8, !noundef !41
  store ptr %i.dn, ptr %i.bs, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.dp, ptr %i.dq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  store ptr %i.bw, ptr %i.br, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2d9c47372c780cc2E", ptr %.sroa.448.0..sroa_idx, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.bv, ptr %i.dr, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h02a941130114d902E", ptr %.sroa.452.0..sroa_idx, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr %i.bu, ptr %i.ds, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.456.0..sroa_idx, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store ptr %i.bt, ptr %i.dt, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.460.0..sroa_idx, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store ptr %i.bs, ptr %i.du, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.464.0..sroa_idx, align 8
  %.val182 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val183 = load ptr, ptr %i.dv, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !79109
  store ptr @1938, ptr %i.ac, align 8
  %.sroa.5305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 5, ptr %.sroa.5305.0..sroa_idx, align 8
  %.sroa.7306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.br, ptr %.sroa.7306.0..sroa_idx, align 8
  %.sroa.8307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 5, ptr %.sroa.8307.0..sroa_idx, align 8
  %.sroa.10308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr null, ptr %.sroa.10308.0..sroa_idx, align 8
  %i.dw = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val182, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val183, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ac), !noalias !79109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !79109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit202: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !41, !noundef !41
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !41
  store ptr %i.dy, ptr %i.bk, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.ea, ptr %i.eb, align 8
  store ptr %i.bk, ptr %i.bl, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.480.0..sroa_idx, align 8
  %.val180 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val181 = load ptr, ptr %i.ec, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !79110
  store ptr @1941, ptr %i.ab, align 8
  %.sroa.5323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 2, ptr %.sroa.5323.0..sroa_idx, align 8
  %.sroa.7324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.bl, ptr %.sroa.7324.0..sroa_idx, align 8
  %.sroa.8325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 1, ptr %.sroa.8325.0..sroa_idx, align 8
  %.sroa.10326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr null, ptr %.sroa.10326.0..sroa_idx, align 8
  %i.ed = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val180, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val181, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ab), !noalias !79110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !79110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

bb.f:                                             ; preds = %bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = tail call noundef zeroext i1 @"_ZN61_$LT$nickel_lang_git..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hb90af9feea29e5a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ee, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit207: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eg, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store ptr %i.bq, ptr %i.bp, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcfa9e57eaa6e88ffE", ptr %.sroa.432.0..sroa_idx, align 8
  %.val178 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val179 = load ptr, ptr %i.eh, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !79111
  store ptr @0, ptr %i.aa, align 8
  %.sroa.5311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 1, ptr %.sroa.5311.0..sroa_idx, align 8
  %.sroa.7312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.bp, ptr %.sroa.7312.0..sroa_idx, align 8
  %.sroa.8313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 1, ptr %.sroa.8313.0..sroa_idx, align 8
  %.sroa.10314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr null, ptr %.sroa.10314.0..sroa_idx, align 8
  %i.ei = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val178, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val179, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.aa), !noalias !79111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !79111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit212: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ej, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ek, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.ak, ptr %i.aj, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcfa9e57eaa6e88ffE", ptr %.sroa.44.0..sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.al, ptr %i.el, align 8
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hfbfc0b2ae931e1adE", ptr %.sroa.4136.0..sroa_idx, align 8
  %.val176 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val177 = load ptr, ptr %i.em, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !79112
  store ptr @1943, ptr %i.z, align 8
  %.sroa.5395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 3, ptr %.sroa.5395.0..sroa_idx, align 8
  %.sroa.7396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aj, ptr %.sroa.7396.0..sroa_idx, align 8
  %.sroa.8397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 2, ptr %.sroa.8397.0..sroa_idx, align 8
  %.sroa.10398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr null, ptr %.sroa.10398.0..sroa_idx, align 8
  %i.en = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val176, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val177, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.z), !noalias !79112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !79112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit217: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.eo, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !41, !noundef !41
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.es = load i64, ptr %i.er, align 8, !noundef !41
  store ptr %i.eq, ptr %i.bn, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.es, ptr %i.et, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  store ptr %i.bn, ptr %i.bm, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.468.0..sroa_idx, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.bo, ptr %i.eu, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcfa9e57eaa6e88ffE", ptr %.sroa.472.0..sroa_idx, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr @1945, ptr %i.ev, align 8
end_hunk_1
begin_hunk_2_@"_ZN72_$LT$nickel_lang_package..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h7fa087c2fac9f75aE":bb.a
  br i1 %i.gk, label %bb.p, label %bb.q, !prof !44

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !79125
  store ptr %i.s, ptr %i.n, align 8, !noalias !79125
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc6a6e323eb216af0E", ptr %.sroa.415.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !79125
  store ptr %i.r, ptr %i.fx, align 8, !noalias !79125
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc6a6e323eb216af0E", ptr %.sroa.419.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !79125
  store ptr %i.q, ptr %i.fy, align 8, !noalias !79125
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc6a6e323eb216af0E", ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !79125
  store ptr %i.p, ptr %i.fz, align 8, !noalias !79125
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcfa9e57eaa6e88ffE", ptr %.sroa.427.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !79125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !79130
  store ptr @2059, ptr %i.l, align 8, !noalias !79125
  store i64 4, ptr %.sroa.537.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !79125
  store ptr %i.n, ptr %.sroa.738.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !79125
  store i64 4, ptr %.sroa.839.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !79125
  store ptr null, ptr %.sroa.1040.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !79125
  %i.gl = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @1102, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l)
          to label %bb.o unwind label %.loopexit.i.i.i.i.i.i.i.i.i, !noalias !79129

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp.i.i.i.i.i.i.i.i.i:             ; preds = %bb.p
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !79131)
  call void @llvm.experimental.noalias.scope.decl(metadata !79132)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !79133, !noalias !79123 ; 2 uses
  %i.gm = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gm, label %.body.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !79133, !noalias !79123, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !79134
  br label %.body.i.i.i.i

bb.o:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !79130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !79125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !79125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !79125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !79125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !79125
  br i1 %i.gl, label %bb.p, label %bb.q, !prof !44

bb.p:                                             ; preds = %bb.o, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1103, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1105) #73
          to label %.noexc7.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i, !noalias !79129

.noexc7.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !79135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !79123
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !79136
  %i.go = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.gp = icmp eq i64 %i.go, %i.fo
  br i1 %i.gp, label %_ZN4core4iter6traits8iterator8Iterator7collect17heb8a412a6f41fcefE.exit, label %bb.l

common.resume:                                    ; preds = %bb.u, %bb.w, %bb.x, %.body.i.i.i.i
  %.sink = phi ptr [ %i.v, %.body.i.i.i.i ], [ %i.bc, %bb.x ], [ %i.bc, %bb.w ], [ %i.bc, %bb.u ]
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i ], [ %i.jf, %bb.x ], [ %i.jf, %bb.w ], [ %i.ja, %bb.u ]
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7bf270466b7ce7fdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink) #75
  resume { ptr, i32 } %common.resume.op

.body.i.i.i.i:                                    ; preds = %bb.n, %bb.m
  store i64 %.val20.i.i.i.i.i.i.i.i.i, ptr %i.fw, align 8, !alias.scope !79137, !noalias !79138
  br label %common.resume

_ZN4core4iter6traits8iterator8Iterator7collect17heb8a412a6f41fcefE.exit: ; preds = %bb.q, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6b1987abb5050546E.exit.i.i.thread.i.i.i.i"
  %i.gq = phi ptr [ %i.fs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6b1987abb5050546E.exit.i.i.thread.i.i.i.i" ], [ %i.fw, %bb.q ]
  store i64 %i.fo, ptr %i.gq, align 8, !alias.scope !79137, !noalias !79138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !79116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !noundef !41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke fastcc void @_ZN5alloc3str17join_generic_copy17h216805100b73feb0E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gs, i64 noundef %i.gu, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @136, i64 noundef 2)
          to label %bb.v unwind label %bb.u

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit232: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gv, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.gw, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr %i.av, ptr %i.at, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h108c323e26255aedE", ptr %.sroa.420.0..sroa_idx, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.au, ptr %i.gx, align 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1a08e43d34059d58E", ptr %.sroa.4120.0..sroa_idx, align 8
  %.val168 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val169 = load ptr, ptr %i.gy, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !79139
  store ptr @1961, ptr %i.k, align 8
  %.sroa.5365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 3, ptr %.sroa.5365.0..sroa_idx, align 8
  %.sroa.7366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.at, ptr %.sroa.7366.0..sroa_idx, align 8
  %.sroa.8367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 2, ptr %.sroa.8367.0..sroa_idx, align 8
  %.sroa.10368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %.sroa.10368.0..sroa_idx, align 8
  %i.gz = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val168, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val169, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k), !noalias !79139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !79139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit237: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.ha, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %0, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.ar, ptr %i.aq, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h985d201e69a6a1f1E", ptr %.sroa.416.0..sroa_idx, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.as, ptr %i.hb, align 8
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6b0efdc81e084a49E", ptr %.sroa.4124.0..sroa_idx, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr @1945, ptr %i.hc, align 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h77701c25a8e1e697E", ptr %.sroa.4128.0..sroa_idx, align 8
  %.val166 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val167 = load ptr, ptr %i.hd, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !79140
  store ptr @1964, ptr %i.j, align 8
  %.sroa.5371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 3, ptr %.sroa.5371.0..sroa_idx, align 8
  %.sroa.7372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.aq, ptr %.sroa.7372.0..sroa_idx, align 8
  %.sroa.8373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 3, ptr %.sroa.8373.0..sroa_idx, align 8
  %.sroa.10374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %.sroa.10374.0..sroa_idx, align 8
  %i.he = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val166, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val167, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j), !noalias !79140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !79140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit242: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hf, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.ap, ptr %i.ao, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6b0efdc81e084a49E", ptr %.sroa.412.0..sroa_idx, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr @1945, ptr %i.hg, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h77701c25a8e1e697E", ptr %.sroa.4132.0..sroa_idx, align 8
  %.val164 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val165 = load ptr, ptr %i.hh, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !79141
  store ptr @1966, ptr %i.i, align 8
  %.sroa.5377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 2, ptr %.sroa.5377.0..sroa_idx, align 8
  %.sroa.7378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ao, ptr %.sroa.7378.0..sroa_idx, align 8
  %.sroa.8379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 2, ptr %.sroa.8379.0..sroa_idx, align 8
  %.sroa.10380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %.sroa.10380.0..sroa_idx, align 8
  %i.hi = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val164, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val165, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i), !noalias !79141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !79141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

.split:                                           ; preds = %bb.a
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val163 = load ptr, ptr %i.hj, align 8
  %.val162 = load ptr, ptr %1, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.val163, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !invariant.load !41, !noalias !79142, !nonnull !41
  %i.hm = tail call noundef zeroext i1 %i.hl(ptr noundef nonnull align 1 %.val162, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1967, i64 noundef 35), !noalias !79142, !inline_history !8
  br i1 %i.hm, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192, label %bb.ab

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit252: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hn, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hp = load ptr, ptr %i.ho, align 8, !nonnull !41, !noundef !41
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hr = load i64, ptr %i.hq, align 8, !noundef !41
  store ptr %i.hp, ptr %i.ah, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.hr, ptr %i.hs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ai, ptr %i.ag, align 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h108c323e26255aedE", ptr %.sroa.4140.0..sroa_idx, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ah, ptr %i.ht, align 8
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.4144.0..sroa_idx, align 8
  %.val160 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val161 = load ptr, ptr %i.hu, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !79143
  store ptr @1971, ptr %i.h, align 8
  %.sroa.5401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 3, ptr %.sroa.5401.0..sroa_idx, align 8
  %.sroa.7402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.ag, ptr %.sroa.7402.0..sroa_idx, align 8
  %.sroa.8403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 2, ptr %.sroa.8403.0..sroa_idx, align 8
  %.sroa.10404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.10404.0..sroa_idx, align 8
  %i.hv = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val160, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val161, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h), !noalias !79143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !79143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit257: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hw, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.an, ptr %i.am, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcc9af25d66983b66E", ptr %.sroa.48.0..sroa_idx, align 8
  %.val158 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val159 = load ptr, ptr %i.hx, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !79144
  store ptr @0, ptr %i.g, align 8
  %.sroa.5383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.5383.0..sroa_idx, align 8
  %.sroa.7384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.am, ptr %.sroa.7384.0..sroa_idx, align 8
  %.sroa.8385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.8385.0..sroa_idx, align 8
  %.sroa.10386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10386.0..sroa_idx, align 8
  %i.hy = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val158, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val159, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !79144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !79144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit262: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !nonnull !41, !noundef !41
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ic = load i64, ptr %i.ib, align 8, !noundef !41
  store ptr %i.ia, ptr %i.ca, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.ic, ptr %i.id, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store ptr %i.ca, ptr %i.bz, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.436.0..sroa_idx, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %i.cb, ptr %i.ie, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h23ef7b5395874adcE", ptr %.sroa.440.0..sroa_idx, align 8
  %.val156 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val157 = load ptr, ptr %i.if, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !79145
  store ptr @1927, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.bz, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ig = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val156, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val157, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !79145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !79145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

bb.r:                                             ; preds = %bb.c
  %i.ih = tail call noundef zeroext i1 @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ch, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192: ; preds = %bb.s, %.split, %bb.e, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit267, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit262, %bb.r, %bb.ab, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7bf270466b7ce7fdE.exit", %bb.t, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit257, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit252, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit242, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit237, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit232, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit227, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit222, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit217, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit212, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit207, %bb.f, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit202, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit197, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.shrunk = phi i1 [ %i.ig, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit262 ], [ %i.ih, %bb.r ], [ %i.cs, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.ik, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit267 ], [ true, %.split ], [ %i.io, %bb.s ], [ %i.dw, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit197 ], [ %i.ed, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit202 ], [ %i.ef, %bb.f ], [ %i.ei, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit207 ], [ %i.en, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit212 ], [ %i.ex, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit217 ], [ %i.fa, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit222 ], [ %.sroa.0.1.in, %bb.t ], [ %i.fi, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit227 ], [ %i.je, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7bf270466b7ce7fdE.exit" ], [ %i.gz, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit232 ], [ %i.he, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit237 ], [ %i.hi, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit242 ], [ %i.hy, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit257 ], [ %i.ju, %bb.ab ], [ %i.hv, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit252 ], [ %i.cz, %bb.e ]
  ret i1 %.sroa.0.0.shrunk

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit267: ; preds = %bb.d
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store ptr %i.ii, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr %i.by, ptr %i.bx, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4894f91e5da286cbE", ptr %.sroa.444.0..sroa_idx, align 8
  %.val154 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val155 = load ptr, ptr %i.ij, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !79146
  store ptr @1932, ptr %i.e, align 8
  %.sroa.5293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.5293.0..sroa_idx, align 8
  %.sroa.7294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.bx, ptr %.sroa.7294.0..sroa_idx, align 8
  %.sroa.8295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.8295.0..sroa_idx, align 8
  %.sroa.10296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.10296.0..sroa_idx, align 8
  %i.ik = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val154, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val155, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !79146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !79146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

bb.s:                                             ; preds = %bb.d
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val153 = load ptr, ptr %i.il, align 8
  %.val152 = load ptr, ptr %1, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %.val153, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !invariant.load !41, !noalias !79147, !nonnull !41
  %i.io = tail call noundef zeroext i1 %i.in(ptr noundef nonnull align 1 %.val152, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1933, i64 noundef 33), !noalias !79147, !inline_history !8
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit277: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !nonnull !41, !noundef !41
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.is = load i64, ptr %i.ir, align 8, !noundef !41
  store ptr %i.iq, ptr %i.ax, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.is, ptr %i.it, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr %i.az, ptr %i.aw, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h108c323e26255aedE", ptr %.sroa.4112.0..sroa_idx, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.ax, ptr %i.iu, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.4116.0..sroa_idx, align 8
  %.val150 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val151 = load ptr, ptr %i.iv, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !79148
  store ptr @1955, ptr %i.d, align 8
  %.sroa.5359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 3, ptr %.sroa.5359.0..sroa_idx, align 8
  %.sroa.7360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.aw, ptr %.sroa.7360.0..sroa_idx, align 8
  %.sroa.8361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 2, ptr %.sroa.8361.0..sroa_idx, align 8
  %.sroa.10362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.10362.0..sroa_idx, align 8
  %i.iw = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val150, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val151, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !79148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.t

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit282: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %i.az, ptr %i.ay, align 8
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h108c323e26255aedE", ptr %.sroa.4104.0..sroa_idx, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.fd, ptr %i.ix, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr @"_ZN7gix_url5impls61_$LT$impl$u20$core..fmt..Display$u20$for$u20$gix_url..Url$GT$3fmt17h9919d17e4699d549E", ptr %.sroa.4108.0..sroa_idx, align 8
  %.val148 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val149 = load ptr, ptr %i.iy, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79149
  store ptr @1953, ptr %i.c, align 8
  %.sroa.5353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 3, ptr %.sroa.5353.0..sroa_idx, align 8
  %.sroa.7354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ay, ptr %.sroa.7354.0..sroa_idx, align 8
  %.sroa.8355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %.sroa.8355.0..sroa_idx, align 8
  %.sroa.10356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10356.0..sroa_idx, align 8
  %i.iz = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val148, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val149, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !79149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.t

bb.t:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit282, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit277
  %.sroa.0.1.in = phi i1 [ %i.iw, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit277 ], [ %i.iz, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit282 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

bb.u:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17heb8a412a6f41fcefE.exit
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.v:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17heb8a412a6f41fcefE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr %i.be, ptr %i.ba, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h108c323e26255aedE", ptr %.sroa.492.0..sroa_idx, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bd, ptr %i.jb, align 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1a08e43d34059d58E", ptr %.sroa.496.0..sroa_idx, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %i.bb, ptr %i.jc, align 8
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4100.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val147 = load ptr, ptr %i.jd, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79150
  store ptr @1959, ptr %i.b, align 8
  %.sroa.5347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 3, ptr %.sroa.5347.0..sroa_idx, align 8
  %.sroa.7348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ba, ptr %.sroa.7348.0..sroa_idx, align 8
  %.sroa.8349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 3, ptr %.sroa.8349.0..sroa_idx, align 8
  %.sroa.10350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10350.0..sroa_idx, align 8
  %i.je = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val147, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit288 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79151)
  call void @llvm.experimental.noalias.scope.decl(metadata !79152)
  %.val.i.i = load i64, ptr %i.bb, align 8, !alias.scope !79153 ; 2 uses
  %i.jg = icmp eq i64 %.val.i.i, 0
  br i1 %i.jg, label %common.resume, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val1.i.i = load ptr, ptr %i.jh, align 8, !alias.scope !79153, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !79153
  br label %common.resume

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit288: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.experimental.noalias.scope.decl(metadata !79154)
  call void @llvm.experimental.noalias.scope.decl(metadata !79155)
  %.val.i.i289 = load i64, ptr %i.bb, align 8, !alias.scope !79156 ; 2 uses
  %i.ji = icmp eq i64 %.val.i.i289, 0
  br i1 %i.ji, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit291", label %bb.y

bb.y:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit288
  %i.jj = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val1.i.i290 = load ptr, ptr %i.jj, align 8, !alias.scope !79156, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i290, i64 noundef %.val.i.i289, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !79156
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit291"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit291": ; preds = %bb.y, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.experimental.noalias.scope.decl(metadata !79157)
  call void @llvm.experimental.noalias.scope.decl(metadata !79158)
  %i.jk = icmp eq i64 %i.gu, 0
  br i1 %i.jk, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h90fe18ff37b84bb8E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit291", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.jm, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit291" ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.jm = add nuw i64 %.sroa.0.010.i.i.i, 1       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79159)
  call void @llvm.experimental.noalias.scope.decl(metadata !79160)
  %.val.i.i.i.i.i = load i64, ptr %i.jl, align 8, !alias.scope !79161, !noalias !79157 ; 2 uses
  %i.jn = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.jn, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i", label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.jo, align 8, !alias.scope !79161, !noalias !79157, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !79162
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i": ; preds = %bb.z, %.lr.ph.i.i.i
  %i.jp = icmp eq i64 %i.jm, %i.gu
  br i1 %i.jp, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h90fe18ff37b84bb8E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h90fe18ff37b84bb8E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit291"
  %.val2.i = load i64, ptr %i.bc, align 8, !alias.scope !79157 ; 2 uses
  %i.jq = icmp eq i64 %.val2.i, 0
  br i1 %i.jq, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7bf270466b7ce7fdE.exit", label %bb.aa

bb.aa:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h90fe18ff37b84bb8E.exit.i"
  %i.jr = mul nuw i64 %.val2.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gs, i64 noundef %i.jr, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !79157
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7bf270466b7ce7fdE.exit"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7bf270466b7ce7fdE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h90fe18ff37b84bb8E.exit.i", %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192

bb.ab:                                            ; preds = %.split
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !nonnull !41, !align !42, !noundef !41
  %i.ju = tail call noundef zeroext i1 @_ZN19nickel_lang_package7resolve19print_resolve_error17h82f73691ecdc165eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(592) %i.jt)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit192
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN72_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0e75d657f333ed8dE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79207)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !79208, !noalias !79209, !noundef !41 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !79208, !noalias !79209, !nonnull !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !79208, !noalias !79209
end_hunk_2
begin_hunk_3_@"_ZN76_$LT$nickel_lang_package..resolve..Package$u20$as$u20$core..clone..Clone$GT$5clone17he9fef2b2d50b4867E":bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.val1.i, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.t, align 8, !nonnull !41, !noundef !41
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1 = load i64, ptr %i.u, align 8, !noundef !41 ; 7 uses
  %i.v = icmp slt i64 %.val1, 0
  br i1 %i.v, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.h
  %i.w = icmp eq i64 %.val1, 0
  br i1 %i.w, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3cedfd3cd9150471E.exit", label %bb.i

bb.i:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !79778
  %i.x = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val1, i64 noundef range(i64 1, 9) 1) #67, !noalias !79778 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3cedfd3cd9150471E.exit"

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.i ], [ 0, %bb.h ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.val1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73, !noalias !79779
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3cedfd3cd9150471E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.x, %bb.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %.val, i64 %.val1, i1 false), !noalias !79780
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val1, ptr %i.z, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val1, ptr %.sroa.517.0..sroa_idx, align 8
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79781)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !79782
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79783
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1663), !noalias !79784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79783
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1663)
          to label %bb.n unwind label %bb.m, !noalias !79784

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i": ; preds = %bb.p, %bb.o, %bb.m
  %.pn.i.i = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %i.ag, %bb.o ], [ %i.ag, %bb.p ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79785)
  call void @llvm.experimental.noalias.scope.decl(metadata !79786)
  %.val.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !79787, !noalias !79783 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ac, label %common.resume, label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i"
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !79787, !noalias !79783, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !79788
  br label %common.resume

bb.m:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i"

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79783
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810)
          to label %"_ZN69_$LT$nickel_lang_package..index..Id$u20$as$u20$core..clone..Clone$GT$5clone17hd688be5fb4d85465E.exit.i" unwind label %bb.o, !noalias !79784

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79789)
  call void @llvm.experimental.noalias.scope.decl(metadata !79790)
  %.val.i.i2.i.i = load i64, ptr %i.b, align 8, !alias.scope !79791, !noalias !79783 ; 2 uses
  %i.ah = icmp eq i64 %.val.i.i2.i.i, 0
  br i1 %i.ah, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i3.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !79791, !noalias !79783, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i3.i.i, i64 noundef %.val.i.i2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !79792
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i"

"_ZN69_$LT$nickel_lang_package..index..Id$u20$as$u20$core..clone..Clone$GT$5clone17hd688be5fb4d85465E.exit.i": ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !79793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !79793
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !79793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79783
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !range !63, !alias.scope !79781, !noalias !79794, !noundef !41 ; 2 uses
  %i.an = xor i64 %i.am, -9223372036854775808
  %i.ao = icmp slt i64 %i.am, 0
  %i.ap = select i1 %i.ao, i64 %i.an, i64 2
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  switch i64 %i.ap, label %bb.q [
    i64 0, label %bb.r
    i64 1, label %bb.s
    i64 2, label %bb.t
  ]

bb.q:                                             ; preds = %"_ZN69_$LT$nickel_lang_package..index..Id$u20$as$u20$core..clone..Clone$GT$5clone17hd688be5fb4d85465E.exit.i"
  unreachable

bb.r:                                             ; preds = %"_ZN69_$LT$nickel_lang_package..index..Id$u20$as$u20$core..clone..Clone$GT$5clone17hd688be5fb4d85465E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !79794
  %i.aq = load <2 x i64>, ptr %.sroa.62.0..sroa_idx.i, align 8, !alias.scope !79781, !noalias !79794
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !79781, !noalias !79794
  br label %"_ZN75_$LT$nickel_lang_package..resolve..Bucket$u20$as$u20$core..clone..Clone$GT$5clone17h16f7a8a4cbce7a2eE.exit"

bb.s:                                             ; preds = %"_ZN69_$LT$nickel_lang_package..index..Id$u20$as$u20$core..clone..Clone$GT$5clone17hd688be5fb4d85465E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !79794
  %i.ar = load <2 x i64>, ptr %.sroa.62.0..sroa_idx.i, align 8, !alias.scope !79781, !noalias !79794
  %.sroa.8.0.copyload12.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !79781, !noalias !79794
  br label %"_ZN75_$LT$nickel_lang_package..resolve..Bucket$u20$as$u20$core..clone..Clone$GT$5clone17h16f7a8a4cbce7a2eE.exit"

bb.t:                                             ; preds = %"_ZN69_$LT$nickel_lang_package..index..Id$u20$as$u20$core..clone..Clone$GT$5clone17hd688be5fb4d85465E.exit.i"
  %i.as = load <2 x i64>, ptr %.sroa.62.0..sroa_idx.i, align 8, !alias.scope !79781, !noalias !79794
  %i.at = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !79781, !noalias !79794, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !79782
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %bb.v unwind label %bb.u, !noalias !79794

bb.u:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_package..index..Id$GT$17h632b496baf5a45d8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #75, !noalias !79794
  br label %common.resume

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !79782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79782
  br label %"_ZN75_$LT$nickel_lang_package..resolve..Bucket$u20$as$u20$core..clone..Clone$GT$5clone17h16f7a8a4cbce7a2eE.exit"

"_ZN75_$LT$nickel_lang_package..resolve..Bucket$u20$as$u20$core..clone..Clone$GT$5clone17h16f7a8a4cbce7a2eE.exit": ; preds = %bb.r, %bb.s, %bb.v
  %.sroa.8.0.i = phi i64 [ %.sroa.8.0.copyload.i, %bb.r ], [ %.sroa.8.0.copyload12.i, %bb.s ], [ %i.at, %bb.v ]
  %i.av = phi <2 x i64> [ %i.aq, %bb.r ], [ %i.ar, %bb.s ], [ %i.as, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.02, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !79781
  %.sroa.02.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, i64 24, i1 false), !noalias !79781
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !79782
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aw, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.02, i64 96, i1 false)
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x i64> %i.av, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.8.0.i, ptr %.sroa.75.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02)
  br label %bb.w

bb.w:                                             ; preds = %"_ZN75_$LT$nickel_lang_package..resolve..Bucket$u20$as$u20$core..clone..Clone$GT$5clone17h16f7a8a4cbce7a2eE.exit", %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3cedfd3cd9150471E.exit", %"_ZN73_$LT$nickel_lang_package..PreciseGitPkg$u20$as$u20$core..clone..Clone$GT$5clone17hf8431198632eac1aE.exit", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$nickel_lang_package..resolve..Package$u20$as$u20$core..fmt..Display$GT$3fmt17hb3f0a648b8c7e336E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = load i64, ptr %0, align 8, !range !62, !noundef !41 ; 3 uses
  %i.l = icmp ne i64 %i.k, -9223372036854775807
  tail call void @llvm.assume(i1 %i.l)
  %i.m = xor i64 %i.k, -9223372036854775808
  %i.n = icmp slt i64 %i.k, 0
  %i.o = select i1 %i.n, i64 %i.m, i64 1
  switch i64 %i.o, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit31
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit36
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val26 = load ptr, ptr %i.p, align 8
  %.val25 = load ptr, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val26, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !41, !noalias !79803, !nonnull !41
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 1 %.val25, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2109, i64 noundef 17), !noalias !79803, !inline_history !8
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit31: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.t, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !41, !noundef !41
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load i64, ptr %i.w, align 8, !noundef !41
  store ptr %i.v, ptr %i.h, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.x, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he11e4b16c90822ddE", ptr %.sroa.47.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.z, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h02a941130114d902E", ptr %.sroa.411.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.aa, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.415.0..sroa_idx, align 8
  %.val23 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.ab, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79804
  store ptr @2110, ptr %i.c, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 3, ptr %.sroa.543.0..sroa_idx, align 8
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %.sroa.744.0..sroa_idx, align 8
  %.sroa.845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 3, ptr %.sroa.845.0..sroa_idx, align 8
  %.sroa.1046.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.1046.0..sroa_idx, align 8
  %i.ac = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val24, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !79804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit36: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !41, !noundef !41
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !noundef !41
  store ptr %i.ae, ptr %i.e, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  store ptr %i.e, ptr %i.f, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.419.0..sroa_idx, align 8
  %.val21 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val22 = load ptr, ptr %i.ai, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79805
  store ptr @2112, ptr %i.b, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %.sroa.750.0..sroa_idx, align 8
  %.sroa.851.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.851.0..sroa_idx, align 8
  %.sroa.1052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1052.0..sroa_idx, align 8
  %i.aj = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val21, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val22, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !79805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN69_$LT$nickel_lang_package..index..Id$u20$as$u20$core..fmt..Display$GT$3fmt17h46d91b995d9f4ee8E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val20 = load ptr, ptr %i.al, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79806
  store ptr @0, ptr %i.a, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.555.0..sroa_idx, align 8
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.756.0..sroa_idx, align 8
  %.sroa.857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.857.0..sroa_idx, align 8
  %.sroa.1058.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1058.0..sroa_idx, align 8
  %i.am = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val20, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !79806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit36, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit31
  %.sroa.0.0.in = phi i1 [ %i.am, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41 ], [ %i.ac, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit31 ], [ %i.aj, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit36 ], [ %i.s, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN76_$LT$nickel_lang_parser..error..ParseError$u20$as$u20$core..clone..Clone$GT$5clone17h3e614a7f7db1bc7cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.55 = alloca [12 x i8], align 4           ; 4 uses
  %.sroa.5 = alloca [12 x i8], align 4            ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = load i32, ptr %1, align 8, !range !171, !noundef !41
  %.sink20.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink20.sroa.gep21 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  switch i32 %i.e, label %default.unreachable19 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
    i32 15, label %bb.s
    i32 16, label %bb.t
    i32 17, label %bb.u
    i32 18, label %bb.v
    i32 19, label %bb.w
    i32 20, label %bb.x
    i32 21, label %bb.y
    i32 22, label %bb.z
    i32 23, label %bb.aa
    i32 24, label %bb.ab
  ]

default.unreachable19:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noundef !41
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load ptr, ptr %i.h, align 8, !nonnull !41, !noundef !41
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11 = load i64, ptr %i.i, align 8, !noundef !41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ab8e7d4d960bb49E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr nonnull %.val10, i64 %.val11)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.k, align 4
  store i32 0, ptr %0, align 8
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.n, align 8, !nonnull !41, !noundef !41
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val9 = load i64, ptr %i.o, align 8, !noundef !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ab8e7d4d960bb49E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr nonnull %.val, i64 %.val9)
  store i32 1, ptr %0, align 8
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  br label %bb.ac

bb.h:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hacb962f1d6d193baE":bb.a
  br i1 %i.y, label %.preheader.i.i.i.i.i, label %.lr.ph

"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h6d3378e62c68347fE.exit.i.i.i.i.i": ; preds = %.lr.ph
  %i.z = icmp eq i64 %i.ab, %i.v
  br i1 %i.z, label %.preheader.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h6d3378e62c68347fE.exit.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i27 = phi i64 [ %i.ab, %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h6d3378e62c68347fE.exit.i.i.i.i.i" ], [ 0, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.x, i64 %.sroa.0.0.i.i.i.i.i27
  %i.ab = add i64 %.sroa.0.0.i.i.i.i.i27, 1       ; 4 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h62fe4214e2c2c7b8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h6d3378e62c68347fE.exit.i.i.i.i.i" unwind label %bb.d, !noalias !80767

"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h6d3378e62c68347fE.exit7.i.i.i.i.i": ; preds = %.lr.ph29
  %i.ac = add i64 %.sroa.0.1.i.i.i.i.i28, 1       ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.v
  br i1 %i.ad, label %.body.i, label %.lr.ph29

bb.d:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %i.ab, %i.v
  br i1 %i.af, label %.body.i, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.d, %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h6d3378e62c68347fE.exit7.i.i.i.i.i"
  %.sroa.0.1.i.i.i.i.i28 = phi i64 [ %i.ac, %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h6d3378e62c68347fE.exit7.i.i.i.i.i" ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.x, i64 %.sroa.0.1.i.i.i.i.i28
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h62fe4214e2c2c7b8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ag)
          to label %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h6d3378e62c68347fE.exit7.i.i.i.i.i" unwind label %bb.e, !noalias !80767

bb.e:                                             ; preds = %.lr.ph29
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !80767
  unreachable

.preheader.i.i.i.i.i:                             ; preds = %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h6d3378e62c68347fE.exit.i.i.i.i.i", %bb.c, %..preheader.i.i_crit_edge.i.i.i
  %i.ai = phi ptr [ %.pre.i.i.i, %..preheader.i.i_crit_edge.i.i.i ], [ %i.w, %bb.c ], [ %i.w, %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h6d3378e62c68347fE.exit.i.i.i.i.i" ] ; 2 uses
  %.sink25.i.i.i.i = phi i64 [ %i.t, %..preheader.i.i_crit_edge.i.i.i ], [ %i.h, %bb.c ], [ %i.h, %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h6d3378e62c68347fE.exit.i.i.i.i.i" ] ; 8 uses
  %.idx3.i.i.i.i = mul nuw nsw i64 %.sink25.i.i.i.i, 72
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx3.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80769)
  %.not.i.i.i.i.i = icmp eq i64 %.sink25.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc0ab4b5347107e3cE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h281319c570b7cc08E.exit.i.i.i.i.i"
  %.sroa.0.01.i.i.i.i.i = phi i64 [ %i.as, %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h281319c570b7cc08E.exit.i.i.i.i.i" ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [72 x i8], ptr %i.ai, i64 %.sroa.0.01.i.i.i.i.i ; 5 uses
  %i.al = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i, i64 %.sroa.0.01.i.i.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80771)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !80772, !noalias !80773, !noundef !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i64 %i.an, ptr %i.ao, align 8, !alias.scope !80774, !noalias !80775
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.aq, i64 20, i1 false), !alias.scope !80776, !noalias !80777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !80778
  invoke fastcc void @"_ZN76_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..clone..Clone$GT$5clone17hdd3551ea46b2b5fbE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.al)
          to label %.noexc4.i unwind label %.loopexit6.i, !noalias !80755

.noexc4.i:                                        ; preds = %.lr.ph.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h62fe4214e2c2c7b8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ak)
          to label %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h281319c570b7cc08E.exit.i.i.i.i.i" unwind label %bb.f, !noalias !80779

bb.f:                                             ; preds = %.noexc4.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !80779
  br label %.body.i

"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h281319c570b7cc08E.exit.i.i.i.i.i": ; preds = %.noexc4.i
  %i.as = add nuw nsw i64 %.sroa.0.01.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !80779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80778
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.as, %.sink25.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc0ab4b5347107e3cE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc0ab4b5347107e3cE.exit.i.i.i.i": ; preds = %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h281319c570b7cc08E.exit.i.i.i.i.i", %.preheader.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80782)
  %.idx4.i.i.i.i = sub nuw nsw i64 %i.h, %.sink25.i.i.i.i ; 3 uses
  %i.at = load i64, ptr %i.c, align 8, !range !43, !alias.scope !80783, !noalias !80766, !noundef !41
  %i.au = sub nsw i64 %i.at, %.sink25.i.i.i.i
  %i.av = icmp ugt i64 %.idx4.i.i.i.i, %i.au
  br i1 %i.av, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4a1cf2ae89c34c70E.exit.i.i.i.i.i.i.i", !prof !44

bb.g:                                             ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc0ab4b5347107e3cE.exit.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %.sink25.i.i.i.i, i64 noundef %.idx4.i.i.i.i, i64 noundef 8, i64 noundef 72)
          to label %.noexc5.i unwind label %.loopexit.split-lp.i, !noalias !80755

.noexc5.i:                                        ; preds = %bb.g
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !80784, !noalias !80766
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !80784, !noalias !80766
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4a1cf2ae89c34c70E.exit.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4a1cf2ae89c34c70E.exit.i.i.i.i.i.i.i": ; preds = %.noexc5.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc0ab4b5347107e3cE.exit.i.i.i.i"
  %i.aw = phi ptr [ %i.ai, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc0ab4b5347107e3cE.exit.i.i.i.i" ], [ %.pre.i.i.i.i, %.noexc5.i ]
  %i.ax = phi i64 [ %.sink25.i.i.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc0ab4b5347107e3cE.exit.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i, %.noexc5.i ] ; 2 uses
  %i.ay = icmp eq i64 %.sink25.i.i.i.i, %i.h
  br i1 %i.ay, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4a1cf2ae89c34c70E.exit.i.i.i.i.i.i.i"
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.val20.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bg, %bb.j ], [ %i.ax, %bb.h ] ; 3 uses
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.aj, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80785)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80786
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !80787, !noalias !80788, !noundef !41
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.be, i64 20, i1 false), !noalias !80789
  invoke fastcc void @"_ZN76_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..clone..Clone$GT$5clone17hdd3551ea46b2b5fbE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bb)
          to label %bb.j unwind label %bb.k, !noalias !80790

bb.j:                                             ; preds = %bb.i
  store i64 %i.bd, ptr %i.ba, align 8, !noalias !80791
  %i.bf = getelementptr inbounds nuw [72 x i8], ptr %i.aw, i64 %.val20.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !80791
  %i.bg = add i64 %.val20.i.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80786
  %i.bh = add nuw i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %.idx4.i.i.i.i
  br i1 %i.bi, label %.loopexit, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !80784, !noalias !80792
  br label %.body.i

.loopexit6.i:                                     ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.g, %bb.b, %bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h6d3378e62c68347fE.exit7.i.i.i.i.i", %bb.d, %.loopexit.split-lp.i, %.loopexit6.i, %bb.k, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %i.bj, %bb.k ], [ %i.ar, %bb.f ], [ %lpad.loopexit.i, %.loopexit6.i ], [ %i.ae, %bb.d ], [ %i.ae, %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h6d3378e62c68347fE.exit7.i.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr142drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h1ac08aa6a094e7c3E"(ptr noalias noundef align 8 dereferenceable(56) %i.c) #75
          to label %bb.m unwind label %bb.l, !noalias !80755

bb.l:                                             ; preds = %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !80755
  unreachable

bb.m:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

.loopexit:                                        ; preds = %bb.j, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4a1cf2ae89c34c70E.exit.i.i.i.i.i.i.i"
  %storemerge.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4a1cf2ae89c34c70E.exit.i.i.i.i.i.i.i" ], [ %i.bg, %bb.j ]
  store i64 %storemerge.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !80784, !noalias !80792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80755
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load <2 x i64>, ptr %i.bl, align 8
  store <2 x i64> %i.bn, ptr %i.bm, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$nickel_lang_package..index..IdParseError$u20$as$u20$core..fmt..Display$GT$3fmt17h3c9fbb423158a4e8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = load i64, ptr %0, align 8, !range !82, !noundef !41
  switch i64 %i.j, label %default.unreachable52 [
    i64 0, label %bb.b
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit23
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit28
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit33
  ]

default.unreachable52:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val18 = load ptr, ptr %i.k, align 8
  %.val17 = load ptr, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val18, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !41, !noalias !80801, !nonnull !41
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 1 %.val17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2189, i64 noundef 55), !noalias !80801, !inline_history !8
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit23: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcfa9e57eaa6e88ffE", ptr %.sroa.47.0..sroa_idx, align 8
  %.val15 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16 = load ptr, ptr %i.p, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !80802
  store ptr @2192, ptr %i.c, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.h, ptr %.sroa.736.0..sroa_idx, align 8
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.837.0..sroa_idx, align 8
  %.sroa.1038.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.1038.0..sroa_idx, align 8
  %i.q = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val16, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !80802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit28: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcfa9e57eaa6e88ffE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val13 = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.s, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !80803
  store ptr @2194, ptr %i.b, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %.sroa.742.0..sroa_idx, align 8
  %.sroa.843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.843.0..sroa_idx, align 8
  %.sroa.1044.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1044.0..sroa_idx, align 8
  %i.t = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val14, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !80803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit33: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !41, !noundef !41
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noundef !41
  store ptr %i.v, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.x, ptr %i.y, align 8
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.411.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.z, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80804
  store ptr @2196, ptr %i.a, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.748.0..sroa_idx, align 8
  %.sroa.849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.849.0..sroa_idx, align 8
  %.sroa.1050.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1050.0..sroa_idx, align 8
  %i.aa = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val12, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !80804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.b, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit33, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit28, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit23
  %.sroa.0.0.in = phi i1 [ %i.aa, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit33 ], [ %i.q, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit23 ], [ %i.t, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit28 ], [ %i.n, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$nickel_lang_package..version..VersionReq$u20$as$u20$core..fmt..Display$GT$3fmt17h1c51c4aeec2bc15bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !64, !noundef !41
  %.not = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not, label %bb.b, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1a08e43d34059d58E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !41, !noundef !41
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.e, align 8, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80807
  store ptr @2162, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !80807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = tail call noundef zeroext i1 @"_ZN81_$LT$nickel_lang_package..version..SemVerPrefix$u20$as$u20$core..fmt..Display$GT$3fmt17h4fa39ba142e51ecaE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.f, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @"_ZN79_$LT$prodash..progress..utils..Discard$u20$as$u20$prodash..traits..Progress$GT$2id17h53224bacc426ad4bE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN79_$LT$prodash..progress..utils..Discard$u20$as$u20$prodash..traits..Progress$GT$4name17hcf67a8e9141c44d9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nonnull readonly align 1 captures(none) %1) unnamed_addr #47 {
bb.a:
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @"_ZN79_$LT$prodash..progress..utils..Discard$u20$as$u20$prodash..traits..Progress$GT$7set_max17h73312f467a361fecE"(ptr noalias nofree nonnull readnone align 1 captures(none) %0, i64 range(i64 0, 2) %1, i64 %2) unnamed_addr #17 {
bb.a:
  ret { i64, i64 } { i64 0, i64 undef }
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7gix_odb11store_impls7dynamic4find64_$LT$impl$u20$gix_odb..store_impls..dynamic..Handle$LT$S$GT$$GT$21try_find_cached_inner17h6232e61c67d4a0f9E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 1 %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %7, ptr noalias noundef nonnull align 8 dereferenceable(40) %8, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.0391.sroa.0 = alloca [16 x i8], align 8  ; 3 uses
  %.sroa.0391.sroa.5 = alloca [7 x i8], align 1   ; 3 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [20 x i8], align 4                ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 5 uses
  %i.h = alloca [56 x i8], align 16               ; 8 uses
  %.sroa.7180.sroa.7 = alloca [32 x i8], align 8  ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.0168.sroa.4 = alloca [7 x i8], align 1   ; 2 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [40 x i8], align 8                ; 7 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6146.sroa.5 = alloca [16 x i8], align 4  ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5126.sroa.0.sroa.6.sroa.7 = alloca [7 x i8], align 1 ; 5 uses
  %.sroa.5126.sroa.7 = alloca [24 x i8], align 8  ; 5 uses
  %.sroa.6124.sroa.0.sroa.7.sroa.8 = alloca [7 x i8], align 1 ; 5 uses
  %.sroa.6124.sroa.8 = alloca [24 x i8], align 8  ; 5 uses
  %.sroa.6122.sroa.8 = alloca [24 x i8], align 8  ; 6 uses
  %.sroa.12.sroa.8276 = alloca [24 x i8], align 8 ; 5 uses
  %i.t = alloca [1 x i8], align 1                 ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
  %i.v = alloca [20 x i8], align 8                ; 9 uses
  %.sroa.058.sroa.11 = alloca [7 x i8], align 1   ; 8 uses
  %.sroa.052.sroa.9 = alloca [7 x i8], align 1    ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
end_hunk_4
begin_hunk_5_@_ZN8tempfile7Builder10tempdir_in17hb95414db63708fd7E:bb.a
  br i1 %i.cc, label %.loopexit88.i, label %.preheader.i.i.i

bb.x:                                             ; preds = %.preheader.i.i.i
  %i.cd = icmp ult i64 %.sroa.5.031.i.i.i.i, %i.by
  br i1 %i.cd, label %.thread80.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = sub nuw nsw i64 %.sroa.5.031.i.i.i.i, %i.by
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i.i.i, i64 %i.by
  br label %bb.w

_ZN9getrandom8backends27linux_android_with_fallback10fill_inner17hed04a7b69c4fd4ddE.exit.i.i: ; preds = %.noexc42.i
  %i.cg = invoke noundef i32 @_ZN9getrandom8backends27linux_android_with_fallback17use_file_fallback17he7ddd51842738839E(ptr noalias noundef nonnull align 1 %i.a, i64 noundef 8)
          to label %.noexc44.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !96848

.noexc44.i:                                       ; preds = %_ZN9getrandom8backends27linux_android_with_fallback10fill_inner17hed04a7b69c4fd4ddE.exit.i.i
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %.loopexit88.i, label %.thread80.i

bb.z:                                             ; preds = %.loopexit88.i, %.thread80.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !96851
  invoke void @_ZN8tempfile4util7tmpname17hcb7309a029582245E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.p, i64 noundef %i.r, i64 noundef %i.t)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.i, !noalias !96848

.thread80.i:                                      ; preds = %bb.x, %.noexc43.i, %bb.u, %.noexc44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96866
  br label %bb.z

.loopexit88.i:                                    ; preds = %bb.w, %.noexc44.i
  %i.ch = load i64, ptr %i.a, align 8, !noalias !96866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96866
  store i64 %i.ch, ptr %i.h, align 8, !noalias !96851
  br label %bb.z

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !96869)
  %.val.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !96869, !noalias !96870, !nonnull !41, !noundef !41 ; 3 uses
  %.val1.i.i = load i64, ptr %i.ay, align 8, !alias.scope !96869, !noalias !96870, !noundef !41
  invoke void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.065.0.i, i64 noundef %.sroa.6.0.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.ad unwind label %bb.ab, !noalias !96871

bb.ab:                                            ; preds = %bb.aa
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96872)
  %.val.i.i45.i = load i64, ptr %i.f, align 8, !alias.scope !96873, !noalias !96870 ; 2 uses
  %i.cj = icmp eq i64 %.val.i.i45.i, 0
  br i1 %i.cj, label %.body.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val.i.i45.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !96874
  br label %.body.i

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !96875)
  %.val.i2.i.i = load i64, ptr %i.f, align 8, !alias.scope !96876, !noalias !96870 ; 2 uses
  %i.ck = icmp eq i64 %.val.i2.i.i, 0
  br i1 %i.ck, label %_ZN3std4path4Path4join17ha610164d3140ced8E.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val.i2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !96877
  br label %_ZN3std4path4Path4join17ha610164d3140ced8E.exit.i

_ZN3std4path4Path4join17ha610164d3140ced8E.exit.i: ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !96851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !96851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !96851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !96851
  invoke void @_ZN8tempfile3dir6create17hdedaa83382dbe034E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %.sroa.0.0.i.i, i1 noundef zeroext %i.be)
          to label %"_ZN8tempfile7Builder10tempdir_in28_$u7b$$u7b$closure$u7d$$u7d$17h57793e32923a71ecE.exit.i" unwind label %.loopexit.split-lp.loopexit.i, !noalias !96848

"_ZN8tempfile7Builder10tempdir_in28_$u7b$$u7b$closure$u7d$$u7d$17h57793e32923a71ecE.exit.i": ; preds = %_ZN3std4path4Path4join17ha610164d3140ced8E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !96851
  %i.cl = load i8, ptr %i.bf, align 8, !range !76, !noalias !96851, !noundef !41
  %i.cm = icmp eq i8 %i.cl, 2
  br i1 %i.cm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %"_ZN8tempfile7Builder10tempdir_in28_$u7b$$u7b$closure$u7d$$u7d$17h57793e32923a71ecE.exit.i"
  %.val31.i = load ptr, ptr %i.e, align 8, !noalias !96851, !nonnull !41, !noundef !41 ; 2 uses
  %i.cn = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %.val31.i), !noalias !96848
  %i.co = icmp eq i8 %i.cn, 12
  %or.cond.i = and i1 %i.af, %i.co
  br i1 %or.cond.i, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %"_ZN8tempfile7Builder10tempdir_in28_$u7b$$u7b$closure$u7d$$u7d$17h57793e32923a71ecE.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !96852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !96851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !96851
  %i.cp = trunc nuw i8 %.sroa.017.2.i to i1
  %i.cq = icmp ne i64 %.sroa.066.2.i, 0
  %or.cond85.not.i = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %or.cond85.not.i, label %bb.aj, label %_ZN8tempfile4util13create_helper17h4cbbd8cd264891d9E.exit

bb.ah:                                            ; preds = %bb.af
  %i.cr = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %.val31.i), !noalias !96848
  %i.cs = icmp eq i8 %i.cr, 8
  %or.cond3.i = and i1 %i.af, %i.cs
  br i1 %or.cond3.i, label %bb.ai, label %bb.ag

bb.ai:                                            ; preds = %bb.ah, %bb.af
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr95drop_in_place$LT$core..result..Result$LT$tempfile..dir..TempDir$C$std..io..error..Error$GT$$GT$17h2abffb896e0e6ffcE.exit.i" unwind label %.loopexit.split-lp.loopexit.i, !noalias !96848

"_ZN4core3ptr95drop_in_place$LT$core..result..Result$LT$tempfile..dir..TempDir$C$std..io..error..Error$GT$$GT$17h2abffb896e0e6ffcE.exit.i": ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !96851
  %exitcond.not = icmp eq i32 %i.bh, 65536
  br i1 %exitcond.not, label %bb.j, label %bb.k

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.2.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.2.i, i64 noundef %.sroa.066.2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !96878
  br label %_ZN8tempfile4util13create_helper17h4cbbd8cd264891d9E.exit

bb.ak:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i, i64 noundef %.sroa.066.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !96879
  br label %.thread.i

_ZN8tempfile4util13create_helper17h4cbbd8cd264891d9E.exit: ; preds = %.critedge.i, %bb.q, %bb.r, %bb.ag, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN90_$LT$gix_filter..driver..process..client..handshake..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hbcaf927c01e00022E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !104, !noundef !41 ; 3 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775807
  tail call void @llvm.assume(i1 %i.e)
  %i.f = xor i64 %i.d, -9223372036854775808
  %i.g = icmp slt i64 %i.d, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.c, align 8
  %i.j = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @35, i64 noundef 2, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.b, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2659, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2660, i64 noundef 3, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1301, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1380, i64 noundef 6, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.a, align 8
  %i.n = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @26, i64 noundef 21, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @713, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.j, %bb.c ], [ %i.l, %bb.d ], [ %i.n, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN90_$LT$nickel_lang_package..index..path..RelativePathError$u20$as$u20$core..fmt..Display$GT$3fmt17h97a13078dbcb705aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !41, !noundef !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.k, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h032ce202775dc989E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.l, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96882
  store ptr @2664, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !96882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.m
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN90_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h25fae5b301ff0c51E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !41 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !41
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h3dca85aa5917e056E.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96914)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !96914, !noalias !96915, !nonnull !41, !noundef !41 ; 3 uses
  %.val13.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !96916
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96917)
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h3dca85aa5917e056E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.g = bitcast <16 x i1> %i.f to i16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !96917, !noalias !96918
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !96917, !noalias !96918
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !96917, !noalias !96918 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !alias.scope !96917, !noalias !96918, !nonnull !41 ; 2 uses
  br label %.lr.ph.split.i

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha94b761dd234a09cE.exit.loopexit.i": ; preds = %.lr.ph.i.i.i.i.i
  %.not25.i = icmp eq i64 %i.w, 0
  br i1 %.not25.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h3dca85aa5917e056E.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha94b761dd234a09cE.exit.loopexit.i"
  %.lcssa24.i = phi ptr [ %.lcssa23.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha94b761dd234a09cE.exit.loopexit.i" ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %i.n = phi i16 [ %i.v, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha94b761dd234a09cE.exit.loopexit.i" ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %i.o = phi i64 [ %i.w, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha94b761dd234a09cE.exit.loopexit.i" ], [ %i.b, %.lr.ph.i ]
  %.lcssa131819.i = phi ptr [ %.lcssa1317.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha94b761dd234a09cE.exit.loopexit.i" ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %.not13.i.i.i.i = icmp eq i16 %i.n, 0
  br i1 %.not13.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge20.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.i.i.i.i
  %i.p = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %.lcssa24.i, %.lr.ph.split.i ] ; 2 uses
  %i.q = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.lcssa131819.i, %.lr.ph.split.i ]
  %.val911.i.i.i.i = load <16 x i8>, ptr %i.p, align 16, !noalias !96919
  %i.r = icmp sgt <16 x i8> %.val911.i.i.i.i, splat (i8 -1)
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.r to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge20.i.i.i.i

._crit_edge20.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i
  %.lcssa23.i = phi ptr [ %.lcssa24.i, %.lr.ph.split.i ], [ %i.t, %.lr.ph.i.i.i.i ]
  %.lcssa1317.i = phi ptr [ %.lcssa131819.i, %.lr.ph.split.i ], [ %i.s, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.n, %.lr.ph.split.i ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.u = add i16 %.lcssa.i.i.i.i, -1
  %i.v = and i16 %i.u, %.lcssa.i.i.i.i
  %i.w = add i64 %i.o, -1                         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96922)
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [4 x i8], ptr %.lcssa1317.i, i64 %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4 ; 2 uses
  %i.ac = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h847847344d22429cE(i64 %.val.i.i.i.i, i64 %.val5.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ab), !noalias !96923 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96924)
  %i.ad = lshr i64 %i.ac, 57
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ae, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.ab, align 4, !alias.scope !96925, !noalias !96926
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %._crit_edge20.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge20.i.i.i.i ], [ %i.av, %bb.e ]
  %.pn.i.i.i.i.i = phi i64 [ %i.ac, %._crit_edge20.i.i.i.i ], [ %i.aw, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.l ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !96927 ; 2 uses
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.au, %bb.d ], [ %i.ah, %bb.c ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.l
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  %.val3.i.i.i.i.i.i = load i32, ptr %i.ao, align 4, !noalias !96928, !noundef !41
  %i.ap = icmp eq i32 %.val.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.ap, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha94b761dd234a09cE.exit.loopexit.i", label %bb.d, !prof !48

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %bb.e, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h3dca85aa5917e056E.exit, !prof !44

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.at = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.au = and i16 %i.at, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.au, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.av = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.aw = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.av
  br label %bb.c

_ZN4core4iter6traits8iterator8Iterator8try_fold17h3dca85aa5917e056E.exit: ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha94b761dd234a09cE.exit.loopexit.i", %._crit_edge.i.i.i.i.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %._crit_edge.i.i.i.i.i ], [ true, %bb.b ], [ true, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17ha94b761dd234a09cE.exit.loopexit.i" ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h1897994ead81a787E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97457)
  tail call fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17hafadff03b7335eb5E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @708, i64 noundef 12)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !97456, !noalias !97457, !nonnull !41, !align !42, !noundef !41 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97458)
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !97459, !nonnull !41, !align !42, !noundef !41 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97463)
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !97464, !noalias !97465, !noundef !41 ; 3 uses
  %i.f = load i64, ptr %.val.i.i, align 8, !range !43, !alias.scope !97464, !noalias !97465, !noundef !41
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.b, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i", !prof !44

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.e, i64 noundef 2, i64 noundef 1, i64 noundef 1), !noalias !97465
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !97466, !noalias !97465
  br label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i"

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h707fcd04dc429928E.exit.i.i": ; preds = %bb.b, %bb.a
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre.i.i.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !97466, !noalias !97465, !nonnull !41, !noundef !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i16 8250, ptr %i.m, align 1, !noalias !97467
  %i.n = add nuw i64 %i.i, 2
  store i64 %i.n, ptr %i.d, align 8, !alias.scope !97466, !noalias !97465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97471)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !97472, !noalias !97473, !noundef !41 ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.o, null        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !97474, !noalias !97475
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !97474, !noalias !97475 ; 2 uses
  %i.t = ptrtoint ptr %i.o to i64
  %.sroa.15.0.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %i.q, i64 undef
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97476)
  %.val.i.i.i.i.i = load ptr, ptr %.val.i, align 8, !alias.scope !97477, !noalias !97478, !nonnull !41, !align !42, !noundef !41 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97479)
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 24 ; 6 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !97480, !noalias !97478, !noundef !41 ; 2 uses
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !alias.scope !97480, !noalias !97478
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 32 ; 4 uses
end_hunk_5

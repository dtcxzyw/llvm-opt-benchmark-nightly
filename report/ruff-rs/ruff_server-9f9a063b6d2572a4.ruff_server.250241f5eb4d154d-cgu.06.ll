Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_server-9f9a063b6d2572a4.ruff_server.250241f5eb4d154d-cgu.06?download=true
inline.NumInlined: 2671
inline.NumDeleted: 1505
begin_hunk_0_@_RNvMs1_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB5_12RuffSettings8fallback:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !5094
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !5094
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !5094
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 2304
  store i64 -1, ptr %i.er, align 8, !noalias !5094
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 2328
  store i64 -1, ptr %i.es, align 8, !noalias !5094
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 2629
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 2637
  store i8 -1, ptr %i.eu, align 1, !noalias !5094
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 2352
  store i64 -1, ptr %i.ev, align 8, !noalias !5094
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 2592
  store ptr null, ptr %i.ew, align 8, !noalias !5094
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 2376
  store i64 -1, ptr %i.ex, align 8, !noalias !5094
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 2256
  store i64 0, ptr %i.ey, align 8, !noalias !5094
  %.sroa.51.2256..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2264
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.51.2256..sroa_idx.i, align 8, !noalias !5094
  %.sroa.52.2256..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2272
  %.sroa.54.2280..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.52.2256..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !5094
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.54.2280..sroa_idx.i, align 8, !noalias !5094
  %.sroa.55.2280..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2296
  store i64 0, ptr %.sroa.55.2280..sroa_idx.i, align 8, !noalias !5094
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 2400
  store i64 -1, ptr %i.ez, align 8, !noalias !5094
  store <8 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -1>, ptr %i.et, align 1, !noalias !5094
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 2424
  store i64 -1, ptr %i.fa, align 8, !noalias !5094
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 2448
  store i64 -1, ptr %i.fb, align 8, !noalias !5094
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 2472
  store i64 -1, ptr %i.fc, align 8, !noalias !5094
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 2626
  store i8 %.sroa.012.0.i, ptr %i.fd, align 2, !noalias !5094
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2627
  store i8 3, ptr %.sroa.6.0..sroa_idx.i, align 1, !noalias !5094
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2628
  store i8 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !5094
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 2496
  store i64 -1, ptr %i.fe, align 8, !noalias !5094
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 2624
  store i16 0, ptr %i.ff, align 8, !noalias !5094
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 2638
  store i8 0, ptr %i.fg, align 2, !noalias !5094
  store i64 0, ptr %i.b, align 8, !noalias !5094
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 2, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i64 2, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i64 2, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.77.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 664
  store i64 2, ptr %.sroa.77.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.88.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 680
  store i64 2, ptr %.sroa.88.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.99.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  store i64 0, ptr %.sroa.99.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 904
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 928
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 952
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 976
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 984
  store i64 0, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 992
  store i64 -1, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.1910.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1016
  store i64 -1, ptr %.sroa.1910.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.2011.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1040
  store i64 -1, ptr %.sroa.2011.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.2112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  store i64 -1, ptr %.sroa.2112.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.2213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  store i64 -1, ptr %.sroa.2213.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.2314.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1112
  store i64 -1, ptr %.sroa.2314.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.2415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store i64 -1, ptr %.sroa.2415.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.2516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1160
  store i64 -2, ptr %.sroa.2516.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.2617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1264
  store i64 -2, ptr %.sroa.2617.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.2718.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1288
  store i64 -2, ptr %.sroa.2718.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.2819.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1312
  store i64 -2, ptr %.sroa.2819.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.2920.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1416
  store i64 -2, ptr %.sroa.2920.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.3021.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1464
  store i64 -2, ptr %.sroa.3021.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.3122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  store i64 -2, ptr %.sroa.3122.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.3223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1616
  store i64 -2, ptr %.sroa.3223.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.3324.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1776
  store i64 -2, ptr %.sroa.3324.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.3425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1856
  store i64 -2, ptr %.sroa.3425.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.3526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1952
  store i64 -2, ptr %.sroa.3526.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.3627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2008
  store i64 -2, ptr %.sroa.3627.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.3728.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2056
  store i64 -2, ptr %.sroa.3728.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.3829.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2112
  store ptr null, ptr %.sroa.3829.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.3930.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2144
  store i8 -1, ptr %.sroa.3930.0..sroa_idx.i, align 8, !noalias !5094
  %.sroa.4031.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2152
  store i8 -1, ptr %.sroa.4031.0..sroa_idx.i, align 8, !noalias !5094
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 2154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.fh, i8 2, i64 5, i1 false), !noalias !5094
  %.sroa.4232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2159
  store i8 -1, ptr %.sroa.4232.0..sroa_idx.i, align 1, !noalias !5094
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 2164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.fi, i8 -1, i64 5, i1 false), !noalias !5094
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 2520
  store i64 -1, ptr %i.fj, align 8, !noalias !5094
  %.sroa.7647.2520..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2544
  store ptr null, ptr %.sroa.7647.2520..sroa_idx.i, align 8, !noalias !5094
  %.sroa.7749.2520..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2576
  store i16 0, ptr %.sroa.7749.2520..sroa_idx.i, align 8, !noalias !5094
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 2580
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.fk, i8 2, i64 5, i1 false), !noalias !5094
  %.sroa.79.2520..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2585
  store i8 -1, ptr %.sroa.79.2520..sroa_idx.i, align 1, !noalias !5094
  %.sroa.80.2520..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2586
  store i8 -1, ptr %.sroa.80.2520..sroa_idx.i, align 2, !noalias !5094
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 2176
  store i64 0, ptr %i.fl, align 8, !noalias !5094
  %.sroa.4634.2176..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  store i64 0, ptr %.sroa.4634.2176..sroa_idx.i, align 8, !noalias !5094
  %.sroa.4735.2176..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2224
  store i64 -1, ptr %.sroa.4735.2176..sroa_idx.i, align 8, !noalias !5094
  %.sroa.4836.2176..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2248
  store i32 33686018, ptr %.sroa.4836.2176..sroa_idx.i, align 8, !noalias !5094
  call fastcc void @_RNvMs1_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB5_12RuffSettings20with_editor_settings(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(3056) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef align 8 captures(address) dereferenceable(2640) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5094
  br label %bb.at

bb.as:                                            ; preds = %bb.u
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3024) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(3024) %i.cq, i64 3024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5086
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store i64 %i.co, ptr %0, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_RNCNvMs1_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_12RuffSettings8fallbacks_0Bd_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB5_17RuffSettingsIndex3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2640 x i8], align 8              ; 74 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [3032 x i8], align 8              ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [3032 x i8], align 8              ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [288 x i8], align 8               ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [3072 x i8], align 8              ; 7 uses
  %i.x = alloca [3072 x i8], align 8              ; 7 uses
  %i.y = alloca [3072 x i8], align 8              ; 7 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 2 uses
  %i.ae = alloca [1 x i8], align 1                ; 5 uses
  %i.af = alloca [40 x i8], align 8               ; 7 uses
  %i.ag = alloca [136 x i8], align 8              ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 9 uses
  %i.ai = alloca [288 x i8], align 8              ; 12 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 2 uses
  %i.am = alloca [3056 x i8], align 8             ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 9 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [32 x i8], align 8               ; 8 uses
  %i.ax = alloca [8 x i8], align 8                ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [3032 x i8], align 8             ; 4 uses
  %i.ba = alloca [3032 x i8], align 8             ; 6 uses
  %i.bb = alloca [8 x i8], align 8                ; 6 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [24 x i8], align 8               ; 8 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [3032 x i8], align 8             ; 4 uses
  %i.bi = alloca [3032 x i8], align 8             ; 6 uses
  %i.bj = alloca [8 x i8], align 8                ; 6 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [32 x i8], align 8               ; 8 uses
  %i.bn = alloca [3032 x i8], align 8             ; 9 uses
  %i.bo = alloca [3056 x i8], align 8             ; 5 uses
  %i.bp = alloca [24 x i8], align 8               ; 5 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [16 x i8], align 8               ; 5 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [32 x i8], align 8               ; 7 uses
  %i.bw = alloca [24 x i8], align 8               ; 7 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [16 x i8], align 8               ; 5 uses
  %i.bz = alloca [16 x i8], align 8               ; 5 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [32 x i8], align 8               ; 8 uses
  %i.cc = alloca [3032 x i8], align 8             ; 6 uses
  %i.cd = alloca [24 x i8], align 8               ; 7 uses
  %i.ce = alloca [3032 x i8], align 8             ; 11 uses
  %i.cf = alloca [24 x i8], align 8               ; 13 uses
  %i.cg = alloca [24 x i8], align 8               ; 7 uses
  %i.ch = alloca [24 x i8], align 8               ; 9 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [16 x i8], align 8               ; 5 uses
  %i.ck = alloca [16 x i8], align 8               ; 5 uses
  %i.cl = alloca [16 x i8], align 8               ; 5 uses
  %i.cm = alloca [32 x i8], align 8               ; 7 uses
  %i.cn = alloca [24 x i8], align 8               ; 7 uses
  %i.co = alloca [16 x i8], align 8               ; 5 uses
  %i.cp = alloca [16 x i8], align 8               ; 5 uses
  %i.cq = alloca [16 x i8], align 8               ; 5 uses
  %i.cr = alloca [16 x i8], align 8               ; 5 uses
  %i.cs = alloca [32 x i8], align 8               ; 8 uses
  %i.ct = alloca [3056 x i8], align 8             ; 4 uses
  %i.cu = alloca [24 x i8], align 8               ; 6 uses
  %i.cv = alloca [16 x i8], align 8               ; 5 uses
  %i.cw = alloca [16 x i8], align 8               ; 5 uses
  %i.cx = alloca [16 x i8], align 8               ; 5 uses
  %i.cy = alloca [16 x i8], align 8               ; 5 uses
  %i.cz = alloca [32 x i8], align 8               ; 7 uses
  %i.da = alloca [24 x i8], align 8               ; 7 uses
  %i.db = alloca [16 x i8], align 8               ; 5 uses
  %i.dc = alloca [16 x i8], align 8               ; 5 uses
  %i.dd = alloca [16 x i8], align 8               ; 5 uses
  %i.de = alloca [16 x i8], align 8               ; 5 uses
  %i.df = alloca [32 x i8], align 8               ; 8 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 125
  %.val244 = load i8, ptr %i.dg, align 1, !range !21, !noundef !3
  %i.dh = icmp eq i8 %.val244, 2
  %i.di = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.dj = icmp ult i64 %i.di, 2                   ; 2 uses
  br i1 %i.dh, label %bb.fv, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.dj, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.dk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.dk, label %bb.d [
    i8 0, label %bb.l
    i8 1, label %bb.e
    i8 2, label %bb.e
  ], !prof !558

bb.d:                                             ; preds = %bb.c
  %i.dl = tail call noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news_10___CALLSITE) ; 2 uses
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.d
  %.sroa.015.0 = phi i8 [ %i.dl, %bb.d ], [ %i.dk, %bb.c ], [ %i.dk, %bb.c ]
  %i.dn = load ptr, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news_10___CALLSITE, align 8, !nonnull !3, !align !67, !noundef !3
  %i.do = tail call noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dn, i8 noundef %.sroa.015.0)
  br i1 %i.do, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.dp = load ptr, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news_10___CALLSITE, align 8, !nonnull !3, !align !67, !noundef !3 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  store ptr %2, ptr %i.cp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %3, ptr %i.dr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store ptr %i.cp, ptr %i.co, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr @_RNvXs1b_NtCs2AWtUsOyxgP_3std4pathNtB6_7DisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.498.0..sroa_idx, align 8
  store ptr @120, ptr %i.cq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.co, ptr %i.ds, align 8
  store ptr %i.cq, ptr %i.cr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr @54, ptr %i.dt, align 8
  store i64 1, ptr %i.cs, align 8
  %.sroa.017.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cr, ptr %.sroa.017.sroa.4.0..sroa_idx, align 8
  %.sroa.017.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 1, ptr %.sroa.017.sroa.5.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr %i.dq, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cs)
  %i.du = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !5103
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.g, label %_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news1_0Bd_.exit

bb.g:                                             ; preds = %bb.f
  %i.dw = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !5103 ; 2 uses
  %i.dx = icmp ult i64 %i.dw, 6
  call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp samesign ugt i64 %i.dw, 3
  br i1 %i.dy, label %bb.h, label %_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news1_0Bd_.exit

bb.h:                                             ; preds = %bb.g
  %i.dz = load ptr, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news_10___CALLSITE, align 8, !noalias !5103, !nonnull !3, !align !67, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5103
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !3, !noundef !3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !3
  store i64 4, ptr %i.q, align 8, !noalias !5103
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.eb, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !5103
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5103
  %i.ee = call { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger() ; 2 uses
  %i.ef = extractvalue { ptr, ptr } %i.ee, 0      ; 2 uses
  %i.eg = extractvalue { ptr, ptr } %i.ee, 1      ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !invariant.load !3, !nonnull !3
  %i.ej = call noundef zeroext i1 %i.ei(ptr noundef %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q), !inline_history !5106
  br i1 %i.ej, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dz, ptr noundef nonnull %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eg, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cs)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5103
  br label %_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news1_0Bd_.exit

_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news1_0Bd_.exit: ; preds = %bb.f, %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %bb.m, %bb.l, %_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news1_0Bd_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  store ptr null, ptr %i.ch, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 0, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.059.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.059.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.3.0..sroa_idx.i321 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i322 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB5_17RuffSettingsIndex3new:bb.a
bb.bx:                                            ; preds = %bb.bw
  %i.ke = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB1n_2io5error5ErrorEEEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(24) %i.i) #33
          to label %.body266 unwind label %bb.by, !noalias !5158

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB7_4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB7_2io5error5ErrorEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECs3aZOKTqqjPR_11ruff_server.exit.i.i: ; preds = %bb.bw, %bb.bv
  %i.kf = load i64, ptr %i.i, align 8, !range !133, !noalias !5151, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.kf, -2
  br i1 %.not.i.i, label %bb.cb, label %bb.bz, !prof !5159

bb.by:                                            ; preds = %bb.bx
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !5158
  unreachable

bb.bz:                                            ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB7_4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB7_2io5error5ErrorEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECs3aZOKTqqjPR_11ruff_server.exit.i.i
  %.sroa.8.8..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.417.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.8..sroa_idx12.i, i64 16, i1 false), !noalias !5145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5151
  store i64 %i.kf, ptr %i.k, align 8, !noalias !5145
  %.val.i = load i32, ptr %i.kb, align 8, !alias.scope !5149, !noalias !5150, !noundef !3
  switch i32 %.val.i, label %bb.ca [
    i32 3, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB2_8OnceLockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB6_4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_2io5error5ErrorEEE15initialized_mutCs3aZOKTqqjPR_11ruff_server.exit.i
    i32 2, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB2_8OnceLockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB6_4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_2io5error5ErrorEEE15initialized_mutCs3aZOKTqqjPR_11ruff_server.exit.i
    i32 0, label %bb.cc
  ], !prof !558

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @96, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #31
          to label %.noexc.i265 unwind label %bb.ck, !noalias !5150

.noexc.i265:                                      ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB7_4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB7_2io5error5ErrorEEE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECs3aZOKTqqjPR_11ruff_server.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5151
  br label %bb.cn

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs3aZOKTqqjPR_11ruff_server.exit.i.i.i.i.i.i: ; preds = %bb.cj, %bb.ce
  %eh.lpad-body8.i = phi { ptr, i32 } [ %i.ko, %bb.cj ], [ %i.ki, %bb.ce ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ka, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !5150
  br label %.body266

_RNvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB2_8OnceLockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB6_4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_2io5error5ErrorEEE15initialized_mutCs3aZOKTqqjPR_11ruff_server.exit.i: ; preds = %bb.bz, %bb.bz
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
          to label %bb.ci unwind label %bb.ck, !noalias !5150

bb.cc:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !5160)
  %i.kh = load i64, ptr %i.ka, align 8, !range !23, !alias.scope !5163, !noalias !5150, !noundef !3
  %.not.i6.i = icmp eq i64 %i.kh, -1
  br i1 %.not.i6.i, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3aZOKTqqjPR_11ruff_server.exit.i.i unwind label %bb.ce, !noalias !5150

bb.ce:                                            ; preds = %bb.cd
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs3aZOKTqqjPR_11ruff_server.exit.i.i.i.i.i.i unwind label %bb.cf, !noalias !5150

bb.cf:                                            ; preds = %bb.ce
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !5150
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3aZOKTqqjPR_11ruff_server.exit.i.i: ; preds = %bb.cd
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB11_2io5error5ErrorEEECs3aZOKTqqjPR_11ruff_server.exit.i unwind label %bb.cj, !noalias !5150

bb.cg:                                            ; preds = %bb.cc
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ai, i64 256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5164)
  call void @llvm.experimental.noalias.scope.decl(metadata !5167)
  %i.kl = load ptr, ptr %i.kk, align 8, !alias.scope !5170, !noalias !5150, !nonnull !3, !noundef !3
  %i.km = atomicrmw sub ptr %i.kl, i64 1 release, align 8, !noalias !5171
  %i.kn = icmp eq i64 %i.km, 1
  br i1 %i.kn, label %bb.ch, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB11_2io5error5ErrorEEECs3aZOKTqqjPR_11ruff_server.exit.i

bb.ch:                                            ; preds = %bb.cg
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE9drop_slowCs6AO9qwSTTuL_11quick_junit(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB11_2io5error5ErrorEEECs3aZOKTqqjPR_11ruff_server.exit.i unwind label %bb.cj, !noalias !5150

bb.ci:                                            ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB2_8OnceLockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB6_4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_2io5error5ErrorEEE15initialized_mutCs3aZOKTqqjPR_11ruff_server.exit.i
  unreachable

bb.cj:                                            ; preds = %bb.ch, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3aZOKTqqjPR_11ruff_server.exit.i.i
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs3aZOKTqqjPR_11ruff_server.exit.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB11_2io5error5ErrorEEECs3aZOKTqqjPR_11ruff_server.exit.i: ; preds = %bb.ch, %bb.cg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3aZOKTqqjPR_11ruff_server.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ka, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !5150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5145
  br label %bb.cn

bb.ck:                                            ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB2_8OnceLockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtB6_4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_2io5error5ErrorEEE15initialized_mutCs3aZOKTqqjPR_11ruff_server.exit.i, %bb.ca
  %i.kp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB11_2io5error5ErrorEEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(24) %i.k) #33
          to label %.body266 unwind label %bb.cl, !noalias !5150

bb.cl:                                            ; preds = %bb.cm, %bb.ck
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !5150
  unreachable

bb.cm:                                            ; preds = %bb.bu, %bb.bt
  %i.kr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #33
          to label %.body266 unwind label %bb.cl, !noalias !5150

.body266:                                         ; preds = %bb.bx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs3aZOKTqqjPR_11ruff_server.exit.i.i.i.i.i.i, %bb.ck, %bb.cm
  %eh.lpad-body267 = phi { ptr, i32 } [ %i.kp, %bb.ck ], [ %i.ke, %bb.bx ], [ %i.kr, %bb.cm ], [ %eh.lpad-body8.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs3aZOKTqqjPR_11ruff_server.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ks = load i64, ptr %i.ah, align 8, !range !23, !noundef !3
  %.not224 = icmp eq i64 %i.ks, -1
  br i1 %.not224, label %bb.co, label %.body269

bb.cn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB11_2io5error5ErrorEEECs3aZOKTqqjPR_11ruff_server.exit.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5145
  %i.kt = load i64, ptr %i.ah, align 8, !range !23, !noundef !3
  %i.ku = icmp eq i64 %i.kt, -1
  br i1 %i.ku, label %.invoke, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtB11_2io5error5ErrorEECs3aZOKTqqjPR_11ruff_server.exit280

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtB11_2io5error5ErrorEECs3aZOKTqqjPR_11ruff_server.exit280: ; preds = %.invoke, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.not225 = icmp eq i8 %.sroa.039.0, 2
  br i1 %.not225, label %bb.cq, label %bb.cr

bb.co:                                            ; preds = %.body266
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtB11_2io5error5ErrorEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(24) %i.ah) #33
          to label %.body269 unwind label %bb.cp

bb.cp:                                            ; preds = %.body233, %.thread, %bb.fb, %bb.eu, %bb.ed, %bb.dj, %bb.dg, %.thread433, %bb.fa, %bb.ez, %bb.dl, %bb.dk, %bb.co, %.body269
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

.invoke:                                          ; preds = %bb.bs, %bb.cn
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtB11_2io5error5ErrorEECs3aZOKTqqjPR_11ruff_server.exit280 unwind label %bb.br

bb.cq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtB11_2io5error5ErrorEECs3aZOKTqqjPR_11ruff_server.exit280
  %.val245 = load ptr, ptr %i.an, align 8, !nonnull !3, !noundef !3
  %i.kx = getelementptr inbounds nuw i8, ptr %.val245, i64 321
  %i.ky = load i8, ptr %i.kx, align 1, !range !507, !noundef !3
  br label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtB11_2io5error5ErrorEECs3aZOKTqqjPR_11ruff_server.exit280, %bb.cq
  %.sroa.061.0 = phi i8 [ %i.ky, %bb.cq ], [ %.sroa.039.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtB11_2io5error5ErrorEECs3aZOKTqqjPR_11ruff_server.exit280 ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ai, i64 192 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.kz, i8 %.sroa.061.0, i64 6, i1 false)
  store i8 0, ptr %i.kz, align 8
  %i.la = invoke { i64, ptr } @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions21available_parallelism()
          to label %bb.cs unwind label %bb.br     ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  %i.lb = extractvalue { i64, ptr } %i.la, 0      ; 2 uses
  %i.lc = extractvalue { i64, ptr } %i.la, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.lb, ptr %i.h, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.lc, ptr %i.ld, align 8
  %i.le = trunc nuw i64 %i.lb to i1
  br i1 %i.le, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs3aZOKTqqjPR_11ruff_server.exit.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lf = ptrtoint ptr %i.lc to i64
  %i.lg = call range(i64 0, 13) i64 @llvm.umin.i64(i64 %i.lf, i64 12)
  br label %bb.cu

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs3aZOKTqqjPR_11ruff_server.exit.i: ; preds = %bb.cs
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ld)
          to label %bb.cu unwind label %bb.br

bb.cu:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs3aZOKTqqjPR_11ruff_server.exit.i, %bb.ct
  %.sroa.0.05.i = phi i64 [ %i.lg, %bb.ct ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs3aZOKTqqjPR_11ruff_server.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ai, i64 216
  store i64 %.sroa.0.05.i, ptr %i.lh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB5_11WalkBuilder14build_parallel(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.ag, ptr noundef nonnull align 8 %i.ai)
          to label %bb.cv unwind label %bb.br

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.li = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.li, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  store i64 0, ptr %i.af, align 8
  %6 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 %.sroa.019.0, ptr %i.ae, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5172
  store ptr %i.af, ptr %i.g, align 8, !noalias !5176
  %.sroa.4.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx345, align 8, !noalias !5176
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %4, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !5176
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !5176
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %3, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !5176
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.ae, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !5176
  invoke void @_RNvMsd_NtCsizY4S0OBG5z_6ignore4walkNtB5_12WalkParallel5visit(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.ag, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
          to label %bb.cw unwind label %bb.dg

.body:                                            ; preds = %bb.cy
  %lpad.thr_comm.split-lp401 = landingpad { ptr, i32 }
          cleanup
  br label %.body269

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5172
  %i.lj = load atomic i8, ptr %i.ae monotonic, align 1
  %i.lk = icmp eq i8 %i.lj, 0
  br i1 %i.lk, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %2, ptr %i.ac, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %3, ptr %i.ll, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ac, ptr %i.ab, align 8
  %.sroa.4200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs1b_NtCs2AWtUsOyxgP_3std4pathNtB6_7DisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4200.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noundef nonnull @122, ptr noundef nonnull %i.ab)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3aZOKTqqjPR_11ruff_server.exit unwind label %bb.dg

bb.cy:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3aZOKTqqjPR_11ruff_server.exit, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false)
  invoke void @_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtBb_4path7PathBufINtNtB18_4sync3ArcNtNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settings12RuffSettingsEEE10into_innerB2H_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.z)
          to label %bb.cz unwind label %.body

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3aZOKTqqjPR_11ruff_server.exit: ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RINvMNtNtCs3aZOKTqqjPR_11ruff_server7session6clientNtB3_6Client18show_error_messageNtNtCscdodAO9FK5_5alloc6string6StringEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ad)
          to label %bb.cy unwind label %bb.dg

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !5177)
  %i.lm = load i64, ptr %i.aa, align 8, !range !5, !alias.scope !5177, !noalias !5180, !noundef !3
  %i.ln = trunc nuw i64 %i.lm to i1
  br i1 %i.ln, label %bb.da, label %bb.de, !prof !4

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5182
  %i.lo = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.lo, i64 24, i1 false), !noalias !5180
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 43, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #31
          to label %bb.dc unwind label %bb.db, !noalias !5182

bb.db:                                            ; preds = %bb.da
  %i.lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtB8_4sync3ArcNtNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settings12RuffSettingsEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB21_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body269 unwind label %bb.dd

bb.dc:                                            ; preds = %bb.da
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !5182
  unreachable

bb.de:                                            ; preds = %bb.cz
  %i.lr = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.lr, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.lt = load ptr, ptr %i.an, align 8, !nonnull !3, !noundef !3
  store ptr %i.lt, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsizY4S0OBG5z_6ignore4walk11WalkBuilderECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(288) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %bb.df

bb.df:                                            ; preds = %bb.gp, %bb.dh, %bb.de
  ret void

bb.dg:                                            ; preds = %bb.cv, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3aZOKTqqjPR_11ruff_server.exit, %bb.cx
  %lpad.thr_comm400 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtB8_4sync3ArcNtNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settings12RuffSettingsEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB21_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.li)
          to label %.body269 unwind label %bb.cp

bb.dh:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3aZOKTqqjPR_11ruff_server.exit288, %bb.bp
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lu, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  store ptr %i.jd, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %bb.df

bb.di:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %2, ptr %i.ak, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %3, ptr %i.lv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.ak, ptr %i.aj, align 8
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_RNvXs1b_NtCs2AWtUsOyxgP_3std4pathNtB6_7DisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4187.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noundef nonnull @122, ptr noundef nonnull %i.aj)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3aZOKTqqjPR_11ruff_server.exit288 unwind label %.thread395

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3aZOKTqqjPR_11ruff_server.exit288: ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke void @_RINvMNtNtCs3aZOKTqqjPR_11ruff_server7session6clientNtB3_6Client18show_error_messageNtNtCscdodAO9FK5_5alloc6string6StringEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.al)
          to label %bb.dh unwind label %.thread395

.thread382:                                       ; preds = %.body269..thread382_crit_edge, %.body.i, %.thread395
  %i.lw = phi ptr [ %.pre, %.body269..thread382_crit_edge ], [ %i.jd, %.thread395 ], [ %i.jd, %.body.i ]
  %.pn228387 = phi { ptr, i32 } [ %.pn226, %.body269..thread382_crit_edge ], [ %lpad.thr_comm393, %.thread395 ], [ %.pn.i, %.body.i ] ; 2 uses
  %.sroa.074.1386 = phi i1 [ %.sroa.074.3, %.body269..thread382_crit_edge ], [ true, %.thread395 ], [ true, %.body.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5183)
  call void @llvm.experimental.noalias.scope.decl(metadata !5184)
  %i.lx = atomicrmw sub ptr %i.lw, i64 1 release, align 8, !noalias !5140
  %i.ly = icmp eq i64 %i.lx, 1
  br i1 %i.ly, label %bb.dj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settings12RuffSettingsEEB1g_.exit

bb.dj:                                            ; preds = %.thread382
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settings12RuffSettingsE9drop_slowBN_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.an)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settings12RuffSettingsEEB1g_.exit unwind label %bb.cp

bb.dk:                                            ; preds = %bb.ax
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp) #33
          to label %.thread369 unwind label %bb.cp

.thread369:                                       ; preds = %.body238, %bb.dk, %bb.ab, %bb.dl
  %.sroa.073.4 = phi i1 [ true, %bb.dl ], [ false, %bb.ab ], [ false, %bb.dk ], [ false, %.body238 ]
  %.pn217.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.dl ], [ %lpad.thr_comm.split-lp, %bb.ab ], [ %i.ir, %bb.dk ], [ %i.it, %.body238 ] ; 2 uses
  %i.lz = load i64, ptr %i.ce, align 8, !range !23
  %.not221 = icmp eq i64 %i.lz, -1
  br i1 %.not221, label %bb.fa, label %bb.z

bb.dl:                                            ; preds = %bb.am, %bb.as, %bb.aq, %bb.ap, %bb.ak, %.noexc252, %bb.al, %bb.af, %bb.ae, %bb.ai
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3ZkgueCtkyH_14ruff_workspace8settings8SettingsECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(3032) %i.cc) #33
          to label %.thread369 unwind label %bb.cp

bb.dm:                                            ; preds = %bb.dt, %bb.en, %_RNCNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news3_0Bd_.exit, %bb.ev
  %lpad.thr_comm.split-lp426 = landingpad { ptr, i32 }
          cleanup
  br label %.thread433

bb.dn:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3032) %i.bn, ptr noundef nonnull align 8 dereferenceable(3032) %i.ce, i64 3032, i1 false)
  %i.ma = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.mb = icmp ult i64 %i.ma, 5
  br i1 %i.mb, label %bb.do, label %bb.eh

bb.do:                                            ; preds = %bb.dn
  %i.mc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news1_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.mc, label %bb.dp [
    i8 0, label %bb.eh
    i8 1, label %bb.dq
    i8 2, label %bb.dq
  ], !prof !558

bb.dp:                                            ; preds = %bb.do
  %i.md = invoke noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news1_10___CALLSITE)
          to label %bb.dr unwind label %bb.ez     ; 2 uses

bb.dq:                                            ; preds = %bb.do, %bb.do, %bb.dr
  %.sroa.047.0 = phi i8 [ %i.md, %bb.dr ], [ %i.mc, %bb.do ], [ %i.mc, %bb.do ]
  %i.me = load ptr, ptr @_RNvNvMs2_NtNtNtCs3aZOKTqqjPR_11ruff_server7session5index13ruff_settingsNtB7_17RuffSettingsIndex3news1_10___CALLSITE, align 8, !nonnull !3, !align !67, !noundef !3
  %i.mf = invoke noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.me, i8 noundef %.sroa.047.0)
          to label %bb.ds unwind label %bb.ez

bb.dr:                                            ; preds = %bb.dp
  %i.mg = icmp eq i8 %i.md, 0
  br i1 %i.mg, label %bb.eh, label %bb.dq

bb.ds:                                            ; preds = %bb.dq
end_hunk_1

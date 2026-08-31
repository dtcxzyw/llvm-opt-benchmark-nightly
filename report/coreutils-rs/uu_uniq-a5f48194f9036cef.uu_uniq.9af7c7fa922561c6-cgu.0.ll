Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_uniq-a5f48194f9036cef.uu_uniq.9af7c7fa922561c6-cgu.0?download=true
inline.NumInlined: 823
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvCsdiTcXS7gKpe_7uu_uniq6uu_app:_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECsdiTcXS7gKpe_7uu_uniq.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.231486.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.251488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.251488.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.301493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.301493.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.321495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.321495.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.371500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.371500.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.391502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.391502.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.441507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 456 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.441507.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.a, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.21465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.31466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.31467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.31467.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.41469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %.sroa.41469.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.51471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 2, ptr %.sroa.51471.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.111474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.111474.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.121475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.121475.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.141477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.141477.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.161479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.161479.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.181481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.181481.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.201483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.201483.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.221485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.221485.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.241487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.241487.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.261489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.261489.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.271490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %.sroa.291492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.271490.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.291492.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.311494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.311494.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.331496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.331496.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.341497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %.sroa.361499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.341497.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.361499.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.381501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.381501.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.401503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.401503.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.411504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %.sroa.421505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %.sroa.431506.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.411504.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.431506.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.451508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.451508.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.461509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 480 ; 3 uses
  store i64 0, ptr %.sroa.461509.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.471510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store i64 -1, ptr %.sroa.471510.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.481512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store i64 -1, ptr %.sroa.481512.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.491514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  store i64 -2, ptr %.sroa.491514.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.501516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr @70, ptr %.sroa.501516.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.521517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store i64 5, ptr %.sroa.521517.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.541518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store ptr null, ptr %.sroa.541518.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.551520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store ptr null, ptr %.sroa.551520.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.561522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store i32 -1, ptr %.sroa.561522.0..sroa_idx, align 8, !alias.scope !1429, !noalias !1433
  %.sroa.571523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  store i32 -1, ptr %.sroa.571523.0..sroa_idx, align 4, !alias.scope !1429, !noalias !1433
  %.sroa.581524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %.sroa.591525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 636
  store i8 1, ptr %.sroa.591525.0..sroa_idx, align 4, !alias.scope !1429, !noalias !1433
  store i64 1, ptr %.sroa.21465.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.31466.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 2, ptr %.sroa.58.0..sroa_idx, align 8
  store i32 4, ptr %.sroa.581524.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !1443
  %i.cs = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #23, !noalias !1443 ; 5 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.n, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i, !prof !167

bb.n:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsdiTcXS7gKpe_7uu_uniq.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #26, !noalias !1443
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsdiTcXS7gKpe_7uu_uniq.exit
  store i64 1, ptr %i.cs, align 8, !noalias !1446
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 1, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !1446
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i8 3, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1446
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.cu = load i64, ptr %.sroa.441507.0..sroa_idx, align 8, !alias.scope !1450, !noalias !1451, !noundef !4 ; 4 uses
  %.idx = shl nuw nsw i64 %i.cu, 4
  %i.cv = getelementptr inbounds nuw i8, ptr inttoptr (i64 8 to ptr), i64 %.idx
  %cond = icmp eq i64 %i.cu, 0
  br i1 %cond, label %bb.p, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i1619, i64 16 ; 2 uses
  %i.cx = add i64 %.sroa.8.0.i.i.i1618, 1
  %i.cy = icmp eq ptr %i.cw, %i.cv
  br i1 %i.cy, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsdiTcXS7gKpe_7uu_uniq.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i, %bb.o
  %.sroa.0.0.i.i.i1619 = phi ptr [ %i.cw, %bb.o ], [ inttoptr (i64 8 to ptr), %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i1618 = phi i64 [ %i.cx, %bb.o ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i ] ; 2 uses
  %.val.i.i.i = load i128, ptr %.sroa.0.0.i.i.i1619, align 8, !noalias !1455
  %i.cz = icmp eq i128 %.val.i.i.i, 63958622876645927927552189038096644140
  br i1 %i.cz, label %bb.r, label %bb.o

bb.p:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.421505.0..sroa_idx) #22, !noalias !1456
  %.pre.i.i.i514 = load ptr, ptr %.sroa.431506.0..sroa_idx, align 8, !alias.scope !1459, !noalias !1456
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsdiTcXS7gKpe_7uu_uniq.exit.i.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsdiTcXS7gKpe_7uu_uniq.exit.i.i.i: ; preds = %bb.o, %bb.p
  %i.da = phi ptr [ %.pre.i.i.i514, %bb.p ], [ inttoptr (i64 8 to ptr), %bb.o ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.cu ; 2 uses
  store i64 -5875614554295535572, ptr %i.db, align 8, !noalias !1461
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 3467203893602029906, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1461
  %i.dc = add i64 %i.cu, 1
  store i64 %i.dc, ptr %.sroa.441507.0..sroa_idx, align 8, !alias.scope !1459, !noalias !1456
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 464 ; 2 uses
  %i.de = load i64, ptr %.sroa.461509.0..sroa_idx, align 8, !alias.scope !1462, !noalias !1465, !noundef !4 ; 3 uses
  %i.df = load i64, ptr %i.dd, align 8, !range !40, !alias.scope !1462, !noalias !1465, !noundef !4
  %i.dg = icmp eq i64 %i.de, %i.df
  br i1 %i.dg, label %bb.q, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECsdiTcXS7gKpe_7uu_uniq.exit

bb.q:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsdiTcXS7gKpe_7uu_uniq.exit.i.i.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd) #22, !noalias !1465
  br label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECsdiTcXS7gKpe_7uu_uniq.exit

bb.r:                                             ; preds = %.lr.ph
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i1618, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #24, !noalias !1455
  unreachable

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECsdiTcXS7gKpe_7uu_uniq.exit: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsdiTcXS7gKpe_7uu_uniq.exit.i.i.i, %bb.q
  %i.dh = ptrtoint ptr %i.cs to i64
  %i.di = load ptr, ptr %.sroa.451508.0..sroa_idx, align 8, !alias.scope !1462, !noalias !1465, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.di, i64 %i.de ; 4 uses
  store i64 %i.dh, ptr %i.dj, align 8, !noalias !1467
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 ptrtoint (ptr @9 to i64), ptr %.sroa.7.0..sroa_idx3.i.i, align 8, !noalias !1467
  %.sroa.10.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 -5875614554295535572, ptr %.sroa.10.0..sroa_idx5.i.i, align 8, !noalias !1467
  %.sroa.13.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i64 3467203893602029906, ptr %.sroa.13.0..sroa_idx7.i.i, align 8, !noalias !1467
  %i.dk = add i64 %i.de, 1
  store i64 %i.dk, ptr %.sroa.461509.0..sroa_idx, align 8, !alias.scope !1462, !noalias !1465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.b, ptr noundef nonnull align 8 dereferenceable(640) %i.a, i64 640, i1 false), !alias.scope !1468
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.b) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.ah, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq10build_meta(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %.val.i = load i64, ptr %0, align 8, !range !257, !alias.scope !1469, !noalias !1472, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load i64, ptr %i.b, align 8, !alias.scope !1469, !noalias !1472 ; 2 uses
  %i.c = trunc nuw i64 %.val.i to i1
  %i.d = icmp ne i64 %.val3.i, 0
  %or.cond.i.i = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond.i.i, label %.lr.ph15.i.i, label %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq18skip_fields_offset.exit.i

.lr.ph15.i.i:                                     ; preds = %bb.a, %bb.c
  %.sroa.09.014.i.i = phi i64 [ %.sroa.09.211.i.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.018.013.i.i = phi i64 [ %i.e, %bb.c ], [ 0, %bb.a ]
  %i.e = add nuw i64 %.sroa.018.013.i.i, 1        ; 2 uses
  %i.f = icmp ult i64 %.sroa.09.014.i.i, %2
  br i1 %i.f, label %.lr.ph.i.i, label %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq18skip_fields_offset.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph15.i.i, %bb.b
  %.sroa.09.19.i.i = phi i64 [ %i.i, %bb.b ], [ %.sroa.09.014.i.i, %.lr.ph15.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.09.19.i.i
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !1474, !noalias !1469, !noundef !4
  switch i8 %i.h, label %.lr.ph12.i.i [
    i8 9, label %bb.b
    i8 10, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
    i8 32, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.i = add i64 %.sroa.09.19.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.i, %2
  br i1 %exitcond.not.i.i, label %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq18skip_fields_offset.exit.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph12.i.i, %.lr.ph12.i.i, %.lr.ph12.i.i, %.lr.ph12.i.i, %.lr.ph12.i.i
  %exitcond21.not.i.i = icmp eq i64 %i.e, %.val3.i
  br i1 %exitcond21.not.i.i, label %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq18skip_fields_offset.exit.i, label %.lr.ph15.i.i

.lr.ph12.i.i:                                     ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.09.211.i.i = phi i64 [ %i.l, %bb.d ], [ %.sroa.09.19.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.09.211.i.i
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !1474, !noalias !1469, !noundef !4
  switch i8 %i.k, label %bb.d [
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 32, label %bb.c
  ]

bb.d:                                             ; preds = %.lr.ph12.i.i
  %i.l = add i64 %.sroa.09.211.i.i, 1             ; 2 uses
  %exitcond20.not.i.i = icmp eq i64 %i.l, %2
  br i1 %exitcond20.not.i.i, label %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq18skip_fields_offset.exit.i, label %.lr.ph12.i.i

_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq18skip_fields_offset.exit.i: ; preds = %bb.c, %.lr.ph15.i.i, %bb.b, %bb.d, %bb.a
  %.sroa.0.0.i.i = phi i64 [ %2, %bb.d ], [ 0, %bb.a ], [ %2, %bb.b ], [ %.sroa.09.211.i.i, %bb.c ], [ %2, %.lr.ph15.i.i ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !257, !alias.scope !1469, !noalias !1472, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq18skip_fields_offset.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1469, !noalias !1472, !noundef !4
  %i.r = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i, i64 %i.q)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %2, i64 %i.r)
  br label %bb.f

bb.e:                                             ; preds = %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq18skip_fields_offset.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %i.s = icmp ugt i64 %.sroa.0.0.i.i, %2
  br i1 %i.s, label %bb.g, label %bb.f, !prof !1480

bb.f:                                             ; preds = %bb.e, %.thread.i
  %.sroa.0.06.i = phi i64 [ %..i.i, %.thread.i ], [ %.sroa.0.0.i.i, %bb.e ] ; 7 uses
  %i.t = sub nuw nsw i64 %2, %.sroa.0.06.i        ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.06.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8, !range !257, !alias.scope !1481, !noalias !1482, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.h, label %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq10key_bounds.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i.i, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #24, !noalias !1484
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1481, !noalias !1482, !noundef !4 ; 3 uses
  %i.aa = icmp eq i64 %2, %.sroa.0.06.i
  br i1 %i.aa, label %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq10key_bounds.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.ac = load i8, ptr %i.ab, align 2, !range !156, !alias.scope !1481, !noalias !1482, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1484
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.t) #23, !noalias !1481
  %i.ae = load i64, ptr %i.a, align 8, !range !257, !noalias !1484, !noundef !4
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.t)
  %i.ag = add nuw i64 %..i.i.i, %.sroa.0.06.i
  br label %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq10key_bounds.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1484
  %..i8.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.t)
  %i.ah = add nuw i64 %..i8.i.i, %.sroa.0.06.i
  br label %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq10key_bounds.exit

bb.m:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !1484, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noalias !1484, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i, %bb.m
  %.sroa.14.0.i.i.i = phi i64 [ 0, %bb.m ], [ %i.ba, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i ] ; 2 uses
  %.sroa.11.0.i.i.i = phi i64 [ 0, %bb.m ], [ %i.az, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.05.i.i.i = phi ptr [ %i.aj, %bb.m ], [ %.sroa.0.1.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i ] ; 6 uses
  %i.an = ptrtoint ptr %.sroa.0.05.i.i.i to i64
  %i.ao = icmp eq ptr %.sroa.0.05.i.i.i, %i.am
  br i1 %i.ao, label %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq15char_prefix_len.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 1 ; 2 uses
  %i.aq = load i8, ptr %.sroa.0.05.i.i.i, align 1, !alias.scope !1485, !noalias !1488, !noundef !4 ; 3 uses
  %i.ar = icmp sgt i8 %i.aq, -1
  br i1 %i.ar, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i: ; preds = %bb.o
  %i.as = icmp ne ptr %i.ap, %i.am
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 2 ; 2 uses
  %i.au = icmp samesign ugt i8 %i.aq, -33
  br i1 %i.au, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i
  %i.av = icmp ne ptr %i.at, %i.am
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = icmp samesign ugt i8 %i.aq, -17
  %spec.select.v = select i1 %i.aw, i64 4, i64 3
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 %spec.select.v
  br label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i, %bb.o, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.at, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i ], [ %i.ap, %bb.o ], [ %spec.select, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i ] ; 2 uses
  %i.ax = ptrtoint ptr %.sroa.0.1.i.i.i to i64
  %i.ay = sub i64 %.sroa.11.0.i.i.i, %i.an
  %i.az = add i64 %i.ay, %i.ax
  %i.ba = add i64 %.sroa.14.0.i.i.i, 1
  %i.bb = icmp eq i64 %.sroa.14.0.i.i.i, %i.z
  br i1 %i.bb, label %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq15char_prefix_len.exit.i.i, label %bb.n

_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq15char_prefix_len.exit.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i, %bb.n
  %.sroa.0.0.i.i.i = phi i64 [ %i.al, %bb.n ], [ %.sroa.11.0.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i ]
  %i.bc = add i64 %.sroa.0.0.i.i.i, %.sroa.0.06.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1484
  br label %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq10key_bounds.exit

_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq10key_bounds.exit: ; preds = %bb.f, %bb.h, %bb.k, %bb.l, %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq15char_prefix_len.exit.i.i
  %.sroa.0.0.i4.i = phi i64 [ %2, %bb.f ], [ %i.ag, %bb.k ], [ %i.ah, %bb.l ], [ %i.bc, %_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq15char_prefix_len.exit.i.i ], [ %2, %bb.h ]
  store i64 %.sroa.0.06.i, ptr %3, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.0.0.i4.i, ptr %i.bd, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvMCsdiTcXS7gKpe_7uu_uniqNtB2_4Uniq11is_c_locale() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 6) #23, !noalias !1496
  %i.b = load i64, ptr %i.a, align 8, !range !148, !noalias !4, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.b, -1
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 8) #23, !noalias !1496
  %i.c = load i64, ptr %i.a, align 8, !range !148, !noalias !4, !noundef !4 ; 2 uses
  %.not.i.1 = icmp eq i64 %i.c, -1
  br i1 %.not.i.1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 4) #23, !noalias !1496
  %i.d = load i64, ptr %i.a, align 8, !range !148, !noalias !4, !noundef !4 ; 2 uses
  %.not.i.2 = icmp eq i64 %i.d, -1
  br i1 %.not.i.2, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6filterNCNvMCsdiTcXS7gKpe_7uu_uniqNtB1D_4Uniq11is_c_locales_0EB1D_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1499, !noalias !1502 ; 9 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1499, !noalias !1502 ; 2 uses
  %.not9.i = icmp eq i64 %.sroa.7.0.copyload.i, 0
  br i1 %.not9.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = icmp eq i64 %.lcssa, 0
  br i1 %i.e, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6filterNCNvMCsdiTcXS7gKpe_7uu_uniqNtB1D_4Uniq11is_c_locales_0EB1D_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.lcssa, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1504
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6filterNCNvMCsdiTcXS7gKpe_7uu_uniqNtB1D_4Uniq11is_c_locales_0EB1D_.exit.thread

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6filterNCNvMCsdiTcXS7gKpe_7uu_uniqNtB1D_4Uniq11is_c_locales_0EB1D_.exit.thread: ; preds = %bb.c, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsdiTcXS7gKpe_7uu_uniq.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i64 %.sroa.7.0.copyload.i, label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit13 [
    i64 1, label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit
    i64 5, label %bb.h
  ]

_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %lhsc = load i8, ptr %.sroa.6.0.copyload.i, align 1
  %i.f = icmp eq i8 %lhsc, 67
  br label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit13

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsdiTcXS7gKpe_7uu_uniq.exit: ; preds = %bb.i, %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit13, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6filterNCNvMCsdiTcXS7gKpe_7uu_uniqNtB1D_4Uniq11is_c_locales_0EB1D_.exit.thread
  %.sroa.0.0 = phi i1 [ true, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6filterNCNvMCsdiTcXS7gKpe_7uu_uniqNtB1D_4Uniq11is_c_locales_0EB1D_.exit.thread ], [ %.sroa.0.1, %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit13 ], [ %.sroa.0.1, %bb.i ]
  ret i1 %.sroa.0.0

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.g = load i32, ptr %.sroa.6.0.copyload.i, align 1
  %i.h = xor i32 %i.g, 1230196560
  %i.i = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 4
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = xor i32 %i.k, 88
  %i.m = or i32 %i.h, %i.l
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit13

_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit13: ; preds = %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit, %bb.g, %bb.h
  %.sroa.0.1 = phi i1 [ %i.f, %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit ], [ %i.p, %bb.h ], [ false, %bb.g ] ; 2 uses
  %i.q = icmp eq i64 %.lcssa, 0
  br i1 %i.q, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsdiTcXS7gKpe_7uu_uniq.exit, label %bb.i
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN18nickel_lang_parser7grammar11__action11417h45f0627f3c7939eeE:bb.a

bb.f:                                             ; preds = %_ZN18nickel_lang_parser10identifier5Ident3new17hbb8a7e8f9e84cc02E.exit
  call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..lexer..NormalToken$GT$17h2febfc0c2f8078f4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %0)
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit"

bb.g:                                             ; preds = %_ZN18nickel_lang_parser10identifier5Ident3new17hbb8a7e8f9e84cc02E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load i64, ptr %i.l, align 8, !range !50, !alias.scope !9938, !noundef !19 ; 3 uses
  %i.m = icmp ne i64 %.val2.i, -9223372036854775807
  call void @llvm.assume(i1 %i.m)
  %or.cond.i4.i = icmp slt i64 %.val2.i, 1
  br i1 %or.cond.i4.i, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !9938, !nonnull !19, !noundef !19
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !9940
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit"

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit": ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  ret i32 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_ZN18nickel_lang_parser7grammar11__action11517hb2ffe22a5b1c8fc4E(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8, !noalias !9949
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit.i, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9949
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.b, align 8, !noalias !9949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9949
  store ptr %i.b, ptr %i.a, align 8, !noalias !9949
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10194, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10193)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9949
  br label %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit.i

_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit.i: ; preds = %.noexc, %bb.a
  %i.e = invoke fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17hf97887109829ade9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @237, i64 noundef 7)
          to label %_ZN18nickel_lang_parser10identifier5Ident3new17hbb8a7e8f9e84cc02E.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE"(ptr noalias noundef align 8 dereferenceable(64) %0) #53
  resume { ptr, i32 } %i.f

_ZN18nickel_lang_parser10identifier5Ident3new17hbb8a7e8f9e84cc02E.exit: ; preds = %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9950)
  %i.g = load i64, ptr %0, align 8, !range !45, !alias.scope !9950, !noundef !19
  %i.h = call i64 @llvm.usub.sat.i64(i64 %i.g, i64 166)
  switch i64 %i.h, label %bb.d [
    i64 0, label %bb.f
    i64 1, label %bb.g
  ]

bb.d:                                             ; preds = %_ZN18nickel_lang_parser10identifier5Ident3new17hbb8a7e8f9e84cc02E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.i, align 8, !range !50, !alias.scope !9950, !noundef !19 ; 3 uses
  %i.j = icmp ne i64 %.val.i, -9223372036854775807
  call void @llvm.assume(i1 %i.j)
  %or.cond.i.i = icmp slt i64 %.val.i, 1
  br i1 %or.cond.i.i, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !9950, !nonnull !19, !noundef !19
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !9951
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit"

bb.f:                                             ; preds = %_ZN18nickel_lang_parser10identifier5Ident3new17hbb8a7e8f9e84cc02E.exit
  call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..lexer..NormalToken$GT$17h2febfc0c2f8078f4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %0)
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit"

bb.g:                                             ; preds = %_ZN18nickel_lang_parser10identifier5Ident3new17hbb8a7e8f9e84cc02E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load i64, ptr %i.l, align 8, !range !50, !alias.scope !9950, !noundef !19 ; 3 uses
  %i.m = icmp ne i64 %.val2.i, -9223372036854775807
  call void @llvm.assume(i1 %i.m)
  %or.cond.i4.i = icmp slt i64 %.val2.i, 1
  br i1 %or.cond.i4.i, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !9950, !nonnull !19, !noundef !19
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !9952
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit"

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE.exit": ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  ret i32 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar11__action12317h242539fb394866bdE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %4, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [280 x i8], align 8               ; 12 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 8 uses
  %i.h = alloca [160 x i8], align 8               ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [160 x i8], align 8               ; 21 uses
  %.sroa.480 = alloca [52 x i8], align 4          ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [56 x i8], align 8                ; 9 uses
  %i.r = alloca [328 x i8], align 8               ; 5 uses
  %i.s = alloca [56 x i8], align 8                ; 4 uses
  %i.t = alloca [328 x i8], align 8               ; 5 uses
  %i.u = alloca [56 x i8], align 8                ; 4 uses
  %i.v = alloca [328 x i8], align 8               ; 26 uses
  %i.w = alloca [56 x i8], align 8                ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 4 uses
  %i.y = alloca [40 x i8], align 8                ; 9 uses
  %i.z = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %.sroa.055.0.copyload = load i64, ptr %3, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.456.0.copyload = load ptr, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.557.0.copyload = load i64, ptr %.sroa.557.0..sroa_idx, align 8
  %.sroa.021.0.copyload = load i64, ptr %4, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.422.0.copyload = load ptr, ptr %.sroa.422.0..sroa_idx, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.523.0.copyload = load i64, ptr %.sroa.523.0..sroa_idx, align 8 ; 2 uses
  %i.aa = icmp ult i64 %.sroa.523.0.copyload, 192153584101141163
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %.sroa.422.0.copyload, i64 %.sroa.523.0.copyload
  %.sroa.034.0.copyload = load i64, ptr %5, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8 ; 2 uses
  %i.ac = icmp ult i64 %.sroa.536.0.copyload, 164703072086692426
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %.sroa.435.0.copyload, i64 %.sroa.536.0.copyload
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10083)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10084
  store i64 1, ptr %i.l, align 8, !alias.scope !10085, !noalias !10086
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.422.0.copyload, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8, !alias.scope !10085, !noalias !10086
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.422.0.copyload, ptr %.sroa.028.sroa.5.0..sroa_idx, align 8, !alias.scope !10085, !noalias !10086
  %.sroa.028.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.021.0.copyload, ptr %.sroa.028.sroa.6.0..sroa_idx, align 8, !alias.scope !10085, !noalias !10086
  %.sroa.028.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.ab, ptr %.sroa.028.sroa.7.0..sroa_idx, align 8, !alias.scope !10085, !noalias !10086
  %.sroa.028.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %.sroa.028.sroa.8.0..sroa_idx, align 8, !alias.scope !10085, !noalias !10086
  %.sroa.028.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr null, ptr %.sroa.028.sroa.10.0..sroa_idx, align 8, !alias.scope !10085, !noalias !10086
  %.sroa.028.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i64 %.sroa.055.0.copyload, ptr %.sroa.028.sroa.12.0..sroa_idx, align 8, !alias.scope !10085, !noalias !10086
  %.sroa.028.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store ptr %.sroa.456.0.copyload, ptr %.sroa.028.sroa.13.0..sroa_idx, align 8, !alias.scope !10085, !noalias !10086
  %.sroa.028.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store i64 %.sroa.557.0.copyload, ptr %.sroa.028.sroa.14.0..sroa_idx, align 8, !alias.scope !10085, !noalias !10086
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store ptr %.sroa.435.0.copyload, ptr %.sroa.430.0..sroa_idx, align 8, !alias.scope !10085, !noalias !10086
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  store ptr %.sroa.435.0.copyload, ptr %.sroa.531.0..sroa_idx, align 8, !alias.scope !10085, !noalias !10086
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  store i64 %.sroa.034.0.copyload, ptr %.sroa.632.0..sroa_idx, align 8, !alias.scope !10085, !noalias !10086
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  store ptr %i.ad, ptr %.sroa.733.0..sroa_idx, align 8, !alias.scope !10085, !noalias !10086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10088)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10090
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6812fdb8306a3666E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(160) %i.l)
          to label %bb.c unwind label %bb.b, !noalias !10091

bb.b:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.af = load i32, ptr %i.j, align 8, !range !53, !noalias !10090, !noundef !19 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.af, 4
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.5.0.copyload.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !noalias !10090
  %.sroa.54.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.54.0.copyload.i.i.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i.i.i, align 8, !noalias !10090 ; 3 uses
  %.sroa.6.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx7.i.i.i.i, align 8, !noalias !10090 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10090
  call fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h1544e9507d02554dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.l), !noalias !10091
  %i.ag = load i64, ptr %i.i, align 8, !noalias !10090, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10090
  %i.ah = tail call i64 @llvm.uadd.sat.i64(i64 %i.ag, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ah, i64 4) ; 3 uses
  %i.ai = mul i64 %.sroa.0.0.i.i.i.i.i, 56        ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.ah, 164703072086692425
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !39

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %i.z, align 8, !alias.scope !10092
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8, !alias.scope !10092
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %i.ak, align 8, !alias.scope !10092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10090
  call fastcc void @"_ZN4core3ptr717drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..option..IntoIter$LT$alloc..string..String$GT$$C$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$..Literal$GT$$C$core..iter..adapters..flatten..Flatten$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$C$alloc..string..String$RP$$GT$$C$nickel_lang_parser..grammar..__action123..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$$GT$17h27c8be51410bae24E"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.l), !noalias !10091
  br label %bb.t

bb.f:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = icmp ne i32 %i.af, 3
  %i.an = icmp eq i64 %.sroa.54.0.copyload.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.i, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i.i, i64 noundef %.sroa.54.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !10093
  br label %bb.s

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.ao = icmp eq i64 %i.ai, 0
  br i1 %i.ao, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !10094
  %i.ap = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, 9) 8) #54, !noalias !10094 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.d
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.h ], [ 0, %bb.d ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10207) #52
          to label %.noexc.i.i.i.i unwind label %bb.f, !noalias !10090

.noexc.i.i.i.i:                                   ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ap, %bb.h ] ; 7 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.ar = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.ar)
  %.sroa.715.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.715.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !10090
  store i32 %i.af, ptr %.sroa.10.0.i.i.i.i.i, align 8, !noalias !10090
  %.sroa.4.0..sroa_idx12.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 4
  store i32 %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx12.i.i.i.i, align 4, !noalias !10090
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 8
  store i64 %.sroa.54.0.copyload.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !noalias !10090
  %.sroa.614.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 16
  store ptr %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.614.0..sroa_idx.i.i.i.i, align 8, !noalias !10090
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.k, align 8, !noalias !10090
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !10090
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !10090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.h, ptr noundef nonnull align 8 dereferenceable(160) %i.l, i64 160, i1 false), !noalias !10091
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10096)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10097
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6c6131c6a09591a9E.exit.i.i.i.i.i.i", %bb.j
  %i.as = phi ptr [ %i.bb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6c6131c6a09591a9E.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.j ]
  %i.at = phi i64 [ %i.bd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6c6131c6a09591a9E.exit.i.i.i.i.i.i" ], [ 1, %bb.j ] ; 5 uses
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6812fdb8306a3666E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(160) %i.h)
          to label %bb.m unwind label %bb.l, !noalias !10098

"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i": ; preds = %bb.q, %bb.p, %bb.l
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.au, %bb.l ], [ %i.be, %bb.p ], [ %i.be, %bb.q ]
  call fastcc void @"_ZN4core3ptr717drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..option..IntoIter$LT$alloc..string..String$GT$$C$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$..Literal$GT$$C$core..iter..adapters..flatten..Flatten$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$C$alloc..string..String$RP$$GT$$C$nickel_lang_parser..grammar..__action123..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$$GT$17h27c8be51410bae24E"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.h) #53, !noalias !10098
  call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h6e390a79a80c553bE"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #53, !noalias !10090
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i"

bb.m:                                             ; preds = %bb.k
  %i.av = load i32, ptr %i.g, align 8, !range !53, !noalias !10099, !noundef !19 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.av, 4
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !10099
  %.sroa.54.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10099 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10099 ; 3 uses
  %i.aw = icmp samesign ult i64 %i.at, 164703072086692426
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.k, align 8, !range !38, !alias.scope !10100, !noalias !10090, !noundef !19
  %i.ay = icmp eq i64 %i.at, %i.ax
  br i1 %i.ay, label %bb.o, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6c6131c6a09591a9E.exit.i.i.i.i.i.i"

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10099
  call fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h1544e9507d02554dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.h), !noalias !10098
  %i.az = load i64, ptr %i.f, align 8, !noalias !10099, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10099
  %i.ba = tail call i64 @llvm.uadd.sat.i64(i64 %i.az, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.at, i64 noundef range(i64 1, 0) %i.ba, i64 noundef 8, i64 noundef 56)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6c6131c6a09591a9E.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.p, !noalias !10101

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6c6131c6a09591a9E.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.o
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !10100, !noalias !10090
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6c6131c6a09591a9E.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6c6131c6a09591a9E.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6c6131c6a09591a9E.exit.i.i_crit_edge.i.i.i.i", %bb.n
  %i.bb = phi ptr [ %.pre.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6c6131c6a09591a9E.exit.i.i_crit_edge.i.i.i.i" ], [ %i.as, %bb.n ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [56 x i8], ptr %i.bb, i64 %i.at ; 5 uses
  %.sroa.713.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.713.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, i64 32, i1 false), !noalias !10099
  store i32 %i.av, ptr %i.bc, align 8, !noalias !10099
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !10099
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %.sroa.54.0.copyload.i.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10099
  %.sroa.612.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.612.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10099
  %i.bd = add nuw nsw i64 %i.at, 1                ; 2 uses
  store i64 %i.bd, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !10100, !noalias !10090
  br label %bb.k

bb.p:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp ne i32 %i.av, 3
  %i.bg = icmp eq i64 %.sroa.54.0.copyload.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond.i.i.i.i.i.i, label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.54.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !10102
  br label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i"

bb.r:                                             ; preds = %bb.m
  call fastcc void @"_ZN4core3ptr717drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..option..IntoIter$LT$alloc..string..String$GT$$C$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$..Literal$GT$$C$core..iter..adapters..flatten..Flatten$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$C$alloc..string..String$RP$$GT$$C$nickel_lang_parser..grammar..__action123..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$$GT$17h27c8be51410bae24E"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.h), !noalias !10098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !10103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10090
  br label %bb.t

bb.s:                                             ; preds = %bb.g, %bb.f, %bb.b
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.b ], [ %i.al, %bb.f ], [ %i.al, %bb.g ]
  call fastcc void @"_ZN4core3ptr717drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..option..IntoIter$LT$alloc..string..String$GT$$C$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$..Literal$GT$$C$core..iter..adapters..flatten..Flatten$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$C$alloc..string..String$RP$$GT$$C$nickel_lang_parser..grammar..__action123..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$$GT$17h27c8be51410bae24E"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.l) #53, !noalias !10091
  br label %.thread

bb.t:                                             ; preds = %bb.r, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10084
  %i.bh = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.bh, label %..noexc52_crit_edge, label %bb.u

..noexc52_crit_edge:                              ; preds = %bb.t
  %.sroa.049.0.copyload.pre = load i64, ptr %i.z, align 8
  %.sroa.450.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.450.0.copyload.pre = load ptr, ptr %.sroa.450.0..sroa_idx.phi.trans.insert, align 8
  %.sroa.551.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.551.0.copyload.pre = load i64, ptr %.sroa.551.0..sroa_idx.phi.trans.insert, align 8
  br label %.noexc52

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !19, !noundef !19 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !19 ; 4 uses
  invoke void @_ZN18nickel_lang_parser5utils12strip_indent17hd875a5ab6cf2eccdE(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef %i.bl)
          to label %bb.ab unwind label %bb.ca

bb.v:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9d0379b79eece93E.exit.thread.i", %bb.x, %bb.w
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h87347c78bf70d5a1E"(ptr noalias noundef align 8 dereferenceable(32) %i.n) #53, !noalias !10104
  br label %.thread

.noexc52:                                         ; preds = %..noexc52_crit_edge, %bb.ab
  %.sroa.551.0.copyload = phi i64 [ %.sroa.551.0.copyload.pre, %..noexc52_crit_edge ], [ %i.bl, %bb.ab ] ; 6 uses
  %.sroa.450.0.copyload = phi ptr [ %.sroa.450.0.copyload.pre, %..noexc52_crit_edge ], [ %i.bj, %bb.ab ] ; 6 uses
  %.sroa.049.0.copyload = phi i64 [ %.sroa.049.0.copyload.pre, %..noexc52_crit_edge ], [ %.sroa.049.0.copyload.pre166, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10104
  %i.bn = icmp ult i64 %.sroa.551.0.copyload, 164703072086692426
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %.sroa.450.0.copyload, i64 %.sroa.551.0.copyload ; 4 uses
  store ptr %.sroa.450.0.copyload, ptr %i.n, align 8, !alias.scope !10105
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.049.0.copyload, ptr %i.bp, align 8, !alias.scope !10105
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %.sroa.450.0.copyload, ptr %i.bq, align 8, !alias.scope !10105
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.bo, ptr %i.br, align 8, !alias.scope !10105
  %i.bs = ptrtoint ptr %i.bo to i64
  %.idx = mul nuw nsw i64 %.sroa.551.0.copyload, 56 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.bx = load ptr, ptr %i.bu, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = and i64 %i.by, 7
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr i8, ptr %i.bw, i64 %i.ca  ; 3 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bx to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp ult ptr %i.cb, %i.bx
  %i.cg = icmp ugt i64 %.idx, %i.ce
  %or.cond.i = or i1 %i.cf, %i.cg
  br i1 %or.cond.i, label %bb.w, label %.noexc54

.noexc54:                                         ; preds = %.noexc52
  %i.ch = sub nsw i64 0, %.idx
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  store ptr %i.ci, ptr %i.bv, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i48"

bb.w:                                             ; preds = %.noexc52
  %i.cj = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx)
          to label %.noexc55 unwind label %bb.v   ; 2 uses

.noexc55:                                         ; preds = %bb.w
  %.not5.i.i51 = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i51, label %bb.x, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i48", !prof !20

bb.x:                                             ; preds = %.noexc55
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52
          to label %.noexc56 unwind label %bb.v

.noexc56:                                         ; preds = %bb.x
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i48": ; preds = %.noexc54, %.noexc55
  %.sroa.0.0.i.i49 = phi ptr [ %i.ci, %.noexc54 ], [ %i.cj, %.noexc55 ] ; 2 uses
  %.not147 = icmp eq i64 %.sroa.551.0.copyload, 0
  br i1 %.not147, label %._crit_edge144, label %.lr.ph143

.lr.ph143:                                        ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i48", %.noexc57
  %.sroa.04.0.i50142 = phi i64 [ %i.co, %.noexc57 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i48" ] ; 2 uses
  %.val6381141 = phi ptr [ %i.cl, %.noexc57 ], [ %.sroa.450.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i48" ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.480)
  %i.ck = icmp eq ptr %.val6381141, %i.bo
  br i1 %i.ck, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9d0379b79eece93E.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9d0379b79eece93E.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9d0379b79eece93E.exit.i": ; preds = %.lr.ph143
  %i.cl = getelementptr inbounds nuw i8, ptr %.val6381141, i64 56 ; 3 uses
  %.sroa.0.0.copyload1.i = load i32, ptr %.val6381141, align 8, !noalias !10106 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload1.i, 4
  br i1 %.not.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9d0379b79eece93E.exit.thread.i", label %.noexc57, !prof !40

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9d0379b79eece93E.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9d0379b79eece93E.exit.i", %.lr.ph143
  %i.cm = phi ptr [ %i.cl, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9d0379b79eece93E.exit.i" ], [ %.val6381141, %.lr.ph143 ]
  store ptr %i.cm, ptr %i.bq, align 8
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10550, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10552) #52
          to label %.noexc86 unwind label %bb.v

.noexc86:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9d0379b79eece93E.exit.thread.i"
  unreachable

.noexc57:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9d0379b79eece93E.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.val6381141, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.480, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.6.0..sroa_idx2.i, i64 52, i1 false)
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.i.i49, i64 %.sroa.04.0.i50142 ; 2 uses
  %i.co = add nuw nsw i64 %.sroa.04.0.i50142, 1   ; 2 uses
  store i32 %.sroa.0.0.copyload1.i, ptr %i.cn, align 8, !noalias !10104
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.480.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.480, i64 52, i1 false), !noalias !10104
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.480)
  %exitcond160.not = icmp eq i64 %i.co, %.sroa.551.0.copyload
  br i1 %exitcond160.not, label %._crit_edge144, label %.lr.ph143

._crit_edge144:                                   ; preds = %.noexc57, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i48"
  %.lcssa140 = phi ptr [ %.sroa.450.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i48" ], [ %i.cl, %.noexc57 ] ; 4 uses
  store ptr %.lcssa140, ptr %i.bq, align 8
  %i.cp = ptrtoint ptr %.lcssa140 to i64
  %i.cq = sub nuw i64 %i.bs, %i.cp
  %i.cr = udiv exact i64 %i.cq, 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10107)
  %i.cs = icmp eq ptr %i.bo, %.lcssa140
  br i1 %i.cs, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17ha004d298f9143e19E.exit.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge144, %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.cu, %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i" ], [ 0, %._crit_edge144 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [56 x i8], ptr %.lcssa140, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.cu = add nuw i64 %.sroa.0.07.i.i.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10108)
  %i.cv = load i32, ptr %i.ct, align 8, !range !28, !alias.scope !10109, !noalias !10110, !noundef !19
  %i.cw = icmp eq i32 %i.cv, 3
  br i1 %i.cw, label %bb.y, label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10111)
  %.val.i.i.i.i.i = load i64, ptr %i.cx, align 8, !alias.scope !10112, !noalias !10110 ; 2 uses
  %i.cy = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.cy, label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !10112, !noalias !10110, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !10113
  br label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i": ; preds = %bb.z, %bb.y, %.lr.ph.i.i.i
  %i.da = icmp eq i64 %i.cu, %i.cr
  br i1 %i.da, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17ha004d298f9143e19E.exit.i.i", label %.lr.ph.i.i.i

"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17ha004d298f9143e19E.exit.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i", %._crit_edge144
  %i.db = icmp eq i64 %.sroa.049.0.copyload, 0
  br i1 %i.db, label %bb.bz, label %bb.aa

bb.aa:                                            ; preds = %"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17ha004d298f9143e19E.exit.i.i"
  %i.dc = mul nuw i64 %.sroa.049.0.copyload, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.450.0.copyload, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !10110
end_hunk_0
begin_hunk_1_@"_ZN18nickel_lang_parser7uniterm140_$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniRecord$GT$$u20$for$u20$nickel_lang_parser..ast..Ast$GT$11try_convert17hc486562b541ae93cE":bb.a
  %i.gx = load i8, ptr %i.cm, align 8, !range !21, !alias.scope !494827, !noalias !494816, !noundef !19
  %i.gy = load i8, ptr %i.cn, align 1, !range !21, !alias.scope !494827, !noalias !494816, !noundef !19
  %.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !494857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !494857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !494857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !494857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.co, i64 56, i1 false), !alias.scope !494865, !noalias !494837
  br label %bb.ar

"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ab
  %.sroa.12.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.62.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ae ], [ %.sroa.62.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %.sroa.62.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.62.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.62.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ag ], [ %.sroa.62.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ], [ %.sroa.62.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.62.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ %.sroa.713.i.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ]
  %.sroa.8.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.el, %bb.ae ], [ %i.el, %bb.ah ], [ %i.el, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.el, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.el, %bb.ag ], [ %i.el, %bb.ai ], [ %i.el, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.el, %bb.af ], [ %.sroa.713.i.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !494826
  call void @llvm.experimental.noalias.scope.decl(metadata !494874)
  %i.gz = load i64, ptr %i.co, align 8, !range !41, !alias.scope !494875, !noalias !494816, !noundef !19 ; 4 uses
  %i.ha = icmp ne i64 %i.gz, -9223372036854775805
  call void @llvm.assume(i1 %i.ha)
  %i.hb = icmp ult i64 %i.gz, -9223372036854775807
  br i1 %i.hb, label %bb.ao, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !494876)
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %i.gz, 0
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ap:                                            ; preds = %bb.ao
  %i.hc = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hc, align 8, !alias.scope !494877, !noalias !494816, !nonnull !19, !noundef !19
  %i.hd = shl nuw i64 %i.gz, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.hd, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !494878
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ap, %bb.ao
  %i.he = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.he, align 8, !range !52, !alias.scope !494877, !noalias !494816, !noundef !19 ; 2 uses
  %switch8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %switch8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aq, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.hf = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hf, align 8, !alias.scope !494877, !noalias !494816, !nonnull !19, !noundef !19
  %i.hg = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.hg, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !494878
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread151.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread160.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r
  %.pn154.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread160.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.do, %bb.r ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E"(ptr noalias noundef align 8 dereferenceable(104) %i.q) #53, !noalias !494826
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.aq, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !494822
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7117.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.loopexit174.i.i.i

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge642
  %.sroa.28.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.fx, %._crit_edge642 ], [ %i.gy, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.fw, %._crit_edge642 ], [ %i.gx, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.24.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fv, %._crit_edge642 ], [ %i.gw, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.22.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fu, %._crit_edge642 ], [ %i.gv, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.18.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dd, %._crit_edge642 ], [ %i.fn, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.16.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dc, %._crit_edge642 ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.8.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.8.0.copyload4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge642 ], [ %.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !494826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !494826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !494822
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7117.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.hh = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 19
  br i1 %i.hh, label %.loopexit174.i.i.i, label %bb.au

bb.as:                                            ; preds = %bb.k
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.by) #53, !noalias !494837
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn91.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hi, %bb.as ] ; 2 uses
  %i.hj = ptrtoint ptr %i.ct to i64
  %i.hk = ptrtoint ptr %i.aj to i64
  %i.hl = sub nuw i64 %i.hj, %i.hk
  %i.hm = udiv exact i64 %i.hl, 280
  %i.hn = icmp eq ptr %i.ct, %i.aj
  br i1 %i.hn, label %.body.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.at ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [280 x i8], ptr %i.aj, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hp = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.ho), !noalias !494879
  %i.hq = icmp eq i64 %i.hp, %i.hm
  br i1 %i.hq, label %.body.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !494822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.sroa.9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !494822
  %.sroa.7.16..sroa.4.8.2.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.16..sroa.4.8.2.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !494879
  %.sroa.8.sroa.6.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.sroa.6.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 56, i1 false), !noalias !494879
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !494879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.sroa.9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !494879
  %i.hr = load ptr, ptr %i.cp, align 8, !alias.scope !494820, !noalias !494816, !nonnull !19, !align !24, !noundef !19
  %i.hs = load i64, ptr %i.cq, align 8, !alias.scope !494820, !noalias !494816, !noundef !19
  %.sroa.8.sroa.14.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.sroa.14.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.cr, i64 48, i1 false), !noalias !494880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cv, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.336.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 12, i1 false), !noalias !494879
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.336.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %.sroa.8.sroa.4.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  store ptr %.sroa.16.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.sroa.4.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !494881
  %.sroa.8.sroa.5.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 112
  store i64 %.sroa.18.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.sroa.5.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !494881
  %.sroa.8.sroa.7.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 176
  store ptr %.sroa.22.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.sroa.7.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !494881
  %.sroa.8.sroa.8.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 184
  store i64 %.sroa.24.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.sroa.8.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !494881
  %.sroa.8.sroa.9.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 192
  store i8 %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.sroa.9.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !494881
  %.sroa.8.sroa.10.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 193
  store i8 %.sroa.28.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.sroa.10.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !494881
  %.sroa.8.sroa.12.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 200
  store i32 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.sroa.12.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !494881
  %.sroa.8.sroa.15.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 264
  store ptr %i.hr, ptr %.sroa.8.sroa.15.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !494881
  %.sroa.8.sroa.16.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 272
  store i64 %i.hs, ptr %.sroa.8.sroa.16.0..sroa.7.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !494881
  %.sroa.611.16..sroa.4.8.2.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.611.16..sroa.4.8.2.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !494881
  %.sroa.6.sroa.5.0..sroa.611.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 %.sroa.7.i.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.sroa.5.0..sroa.611.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !494881
  %.sroa.6.sroa.6.0..sroa.611.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.6.0..sroa.611.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !494879
  %.sroa.6.sroa.7.0..sroa.611.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.sroa.7.0..sroa.611.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !494879
  store i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ct, align 8, !noalias !494882
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !494816
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, %i.am
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.j

.loopexit174.i.i.i:                               ; preds = %bb.ar, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.8.263.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.8.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.8.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar ]
  %.sroa.12.262.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.12.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.i.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !494822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.sroa.9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !494822
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !494879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.sroa.9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !494879
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.336.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  store i64 %.sroa.8.263.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !alias.scope !494813, !noalias !494883
  %.sroa.6.sroa.5.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.sroa.12.262.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.sroa.5.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !494813, !noalias !494883
  %.sroa.6.sroa.6.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.6.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !494884
  %.sroa.6.sroa.7.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.sroa.7.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !494884
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !494816
  br label %.loopexit.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %.loopexit174.i.i.i, %bb.i
  %i.ht = phi ptr [ %i.cu, %.loopexit174.i.i.i ], [ %i.aj, %bb.i ] ; 3 uses
  %.sroa.4.0101.i.i.pn.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ct, %.loopexit174.i.i.i ], [ %i.aj, %bb.i ] ; 2 uses
  %i.hu = ptrtoint ptr %i.am to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub nuw i64 %i.hu, %i.hv
  %i.hx = udiv exact i64 %i.hw, 280
  %i.hy = icmp eq ptr %i.am, %i.ht
  br i1 %i.hy, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ia, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.loopexit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [280 x i8], ptr %i.ht, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i
  %i.ia = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.hz), !noalias !494885
  %i.ib = icmp eq i64 %i.ia, %i.hx
  br i1 %i.ib, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.4.0101.i.i.pn.i.i.i.i.i.i.i.i.i.i.i509 = phi ptr [ %.sroa.4.0101.i.i.pn.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0101.i.i.pn.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.am, %bb.au ] ; 6 uses
  %i.ic = ptrtoint ptr %.sroa.4.0101.i.i.pn.i.i.i.i.i.i.i.i.i.i.i509 to i64 ; 2 uses
  %i.id = ptrtoint ptr %i.aj to i64
  %i.ie = sub i64 %i.ic, %i.id                    ; 6 uses
  %i.if = udiv i64 %i.ie, 280                     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !494803
  %i.ig = load i32, ptr %i.v, align 8, !range !30, !noalias !494802, !noundef !19 ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %i.ig, 25
  br i1 %.not.not.i.i.i, label %.noexc123, label %bb.av

bb.av:                                            ; preds = %.loopexit.i.i.i
  %.sroa.6203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.sroa.6203.0.copyload = load i32, ptr %.sroa.6203.0..sroa_idx, align 4, !noalias !494886
  %.sroa.7204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.7204.0.copyload = load i64, ptr %.sroa.7204.0..sroa_idx, align 8, !noalias !494886
  %.sroa.9205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.9205.0.copyload = load ptr, ptr %.sroa.9205.0..sroa_idx, align 8, !noalias !494886
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !494886
  %.sroa.11206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11206, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11206.0..sroa_idx, i64 40, i1 false)
  %i.ih = icmp eq ptr %.sroa.4.0101.i.i.pn.i.i.i.i.i.i.i.i.i.i.i509, %i.aj
  br i1 %i.ih, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.av, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i = phi i64 [ %i.ij, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.av ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [280 x i8], ptr %i.aj, i64 %.sroa.0.07.i.i.i.i.i.i
  %i.ij = add nuw i64 %.sroa.0.07.i.i.i.i.i.i, 1  ; 2 uses
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.ii), !noalias !494887
  %i.ik = icmp eq i64 %i.ij, %i.if
  br i1 %i.ik, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.av
  %i.il = icmp eq i64 %.sroa.0199.0.copyload, 0
  br i1 %i.il, label %.thread303, label %bb.aw

bb.aw:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i.i"
  %i.im = mul nuw i64 %.sroa.0199.0.copyload, 280
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.im, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !494887
  br label %.thread303

bb.ax:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_parser..error..ParseError$GT$17hc14aa7d1c40722b6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.v), !noalias !494802
  br label %bb.bz

.thread303:                                       ; preds = %bb.aw, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !494802
  store i32 %i.ig, ptr %0, align 8
  %.sroa.294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6203.0.copyload, ptr %.sroa.294.0..sroa_idx, align 4
  %.sroa.294.sroa.2.0..sroa.294.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7204.0.copyload, ptr %.sroa.294.sroa.2.0..sroa.294.0..sroa_idx.sroa_idx, align 8
  %.sroa.294.sroa.3.0..sroa.294.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9205.0.copyload, ptr %.sroa.294.sroa.3.0..sroa.294.0..sroa_idx.sroa_idx, align 8
  %.sroa.294.sroa.4.0..sroa.294.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0.copyload, ptr %.sroa.294.sroa.4.0..sroa.294.0..sroa_idx.sroa_idx, align 8
  %.sroa.395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.395.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11206, i64 40, i1 false)
  br label %.thread301

bb.ay:                                            ; preds = %.invoke, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E.exit.thread.i", %bb.ba
  %i.in = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h7895e89d7611cb79E"(ptr noalias noundef align 8 dereferenceable(32) %i.x) #53, !noalias !494888
  br label %bb.bz

.noexc123:                                        ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !494802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !494888
  %i.io = icmp ult i64 %i.ie, -9223372036854775536
  call void @llvm.assume(i1 %i.io)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ie
  store ptr %i.aj, ptr %i.x, align 8, !alias.scope !494889
  %i.iq = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.0199.0.copyload, ptr %i.iq, align 8, !alias.scope !494889
  %i.ir = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ir, align 8, !alias.scope !494889
  %i.is = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.ip, ptr %i.is, align 8, !alias.scope !494889
  %i.it = icmp ugt i64 %i.ie, 9223372036854775800
  br i1 %i.it, label %.invoke, label %bb.az, !prof !20

bb.az:                                            ; preds = %.noexc123
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.iy = load ptr, ptr %i.iv, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.iz = add nuw nsw i64 %i.ie, 7
  %i.ja = and i64 %i.iz, 9223372036854775800      ; 2 uses
  %i.jb = ptrtoint ptr %i.ix to i64
  %i.jc = and i64 %i.jb, 7
  %i.jd = sub nsw i64 0, %i.jc
  %i.je = getelementptr i8, ptr %i.ix, i64 %i.jd  ; 3 uses
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.iy to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = icmp ult ptr %i.je, %i.iy
  %i.jj = icmp ugt i64 %i.ja, %i.jh
  %or.cond.i = or i1 %i.ji, %i.jj
  br i1 %or.cond.i, label %bb.ba, label %.noexc125

.noexc125:                                        ; preds = %bb.az
  %i.jk = sub nsw i64 0, %i.ja
  %i.jl = getelementptr i8, ptr %i.je, i64 %i.jk  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jl) ]
  store ptr %i.jl, ptr %i.iw, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i119"

bb.ba:                                            ; preds = %bb.az
  %i.jm = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %i.ie)
          to label %.noexc126 unwind label %bb.ay ; 2 uses

.noexc126:                                        ; preds = %bb.ba
  %.not5.i.i122 = icmp eq ptr %i.jm, null
  br i1 %.not5.i.i122, label %.invoke, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i119", !prof !20

.invoke:                                          ; preds = %.noexc126, %.noexc123
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52
          to label %.cont unwind label %bb.ay

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i119": ; preds = %.noexc125, %.noexc126
  %.sroa.0.0.i.i120 = phi ptr [ %i.jl, %.noexc125 ], [ %i.jm, %.noexc126 ] ; 2 uses
  %.not393 = icmp eq ptr %.sroa.4.0101.i.i.pn.i.i.i.i.i.i.i.i.i.i.i509, %i.aj
  br i1 %.not393, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i119"
  %umax = call i64 @llvm.umax.i64(i64 %i.if, i64 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc128
  %.sroa.04.0.i121383 = phi i64 [ %i.jr, %.noexc128 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.val247382 = phi ptr [ %i.jo, %.noexc128 ], [ %i.aj, %.lr.ph.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4246)
  %i.jn = icmp eq ptr %.val247382, %.sroa.4.0101.i.i.pn.i.i.i.i.i.i.i.i.i.i.i509
  br i1 %i.jn, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E.exit.i": ; preds = %.lr.ph
  %i.jo = getelementptr inbounds nuw i8, ptr %.val247382, i64 280 ; 4 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %.val247382, align 8, !noalias !494890 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload1.i, 19
  br i1 %.not.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E.exit.thread.i", label %.noexc128, !prof !40

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E.exit.i", %.lr.ph
  %i.jp = phi ptr [ %i.jo, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E.exit.i" ], [ %.sroa.4.0101.i.i.pn.i.i.i.i.i.i.i.i.i.i.i509, %.lr.ph ]
  store ptr %i.jp, ptr %i.ir, align 8
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10550, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10552) #52
          to label %.noexc149 unwind label %bb.ay

.noexc149:                                        ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E.exit.thread.i"
  unreachable

.noexc128:                                        ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.val247382, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.4246, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.6.0..sroa_idx2.i, i64 272, i1 false)
  %i.jq = getelementptr inbounds nuw [280 x i8], ptr %.sroa.0.0.i.i120, i64 %.sroa.04.0.i121383 ; 2 uses
  %i.jr = add nuw nsw i64 %.sroa.04.0.i121383, 1  ; 2 uses
  store i64 %.sroa.0.0.copyload1.i, ptr %i.jq, align 8, !noalias !494888
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.4246.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.4246, i64 272, i1 false), !noalias !494888
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4246)
  %exitcond.not = icmp eq i64 %i.jr, %umax
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.noexc128
  %.pre = ptrtoint ptr %i.jo to i64
  %.pre467 = sub nuw i64 %i.ic, %.pre
  %.pre469 = udiv exact i64 %.pre467, 280
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i119"
  %.pre-phi470 = phi i64 [ %.pre469, %._crit_edge.loopexit ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i119" ]
  %.lcssa381 = phi ptr [ %i.jo, %._crit_edge.loopexit ], [ %i.aj, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i119" ] ; 2 uses
  %i.js = icmp eq ptr %.sroa.4.0101.i.i.pn.i.i.i.i.i.i.i.i.i.i.i509, %.lcssa381
  br i1 %i.js, label %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17h9d17dc5e09139877E.exit.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.ju, %.lr.ph.i.i.i ], [ 0, %._crit_edge ] ; 2 uses
  %i.jt = getelementptr inbounds nuw [280 x i8], ptr %.lcssa381, i64 %.sroa.0.07.i.i.i
  %i.ju = add nuw i64 %.sroa.0.07.i.i.i, 1        ; 2 uses
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.jt), !noalias !494891
  %i.jv = icmp eq i64 %i.ju, %.pre-phi470
  br i1 %i.jv, label %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17h9d17dc5e09139877E.exit.i.i", label %.lr.ph.i.i.i

"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17h9d17dc5e09139877E.exit.i.i": ; preds = %.lr.ph.i.i.i, %._crit_edge
  %i.jw = icmp eq i64 %.sroa.0199.0.copyload, 0
  br i1 %i.jw, label %.noexc112, label %bb.bb

bb.bb:                                            ; preds = %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17h9d17dc5e09139877E.exit.i.i"
  %i.jx = mul nuw i64 %.sroa.0199.0.copyload, 280
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.jx, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !494891
  br label %.noexc112

bb.bc:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0b5edd63d9a10f23E.exit.thread.i", %bb.be, %bb.bd
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..Include$GT$$GT$17h13aa62823818a1b6E"(ptr noalias noundef align 8 dereferenceable(32) %i.w) #53, !noalias !494892
  br label %.thread263

.noexc112:                                        ; preds = %bb.bb, %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17h9d17dc5e09139877E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !494888
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0233.0.copyload = load i64, ptr %i.jz, align 8 ; 3 uses
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4234.0.copyload = load ptr, ptr %.sroa.4234.0..sroa_idx, align 8, !nonnull !19, !noundef !19 ; 6 uses
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.5235.0.copyload = load i64, ptr %.sroa.5235.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !494892
  %i.ka = icmp ult i64 %.sroa.5235.0.copyload, 41175768021673107
  call void @llvm.assume(i1 %i.ka)
  %i.kb = getelementptr inbounds nuw [224 x i8], ptr %.sroa.4234.0.copyload, i64 %.sroa.5235.0.copyload ; 5 uses
  store ptr %.sroa.4234.0.copyload, ptr %i.w, align 8, !alias.scope !494893
  %i.kc = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.0233.0.copyload, ptr %i.kc, align 8, !alias.scope !494893
  %i.kd = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %.sroa.4234.0.copyload, ptr %i.kd, align 8, !alias.scope !494893
  %i.ke = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.kb, ptr %i.ke, align 8, !alias.scope !494893
  %i.kf = ptrtoint ptr %i.kb to i64
  %.idx308 = mul nuw nsw i64 %.sroa.5235.0.copyload, 224 ; 3 uses
  %i.kg = load ptr, ptr %i.iu, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 32 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.kj = load ptr, ptr %i.kg, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = and i64 %i.kk, 7
  %i.km = sub nsw i64 0, %i.kl
  %i.kn = getelementptr i8, ptr %i.ki, i64 %i.km  ; 3 uses
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = ptrtoint ptr %i.kj to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = icmp ult ptr %i.kn, %i.kj
  %i.ks = icmp ugt i64 %.idx308, %i.kq
  %or.cond.i129 = or i1 %i.kr, %i.ks
  br i1 %or.cond.i129, label %bb.bd, label %.noexc114

.noexc114:                                        ; preds = %.noexc112
  %i.kt = sub nsw i64 0, %.idx308
  %i.ku = getelementptr i8, ptr %i.kn, i64 %i.kt  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ku) ]
  store ptr %i.ku, ptr %i.kh, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i"

bb.bd:                                            ; preds = %.noexc112
  %i.kv = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx308)
          to label %.noexc115 unwind label %bb.bc ; 2 uses

end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 46
begin_hunk_0
@605 = private unnamed_addr constant [9 x i8] c"s-maxage=", align 1
@606 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @605, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@607 = private unnamed_addr constant [6 x i8] c"bytes ", align 1
@608 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-http-3.12.1/src/encoding/decoder.rs\00", align 1
@609 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @608, [16 x i8] c"n\00\00\00\00\00\00\00\83\00\00\00.\00\00\00" }>, align 8
@610 = private unnamed_addr constant [40 x i8] c"Blocking task was cancelled unexpectedly", align 1
@611 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..convert..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$GT$17h59ac55485dca15a1E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN256_$LT$alloc..boxed..convert..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Display$GT$3fmt17h1f592ea278fae292E" }>, align 8
@612 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..convert..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$GT$17h59ac55485dca15a1E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN254_$LT$alloc..boxed..convert..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Debug$GT$3fmt17h807799a12417eabdE", ptr @"_ZN256_$LT$alloc..boxed..convert..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Display$GT$3fmt17h1f592ea278fae292E", ptr @611, ptr @_ZN4core5error5Error6source17h4d6a47fd6605e99dE, ptr @_ZN4core5error5Error7type_id17hc1a6dde5b7c0e880E, ptr @_ZN4core5error5Error11description17hd15782de3498ae72E, ptr @_ZN4core5error5Error5cause17h82b8c3f1db2006c3E, ptr @_ZN4core5error5Error7provide17h226ed8f747bbd323E }>, align 8
@613 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @123, [16 x i8] c"e\00\00\00\00\00\00\00\F0\01\00\00\1B\00\00\00" }>, align 8
@614 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @123, [16 x i8] c"e\00\00\00\00\00\00\00\FF\01\00\00\0D\00\00\00" }>, align 8
@615 = private unnamed_addr constant [112 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/futures-util-0.3.32/src/future/join_all.rs\00", align 1
@616 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @615, [16 x i8] c"o\00\00\00\00\00\00\00\97\00\00\00N\00\00\00" }>, align 8
@617 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr128drop_in_place$LT$actix_web..resource..Resource..new$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h66458b1d383a3b5bE", [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN9actix_web8resource8Resource3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hc95747227be8ef7dE" }>, align 8
@618 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr176drop_in_place$LT$$LT$actix_web..resource..Resource$u20$as$u20$actix_web..service..HttpServiceFactory$GT$..register..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h39175416eea16266E", [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN97_$LT$actix_web..resource..Resource$LT$T$GT$$u20$as$u20$actix_web..service..HttpServiceFactory$GT$8register28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h76db8110cef7e31bE" }>, align 8
@619 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr158drop_in_place$LT$actix_utils..future..ready..Ready$LT$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$17h214e2574742fa00aE", [16 x i8] c"p\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN91_$LT$actix_utils..future..ready..Ready$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h305afef437738bebE" }>, align 8
@620 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr107drop_in_place$LT$actix_web..route..Route..new..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17ha0883cf65dfbd8b6E", [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN9actix_web5route5Route3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h6716000aabb4c5b7E" }>, align 8
@621 = private unnamed_addr constant [24 x i8] c"application/octet-stream", align 1
@622 = private unnamed_addr constant <{ ptr, ptr, [17 x i8], [7 x i8] }> <{ ptr @67, ptr @621, [17 x i8] c"\18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [7 x i8] undef }>, align 8
@623 = private unnamed_addr constant [49 x i8] c"All default headers must be added before cloning.", align 1
@624 = private unnamed_addr constant [120 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-web-4.13.0/src/middleware/default_headers.rs\00", align 1
@625 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @624, [16 x i8] c"w\00\00\00\00\00\00\00C\00\00\00\12\00\00\00" }>, align 8
@626 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @456, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @456, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@627 = private unnamed_addr constant [1 x i8] c"?", align 1
@628 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @456, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @627, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @456, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@629 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-web-4.13.0/src/middleware/logger.rs\00", align 1
@630 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\B5\02\00\00U\00\00\00" }>, align 8
@631 = private unnamed_addr constant [1 x i8] c"%", align 1
@632 = private unnamed_addr constant <{ [4 x i8], [12 x i8], [2 x i8], [14 x i8], [12 x i8], [4 x i8] }> <{ [4 x i8] c"\00\00\06\00", [12 x i8] undef, [2 x i8] c"\02\00", [14 x i8] undef, [12 x i8] c"\00\00\00\00\00\00\00\00 \00\00\F0", [4 x i8] undef }>, align 8
@633 = private unnamed_addr constant [19 x i8] c"Access log format: ", align 1
@634 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @633, [8 x i8] c"\13\00\00\00\00\00\00\00" }>, align 8
@635 = private unnamed_addr constant [52 x i8] c"%(\\{([A-Za-z0-9\\-_]+)\\}([aioe]|x[io])|[%atPrUsbTD]?)", align 1
@636 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\F6\01\00\00W\00\00\00" }>, align 8
@637 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00#\02\00\00+\00\00\00" }>, align 8
@638 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00#\02\00\00\15\00\00\00" }>, align 8
@639 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\FB\01\00\00 \00\00\00" }>, align 8
@640 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\FE\01\00\00/\00\00\00" }>, align 8
@641 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\FE\01\00\00\19\00\00\00" }>, align 8
@642 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\03\02\00\00/\00\00\00" }>, align 8
@643 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @85, [16 x i8] c"c\00\00\00\00\00\00\00#\06\00\00\17\00\00\00" }>, align 8
@644 = private unnamed_addr constant [65 x i8] c"internal error: entered unreachable code: regex and code mismatch", align 1
@645 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @644, [8 x i8] c"A\00\00\00\00\00\00\00" }>, align 8
@646 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\08\02\00\00\1D\00\00\00" }>, align 8
@647 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\0B\02\00\00Y\00\00\00" }>, align 8
@648 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\0C\02\00\00Z\00\00\00" }>, align 8
@649 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\03\02\00\00\19\00\00\00" }>, align 8
@650 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\10\02\00\00\1A\00\00\00" }>, align 8
@651 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\13\02\00\00$\00\00\00" }>, align 8
@652 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\14\02\00\00\19\00\00\00" }>, align 8
@653 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @629, [16 x i8] c"n\00\00\00\00\00\00\00\9C\00\00\00.\00\00\00" }>, align 8
@_ZN9actix_web10middleware8compress19SUPPORTED_ENCODINGS17h33675e1e0690e36cE = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @"_ZN9actix_web10middleware8compress19SUPPORTED_ENCODINGS27_$u7b$$u7b$nested$u7d$$u7d$17he33d5df951b05faaE", [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@"_ZN9actix_web10middleware8compress19SUPPORTED_ENCODINGS27_$u7b$$u7b$nested$u7d$$u7d$17he33d5df951b05faaE" = constant <{ [9 x i8], [15 x i8], [9 x i8], [15 x i8], [9 x i8], [15 x i8], [9 x i8], [15 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\80\00", [15 x i8] undef, [9 x i8] c"\00\00\00\00\00\00\00\80\01", [15 x i8] undef, [9 x i8] c"\00\00\00\00\00\00\00\80\03", [15 x i8] undef, [9 x i8] c"\00\00\00\00\00\00\00\80\02", [15 x i8] undef }>, align 8
@_ZN9actix_web10middleware8compress26SUPPORTED_ENCODINGS_STRING17h11edd66dfcc8a6b7E = local_unnamed_addr global <{ [16 x i8], [16 x i8], ptr }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80", [16 x i8] undef, ptr @_ZN4core3ops8function6FnOnce9call_once17hd6b1f9856e6f97b4E }>, align 8
@654 = private unnamed_addr constant [113 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-web-4.13.0/src/middleware/compress.rs\00", align 1
@655 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @654, [16 x i8] c"p\00\00\00\00\00\00\00\E1\00\00\00\12\00\00\00" }>, align 8
@656 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @654, [16 x i8] c"p\00\00\00\00\00\00\00\E6\00\00\00\12\00\00\00" }>, align 8
@657 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @654, [16 x i8] c"p\00\00\00\00\00\00\00\E7\00\00\00\12\00\00\00" }>, align 8
@658 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @585, [16 x i8] c"q\00\00\00\00\00\00\00\16\00\00\00\13\00\00\00" }>, align 8
@659 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @585, [16 x i8] c"q\00\00\00\00\00\00\00\17\00\00\00\09\00\00\00" }>, align 8
@660 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @585, [16 x i8] c"q\00\00\00\00\00\00\00\22\00\00\00\0D\00\00\00" }>, align 8
@661 = private unnamed_addr constant <{ [1 x i8], [23 x i8] }> <{ [1 x i8] c"\01", [23 x i8] undef }>, align 8
@662 = private unnamed_addr constant <{ [1 x i8], [23 x i8] }> <{ [1 x i8] c"\03", [23 x i8] undef }>, align 8
@663 = private unnamed_addr constant <{ [1 x i8], [23 x i8] }> <{ [1 x i8] c"\05", [23 x i8] undef }>, align 8
@664 = private unnamed_addr constant <{ [1 x i8], [23 x i8] }> <{ [1 x i8] c"\02", [23 x i8] undef }>, align 8
@665 = private unnamed_addr constant <{ [1 x i8], [23 x i8] }> <{ [1 x i8] c"\08", [23 x i8] undef }>, align 8
@666 = private unnamed_addr constant <{ [1 x i8], [23 x i8] }> <{ [1 x i8] c"\06", [23 x i8] undef }>, align 8
@667 = private unnamed_addr constant <{ [1 x i8], [23 x i8] }> <{ [1 x i8] c"\04", [23 x i8] undef }>, align 8
@668 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @285, [16 x i8] c"K\00\00\00\00\00\00\00A\03\00\00\15\00\00\00" }>, align 8
@669 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"|\00\00\00\00\00\00\00w\01\00\00\1F\00\00\00" }>, align 8
@670 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"|\00\00\00\00\00\00\00\8F\01\00\00!\00\00\00" }>, align 8
@671 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"|\00\00\00\00\00\00\00\A7\01\00\00\1F\00\00\00" }>, align 8
@672 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"|\00\00\00\00\00\00\00\8C\01\00\00+\00\00\00" }>, align 8
@673 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"|\00\00\00\00\00\00\00\83\01\00\00+\00\00\00" }>, align 8
@674 = private unnamed_addr constant [3 x i8] c"*/*", align 1
@675 = private unnamed_addr constant <{ [8 x i8], [8 x i8], [8 x i8], [24 x i8], [2 x i8], [6 x i8], ptr, [8 x i8], [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef, [8 x i8] c"\02\00\00\00\00\00\00\80", [24 x i8] undef, [2 x i8] c"\00\01", [6 x i8] undef, ptr @674, [8 x i8] c"\03\00\00\00\00\00\00\00", [8 x i8] undef, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@676 = private unnamed_addr constant [9 x i8] c"text/html", align 1
@677 = private unnamed_addr constant <{ [8 x i8], [8 x i8], [8 x i8], [24 x i8], [2 x i8], [6 x i8], ptr, [8 x i8], [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef, [8 x i8] c"\02\00\00\00\00\00\00\80", [24 x i8] undef, [2 x i8] c"\00\05", [6 x i8] undef, ptr @676, [8 x i8] c"\09\00\00\00\00\00\00\00", [8 x i8] undef, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@678 = private unnamed_addr constant [16 x i8] c"application/json", align 1
@679 = private unnamed_addr constant <{ [8 x i8], [8 x i8], [8 x i8], [24 x i8], [2 x i8], [6 x i8], ptr, [8 x i8], [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef, [8 x i8] c"\02\00\00\00\00\00\00\80", [24 x i8] undef, [2 x i8] c"\00\19", [6 x i8] undef, ptr @678, [8 x i8] c"\10\00\00\00\00\00\00\00", [8 x i8] undef, [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@680 = private unnamed_addr constant [6 x i8] c"text/*", align 1
@681 = private unnamed_addr constant <{ [8 x i8], [8 x i8], [8 x i8], [24 x i8], [2 x i8], [6 x i8], ptr, [8 x i8], [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef, [8 x i8] c"\02\00\00\00\00\00\00\80", [24 x i8] undef, [2 x i8] c"\00\02", [6 x i8] undef, ptr @680, [8 x i8] c"\06\00\00\00\00\00\00\00", [8 x i8] undef, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@682 = private unnamed_addr constant [7 x i8] c"image/*", align 1
@683 = private unnamed_addr constant <{ [8 x i8], [8 x i8], [8 x i8], [24 x i8], [2 x i8], [6 x i8], ptr, [8 x i8], [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef, [8 x i8] c"\02\00\00\00\00\00\00\80", [24 x i8] undef, [2 x i8] c"\00\11", [6 x i8] undef, ptr @682, [8 x i8] c"\07\00\00\00\00\00\00\00", [8 x i8] undef, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@684 = private unnamed_addr constant [13 x i8] c"Invalid tag: ", align 1
@685 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @684, [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
@686 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @96, [16 x i8] c"o\00\00\00\00\00\00\00C\00\00\00\09\00\00\00" }>, align 8
@687 = private unnamed_addr constant [2 x i8] c"]:", align 1
@688 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00$", [23 x i8] undef }>, align 8
@689 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00&", [23 x i8] undef }>, align 8
@690 = private unnamed_addr constant [15 x i8] c"x-forwarded-for", align 1
@_ZN9actix_web4info15X_FORWARDED_FOR17hd31f1aaf280e3b10E = internal global <{ ptr, ptr, [16 x i8] }> <{ ptr @67, ptr @690, [16 x i8] c"\0F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@691 = private unnamed_addr constant [16 x i8] c"x-forwarded-host", align 1
@_ZN9actix_web4info16X_FORWARDED_HOST17hcd0cd9a94ceff519E = internal global <{ ptr, ptr, [16 x i8] }> <{ ptr @67, ptr @691, [16 x i8] c"\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@692 = private unnamed_addr constant [17 x i8] c"x-forwarded-proto", align 1
@_ZN9actix_web4info17X_FORWARDED_PROTO17h071221fd15f14485E = internal global <{ ptr, ptr, [16 x i8] }> <{ ptr @67, ptr @692, [16 x i8] c"\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@693 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-web-4.13.0/src/rmap.rs\00", align 1
@694 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @693, [16 x i8] c"a\00\00\00\00\00\00\00\18\01\00\00&\00\00\00" }>, align 8
@695 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @693, [16 x i8] c"a\00\00\00\00\00\00\00\D1\00\00\00$\00\00\00" }>, align 8
@696 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @693, [16 x i8] c"a\00\00\00\00\00\00\00\D2\00\00\00\16\00\00\00" }>, align 8
@697 = private unnamed_addr constant [3 x i8] c"://", align 1
@698 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @697, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@699 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @693, [16 x i8] c"a\00\00\00\00\00\00\00\FC\00\00\00\19\00\00\00" }>, align 8
@700 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @693, [16 x i8] c"a\00\00\00\00\00\00\00N\00\00\00,\00\00\00" }>, align 8
@701 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @693, [16 x i8] c"a\00\00\00\00\00\00\00W\00\00\00!\00\00\00" }>, align 8
@702 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @693, [16 x i8] c"a\00\00\00\00\00\00\00W\00\00\00*\00\00\00" }>, align 8
@703 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @693, [16 x i8] c"a\00\00\00\00\00\00\00k\00\00\00%\00\00\00" }>, align 8
@704 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @693, [16 x i8] c"a\00\00\00\00\00\00\00k\00\00\00.\00\00\00" }>, align 8
@705 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @693, [16 x i8] c"a\00\00\00\00\00\00\00r\00\00\00\19\00\00\00" }>, align 8
@706 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @488, [16 x i8] c"c\00\00\00\00\00\00\00\E9\00\00\00\11\00\00\00" }>, align 8
@707 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\1E", [23 x i8] undef }>, align 8
@708 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-web-4.13.0/src/test/test_request.rs\00", align 1
@709 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @708, [16 x i8] c"n\00\00\00\00\00\00\00\FE\00\00\00D\00\00\00" }>, align 8
@710 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1006395903478586875 to ptr), ptr inttoptr (i64 5986660256495068092 to ptr) }>, align 8
@711 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 5857865808776727058 to ptr), ptr inttoptr (i64 4822279664300779584 to ptr) }>, align 8
@712 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6503246993180778848 to ptr), ptr inttoptr (i64 -8147634536788026061 to ptr) }>, align 8
@713 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2953361969725823500 to ptr), ptr inttoptr (i64 -7222815772686086091 to ptr) }>, align 8
@714 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @523, [16 x i8] c"f\00\00\00\00\00\00\00\D7\01\00\00,\00\00\00" }>, align 8
@715 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @99, [16 x i8] c"b\00\00\00\00\00\00\00B\00\00\001\00\00\00" }>, align 8
@716 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN107_$LT$actix_service..boxed..FactoryWrapper$LT$SF$GT$$u20$as$u20$actix_service..ServiceFactory$LT$Req$GT$$GT$11new_service17h68959ab09445454dE" }>, align 8
@717 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @99, [16 x i8] c"b\00\00\00\00\00\00\00!\00\00\00F\00\00\00" }>, align 8
@718 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr50drop_in_place$LT$actix_web..guard..MethodGuard$GT$17hf7a85a9fe32747cbE", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN73_$LT$actix_web..guard..MethodGuard$u20$as$u20$actix_web..guard..Guard$GT$5check17h44aca0f47df2e7abE" }>, align 8
@719 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @99, [16 x i8] c"b\00\00\00\00\00\00\00\8B\00\00\00\0E\00\00\00" }>, align 8
@720 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @99, [16 x i8] c"b\00\00\00\00\00\00\00\8A\00\00\00\0E\00\00\00" }>, align 8
@721 = private unnamed_addr constant <{ [8 x i8], [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef, [8 x i8] c"\00@\00\00\00\00\00\00" }>, align 8
@722 = private unnamed_addr constant <{ [16 x i8], [8 x i8], [8 x i8], [8 x i8], [1 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00", [8 x i8] undef, [8 x i8] zeroinitializer, [8 x i8] undef, [1 x i8] c"\01", [7 x i8] undef }>, align 8
@723 = private unnamed_addr constant [24 x i8] c"Content-Type is expected", align 1
@724 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr77drop_in_place$LT$actix_web..error..internal..InternalError$LT$$RF$str$GT$$GT$17h124f6e5b891eef86E", [16 x i8] c"\88\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN89_$LT$actix_web..error..internal..InternalError$LT$T$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h7f87455894796971E" }>, align 8
@725 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr77drop_in_place$LT$actix_web..error..internal..InternalError$LT$$RF$str$GT$$GT$17h124f6e5b891eef86E", [16 x i8] c"\88\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN87_$LT$actix_web..error..internal..InternalError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4a4b22cc546dcc5fE", ptr @"_ZN89_$LT$actix_web..error..internal..InternalError$LT$T$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h7f87455894796971E", ptr @724, ptr @"_ZN118_$LT$actix_web..error..internal..InternalError$LT$T$GT$$u20$as$u20$actix_web..error..response_error..ResponseError$GT$11status_code17h41f40ba8fda596c4E", ptr @"_ZN118_$LT$actix_web..error..internal..InternalError$LT$T$GT$$u20$as$u20$actix_web..error..response_error..ResponseError$GT$14error_response17h43f2a49243d634bdE", ptr @_ZN9actix_web5error14response_error13ResponseError23__private_get_type_id__17h441a0b2bcdf45928E }>, align 8
@726 = private unnamed_addr constant [23 x i8] c"Unexpected Content-Type", align 1
@727 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN74_$LT$actix_http..error..ContentTypeError$u20$as$u20$core..fmt..Display$GT$3fmt17h8a7fad088cf3dbacE" }>, align 8
@728 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN72_$LT$actix_http..error..ContentTypeError$u20$as$u20$core..fmt..Debug$GT$3fmt17h29e7c5de88820718E", ptr @"_ZN74_$LT$actix_http..error..ContentTypeError$u20$as$u20$core..fmt..Display$GT$3fmt17h8a7fad088cf3dbacE", ptr @727, ptr @"_ZN103_$LT$actix_http..error..ContentTypeError$u20$as$u20$actix_web..error..response_error..ResponseError$GT$11status_code17haf66d839479093c9E", ptr @_ZN9actix_web5error14response_error13ResponseError14error_response17hc783260bc3594acaE, ptr @_ZN9actix_web5error14response_error13ResponseError23__private_get_type_id__17hd57fb516fdfc4897E }>, align 8
@729 = private unnamed_addr constant <{ [8 x i8], [80 x i8], [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00", [80 x i8] undef, [8 x i8] c"\00\00\04\00\00\00\00\00" }>, align 8
@730 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\18", [23 x i8] undef }>, align 8
@_ZN11encoding_rs5UTF_817h0944d9f3ed025ee8E = external local_unnamed_addr global ptr
@731 = private unnamed_addr constant [19 x i8] c"Can not decode body", align 1
@732 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr501drop_in_place$LT$actix_service..boxed..FactoryWrapper$LT$actix_service..fn_service..FnServiceFactory$LT$$LT$actix_web..redirect..Redirect$u20$as$u20$actix_web..service..HttpServiceFactory$GT$..register..$u7b$$u7b$closure$u7d$$u7d$$C$actix_utils..future..ready..Ready$LT$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$17he182ae26550520e1E", [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN107_$LT$actix_service..boxed..FactoryWrapper$LT$SF$GT$$u20$as$u20$actix_service..ServiceFactory$LT$Req$GT$$GT$11new_service17h7a4c654c0f7a32e5E" }>, align 8
@733 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @488, [16 x i8] c"c\00\00\00\00\00\00\00\CE\00\00\00\0E\00\00\00" }>, align 8
@734 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr418drop_in_place$LT$actix_service..boxed..FactoryWrapper$LT$actix_service..apply..ApplyFactory$LT$actix_web..resource..ResourceEndpoint$C$$LT$actix_web..resource..Resource$u20$as$u20$actix_web..service..HttpServiceFactory$GT$..register..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$17h7bdbc84c7d874a85E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN107_$LT$actix_service..boxed..FactoryWrapper$LT$SF$GT$$u20$as$u20$actix_service..ServiceFactory$LT$Req$GT$$GT$11new_service17h866833b7644e4a00E" }>, align 8
@735 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr99drop_in_place$LT$actix_web..service..ServiceFactoryWrapper$LT$actix_web..resource..Resource$GT$$GT$17hdd08192f1097cfd8E", [16 x i8] c"\A8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN108_$LT$actix_web..service..ServiceFactoryWrapper$LT$T$GT$$u20$as$u20$actix_web..service..AppServiceFactory$GT$8register17h5c720d5a012f0ed7E" }>, align 8
@736 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @488, [16 x i8] c"c\00\00\00\00\00\00\00\91\01\00\00\0E\00\00\00" }>, align 8
@737 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @525, [16 x i8] c"d\00\00\00\00\00\00\00\B4\00\00\00+\00\00\00" }>, align 8
@738 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @525, [16 x i8] c"d\00\00\00\00\00\00\00l\01\00\007\00\00\00" }>, align 8
@739 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @525, [16 x i8] c"d\00\00\00\00\00\00\00\AE\01\00\00!\00\00\00" }>, align 8
@740 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @525, [16 x i8] c"d\00\00\00\00\00\00\00\B6\01\00\00#\00\00\00" }>, align 8
@741 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @697, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@742 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @525, [16 x i8] c"d\00\00\00\00\00\00\00{\00\00\00H\00\00\00" }>, align 8
@743 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @525, [16 x i8] c"d\00\00\00\00\00\00\00d\02\00\00\14\00\00\00" }>, align 8
@744 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @525, [16 x i8] c"d\00\00\00\00\00\00\00S\02\00\00!\00\00\00" }>, align 8
@745 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @525, [16 x i8] c"d\00\00\00\00\00\00\00j\02\00\00!\00\00\00" }>, align 8
@746 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @525, [16 x i8] c"d\00\00\00\00\00\00\00j\02\00\00\14\00\00\00" }>, align 8
@747 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @525, [16 x i8] c"d\00\00\00\00\00\00\00o\02\00\00\14\00\00\00" }>, align 8
@748 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-web-4.13.0/src/service.rs\00", align 1
@749 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @748, [16 x i8] c"d\00\00\00\00\00\00\00?\01\00\00\0E\00\00\00" }>, align 8
@750 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @123, [16 x i8] c"e\00\00\00\00\00\00\00\A9\00\00\00\15\00\00\00" }>, align 8
@751 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN107_$LT$actix_service..boxed..FactoryWrapper$LT$SF$GT$$u20$as$u20$actix_service..ServiceFactory$LT$Req$GT$$GT$11new_service17hb28cb170c6cf74e8E" }>, align 8
@752 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @123, [16 x i8] c"e\00\00\00\00\00\00\00K\00\00\00F\00\00\00" }>, align 8
@753 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN57_$LT$http..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hccc659433d937535E" }>, align 8
@754 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN55_$LT$http..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he51cedc6db70e012E", ptr @"_ZN57_$LT$http..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hccc659433d937535E", ptr @753, ptr @_ZN9actix_web5error14response_error13ResponseError11status_code17h7948e1743bb2d861E, ptr @_ZN9actix_web5error14response_error13ResponseError14error_response17hbd9378ddbffd2f7fE, ptr @_ZN9actix_web5error14response_error13ResponseError23__private_get_type_id__17h244a290cf7bd20e5E }>, align 8
@755 = private unnamed_addr constant [29 x i8] c"cannot reuse response builder", align 1
@756 = private unnamed_addr constant [110 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-web-4.13.0/src/response/builder.rs\00", align 1
@757 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @756, [16 x i8] c"m\00\00\00\00\00\00\008\01\00\00\0E\00\00\00" }>, align 8
@758 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00A", [23 x i8] undef }>, align 8
@759 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h84ab9ba4b9a7b362E", ptr @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize28_$u7b$$u7b$closure$u7d$$u7d$17ha496480a003095daE" }>, align 8
@760 = private unnamed_addr constant [42 x i8] c"Lazy instance has previously been poisoned", align 1
@761 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @760, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@762 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/once_cell-1.21.4/src/lib.rs\00", align 1
@763 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @762, [16 x i8] c"`\00\00\00\00\00\00\00)\05\00\00\19\00\00\00" }>, align 8
@switch.table._ZN3std2io5error5Error4kind17hcef9c5606d2f7459E = private unnamed_addr constant [122 x i8] c"\01\00)#))\22)))\0D&\01))\1C\0C\1F)\0E\0F\14)))\1D\1B\18\19\11 \0B))\1E!)$\10\12))))))))))))))))))))))))))))))))))))))))))))))))))))))$))\08\09\0A\05)\06\03))\07))\16\02)\04)'\13)))))\1A", align 1
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1cb097e893145027E" = private unnamed_addr constant [3 x i8] c"\04\07\06", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1cb097e893145027E.1255" = private unnamed_addr constant [3 x ptr] [ptr @342, ptr @418, ptr @419], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e4d9e3368d5d47bE" = private unnamed_addr constant [12 x i8] c"\10\13\0D\08\15\12\10\1C\1A\14\18\16", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e4d9e3368d5d47bE.1256" = private unnamed_addr constant [12 x ptr] [ptr @406, ptr @407, ptr @408, ptr @409, ptr @410, ptr @411, ptr @412, ptr @413, ptr @414, ptr @415, ptr @416, ptr @417], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6c633304ca431d26E" = private unnamed_addr constant [6 x i8] c"\02\04\04\06\08\08", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6c633304ca431d26E.1257" = private unnamed_addr constant [6 x ptr] [ptr @400, ptr @401, ptr @402, ptr @403, ptr @404, ptr @405], align 8
@"switch.table._ZN60_$LT$url..parser..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf870c4dc4e10bd38E" = private unnamed_addr constant [10 x i8] c"\09\09\0B\12\12\16\16 \19\08", align 8
@"switch.table._ZN60_$LT$url..parser..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf870c4dc4e10bd38E.1258" = private unnamed_addr constant [10 x ptr] [ptr @383, ptr @384, ptr @385, ptr @386, ptr @387, ptr @388, ptr @389, ptr @390, ptr @391, ptr @392], align 8
@"switch.table._ZN82_$LT$actix_web..http..header..encoding..Encoding$u20$as$u20$core..fmt..Display$GT$3fmt17he47c1b6ee0be764fE" = private unnamed_addr constant [5 x i8] c"\08\02\07\04\04", align 8
@"switch.table._ZN82_$LT$actix_web..http..header..encoding..Encoding$u20$as$u20$core..fmt..Display$GT$3fmt17he47c1b6ee0be764fE.1259" = private unnamed_addr constant [5 x ptr] [ptr @556, ptr @557, ptr @558, ptr @559, ptr @560], align 8

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN100_$LT$actix_web..http..header..content_disposition..DispositionType$u20$as$u20$core..fmt..Display$GT$3fmt17hcf8b556138174e5dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !24, !noundef !25 ; 2 uses
  %i.e = xor i64 %i.d, -9223372036854775808
  %i.f = icmp slt i64 %i.d, 0
  %i.g = select i1 %i.f, i64 %i.e, i64 3
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit25
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.h, align 8
  %.val9 = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !25, !noalias !92, !nonnull !25
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @0, i64 noundef 6), !noalias !92, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.l, align 8
  %.val7 = load ptr, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.val8, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !25, !noalias !93, !nonnull !25
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 1 %.val7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 10), !noalias !93, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.p, align 8
  %.val5 = load ptr, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !25, !noalias !94, !nonnull !25
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 1 %.val5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2, i64 noundef 9), !noalias !94, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit25: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0d322999ca7ebd42E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.t, align 8, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !95
  store ptr @3, ptr %i.a, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.740.0..sroa_idx, align 8
  %.sroa.841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.841.0..sroa_idx, align 8
  %.sroa.1042.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1042.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit25
  %.sroa.0.0.in = phi i1 [ %i.u, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit25 ], [ %i.o, %bb.d ], [ %i.s, %bb.e ], [ %i.k, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN101_$LT$actix_web..http..header..cache_control..CacheDirective$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h4dc8fdfbef0547c4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %2, label %.backedge.i.preheader [
    i64 0, label %bb.b
    i64 8, label %bb.d
    i64 12, label %bb.h
    i64 14, label %bb.j
    i64 15, label %bb.l
    i64 6, label %bb.n
    i64 7, label %bb.p
    i64 16, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.a, align 8
  store i64 -9223372036854775796, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.bd, %bb.be, %bb.av, %bb.aw, %bb.ar, %bb.as, %bb.an, %bb.ao, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit", %bb.z, %bb.bh, %bb.v, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 1
  %i.c = icmp ne i64 %i.b, 7307199665335529326
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.f = load i64, ptr %1, align 1
  %i.g = icmp ne i64 %i.f, 7310027691114983278
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %.backedge.i.preheader

bb.g:                                             ; preds = %bb.f
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %i.j = load i64, ptr %1, align 1
  %i.k = xor i64 %i.j, 8317692706003185518
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 1
  %i.n = zext i32 %i.m to i64
  %i.o = xor i64 %i.n, 1836216166
  %i.p = or i64 %i.k, %i.o
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %.backedge.i.preheader

bb.i:                                             ; preds = %bb.h
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.c

bb.j:                                             ; preds = %bb.a
  %i.t = load i64, ptr %1, align 1
  %i.u = xor i64 %i.t, 3271417823362838127
  %i.v = getelementptr i8, ptr %1, i64 6
  %i.w = load i64, ptr %i.v, align 1
  %i.x = xor i64 %i.w, 7234303152485510502
  %i.y = or i64 %i.u, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %.backedge.i.preheader

bb.k:                                             ; preds = %bb.j
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.c

bb.l:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %1, align 1
  %i.ad = xor i64 %i.ac, 8531350608676091245
  %i.ae = getelementptr i8, ptr %1, i64 7
  %i.af = load i64, ptr %i.ae, align 1
  %i.ag = xor i64 %i.af, 7310575179022492022
  %i.ah = or i64 %i.ad, %i.ag
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %.backedge.i.preheader

bb.m:                                             ; preds = %bb.l
  store i64 -9223372036854775801, ptr %0, align 8
  br label %bb.c

bb.n:                                             ; preds = %bb.a
  %i.al = load i32, ptr %1, align 1
  %i.am = xor i32 %i.al, 1818391920
  %i.an = getelementptr i8, ptr %1, i64 4
  %i.ao = load i16, ptr %i.an, align 1
  %i.ap = zext i16 %i.ao to i32
  %i.aq = xor i32 %i.ap, 25449
  %i.ar = or i32 %i.am, %i.aq
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.o, label %.backedge.i.preheader

bb.o:                                             ; preds = %bb.n
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.c

bb.p:                                             ; preds = %bb.a
  %i.av = load i32, ptr %1, align 1
  %i.aw = xor i32 %i.av, 1986622064
  %i.ax = getelementptr i8, ptr %1, i64 3
  %i.ay = load i32, ptr %i.ax, align 1
  %i.az = xor i32 %i.ay, 1702125942
  %i.ba = or i32 %i.aw, %i.az
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.q, label %.backedge.i.preheader

bb.q:                                             ; preds = %bb.p
  store i64 -9223372036854775799, ptr %0, align 8
  br label %bb.c

bb.r:                                             ; preds = %bb.a
  %i.be = load i128, ptr %1, align 1
  %i.bf = icmp ne i128 %i.be, 134856309359041299079993139265467806320
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.v, label %.backedge.i.preheader

.backedge.i.preheader:                            ; preds = %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.a, %bb.r
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.backedge.i.preheader
  %i.bi = phi i64 [ 0, %.backedge.i.preheader ], [ %i.bv, %.backedge.i.backedge ] ; 5 uses
  %i.bj = sub nuw i64 %2, %i.bi                   ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bl = icmp ult i64 %i.bj, 16
  br i1 %i.bl, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %.backedge.i
  %.not.i.i.i = icmp eq i64 %2, %i.bi
  br i1 %.not.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h39a21bf43f749675E.exit.thread212", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.s
  %.sroa.01.05.i.i.i = phi i64 [ %i.bp, %bb.s ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.01.05.i.i.i
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !146, !noalias !147, !noundef !25
  %i.bo = icmp eq i8 %i.bn, 61
  br i1 %i.bo, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.bp = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bp, %i.bj
  br i1 %exitcond.not.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h39a21bf43f749675E.exit.thread212", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %.backedge.i
  %i.bq = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 61, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bk, i64 noundef %i.bj), !noalias !147 ; 2 uses
  %i.br = extractvalue { i64, i64 } %i.bq, 0
  %i.bs = extractvalue { i64, i64 } %i.bq, 1
end_hunk_0
begin_hunk_1_@"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17h4c6752b27962f949E":bb.a
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !40, !invariant.load !25 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !41, !invariant.load !25 ; 2 uses
  %i.u = icmp ult i64 %i.t, -9223372036854775807
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.r, 0
  br i1 %i.v, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17he2c12eb77291d30dE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.k
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) %i.t) #46
  br label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17he2c12eb77291d30dE.exit"

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !40, !invariant.load !25 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !41, !invariant.load !25 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, -9223372036854775807
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.l
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.aa) #46
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i", %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %i.w, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i" ], [ %i.w, %bb.l ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17he2c12eb77291d30dE.exit": ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"
  %i.ad = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State22transition_to_terminal17hbe80bd7489bcd841E(ptr noundef nonnull align 8 %0, i64 noundef 1)
  br i1 %i.ad, label %bb.n, label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr551drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..decoder..Decoder$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$u20$as$u20$futures_core..stream..Stream$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hbdca954bf396339eE.exit", %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17he2c12eb77291d30dE.exit"
  ret void

bb.n:                                             ; preds = %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17he2c12eb77291d30dE.exit"
  invoke fastcc void @"_ZN4core3ptr526drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..decoder..Decoder$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$u20$as$u20$futures_core..stream..Stream$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17ha4051e4dbdae0e1cE"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr551drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..decoder..Decoder$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$u20$as$u20$futures_core..stream..Stream$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hbdca954bf396339eE.exit" unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #46
  br label %common.resume

"_ZN4core3ptr551drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..decoder..Decoder$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$u20$as$u20$futures_core..stream..Stream$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hbdca954bf396339eE.exit": ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #46
  br label %bb.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !25
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$url..parser..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf870c4dc4e10bd38E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !78, !noundef !25 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN60_$LT$url..parser..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf870c4dc4e10bd38E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN60_$LT$url..parser..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf870c4dc4e10bd38E.1258", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN61_$LT$regex_lite..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h39012a734e04e001E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @345, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @393)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN64_$LT$actix_web..info..PeerAddr$u20$as$u20$core..fmt..Display$GT$3fmt17h0cdc790dc8bf504bE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN73_$LT$core..net..socket_addr..SocketAddr$u20$as$u20$core..fmt..Display$GT$3fmt17hebfa5708b1795796E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc994245d6d415f3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !25
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$time..error..format..Format$u20$as$u20$core..fmt..Debug$GT$3fmt17h42f375d3f8839863E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !44, !noundef !25
  switch i64 %i.d, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @420, i64 noundef 27)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @421, i64 noundef 16, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @393)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @423, i64 noundef 14, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @422)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.a, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @424, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @343)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ %i.k, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$smallvec..CollectionAllocErr$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc177da6e787fcb9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !30, !noundef !25
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @438, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @439, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @437)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @436, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN66_$LT$actix_web..error..PathError$u20$as$u20$core..fmt..Display$GT$3fmt17h418436c28ef8d1e6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hed23aa1e5c255ef6E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8456
  store ptr @441, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN66_$LT$http..uri..Uri$u20$as$u20$actix_web..extract..FromRequest$GT$12from_request17heb170caf842753d0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !25, !noundef !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call fastcc void @"_ZN53_$LT$http..uri..Uri$u20$as$u20$core..clone..Clone$GT$5clone17h2d46620382b3562bE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull align 8 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN67_$LT$actix_web..error..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h5a9ed29b6dd5abefE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0839a4128ff0c040E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8459
  store ptr @3, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6725e799828082f6E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8469
  %i.c = mul i64 %.16.val, 24                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.e = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.e)
  store i64 0, ptr %i.b, align 8, !noalias !8469
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !8469
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfeefaf057c853eb4E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !8470
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #46, !noalias !8470 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52, !noalias !8469
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !8469
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !8469
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i", %bb.e
  %.sroa.012.023.i = phi ptr [ %i.p, %bb.e ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i" ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.o, %bb.e ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i" ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.m, %bb.e ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i" ]
  %i.m = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.n = icmp eq ptr %.sroa.012.023.i, %i.l
  br i1 %i.n, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfeefaf057c853eb4E.exit", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8469
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @574)
          to label %bb.e unwind label %bb.f, !noalias !8471

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !8471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8469
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfeefaf057c853eb4E.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.k, align 8, !alias.scope !8472, !noalias !8469
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h47588ffae37f2c10E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #53, !noalias !8471
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfeefaf057c853eb4E.exit": ; preds = %.lr.ph.i, %bb.e, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i"
  %i.s = phi ptr [ %i.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i" ], [ %i.k, %bb.e ], [ %i.k, %.lr.ph.i ]
  store i64 %.16.val, ptr %i.s, align 8, !noalias !8469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !8473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8469
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$h2..frame..stream_id..StreamId$u20$as$u20$core..fmt..Debug$GT$3fmt17h2037b75f29ffd6a2E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @448, i64 noundef 8, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @447)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$actix_http..error..PayloadError$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc840813367d09e2E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i8, ptr %0, align 8, !range !45, !noundef !25 ; 3 uses
  %i.e = icmp ne i8 %i.d, 9
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i8 %i.d, -5
  %i.g = icmp samesign ugt i8 %i.d, 4
  %narrow = select i1 %i.g, i8 %i.f, i8 4
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.c, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @450, i64 noundef 10, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @451, i64 noundef 17)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @392, i64 noundef 8)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @452, i64 noundef 13)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @454, i64 noundef 12, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @453)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.a, align 8
  %i.o = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @344, i64 noundef 2, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @343)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.o, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$actix_web..http..header..Writer$u20$as$u20$core..fmt..Write$GT$9write_fmt17hb47854597fd7dd40E"(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @51, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$actix_web..http..header..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h9da0ff31629f717bE"(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8477)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !8477, !noalias !8478, !noundef !25 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !8477, !noalias !8478, !noundef !25
  %i.f = sub i64 %i.e, %i.c
  %.not.i = icmp ugt i64 %2, %i.f
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2, i1 noundef zeroext true), !noalias !8478 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !alias.scope !8477, !noalias !8478
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %i.c, %bb.a ], [ %.pre.i, %bb.b ]
  %i.i = load ptr, ptr %0, align 8, !alias.scope !8477, !noalias !8478, !nonnull !25, !noundef !25
end_hunk_1
begin_hunk_2_@"_ZN68_$LT$actix_web..request..HttpRequest$u20$as$u20$core..fmt..Debug$GT$3fmt17ha526acb091b7795bE":bb.a
  %i.bh = icmp sgt i8 %i.bg, -65
  br i1 %i.bh, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit84, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ax, i64 noundef %i.az, i64 noundef %i.ba, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #52
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit84: ; preds = %bb.k
  %i.bi = sub nuw i64 %i.az, %i.ba
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  store ptr %i.bj, ptr %i.n, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.bi, ptr %i.bk, align 8
  store ptr %i.n, ptr %i.o, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6dc3dc7805ca26f4E", ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8540
  store ptr @460, ptr %i.d, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.5106.0..sroa_idx, align 8
  %.sroa.7107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.o, ptr %.sroa.7107.0..sroa_idx, align 8
  %.sroa.8108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.8108.0..sroa_idx, align 8
  %.sroa.10109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.10109.0..sroa_idx, align 8
  %i.bl = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val72, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !8540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.bl, label %bb.o, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread

_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread: ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit84, %.split.i.i74, %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !25 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 192153584101141163
  call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp eq i64 %i.bn, 0
  br i1 %i.bp, label %.split148, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit89

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit89: ; preds = %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.bq, ptr %i.l, align 8
  store ptr %i.l, ptr %i.m, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4fbcd4caac5c802E", ptr %.sroa.441.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8541
  store ptr @462, ptr %i.c, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.5112.0..sroa_idx, align 8
  %.sroa.7113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.m, ptr %.sroa.7113.0..sroa_idx, align 8
  %.sroa.8114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.8114.0..sroa_idx, align 8
  %.sroa.10115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10115.0..sroa_idx, align 8
  %i.br = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val72, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !8541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.br, label %bb.o, label %.split148

.split148:                                        ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit89, %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %.val72, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !25, !noalias !8542, !nonnull !25
  %i.bu = call noundef zeroext i1 %i.bt(ptr noundef nonnull align 1 %.val71, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @463, i64 noundef 11), !noalias !8542, !inline_history !0
  br i1 %i.bu, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.split148
  %i.bv = load ptr, ptr %i.s, align 8, !nonnull !25, !noundef !25
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 160
  call void @_ZN10actix_http6header3map9HeaderMap4iter17h86d524def649d7afE(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false)
  %i.bx = call { ptr, ptr } @"_ZN88_$LT$actix_http..header..map..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb967ecb763bdb78dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j) ; 2 uses
  %i.by = extractvalue { ptr, ptr } %i.bx, 0      ; 2 uses
  %.not60151 = icmp eq ptr %i.by, null
  br i1 %.not60151, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.q
  %i.ca = phi ptr [ %i.by, %.lr.ph ], [ %i.cj, %bb.q ] ; 3 uses
  %i.cb = phi { ptr, ptr } [ %i.bx, %.lr.ph ], [ %i.ci, %bb.q ]
  %i.cc = extractvalue { ptr, ptr } %i.cb, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ca, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  store ptr %i.cc, ptr %i.h, align 8
  %i.cd = load ptr, ptr %i.ca, align 8, !noundef !25
  %.not61 = icmp eq ptr %i.cd, null
  br i1 %.not61, label %bb.p, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit99

.sink.split:                                      ; preds = %bb.q, %bb.m, %bb.r
  %.sroa.0.0.ph = phi i1 [ true, %bb.r ], [ false, %bb.m ], [ false, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit89, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit84, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %.split148
  %.sroa.0.0 = phi i1 [ true, %.split148 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit84 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit89 ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i1 %.sroa.0.0

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit99: ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h836cc3088c9fac37E", ptr %.sroa.445.0..sroa_idx, align 8
  store ptr %i.h, ptr %i.bz, align 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1f6f2233bda9d4f9E", ptr %.sroa.457.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8543
  store ptr @468, ptr %i.b, align 8
  store i64 3, ptr %.sroa.5130.0..sroa_idx, align 8
  store ptr %i.f, ptr %.sroa.7131.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.8132.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10133.0..sroa_idx, align 8
  %i.ce = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val72, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !8543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.ce, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cg = load i8, ptr %i.cf, align 8, !range !79, !noundef !25
  switch i8 %i.cg, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit99 [
    i8 16, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit104
    i8 30, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit104
    i8 51, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit104
  ]

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit104: ; preds = %bb.p, %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  store <2 x ptr> <ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h836cc3088c9fac37E", ptr @465>, ptr %.sroa.449.0..sroa_idx, align 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6dc3dc7805ca26f4E", ptr %.sroa.453.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8544
  store ptr @468, ptr %i.a, align 8
  store i64 3, ptr %.sroa.5124.0..sroa_idx, align 8
  store ptr %i.g, ptr %.sroa.7125.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.8126.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10127.0..sroa_idx, align 8
  %i.ch = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val72, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.ch, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit99, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ci = call { ptr, ptr } @"_ZN88_$LT$actix_http..header..map..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb967ecb763bdb78dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j) ; 2 uses
  %i.cj = extractvalue { ptr, ptr } %i.ci, 0      ; 2 uses
  %.not60 = icmp eq ptr %i.cj, null
  br i1 %.not60, label %.sink.split, label %bb.n

bb.r:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit99, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN69_$LT$$RF$str$u20$as$u20$actix_web..response..responder..Responder$GT$10respond_to17hf09142bbf59aa054E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN111_$LT$actix_http..responses..response..Response$LT$$RF$str$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h139d53c9aa6312ffE"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN69_$LT$actix_web..error..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h842dc529771ba133E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !25, !noundef !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !25, !align !36, !noundef !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !25, !nonnull !25
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN70_$LT$actix_web..error..BlockingError$u20$as$u20$core..fmt..Display$GT$3fmt17hd116666a50a29935E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %.val = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !25, !noalias !8547, !nonnull !25
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 46), !noalias !8547, !inline_history !0
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$core..net..parser..AddrParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5b3d5d51fc865fbeE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @485, i64 noundef 14, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @484)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN71_$LT$actix_web..config..AppConfig$u20$as$u20$core..default..Default$GT$7default17h93a25c4e4213ae11E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 4                ; 6 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !8560
  %i.c = tail call noundef dereferenceable_or_null(14) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 14, i64 noundef range(i64 1, 9) 1) #46, !noalias !8560 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @573) #52, !noalias !8561
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit": ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.c, ptr noundef nonnull align 1 dereferenceable(14) @486, i64 14, i1 false), !noalias !8562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4core3net6parser91_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$core..net..socket_addr..SocketAddr$GT$8from_str17h0c3023f1a5db3cefE"(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @487, i64 noundef 14)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !8563)
  %i.e = load i16, ptr %i.b, align 4, !range !8564, !alias.scope !8563, !noalias !8565, !noundef !25
  %i.f = icmp eq i16 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8566
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.h = load i8, ptr %i.g, align 2, !range !56, !alias.scope !8563, !noalias !8565, !noundef !25
  store i8 %i.h, ptr %i.a, align 1, !noalias !8566
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @302, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @303, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @489) #52
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.j, align 8
  store i64 14, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %.sroa.6.0..sroa_idx4, align 8
  ret void

bb.f:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit", %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 14, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !8567
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$actix_web..error..ReadlinesError$u20$as$u20$core..fmt..Display$GT$3fmt17h96e4e5c583938b77E"(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i8, ptr %0, align 8, !range !8576, !noundef !25 ; 3 uses
  %i.e = icmp ne i8 %i.d, 12
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i8 %i.d, -11
  %i.g = icmp samesign ugt i8 %i.d, 10
  %narrow = select i1 %i.g, i8 %i.f, i8 1
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.h, align 8
  %.val9 = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !25, !noalias !8577, !nonnull !25
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @490, i64 noundef 14), !noalias !8577, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heb5969a472c302adE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val7 = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.l, align 8, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8578
  store ptr @492, ptr %i.a, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.728.0..sroa_idx, align 8
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.829.0..sroa_idx, align 8
  %.sroa.1030.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1030.0..sroa_idx, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.n, align 8
  %.val5 = load ptr, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !25, !noalias !8579, !nonnull !25
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 1 %.val5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @493, i64 noundef 19), !noalias !8579, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.r, align 8
  %.val = load ptr, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !25, !noalias !8580, !nonnull !25
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @494, i64 noundef 18), !noalias !8580, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15
  %.sroa.0.0.in = phi i1 [ %i.u, %bb.e ], [ %i.m, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15 ], [ %i.q, %bb.d ], [ %i.k, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$actix_web..info..MissingPeerAddr$u20$as$u20$core..fmt..Display$GT$3fmt17h0af240cc2b9cf366E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %.val = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !25, !noalias !8583, !nonnull !25
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @495, i64 noundef 20), !noalias !8583, !inline_history !0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$actix_web..service..ServiceRequest$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e0be984b6d729c3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 2 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !25, !noundef !25 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !25, !noundef !25 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.w = load i64, ptr %i.v, align 8, !noundef !25 ; 6 uses
  %i.x = icmp eq i64 %i.w, 0                      ; 2 uses
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.z = load i8, ptr %i.y, align 8, !range !39, !noundef !25
  %.not = icmp eq i8 %i.z, 0
  br i1 %.not, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.ab = load i16, ptr %i.aa, align 8, !noundef !25 ; 3 uses
  %i.ac = icmp eq i16 %i.ab, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !noundef !25 ; 8 uses
  br i1 %i.ac, label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = zext i16 %i.ab to i64                   ; 5 uses
  %i.ag = icmp eq i16 %i.ab, 0
  br i1 %i.ag, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ugt i64 %i.w, %i.af
  br i1 %.not.i.i, label %bb.f, label %.split.i.i

.split.i.i:                                       ; preds = %bb.e
  %i.ah = icmp ne i64 %i.w, %i.af
  %.not.i = icmp eq ptr %i.ae, null
  %or.cond.i = or i1 %.not.i, %i.ah
  br i1 %or.cond.i, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i", label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread, !prof !53

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !8600, !noundef !25
  %i.ak = icmp sgt i8 %i.aj, -65
  br i1 %i.ak, label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i"

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i": ; preds = %bb.d
  %.not.old.i = icmp eq ptr %i.ae, null
  br i1 %.not.old.i, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i", label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, !prof !52

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i": ; preds = %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i", %bb.f, %.split.i.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.w, i64 noundef 0, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @313) #52
  unreachable

_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread: ; preds = %.split.i.i, %bb.f
  %.sroa.7.0.i.ph = phi i64 [ %i.af, %bb.f ], [ %i.w, %.split.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %..sroa.7.0.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %spec.select = select i1 %i.x, ptr @314, ptr %i.ae
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i", %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.sroa.7.0.i.ph, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread ], [ %..sroa.7.0.i, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit ], [ 1, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i" ]
  %.sroa.09.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.b ], [ %i.ae, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread ], [ %spec.select, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit ], [ @314, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i" ]
  store ptr %.sroa.09.0, ptr %i.o, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.5.0, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.t, ptr %i.n, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN59_$LT$http..version..Version$u20$as$u20$core..fmt..Debug$GT$3fmt17hd02b52591cf5a3b0E", ptr %.sroa.412.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.u, ptr %i.am, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @"_ZN59_$LT$http..method..Method$u20$as$u20$core..fmt..Display$GT$3fmt17h35ae265a0a765c9aE", ptr %.sroa.416.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.o, ptr %i.an, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66f47b62ae1982faE", ptr %.sroa.420.0..sroa_idx, align 8
  %.val59 = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val60 = load ptr, ptr %i.ao, align 8, !nonnull !25, !noundef !25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8601
  store ptr @497, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.n, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ap = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !8601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.ap, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %i.aq = load ptr, ptr %i.r, align 8, !nonnull !25, !noundef !25 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load i16, ptr %i.ar, align 8, !noundef !25 ; 2 uses
  %i.at = icmp eq i16 %i.as, -1
  br i1 %i.at, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = add nuw i16 %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !25 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !25 ; 7 uses
  %i.az = zext i16 %i.au to i64                   ; 8 uses
  %.not.i.i61 = icmp ugt i64 %i.ay, %i.az
  br i1 %.not.i.i61, label %bb.i, label %.split.i.i62

.split.i.i62:                                     ; preds = %bb.h
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !8602, !noundef !25
  %i.bd = icmp sgt i8 %i.bc, -65
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %.split.i.i62
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %i.ay, i64 noundef %i.az, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #52
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !8603, !noundef !25
  %i.bg = icmp sgt i8 %i.bf, -65
  br i1 %i.bg, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %i.ay, i64 noundef %i.az, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #52
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72: ; preds = %bb.k
  %i.bh = sub nuw i64 %i.ay, %i.az
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  store ptr %i.bi, ptr %i.l, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.bh, ptr %i.bj, align 8
  store ptr %i.l, ptr %i.m, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6dc3dc7805ca26f4E", ptr %.sroa.436.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8604
  store ptr @460, ptr %i.c, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.589.0..sroa_idx, align 8
  %.sroa.790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.m, ptr %.sroa.790.0..sroa_idx, align 8
  %.sroa.891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.891.0..sroa_idx, align 8
  %.sroa.1092.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.1092.0..sroa_idx, align 8
  %i.bk = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !8604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.bk, label %bb.n, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread

_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread: ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72, %.split.i.i62, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !25 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 192153584101141163
  call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %.split125, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit77

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit77: ; preds = %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.bp, ptr %i.j, align 8
  store ptr %i.j, ptr %i.k, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4fbcd4caac5c802E", ptr %.sroa.440.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8605
  store ptr @462, ptr %i.b, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.595.0..sroa_idx, align 8
  %.sroa.796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %.sroa.796.0..sroa_idx, align 8
  %.sroa.897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.897.0..sroa_idx, align 8
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1098.0..sroa_idx, align 8
  %i.bq = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !8605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.bq, label %bb.n, label %.split125

.split125:                                        ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit77, %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread
  %i.br = getelementptr inbounds nuw i8, ptr %.val60, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !25, !noalias !8606, !nonnull !25
  %i.bt = call noundef zeroext i1 %i.bs(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @463, i64 noundef 11), !noalias !8606, !inline_history !0
  br i1 %i.bt, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split125
  %i.bu = load ptr, ptr %i.r, align 8, !nonnull !25, !noundef !25
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 160
  call void @_ZN10actix_http6header3map9HeaderMap4iter17h86d524def649d7afE(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  %i.bw = call { ptr, ptr } @"_ZN88_$LT$actix_http..header..map..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb967ecb763bdb78dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h) ; 2 uses
  %i.bx = extractvalue { ptr, ptr } %i.bw, 0      ; 2 uses
  %.not51127 = icmp eq ptr %i.bx, null
  br i1 %.not51127, label %.sink.split, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87.lr.ph

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87.lr.ph: ; preds = %bb.m
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87: ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87.lr.ph, %bb.o
  %i.bz = phi ptr [ %i.bx, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87.lr.ph ], [ %i.ce, %bb.o ]
  %i.ca = phi { ptr, ptr } [ %i.bw, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87.lr.ph ], [ %i.cd, %bb.o ]
  %i.cb = extractvalue { ptr, ptr } %i.ca, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.bz, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  store ptr %i.cb, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h836cc3088c9fac37E", ptr %.sroa.444.0..sroa_idx, align 8
  store ptr %i.f, ptr %i.by, align 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1f6f2233bda9d4f9E", ptr %.sroa.448.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8607
  store ptr @468, ptr %i.a, align 8
  store i64 3, ptr %.sroa.5107.0..sroa_idx, align 8
  store ptr %i.e, ptr %.sroa.7108.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.8109.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10110.0..sroa_idx, align 8
  %i.cc = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8607 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.cc, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %bb.o, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87, %bb.m
  %.sroa.0.0.ph = phi i1 [ false, %bb.m ], [ %i.cc, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87 ], [ %i.cc, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit77, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %.split125
  %.sroa.0.0 = phi i1 [ true, %.split125 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit77 ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i1 %.sroa.0.0

bb.o:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87
  %i.cd = call { ptr, ptr } @"_ZN88_$LT$actix_http..header..map..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb967ecb763bdb78dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h) ; 2 uses
  %i.ce = extractvalue { ptr, ptr } %i.cd, 0      ; 2 uses
  %.not51 = icmp eq ptr %i.ce, null
  br i1 %.not51, label %.sink.split, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$actix_http..error..ContentTypeError$u20$as$u20$core..fmt..Debug$GT$3fmt17h29e7c5de88820718E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !31, !noundef !25
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 15, i64 10
  %.1 = select i1 %i.b, ptr @499, ptr @498
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$actix_web..error..UrlencodedError$u20$as$u20$core..fmt..Display$GT$3fmt17h94ef124650ad1240E"(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = load i8, ptr %0, align 8, !range !8624, !noundef !25 ; 2 uses
  %i.o = add nsw i8 %i.n, -11
  %i.p = icmp samesign ugt i8 %i.n, 10
  %narrow = select i1 %i.p, i8 %i.o, i8 7
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit54
    i8 5, label %bb.f
    i8 6, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit64
    i8 7, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit69
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val34 = load ptr, ptr %i.q, align 8
  %.val33 = load ptr, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.val34, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !25, !noalias !8625, !nonnull !25
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 1 %.val33, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @500, i64 noundef 41), !noalias !8625, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd638a7bdc56b2187E", ptr %.sroa.415.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.w, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd638a7bdc56b2187E", ptr %.sroa.419.0..sroa_idx, align 8
  %.val31 = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val32 = load ptr, ptr %i.x, align 8, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8626
  store ptr @504, ptr %i.d, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 3, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.k, ptr %.sroa.772.0..sroa_idx, align 8
  %.sroa.873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 2, ptr %.sroa.873.0..sroa_idx, align 8
  %.sroa.1074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.1074.0..sroa_idx, align 8
  %i.y = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val31, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !8626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.z, align 8
  %.val29 = load ptr, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.val30, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !25, !noalias !8627, !nonnull !25
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @505, i64 noundef 26), !noalias !8627, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.ad, align 8
  %.val27 = load ptr, ptr %1, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.val28, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !25, !noalias !8628, !nonnull !25
  %i.ag = tail call noundef zeroext i1 %i.af(ptr noundef nonnull align 1 %.val27, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @506, i64 noundef 19), !noalias !8628, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit54: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hed23aa1e5c255ef6E", ptr %.sroa.411.0..sroa_idx, align 8
  %.val25 = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val26 = load ptr, ptr %i.ai, align 8, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8629
  store ptr @508, ptr %i.c, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.589.0..sroa_idx, align 8
  %.sroa.790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %.sroa.790.0..sroa_idx, align 8
  %.sroa.891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.891.0..sroa_idx, align 8
  %.sroa.1092.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.1092.0..sroa_idx, align 8
  %i.aj = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val26, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !8629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.f:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.ak, align 8
  %.val23 = load ptr, ptr %1, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.val24, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !25, !noalias !8630, !nonnull !25
  %i.an = tail call noundef zeroext i1 %i.am(ptr noundef nonnull align 1 %.val23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @509, i64 noundef 15), !noalias !8630, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit64: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h8000dbeb57b0fb59E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val21 = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val22 = load ptr, ptr %i.ap, align 8, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8631
  store ptr @511, ptr %i.b, align 8
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.5101.0..sroa_idx, align 8
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %.sroa.7102.0..sroa_idx, align 8
  %.sroa.8103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.8103.0..sroa_idx, align 8
  %.sroa.10104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10104.0..sroa_idx, align 8
  %i.aq = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val21, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val22, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !8631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit69: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heb5969a472c302adE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val20 = load ptr, ptr %i.ar, align 8, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8632
  store ptr @512, ptr %i.a, align 8
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5107.0..sroa_idx, align 8
  %.sroa.7108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.7108.0..sroa_idx, align 8
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8109.0..sroa_idx, align 8
  %.sroa.10110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10110.0..sroa_idx, align 8
  %i.as = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val20, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit69, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit64, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit54, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39
  %.sroa.0.0.in = phi i1 [ %i.as, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit69 ], [ %i.y, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39 ], [ %i.ac, %bb.d ], [ %i.an, %bb.f ], [ %i.aj, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit54 ], [ %i.ag, %bb.e ], [ %i.aq, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit64 ], [ %i.t, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN72_$LT$http..method..Method$u20$as$u20$actix_web..extract..FromRequest$GT$12from_request17hce33ddb4ae13831dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.14 = alloca [7 x i8], align 1            ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !25, !noundef !25 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load i8, ptr %i.d, align 8, !range !45, !noundef !25 ; 2 uses
  switch i8 %i.e, label %default.unreachable18 [
    i8 0, label %bb.f
    i8 1, label %bb.f
    i8 2, label %bb.f
    i8 3, label %bb.f
    i8 4, label %bb.f
    i8 5, label %bb.f
    i8 6, label %bb.f
    i8 7, label %bb.f
    i8 8, label %bb.f
    i8 9, label %bb.b
    i8 10, label %bb.c
  ]

default.unreachable18:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.0..sroa_idx, i64 7, i1 false)
  %.sroa.143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %.sroa.143.0.copyload = load ptr, ptr %.sroa.143.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %.val = load ptr, ptr %i.f, align 8, !nonnull !25, !align !35, !noundef !25
  %i.g = getelementptr i8, ptr %i.c, i64 152
  %.val17 = load i64, ptr %i.g, align 8, !noundef !25 ; 6 uses
  %i.h = icmp slt i64 %.val17, 0
  br i1 %i.h, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.c
  %i.i = icmp eq i64 %.val17, 0
  br i1 %i.i, label %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf4cbc06358bf32a6E.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !8640
  %i.j = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val17, i64 noundef range(i64 1, 9) 1) #46, !noalias !8640 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf4cbc06358bf32a6E.exit"

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.val17, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @573) #52, !noalias !8641
  unreachable

"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf4cbc06358bf32a6E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.d
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %.val, i64 %.val17, i1 false), !noalias !8642
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf4cbc06358bf32a6E.exit", %bb.b
  %.sroa.15.0 = phi i64 [ %.val17, %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf4cbc06358bf32a6E.exit" ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %.sroa.15.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.sroa.143.0 = phi ptr [ %.sroa.10.0.i.i.i, %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf4cbc06358bf32a6E.exit" ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %.sroa.143.0.copyload, %bb.b ], [ undef, %bb.a ]
  store i8 %i.e, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14, i64 7, i1 false)
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.143.0, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.15.0, ptr %.sroa.616.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$actix_web..error..JsonPayloadError$u20$as$u20$core..fmt..Display$GT$3fmt17h2ffa73f007274664E"(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = load i8, ptr %0, align 8, !range !8655, !noundef !25 ; 2 uses
  %i.r = add nsw i8 %i.q, -11
  %i.s = icmp samesign ugt i8 %i.q, 10
  %narrow = select i1 %i.s, i8 %i.r, i8 5
  switch i8 %narrow, label %bb.b [
    i8 0, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39
    i8 2, label %bb.c
    i8 3, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit49
    i8 4, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit54
    i8 5, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit59
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd638a7bdc56b2187E", ptr %.sroa.419.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.v, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd638a7bdc56b2187E", ptr %.sroa.423.0..sroa_idx, align 8
  %.val33 = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val34 = load ptr, ptr %i.w, align 8, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8656
  store ptr @515, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.n, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.x = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val33, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val34, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !8656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit44

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd638a7bdc56b2187E", ptr %.sroa.415.0..sroa_idx, align 8
  %.val31 = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val32 = load ptr, ptr %i.z, align 8, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8657
  store ptr @517, ptr %i.d, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.561.0..sroa_idx, align 8
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.l, ptr %.sroa.762.0..sroa_idx, align 8
  %.sroa.863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.863.0..sroa_idx, align 8
  %.sroa.1064.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.1064.0..sroa_idx, align 8
  %i.aa = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val31, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !8657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit44

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.ab, align 8
  %.val29 = load ptr, ptr %1, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val30, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !25, !noalias !8658, !nonnull !25
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @518, i64 noundef 18), !noalias !8658, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit44

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit49: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h71e8d6ee28781c57E", ptr %.sroa.411.0..sroa_idx, align 8
  %.val27 = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.ag, align 8, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8659
  store ptr @520, ptr %i.c, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.573.0..sroa_idx, align 8
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.j, ptr %.sroa.774.0..sroa_idx, align 8
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.875.0..sroa_idx, align 8
  %.sroa.1076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.1076.0..sroa_idx, align 8
  %i.ah = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val27, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val28, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !8659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit44

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit54: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h71e8d6ee28781c57E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val25 = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val26 = load ptr, ptr %i.aj, align 8, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8660
  store ptr @522, ptr %i.b, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.579.0..sroa_idx, align 8
  %.sroa.780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.780.0..sroa_idx, align 8
  %.sroa.881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.881.0..sroa_idx, align 8
  %.sroa.1082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1082.0..sroa_idx, align 8
  %i.ak = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val26, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !8660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit44

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit59: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heb5969a472c302adE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.al, align 8, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8661
  store ptr @492, ptr %i.a, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.585.0..sroa_idx, align 8
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.786.0..sroa_idx, align 8
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.887.0..sroa_idx, align 8
  %.sroa.1088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1088.0..sroa_idx, align 8
  %i.am = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val24, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit44

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit44: ; preds = %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit59, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit54, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit49, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.x, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.aa, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39 ], [ %i.am, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit59 ], [ %i.ah, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit49 ], [ %i.ak, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit54 ], [ %i.ae, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$actix_web..guard..HeaderGuard$u20$as$u20$actix_web..guard..Guard$GT$5check17h11c11603eeaa2e3eE"(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !25, !align !36, !noundef !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !25, !noundef !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !25, !noundef !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = tail call fastcc noundef align 8 ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h3d926cb83ed4f654E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 %0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN10actix_http6header3map9HeaderMap3get17hf04fc238564acd11E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = tail call noundef nonnull align 8 ptr @_ZN10actix_http6header3map5Value5first17h93c1a60b16efcf56E(ptr noundef nonnull align 8 %i.h), !noalias !8664 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !25 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8, !noundef !25
  %.not5 = icmp eq i64 %i.k, %i.m
  br i1 %.not5, label %bb.c, label %_ZN10actix_http6header3map9HeaderMap3get17hf04fc238564acd11E.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !noundef !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noundef !25
  %bcmp = tail call i32 @bcmp(ptr %i.q, ptr %i.o, i64 %i.k)
  %i.r = icmp eq i32 %bcmp, 0
  br label %_ZN10actix_http6header3map9HeaderMap3get17hf04fc238564acd11E.exit.thread

_ZN10actix_http6header3map9HeaderMap3get17hf04fc238564acd11E.exit.thread: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.1 = phi i1 [ false, %bb.b ], [ %i.r, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$actix_web..guard..MethodGuard$u20$as$u20$actix_web..guard..Guard$GT$5check17h44aca0f47df2e7abE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.1416 = alloca [7 x i8], align 1          ; 2 uses
  %.sroa.14 = alloca [7 x i8], align 1            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !25, !align !36, !noundef !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !25, !noundef !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !25, !noundef !25 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 8 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !25
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.h, !prof !29

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8763)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !8764, !noalias !8765, !noundef !25 ; 3 uses
  %i.q = load ptr, ptr %i.n, align 8, !alias.scope !8764, !noalias !8765, !nonnull !25, !noundef !25 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ah, %bb.e ]
  %.pn.i.i.i.i.i = phi i64 [ -8779034909212600962, %bb.b ], [ %i.ai, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.r, align 1, !noalias !8766 ; 2 uses
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 67)
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.ag, %bb.d ], [ %i.t, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.v
  %i.x = and i64 %i.w, %i.p                       ; 3 uses
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [32 x i8], ptr %i.q, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -32
  %.val3.i.i.i.i.i.i = load i128, ptr %i.aa, align 8, !noalias !8767
  %i.ab = icmp eq i128 %.val3.i.i.i.i.i.i, -161944610184406818283420451019201716506
  br i1 %i.ab, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h232a7e0eec766b31E.exit.i.i.i.i", label %bb.d, !prof !29

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %.thread89, !prof !33

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.ag = and i16 %i.af, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
end_hunk_2
begin_hunk_3_@"_ZN74_$LT$actix_router..resource..ResourceDef$u20$as$u20$core..clone..Clone$GT$5clone17h65ef958b0b70786eE":bb.a
  %i.da = getelementptr inbounds nuw [56 x i8], ptr %i.bt, i64 %.sroa.7.025.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.da, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !8925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8919
  %i.db = icmp eq i64 %i.cc, 0
  br i1 %i.db, label %.loopexit.i, label %bb.x

bb.af:                                            ; preds = %bb.ag
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !8925
  unreachable

bb.ag:                                            ; preds = %bb.ac, %.loopexit.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cx, %bb.ac ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ]
  store i64 %.sroa.7.025.i.i.i, ptr %i.bw, align 8, !alias.scope !8938, !noalias !8919
  invoke fastcc void @"_ZN4core3ptr112drop_in_place$LT$alloc..vec..Vec$LT$$LP$regex..regex..string..Regex$C$alloc..vec..Vec$LT$$RF$str$GT$$RP$$GT$$GT$17hedc7087df11e599fE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #53
          to label %.body.i unwind label %bb.af, !noalias !8925

bb.ah:                                            ; preds = %.noexc9
  call void @llvm.trap()
  unreachable

bb.ai:                                            ; preds = %bb.w
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ai, %bb.ag
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dd, %bb.ai ], [ %eh.lpad-body.i.i.i, %bb.ag ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_router..regex_set..RegexSet$GT$17hd5191da32c5008f3E"(ptr noalias noundef align 8 dereferenceable(32) %i.e) #53
          to label %.body unwind label %bb.t, !noalias !8913

.loopexit.i:                                      ; preds = %bb.ae, %bb.x, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i.i"
  %i.de = phi ptr [ %i.bs, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i.i" ], [ %i.bw, %bb.x ], [ %i.bw, %bb.ae ]
  store i64 %.val8.i, ptr %i.de, align 8, !noalias !8919
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !8914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8919
  %i.dg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !8914
  store i64 2, ptr %i.j, align 8, !alias.scope !8913, !noalias !8914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8915
  br label %"_ZN74_$LT$actix_router..resource..PatternType$u20$as$u20$core..clone..Clone$GT$5clone17ha5eb9cd5a35f0c69E.exit"

bb.aj:                                            ; preds = %bb.d
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 1, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.j

.body:                                            ; preds = %bb.ak, %.body.i, %bb.r, %.body11
  %.pn = phi { ptr, i32 } [ %eh.lpad-body12, %.body11 ], [ %i.di, %bb.ak ], [ %i.bd, %bb.r ], [ %eh.lpad-body.i, %.body.i ]
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$actix_router..pattern..Patterns$GT$17h0b3b9373b9c38742E"(ptr noalias noundef align 8 dereferenceable(32) %i.k) #53
  br label %bb.f

bb.ak:                                            ; preds = %bb.m, %bb.l, %bb.k
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZN74_$LT$actix_router..resource..PatternType$u20$as$u20$core..clone..Clone$GT$5clone17ha5eb9cd5a35f0c69E.exit": ; preds = %.loopexit.i, %bb.s, %.noexc
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val6 = load ptr, ptr %i.dj, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val7 = load i64, ptr %i.dk, align 8, !noundef !25 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8939)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8940
  %i.dl = shl i64 %.val7, 5                       ; 4 uses
  %i.dm = icmp ugt i64 %.val7, 576460752303423487
  %i.dn = icmp ugt i64 %i.dl, 9223372036854775800
  %or.cond.i.i.i.i.i = or i1 %i.dm, %i.dn
  br i1 %or.cond.i.i.i.i.i, label %bb.am, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %"_ZN74_$LT$actix_router..resource..PatternType$u20$as$u20$core..clone..Clone$GT$5clone17ha5eb9cd5a35f0c69E.exit"
  %i.do = icmp eq i64 %i.dl, 0
  br i1 %i.do, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i", label %bb.al

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.dp = icmp eq i64 %.val7, 0
  call void @llvm.assume(i1 %i.dp)
  store i64 0, ptr %i.b, align 8, !noalias !8940
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dq, align 8, !noalias !8940
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.loopexit

bb.al:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !8941
  %i.ds = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dl, i64 noundef range(i64 1, 9) 8) #46, !noalias !8941 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.am, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i"

bb.am:                                            ; preds = %bb.al, %"_ZN74_$LT$actix_router..resource..PatternType$u20$as$u20$core..clone..Clone$GT$5clone17ha5eb9cd5a35f0c69E.exit"
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.al ], [ 0, %"_ZN74_$LT$actix_router..resource..PatternType$u20$as$u20$core..clone..Clone$GT$5clone17ha5eb9cd5a35f0c69E.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.dl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52
          to label %.noexc10 unwind label %bb.ar

.noexc10:                                         ; preds = %bb.am
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i": ; preds = %bb.al
  store i64 %.val7, ptr %i.b, align 8, !noalias !8940
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ds, ptr %i.du, align 8, !noalias !8940
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %.val6, i64 %.val7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i"
  %.sroa.013.024.i.i = phi ptr [ %.val6, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i" ], [ %i.ed, %bb.ap ] ; 4 uses
  %.sroa.7.023.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i" ], [ %i.ec, %bb.ap ] ; 3 uses
  %.sroa.10.022.i.i = phi i64 [ %.val7, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i" ], [ %i.dy, %bb.ap ]
  %i.dy = add nsw i64 %.sroa.10.022.i.i, -1       ; 2 uses
  %i.dz = icmp eq ptr %.sroa.013.024.i.i, %i.dw
  br i1 %i.dz, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8940
  call void @llvm.experimental.noalias.scope.decl(metadata !8942)
  call void @llvm.experimental.noalias.scope.decl(metadata !8943)
  %i.ea = load i64, ptr %.sroa.013.024.i.i, align 8, !range !38, !alias.scope !8944, !noalias !8945, !noundef !25
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.013.024.i.i, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @540)
          to label %bb.ap unwind label %bb.aq, !noalias !8946

bb.ap:                                            ; preds = %bb.ao
  %i.ec = add nuw nsw i64 %.sroa.7.023.i.i, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.013.024.i.i, i64 32
  store i64 %i.ea, ptr %i.a, align 8, !alias.scope !8942, !noalias !8947
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ds, i64 %.sroa.7.023.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !8946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8940
  %i.ef = icmp eq i64 %i.dy, 0
  br i1 %i.ef, label %.loopexit, label %bb.an

bb.aq:                                            ; preds = %bb.ao
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.023.i.i, ptr %i.dv, align 8, !alias.scope !8948, !noalias !8940
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$actix_router..resource..PatternSegment$GT$$GT$17h562065b0683ec90cE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #53, !noalias !8946
  br label %.body11

bb.ar:                                            ; preds = %bb.am
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body11

.body11:                                          ; preds = %bb.aq, %bb.ar
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.eg, %bb.ar ], [ %lpad.loopexit.i.i, %bb.aq ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..PatternType$GT$17h453da341afb3e084E"(ptr noalias noundef align 8 dereferenceable(64) %i.j) #53
          to label %.body unwind label %bb.as

.loopexit:                                        ; preds = %bb.ap, %bb.an, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i"
  %i.eh = phi ptr [ %i.dr, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i" ], [ %i.dv, %bb.an ], [ %i.dv, %bb.ap ]
  store i64 %.val7, ptr %i.eh, align 8, !noalias !8940
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8940
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 %i.m, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.0.0, ptr %i.ek, align 8
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx14, align 8
  %.sroa.7.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx16, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 %i.x, ptr %i.el, align 2
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.em, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.as:                                            ; preds = %.body11
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit": ; preds = %bb.g, %bb.f, %bb.f
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$actix_web..error..QueryPayloadError$u20$as$u20$core..fmt..Display$GT$3fmt17h09ad30c2ad58ea8dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hed23aa1e5c255ef6E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8951
  store ptr @532, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN75_$LT$actix_web..error..UrlGenerationError$u20$as$u20$core..fmt..Display$GT$3fmt17h5498b02f41a031cbE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !64, !noundef !25 ; 2 uses
  %i.b = add nsw i8 %i.a, -10
  %i.c = icmp samesign ugt i8 %i.a, 9
  %narrow = select i1 %i.c, i8 %i.b, i8 2
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8
  %.val2 = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !25, !noalias !8956, !nonnull !25
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 1 %.val2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @533, i64 noundef 18), !noalias !8956, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.h, align 8
  %.val = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !25, !noalias !8957, !nonnull !25
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @534, i64 noundef 30), !noalias !8957, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @"_ZN62_$LT$url..parser..ParseError$u20$as$u20$core..fmt..Display$GT$3fmt17h74c00c0d4d08455fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.e ], [ %i.k, %bb.d ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$actix_web..http..header..allow..Allow$u20$as$u20$core..fmt..Display$GT$3fmt17hd949e27e709123abE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !25 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = tail call noundef zeroext i1 @"_ZN59_$LT$http..method..Method$u20$as$u20$core..fmt..Display$GT$3fmt17h35ae265a0a765c9aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %_ZN10actix_http6header5utils19fmt_comma_delimited17hba7a284498ceb7a6E.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  %.sroa.04.0.i.ph = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.e
  %.sroa.04.0.i = phi ptr [ %i.j, %bb.e ], [ %.sroa.04.0.i.ph, %.preheader ] ; 3 uses
  %.not.i.not.not = icmp ne ptr %.sroa.04.0.i, %i.e ; 4 uses
  br i1 %.not.i.not.not, label %bb.d, label %_ZN10actix_http6header5utils19fmt_comma_delimited17hba7a284498ceb7a6E.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @69, i64 noundef 2)
  br i1 %i.i, label %_ZN10actix_http6header5utils19fmt_comma_delimited17hba7a284498ceb7a6E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 24
  %i.k = tail call noundef zeroext i1 @"_ZN59_$LT$http..method..Method$u20$as$u20$core..fmt..Display$GT$3fmt17h35ae265a0a765c9aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.04.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.k, label %_ZN10actix_http6header5utils19fmt_comma_delimited17hba7a284498ceb7a6E.exit, label %bb.c

_ZN10actix_http6header5utils19fmt_comma_delimited17hba7a284498ceb7a6E.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.sroa.0.2.i = phi i1 [ true, %bb.b ], [ %.not.i.not.not, %bb.e ], [ %.not.i.not.not, %bb.d ], [ %.not.i.not.not, %bb.c ]
  ret i1 %.sroa.0.2.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$actix_web..http..header..range..Range$u20$as$u20$core..fmt..Display$GT$3fmt17h090f1cf63694a6b3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !30, !noundef !25
  %.not = icmp eq i64 %i.e, -9223372036854775808
  br i1 %.not, label %.split, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0d322999ca7ebd42E", ptr %.sroa.47.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.g, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0d322999ca7ebd42E", ptr %.sroa.411.0..sroa_idx, align 8
  %.val14 = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.h, align 8, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8963
  store ptr @538, ptr %i.a, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.725.0..sroa_idx, align 8
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.826.0..sroa_idx, align 8
  %.sroa.1027.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1027.0..sroa_idx, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val15, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

.split:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val13 = load ptr, ptr %i.j, align 8
  %.val = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.val13, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !25, !noalias !8964, !nonnull !25
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @535, i64 noundef 6), !noalias !8964, !inline_history !0
  br i1 %i.m, label %.loopexit, label %.peel.begin

.peel.begin:                                      ; preds = %.split
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !25, !noundef !25 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !25 ; 3 uses
  %.idx = mul nuw nsw i64 %i.q, 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.peel.begin
  %i.t = tail call noundef zeroext i1 @"_ZN84_$LT$actix_web..http..header..range..ByteRangeSpec$u20$as$u20$core..fmt..Display$GT$3fmt17h04da0a893025e5b5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.t, label %.loopexit, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.b
  %.not3840 = icmp eq i64 %i.q, 1
  br i1 %.not3840, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.peel.next.preheader
  %.sroa.021.039 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  br label %bb.d

.peel.next:                                       ; preds = %bb.c
  %.sroa.021.0 = getelementptr inbounds nuw i8, ptr %.sroa.021.041, i64 24 ; 2 uses
  %.not38 = icmp eq ptr %.sroa.021.0, %i.r
  br i1 %.not38, label %.loopexit, label %bb.d, !llvm.loop !8962

..loopexit.loopexit_crit_edge:                    ; preds = %bb.c
  br label %.loopexit, !llvm.loop !8962

.loopexit:                                        ; preds = %.peel.next, %bb.d, %.peel.next.preheader, %..loopexit.loopexit_crit_edge, %.peel.begin, %bb.b, %.split, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0 = phi i1 [ %i.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ true, %.split ], [ false, %.peel.begin ], [ true, %bb.b ], [ false, %.peel.next.preheader ], [ true, %..loopexit.loopexit_crit_edge ], [ %i.v, %bb.d ], [ %i.v, %.peel.next ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @"_ZN84_$LT$actix_web..http..header..range..ByteRangeSpec$u20$as$u20$core..fmt..Display$GT$3fmt17h04da0a893025e5b5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.021.041, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.u, label %..loopexit.loopexit_crit_edge, label %.peel.next, !llvm.loop !8962

bb.d:                                             ; preds = %.lr.ph, %.peel.next
  %.sroa.021.041 = phi ptr [ %.sroa.021.039, %.lr.ph ], [ %.sroa.021.0, %.peel.next ] ; 2 uses
  %i.v = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @536, i64 noundef 1) ; 3 uses
  br i1 %i.v, label %.loopexit, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6f03bbbed8cfcee3E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @539, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$actix_web..guard..host..HostGuard$u20$as$u20$actix_web..guard..Guard$GT$5check17h2e063d6d11966a0eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 6 uses
  %i.c = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %1, align 8, !nonnull !25, !align !36, !noundef !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !25, !noundef !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !25, !noundef !25 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = tail call fastcc noundef align 8 ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h3d926cb83ed4f654E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @689), !noalias !8976 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = tail call noundef nonnull align 8 ptr @_ZN10actix_http6header3map5Value5first17h93c1a60b16efcf56E(ptr noundef nonnull align 8 %i.k), !noalias !8977 ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val.i = load ptr, ptr %i.m, align 8, !noalias !8976, !nonnull !25, !noundef !25 ; 3 uses
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %.val11.i = load i64, ptr %i.n, align 8, !noalias !8976, !noundef !25 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val11.i
  %i.p = icmp samesign eq i64 %.val11.i, 0
  br i1 %i.p, label %.loopexit39.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i, i64 1 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.o
  br i1 %i.r, label %.loopexit39.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.03.01.i.i = phi ptr [ %i.q, %bb.c ], [ %.val.i, %bb.b ] ; 2 uses
  %i.s = load i8, ptr %.sroa.03.01.i.i, align 1, !noalias !8976, !noundef !25 ; 2 uses
  %i.t = add i8 %i.s, -32
  %or.cond.i.i = icmp ult i8 %i.t, 95
  %i.u = icmp eq i8 %i.s, 9
  %or.cond1.i.i = or i1 %i.u, %or.cond.i.i
  br i1 %or.cond1.i.i, label %bb.c, label %.loopexit.i

.loopexit39.i:                                    ; preds = %bb.c, %bb.b
  %i.v = getelementptr i8, ptr %i.h, i64 200
  %.val.i.i = load i8, ptr %i.v, align 8, !range !56, !noalias !8978, !noundef !25
  %i.w = icmp samesign ult i8 %.val.i.i, 3
  br i1 %i.w, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h7cb3eeb28d4b4815E.exit.thread31.i", label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.loopexit39.i, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.y = load i64, ptr %i.x, align 8, !noalias !8979, !noundef !25 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZN9actix_web5guard4host12get_host_uri17hf5d2713aee386de6E.exit.thread, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h7cb3eeb28d4b4815E.exit.i"

"_ZN4core6option15Option$LT$T$GT$7or_else17h7cb3eeb28d4b4815E.exit.i": ; preds = %.loopexit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !8979, !noundef !25
  %i.ac = tail call { ptr, i64 } @_ZN4http3uri9authority4host17h0065fd46b09070b4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef %i.y), !noalias !8979 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  %.not10.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i, label %_ZN9actix_web5guard4host12get_host_uri17hf5d2713aee386de6E.exit.thread, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h7cb3eeb28d4b4815E.exit.thread31.i"

"_ZN4core6option15Option$LT$T$GT$7or_else17h7cb3eeb28d4b4815E.exit.thread31.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h7cb3eeb28d4b4815E.exit.i", %.loopexit39.i
  %.pn3.i38.i = phi i64 [ %i.ae, %"_ZN4core6option15Option$LT$T$GT$7or_else17h7cb3eeb28d4b4815E.exit.i" ], [ %.val11.i, %.loopexit39.i ]
  %.pn5.i37.i = phi ptr [ %i.ad, %"_ZN4core6option15Option$LT$T$GT$7or_else17h7cb3eeb28d4b4815E.exit.i" ], [ %.val.i, %.loopexit39.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8980
  call void @_ZN5bytes5bytes5Bytes15copy_from_slice17hadf080abce5a0c12E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.pn5.i37.i, i64 noundef %.pn3.i38.i), !noalias !8981
  call void @_ZN4http3uri3Uri11from_shared17h321495c802369005E(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !8981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8980
  %i.af = load i8, ptr %i.b, align 8, !range !34, !noalias !8980, !noundef !25 ; 2 uses
  %i.ag = icmp eq i8 %i.af, 3
  br i1 %i.ag, label %_ZN9actix_web5guard4host12get_host_uri17hf5d2713aee386de6E.exit.thread27, label %bb.d

_ZN9actix_web5guard4host12get_host_uri17hf5d2713aee386de6E.exit.thread27: ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h7cb3eeb28d4b4815E.exit.thread31.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8980
  br label %_ZN9actix_web5guard4host12get_host_uri17hf5d2713aee386de6E.exit.thread

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h7cb3eeb28d4b4815E.exit.thread31.i"
  %.sroa.8.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.8.0..sroa_idx19, i64 87, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8980
  store i8 %i.af, ptr %i.c, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !25 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !noundef !25
  %i.am = invoke { ptr, i64 } @_ZN4http3uri9authority4host17h0065fd46b09070b4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.al, i64 noundef %i.ai)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr35drop_in_place$LT$http..uri..Uri$GT$17hc7cc1e3b1cf64308E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c) #53
          to label %bb.o unwind label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.ao = extractvalue { ptr, i64 } %i.am, 0      ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = extractvalue { ptr, i64 } %i.am, 1      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load i64, ptr %i.aq, align 8, !noundef !25
  %.not.i = icmp eq i64 %.val10, %i.ap
  br i1 %.not.i, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit", label %.critedge

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit": ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.ar, align 8, !nonnull !25, !noundef !25
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly %.val9, ptr nonnull readonly %i.ao, i64 %i.ap)
  %i.as = icmp eq i32 %bcmp.i, 0
  br i1 %i.as, label %bb.i, label %.critedge

bb.i:                                             ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !range !30, !noundef !25
  %.not3 = icmp eq i64 %i.au, -9223372036854775808
  br i1 %.not3, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load i8, ptr %i.c, align 8, !range !39, !noundef !25
  switch i8 %i.av, label %default.unreachable [
    i8 0, label %.thread
    i8 2, label %bb.k
    i8 1, label %.thread34
  ], !prof !81

default.unreachable:                              ; preds = %bb.j
  unreachable

.thread34:                                        ; preds = %bb.j
  %i.aw = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !range !31, !noundef !25
end_hunk_3

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/rsbridge.rsbridge.4ec2e59a714257d1-cgu.0?download=true
inline.NumInlined: 153
inline.NumDeleted: 111
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2872811822648168688 to ptr), ptr inttoptr (i64 2227769779117065369 to ptr) }>, align 8
@1 = private unnamed_addr constant [30 x i8] c"uncaught panic at ffi boundary", align 1
@"_ZN4pyo38internal5state12ATTACH_COUNT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h494300385372fcb7E" = external thread_local local_unnamed_addr global i64
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$GT$$GT$$GT$17h59729bde20a7a4afE", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h33c15cb69ff25ee9E" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h78c5fb316943761eE", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h1b96e5150e105573E" }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb7fcd6cff19f7e3aE" }>, align 8
@5 = private unnamed_addr constant [8 x i8] c"Whatever", align 1
@6 = private unnamed_addr constant [6 x i8] c"source", align 1
@7 = private unnamed_addr constant [7 x i8] c"message", align 1
@8 = private unnamed_addr constant [9 x i8] c"backtrace", align 1
@9 = private unnamed_addr constant [8 x i8] c"Absolute", align 1
@10 = private unnamed_addr constant [4 x i8] c"Read", align 1
@11 = private unnamed_addr constant [4 x i8] c"Open", align 1
@12 = private unnamed_addr constant [6 x i8] c"Create", align 1
@13 = private unnamed_addr constant [5 x i8] c"Write", align 1
@14 = private unnamed_addr constant [6 x i8] c"Remove", align 1
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcdce7357defcf393E" }>, align 8
@16 = private unnamed_addr constant [8 x i8] c"CopyFrom", align 1
@17 = private unnamed_addr constant [6 x i8] c"Parent", align 1
@18 = private unnamed_addr constant [7 x i8] c"Persist", align 1
@19 = private unnamed_addr constant [4 x i8] c"Sync", align 1
@20 = private unnamed_addr constant [8 x i8] c"Metadata", align 1
@21 = private unnamed_addr constant [18 x i8] c"DecodeUtf8Filename", align 1
@22 = private unnamed_addr constant [12 x i8] c"SetFileTimes", align 1
@23 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@24 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h019e616f58a90b67E" }>, align 8
@25 = private unnamed_addr constant [7 x i8] c"DbError", align 1
@26 = private unnamed_addr constant [4 x i8] c"info", align 1
@27 = private unnamed_addr constant [4 x i8] c"kind", align 1
@28 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE" }>, align 8
@29 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5637b70c9d852fcE" }>, align 8
@30 = private unnamed_addr constant [13 x i8] c"CardTypeError", align 1
@31 = private unnamed_addr constant [8 x i8] c"notetype", align 1
@32 = private unnamed_addr constant [7 x i8] c"ordinal", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h026a8b1490f826fcE", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN55_$LT$std..path..PathBuf$u20$as$u20$core..fmt..Debug$GT$3fmt17h5454522f8dd4523fE" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr43drop_in_place$LT$anki_io..error..FileOp$GT$17hf3e5d8e916a8d152E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN59_$LT$anki_io..error..FileOp$u20$as$u20$core..fmt..Debug$GT$3fmt17h98121c6bc1368113E" }>, align 8
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2e302b4c29616872E" }>, align 8
@36 = private unnamed_addr constant [11 x i8] c"FileIoError", align 1
@37 = private unnamed_addr constant [4 x i8] c"path", align 1
@38 = private unnamed_addr constant [2 x i8] c"op", align 1
@39 = private unnamed_addr constant [10 x i8] c"FileTooNew", align 1
@40 = private unnamed_addr constant [10 x i8] c"FileTooOld", align 1
@41 = private unnamed_addr constant [13 x i8] c"MissingEntity", align 1
@42 = private unnamed_addr constant [7 x i8] c"Corrupt", align 1
@43 = private unnamed_addr constant [6 x i8] c"Locked", align 1
@44 = private unnamed_addr constant [4 x i8] c"Utf8", align 1
@45 = private unnamed_addr constant [5 x i8] c"Other", align 1
@46 = private unnamed_addr constant [4 x i8] c"None", align 1
@47 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf61a91aaced2bf05E" }>, align 8
@48 = private unnamed_addr constant [4 x i8] c"Some", align 1
@49 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1d201a150b46596aE" }>, align 8
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17haaeb19360f17e6eeE" }>, align 8
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h41c1930d64d13552E" }>, align 8
@"_ZN71_$LT$rsbridge..Backend$u20$as$u20$pyo3..impl_..pyclass..PyClassImpl$GT$16lazy_type_object11TYPE_OBJECT17h558a8a909eb8ee03E" = external hidden global { { { { { i32 } }, { { i8 } }, [3 x i8], { { { { i64, ptr, {} }, {} }, i64 } } }, { { { [5 x i64] } }, { { { i32 } } }, {}, [4 x i8] }, { ptr, { { { i32 } } }, {}, [4 x i8] } }, {} }
@52 = private unnamed_addr constant [7 x i8] c"Backend", align 1
@53 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8b7889633d515778E" }>, align 8
@54 = private unnamed_addr constant [9 x i8] c"SyncError", align 1
@55 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr36drop_in_place$LT$snafu..Whatever$GT$17h7ec894b630810836E", [16 x i8] c"X\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN54_$LT$snafu..Whatever$u20$as$u20$core..fmt..Display$GT$3fmt17h5a876f2ea7132ab0E" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr36drop_in_place$LT$snafu..Whatever$GT$17h7ec894b630810836E", [16 x i8] c"X\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN52_$LT$snafu..Whatever$u20$as$u20$core..fmt..Debug$GT$3fmt17hd335907cf75d2685E", ptr @"_ZN54_$LT$snafu..Whatever$u20$as$u20$core..fmt..Display$GT$3fmt17h5a876f2ea7132ab0E", ptr @55, ptr @"_ZN54_$LT$snafu..Whatever$u20$as$u20$core..error..Error$GT$6source17h30916d1f18752b4dE", ptr @_ZN4core5error5Error7type_id17hc80fd7be0de9d820E, ptr @"_ZN54_$LT$snafu..Whatever$u20$as$u20$core..error..Error$GT$11description17hebd9261a2db065d3E", ptr @"_ZN54_$LT$snafu..Whatever$u20$as$u20$core..error..Error$GT$5cause17h7929946435dd1673E", ptr @_ZN4core5error5Error7provide17hc776cd9ac1152aa8E }>, align 8
@57 = private unnamed_addr constant [18 x i8] c"TemplateParseError", align 1
@58 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8ade8d1400864accE" }>, align 8
@59 = private unnamed_addr constant [9 x i8] c"Duplicate", align 1
@60 = private unnamed_addr constant [5 x i8] c"index", align 1
@61 = private unnamed_addr constant [12 x i8] c"NoFrontField", align 1
@62 = private unnamed_addr constant [11 x i8] c"NoSuchField", align 1
@63 = private unnamed_addr constant [5 x i8] c"field", align 1
@64 = private unnamed_addr constant [12 x i8] c"MissingCloze", align 1
@65 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h34f48517964216acE" }>, align 8
@66 = private unnamed_addr constant [12 x i8] c"NetworkError", align 1
@67 = private unnamed_addr constant [8 x i8] c"Conflict", align 1
@68 = private unnamed_addr constant [11 x i8] c"ServerError", align 1
@69 = private unnamed_addr constant [12 x i8] c"ClientTooOld", align 1
@70 = private unnamed_addr constant [10 x i8] c"AuthFailed", align 1
@71 = private unnamed_addr constant [13 x i8] c"ServerMessage", align 1
@72 = private unnamed_addr constant [14 x i8] c"ClockIncorrect", align 1
@73 = private unnamed_addr constant [14 x i8] c"ResyncRequired", align 1
@74 = private unnamed_addr constant [21 x i8] c"DatabaseCheckRequired", align 1
@75 = private unnamed_addr constant [14 x i8] c"SyncNotStarted", align 1
@76 = private unnamed_addr constant [14 x i8] c"UploadTooLarge", align 1
@77 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00,\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7bf365e97427cb32E" }>, align 8
@78 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h45304dce5f48660aE" }>, align 8
@79 = private unnamed_addr constant [17 x i8] c"SanityCheckFailed", align 1
@80 = private unnamed_addr constant [6 x i8] c"client", align 1
@81 = private unnamed_addr constant [6 x i8] c"server", align 1
@"_ZN72_$LT$rsbridge..BackendError$u20$as$u20$pyo3..type_object..PyTypeInfo$GT$15type_object_raw11TYPE_OBJECT17hffd61138cfd48943E" = external hidden global { { { { ptr }, ptr } } }
@82 = private unnamed_addr constant [12 x i8] c"MisplacedAnd", align 1
@83 = private unnamed_addr constant [11 x i8] c"MisplacedOr", align 1
@84 = private unnamed_addr constant [10 x i8] c"EmptyGroup", align 1
@85 = private unnamed_addr constant [13 x i8] c"UnopenedGroup", align 1
@86 = private unnamed_addr constant [13 x i8] c"UnclosedGroup", align 1
@87 = private unnamed_addr constant [10 x i8] c"EmptyQuote", align 1
@88 = private unnamed_addr constant [13 x i8] c"UnclosedQuote", align 1
@89 = private unnamed_addr constant [10 x i8] c"MissingKey", align 1
@90 = private unnamed_addr constant [13 x i8] c"UnknownEscape", align 1
@91 = private unnamed_addr constant [8 x i8] c"provided", align 1
@92 = private unnamed_addr constant [12 x i8] c"InvalidState", align 1
@93 = private unnamed_addr constant [11 x i8] c"InvalidFlag", align 1
@94 = private unnamed_addr constant [19 x i8] c"InvalidPropProperty", align 1
@95 = private unnamed_addr constant [19 x i8] c"InvalidPropOperator", align 1
@96 = private unnamed_addr constant [13 x i8] c"InvalidNumber", align 1
@97 = private unnamed_addr constant [7 x i8] c"context", align 1
@98 = private unnamed_addr constant [18 x i8] c"InvalidWholeNumber", align 1
@99 = private unnamed_addr constant [26 x i8] c"InvalidPositiveWholeNumber", align 1
@100 = private unnamed_addr constant [26 x i8] c"InvalidNegativeWholeNumber", align 1
@101 = private unnamed_addr constant [19 x i8] c"InvalidAnswerButton", align 1
@102 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h082586527b2c3c6aE" }>, align 8
@103 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc23a5df0ef4bd0aaE" }>, align 8
@104 = private unnamed_addr constant [13 x i8] c"NotFoundError", align 1
@105 = private unnamed_addr constant [9 x i8] c"type_name", align 1
@106 = private unnamed_addr constant [10 x i8] c"identifier", align 1
@107 = private unnamed_addr constant [7 x i8] c"Offline", align 1
@108 = private unnamed_addr constant [7 x i8] c"Timeout", align 1
@109 = private unnamed_addr constant [9 x i8] c"ProxyAuth", align 1
@110 = private unnamed_addr constant [15 x i8] c"NoMatchingCards", align 1
@111 = private unnamed_addr constant [12 x i8] c"ExistingDeck", align 1
@112 = private unnamed_addr constant [14 x i8] c"MustBeLeafNode", align 1
@113 = private unnamed_addr constant [19 x i8] c"CanNotMoveCardsInto", align 1
@114 = private unnamed_addr constant [21 x i8] c"SearchReturnedNoCards", align 1
@115 = private unnamed_addr constant [20 x i8] c"FilteredDeckRequired", align 1
@116 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr146drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$$GT$17h6bbffe434bf04d9aE", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb2850b5c2b054c9aE" }>, align 8
@117 = private unnamed_addr constant [17 x i8] c"InvalidInputError", align 1
@118 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@119 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @118, [8 x i8] c"<\00\00\00\00\00\00\00" }>, align 8
@120 = private unnamed_addr constant [87 x i8] c"/rustc/ded5c06cf21d2b93bffd5d884aa6e96934ee4234/library/std/src/sys/sync/once/futex.rs\00", align 1
@121 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @120, [16 x i8] c"V\00\00\00\00\00\00\00[\00\00\00\12\00\00\00" }>, align 8
@122 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @"_ZN89_$LT$anki..sync..collection..sanity..SanityCheckDueCounts$u20$as$u20$core..fmt..Debug$GT$3fmt17he25f73eecbbbbc4fE" }>, align 8
@123 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17h720f5fc09117b7adE" }>, align 8
@124 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdd58d3a779fabe85E" }>, align 8
@125 = private unnamed_addr constant [6 x i8] c"counts", align 1
@126 = private unnamed_addr constant [5 x i8] c"cards", align 1
@127 = private unnamed_addr constant [5 x i8] c"notes", align 1
@128 = private unnamed_addr constant [6 x i8] c"revlog", align 1
@129 = private unnamed_addr constant [6 x i8] c"graves", align 1
@130 = private unnamed_addr constant [9 x i8] c"notetypes", align 1
@131 = private unnamed_addr constant [5 x i8] c"decks", align 1
@132 = private unnamed_addr constant [11 x i8] c"deck_config", align 1
@133 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @125, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @126, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @127, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @128, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @129, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @130, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @131, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @132, [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@134 = private unnamed_addr constant [17 x i8] c"SanityCheckCounts", align 1
@135 = private unnamed_addr constant [20 x i8] c"SanityCheckDueCounts", align 1
@136 = private unnamed_addr constant [3 x i8] c"new", align 1
@137 = private unnamed_addr constant [5 x i8] c"learn", align 1
@138 = private unnamed_addr constant [6 x i8] c"review", align 1
@139 = private unnamed_addr constant [13 x i8] c"open_backend\00", align 1
@140 = private unnamed_addr constant [28 x i8] c"open_backend(init_msg)\0A--\0A\0A\00", align 1
@_ZN8rsbridge12open_backend9_PYO3_DEF17h56b70bb7521cb599E = hidden local_unnamed_addr global <{ ptr, ptr, [4 x i8], [4 x i8], ptr }> <{ ptr @139, ptr @_ZN4pyo35impl_10trampoline23cfunction_with_keywords17hd0fd802a7ef865f1E, [4 x i8] c"#\00\00\00", [4 x i8] undef, ptr @140 }>, align 8
@141 = private unnamed_addr constant [19 x i8] c"initialize_logging\00", align 1
@142 = private unnamed_addr constant [35 x i8] c"initialize_logging(path=None)\0A--\0A\0A\00", align 1
@_ZN8rsbridge18initialize_logging9_PYO3_DEF17h8ec2e3281c6bc055E = hidden local_unnamed_addr global <{ ptr, ptr, [4 x i8], [4 x i8], ptr }> <{ ptr @141, ptr @_ZN4pyo35impl_10trampoline23cfunction_with_keywords17h4b85783efe9c6b23E, [4 x i8] c"#\00\00\00", [4 x i8] undef, ptr @142 }>, align 8
@143 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr129drop_in_place$LT$pyo3..err..PyErr..new$LT$rsbridge..BackendError$C$alloc..vec..Vec$LT$u8$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hefd46e74718bfe48E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h991605e16d3ab843E" }>, align 8
@144 = private unnamed_addr constant [10 x i8] c"_rsbridge\00", align 1
@145 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN8rsbridge9_rsbridge9_PYO3_DEF17hefe42947964c9e8aE = internal global <{ [56 x i8], ptr, ptr, [16 x i8], ptr, [32 x i8] }> <{ [56 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @144, ptr @145, [16 x i8] zeroinitializer, ptr @_ZN8rsbridge9_rsbridge9_PYO3_DEF5SLOTS17h51bc445e709d497aE, [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@_ZN8rsbridge9_rsbridge9_PYO3_DEF5SLOTS17h51bc445e709d497aE = internal global <{ [4 x i8], [4 x i8], ptr, [4 x i8], [4 x i8], [8 x i8] }> <{ [4 x i8] c"\02\00\00\00", [4 x i8] undef, ptr @_ZN8rsbridge9_rsbridge9_PYO3_DEF18__pyo3_module_exec17hc5d00c5686ad352aE, [4 x i8] zeroinitializer, [4 x i8] undef, [8 x i8] zeroinitializer }>, align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h019e616f58a90b67E" = private unnamed_addr constant [7 x i8] c"\0A\0A\0D\07\06\04\05", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h019e616f58a90b67E.46" = private unnamed_addr constant [7 x ptr] [ptr @39, ptr @40, ptr @41, ptr @42, ptr @43, ptr @44, ptr @45], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h34f48517964216acE" = private unnamed_addr constant [4 x i8] c"\07\07\09\05", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h34f48517964216acE.47" = private unnamed_addr constant [4 x ptr] [ptr @107, ptr @108, ptr @109, ptr @45], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5c7fa19d86adb0d0E" = private unnamed_addr constant [4 x i8] c"\0E\13\15\14", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5c7fa19d86adb0d0E.48" = private unnamed_addr constant [4 x ptr] [ptr @112, ptr @113, ptr @114, ptr @115], align 8

; Function Attrs: nounwind nonlazybind uwtable
define noundef ptr @PyInit__rsbridge() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke noundef ptr @_ZN4pyo35impl_8pymodule9ModuleDef16init_multi_phase17hac3f3cdd9d132005E(ptr noundef nonnull align 8 @_ZN8rsbridge9_rsbridge9_PYO3_DEF17hefe42947964c9e8aE)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h32c6cc3dfe587ad9E"(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h769e50169b740431E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 24                  ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 24
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val16.i = load ptr, ptr %i.i, align 8, !noalias !26, !nonnull !3, !noundef !3
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val17.i = load i64, ptr %i.j, align 8, !noalias !26, !noundef !3
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store ptr %.val16.i, ptr %i.k, align 8, !noalias !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val17.i, ptr %i.l, align 8, !noalias !28
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %.val16.i.1 = load ptr, ptr %i.n, align 8, !noalias !26, !nonnull !3, !noundef !3
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val17.i.1 = load i64, ptr %i.o, align 8, !noalias !26, !noundef !3
  %i.p = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  store ptr %.val16.i.1, ptr %i.q, align 8, !noalias !27
  %i.r = getelementptr i8, ptr %i.p, i64 24
  store i64 %.val17.i.1, ptr %i.r, align 8, !noalias !28
  %i.s = add i64 %i.g, 2                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h769e50169b740431E.exit.loopexit.unr-lcssa", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h769e50169b740431E.exit.loopexit.unr-lcssa": ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h769e50169b740431E.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h769e50169b740431E.exit.loopexit.unr-lcssa", %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h769e50169b740431E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h769e50169b740431E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val16.i.epil = load ptr, ptr %i.v, align 8, !noalias !26, !nonnull !3, !noundef !3
  %i.w = getelementptr i8, ptr %i.u, i64 16
  %.val17.i.epil = load i64, ptr %i.w, align 8, !noalias !26, !noundef !3
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %.val16.i.epil, ptr %i.x, align 8, !noalias !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.val17.i.epil, ptr %i.y, align 8, !noalias !28
  %i.z = add i64 %.epil.init, 1
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h769e50169b740431E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h769e50169b740431E.exit": ; preds = %.epil.preheader, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h769e50169b740431E.exit.loopexit.unr-lcssa", %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h769e50169b740431E.exit.loopexit.unr-lcssa" ], [ %i.z, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h165b4e89183afedfE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2), "nonnull"(ptr %4) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = udiv exact i64 %i.c, 24
  %i.e = ptrtoint ptr %4 to i64
  %i.f = ptrtoint ptr %3 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %i.d)
  store ptr %1, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h019e616f58a90b67E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %.val = load i8, ptr %i.a, align 1, !range !29, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h019e616f58a90b67E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h019e616f58a90b67E.46", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h082586527b2c3c6aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.c = load i64, ptr %i.b, align 8, !range !34, !alias.scope !33, !noundef !3
  %.not.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35
  store ptr %i.b, ptr %i.a, align 8, !noalias !35
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3afdeade73a34181E.exit"

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @46, i64 noundef 4), !noalias !33
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3afdeade73a34181E.exit"

"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3afdeade73a34181E.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0a8f8f5b9ea036f3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !39
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @25, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @26, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @27, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h113d390370ca1f03E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.a, align 8, !noalias !43
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @30, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @31, i64 noundef 8, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @32, i64 noundef 7, ptr noundef nonnull readonly align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @6, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2e302b4c29616872E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3
  %i.b = tail call noundef zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h9a1796086550048bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h34f48517964216acE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %.val = load i8, ptr %i.a, align 1, !range !6, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h34f48517964216acE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h34f48517964216acE.47", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h41c1930d64d13552E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !5, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !3, !noalias !47, !nonnull !3
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !46
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h45304dce5f48660aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !7, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.c = load i32, ptr %i.b, align 4, !range !8, !alias.scope !51, !noundef !3
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.e, ptr %i.a, align 8, !noalias !52
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7bf365e97427cb32E.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @46, i64 noundef 4), !noalias !51
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7bf365e97427cb32E.exit"

"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7bf365e97427cb32E.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5c7fa19d86adb0d0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %.val = load i8, ptr %i.a, align 1, !range !6, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5c7fa19d86adb0d0E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5c7fa19d86adb0d0E.48", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h639cc88d8b1d6a77E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.d, ptr %i.a, align 8, !noalias !56
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @36, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @37, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 2, ptr noundef nonnull readonly align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @6, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !56
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6bcdc97a4ea72121E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %.val = load i8, ptr %i.a, align 1, !range !57, !noundef !3
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 12, i64 15
  %.1.i = select i1 %i.b, ptr @111, ptr @110
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.1.i, i64 noundef %..i)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h70386781f76cd844E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61
end_hunk_0
begin_hunk_1_@"_ZN4pyo312pyclass_init27PyClassInitializer$LT$T$GT$19create_class_object17hd709c0a62c1c69efE":bb.a

bb.b:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  invoke void @_ZN4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed17h198d146dfabf84fdE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 7) #27
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %bb.b
  unreachable

"_ZN4pyo35impl_7pyclass16lazy_type_object23LazyTypeObject$LT$T$GT$15get_or_try_init17h284357c480299ea0E.exit.thread.i": ; preds = %bb.a, %.noexc._crit_edge
  %i.k = phi ptr [ %.pre, %.noexc._crit_edge ], [ getelementptr inbounds nuw (i8, ptr @"_ZN71_$LT$rsbridge..Backend$u20$as$u20$pyo3..impl_..pyclass..PyClassImpl$GT$16lazy_type_object11TYPE_OBJECT17h558a8a909eb8ee03E", i64 80), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.m = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8, !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !160
  invoke void @"_ZN134_$LT$pyo3..internal..pyclass_init..PyNativeTypeInitializer$LT$T$GT$$u20$as$u20$pyo3..internal..pyclass_init..PyObjectInit$LT$T$GT$$GT$15into_new_object17hc72c7363cbfe7f1dE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noundef nonnull %i.l)
          to label %bb.c unwind label %bb.f, !noalias !160

bb.c:                                             ; preds = %"_ZN4pyo35impl_7pyclass16lazy_type_object23LazyTypeObject$LT$T$GT$15get_or_try_init17h284357c480299ea0E.exit.thread.i"
  %i.n = load i64, ptr %i.b, align 8, !range !14, !noalias !160, !noundef !3
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.06.0.copyload.i = load ptr, ptr %i.p, align 8, !noalias !160 ; 3 uses
  br i1 %i.o, label %bb.d, label %.noexc4

bb.d:                                             ; preds = %bb.c
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.29.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.0..sroa_idx.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !160
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.06.0.copyload.i, ptr %i.q, align 8, !alias.scope !160
  store i64 1, ptr %0, align 8, !alias.scope !160
  %i.r = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !161
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h456df8570f316a58E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.i

.noexc4:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !160
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !160
  call void @"_ZN4pyo36pycell5impl_30PyClassObjectContents$LT$T$GT$3new17h4baebf7ca59a4512E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !160
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.06.0.copyload.i, ptr %i.u, align 8, !alias.scope !160
  store i64 0, ptr %0, align 8, !alias.scope !160
  br label %bb.i

bb.f:                                             ; preds = %"_ZN4pyo35impl_7pyclass16lazy_type_object23LazyTypeObject$LT$T$GT$15get_or_try_init17h284357c480299ea0E.exit.thread.i"
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !162
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.g, label %.body.thread

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h456df8570f316a58E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.thread unwind label %bb.h, !noalias !160

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !160
  unreachable

bb.i:                                             ; preds = %bb.e, %.noexc4, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.body.thread:                                     ; preds = %bb.j, %bb.k, %bb.g, %bb.f
  %eh.lpad-body8 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.j ], [ %lpad.thr_comm.split-lp.i, %bb.g ], [ %lpad.thr_comm.split-lp.i, %bb.f ], [ %lpad.thr_comm, %bb.k ]
  resume { ptr, i32 } %eh.lpad-body8

bb.j:                                             ; preds = %bb.b, %"_ZN4pyo35impl_7pyclass16lazy_type_object23LazyTypeObject$LT$T$GT$15get_or_try_init17h284357c480299ea0E.exit.i"
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.y = load ptr, ptr %i.f, align 8, !alias.scope !168, !nonnull !3, !noundef !3
  %i.z = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !168
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.k, label %.body.thread

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h456df8570f316a58E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.thread unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4pyo34sync9once_lock26init_once_cell_py_attached17h48bf0580baad1575E(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = tail call { i64, ptr } @_ZN4pyo38internal5state13SuspendAttach3new17hb37e0e4efc1bcc34E() ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = load atomic ptr, ptr %0 acquire, align 8, !noalias !171
  %.not.i = icmp eq ptr %i.f, inttoptr (i64 2 to ptr)
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @"_ZN78_$LT$pyo3..internal..state..SuspendAttach$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha5ae340a7362c2c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx)
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17h78e27e4c682470d2E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17he18e90499e711bb3E"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171
  br label %"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17h78e27e4c682470d2E.exit"

"_ZN9once_cell4sync17OnceCell$LT$T$GT$15get_or_try_init17h78e27e4c682470d2E.exit": ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_ZN4pyo35impl_10trampoline10trampoline17h0fdbe2dc4948325aE(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.11.sroa.4 = alloca [40 x i8], align 8    ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = invoke noundef i32 @_ZN4pyo38internal5state11AttachGuard6assume17h85b4163abd16dd6cE()
          to label %bb.b unwind label %.thread41

.thread41:                                        ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.4)
  %.sroa.030.0.copyload = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.531.0.copyload = load ptr, ptr %.sroa.531.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %.sroa.030.0.copyload, align 8, !noalias !181, !nonnull !3, !noundef !3
  %i.j = load ptr, ptr %.sroa.4.0.copyload, align 8, !noalias !181, !noundef !3
  %i.k = load ptr, ptr %.sroa.531.0.copyload, align 8, !noalias !181, !noundef !3
  %i.l = load ptr, ptr %.sroa.6.0.copyload, align 8, !noalias !181, !noundef !3
  invoke void %i.i(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l)
          to label %bb.e unwind label %bb.c, !inline_history !178

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.n)
          to label %.thread52 unwind label %bb.d  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #24
  unreachable

.thread52:                                        ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.013.0.copyload14 = load ptr, ptr %i.a, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload17 = load ptr, ptr %.sroa.8.0..sroa_idx16, align 8 ; 3 uses
  %.sroa.1120.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.1120.0..sroa_idx21, align 8
  %.sroa.1120.0.copyload22 = load ptr, ptr %.sroa.1120.0..sroa_idx21, align 8
  %.sroa.13.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.sroa.4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.0..sroa_idx29, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = ptrtoint ptr %.sroa.013.0.copyload14 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  switch i64 %i.t, label %bb.g [
    i64 2, label %bb.f
    i64 0, label %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9"
  ], !prof !15

bb.f:                                             ; preds = %.thread52, %bb.e
  %.sroa.5.058 = phi ptr [ %i.q, %.thread52 ], [ %.sroa.8.0.copyload17, %bb.e ] ; 2 uses
  %.sroa.9.057 = phi ptr [ %i.r, %.thread52 ], [ %.sroa.1120.0.copyload22, %bb.e ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.058), "nonnull"(ptr %.sroa.9.057) ]
  invoke void @_ZN4pyo35panic14PanicException18from_panic_payload17hdfe567927f068adcE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noundef nonnull align 1 %.sroa.5.058, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.9.057)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !182
  br label %.invoke

bb.g:                                             ; preds = %bb.e
  store ptr %.sroa.8.0.copyload17, ptr %i.b, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <2 x ptr> %i.s, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.sroa.4.0..sroa.11.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.sroa.4.0..sroa.11.8..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.sroa.4, i64 40, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %.noexc, %bb.g
  invoke void @_ZN4pyo33err9err_state10PyErrState7restore17h2a77df95d734c17aE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9" unwind label %bb.h

bb.h:                                             ; preds = %.invoke, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN76_$LT$pyo3..internal..state..AttachGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44d01a65e6c67c5fE"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.thread unwind label %bb.i

"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9": ; preds = %.invoke, %bb.e
  %.sroa.0.0.i = phi ptr [ null, %.invoke ], [ %.sroa.8.0.copyload17, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.4)
  call void @"_ZN76_$LT$pyo3..internal..state..AttachGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44d01a65e6c67c5fE"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.0.0.i

bb.i:                                             ; preds = %.thread, %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

.thread:                                          ; preds = %bb.h, %.thread41
  %.pn40 = phi { ptr, i32 } [ %i.h, %.thread41 ], [ %i.u, %bb.h ]
  invoke void @"_ZN71_$LT$pyo3..impl_..panic..PanicTrap$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ba9793514ad974dE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %"_ZN4core3ptr50drop_in_place$LT$pyo3..impl_..panic..PanicTrap$GT$17h936a67877ad0cf10E.exit" unwind label %bb.i

"_ZN4core3ptr50drop_in_place$LT$pyo3..impl_..panic..PanicTrap$GT$17h936a67877ad0cf10E.exit": ; preds = %.thread
  resume { ptr, i32 } %.pn40
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_ZN4pyo35impl_10trampoline10trampoline17hba9d83fb8f8d4f8bE(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.11 = alloca [48 x i8], align 8           ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = invoke noundef i32 @_ZN4pyo38internal5state11AttachGuard6assume17h85b4163abd16dd6cE()
          to label %bb.b unwind label %.thread27

.thread27:                                        ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val.i = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %.val1.i = load ptr, ptr %1, align 8, !noundef !3
  invoke void %.val.i(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef %.val1.i)
          to label %bb.e unwind label %bb.c, !inline_history !183

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.j)
          to label %.thread36 unwind label %bb.d  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #24
  unreachable

.thread36:                                        ; preds = %bb.c
  %i.m = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.013.0.copyload15 = load ptr, ptr %i.a, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload17 = load ptr, ptr %.sroa.8.0..sroa_idx16, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.12.sroa.0.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx19, align 8 ; 2 uses
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx19.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = ptrtoint ptr %.sroa.013.0.copyload15 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  switch i64 %i.o, label %bb.g [
    i64 2, label %bb.f
    i64 0, label %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9"
  ], !prof !15

bb.f:                                             ; preds = %.thread36, %bb.e
  %.sroa.5.041 = phi ptr [ %i.m, %.thread36 ], [ %.sroa.8.0.copyload17, %bb.e ] ; 2 uses
  %.sroa.9.040 = phi ptr [ %i.n, %.thread36 ], [ %.sroa.12.sroa.0.0.copyload, %bb.e ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.041), "nonnull"(ptr %.sroa.9.040) ]
  invoke void @_ZN4pyo35panic14PanicException18from_panic_payload17hdfe567927f068adcE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noundef nonnull align 1 %.sroa.5.041, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.9.040)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !186
  br label %.invoke

bb.g:                                             ; preds = %bb.e
  store ptr %.sroa.8.0.copyload17, ptr %i.b, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.12.sroa.0.0.copyload, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11, i64 48, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %.noexc, %bb.g
  invoke void @_ZN4pyo33err9err_state10PyErrState7restore17h2a77df95d734c17aE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.b)
          to label %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9" unwind label %bb.h

bb.h:                                             ; preds = %.invoke, %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN76_$LT$pyo3..internal..state..AttachGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44d01a65e6c67c5fE"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.thread unwind label %bb.i

"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9": ; preds = %.invoke, %bb.e
  %.sroa.0.0.i = phi ptr [ null, %.invoke ], [ %.sroa.8.0.copyload17, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @"_ZN76_$LT$pyo3..internal..state..AttachGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44d01a65e6c67c5fE"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.0.0.i

bb.i:                                             ; preds = %.thread, %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

.thread:                                          ; preds = %bb.h, %.thread27
  %.pn26 = phi { ptr, i32 } [ %i.h, %.thread27 ], [ %i.p, %bb.h ]
  invoke void @"_ZN71_$LT$pyo3..impl_..panic..PanicTrap$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ba9793514ad974dE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %"_ZN4core3ptr50drop_in_place$LT$pyo3..impl_..panic..PanicTrap$GT$17h936a67877ad0cf10E.exit" unwind label %bb.i

"_ZN4core3ptr50drop_in_place$LT$pyo3..impl_..panic..PanicTrap$GT$17h936a67877ad0cf10E.exit": ; preds = %.thread
  resume { ptr, i32 } %.pn26
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4pyo35impl_10trampoline21trampoline_unraisable17h7538f99943955e9aE(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 30, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = invoke noundef i32 @_ZN4pyo38internal5state11AttachGuard6assume17h85b4163abd16dd6cE()
          to label %bb.b unwind label %.thread8

.thread8:                                         ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 4
  %.val.i18 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %.val1.i = load ptr, ptr %1, align 8, !noundef !3
  invoke void %.val.i18(ptr noundef %.val1.i)
          to label %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit" unwind label %bb.c, !inline_history !187

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.i)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = extractvalue { ptr, ptr } %i.j, 0
  %i.m = extractvalue { ptr, ptr } %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN4pyo35panic14PanicException18from_panic_payload17hdfe567927f068adcE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 1 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.5.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5.sroa.6.0..sroa_idx5, i64 48, i1 false)
  %i.n = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.n, ptr %i.a, align 16
  invoke void @_ZN4pyo33err9err_state10PyErrState7restore17h2a77df95d734c17aE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.h unwind label %bb.g

"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit": ; preds = %bb.b, %bb.h
  call void @"_ZN76_$LT$pyo3..internal..state..AttachGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44d01a65e6c67c5fE"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN76_$LT$pyo3..internal..state..AttachGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44d01a65e6c67c5fE"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.thread unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @PyErr_WriteUnraisable(ptr noundef null) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit"

bb.i:                                             ; preds = %.thread, %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

.thread:                                          ; preds = %bb.g, %.thread8
  %.pn7 = phi { ptr, i32 } [ %i.g, %.thread8 ], [ %i.o, %bb.g ]
  invoke void @"_ZN71_$LT$pyo3..impl_..panic..PanicTrap$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ba9793514ad974dE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %"_ZN4core3ptr50drop_in_place$LT$pyo3..impl_..panic..PanicTrap$GT$17h936a67877ad0cf10E.exit" unwind label %bb.i

"_ZN4core3ptr50drop_in_place$LT$pyo3..impl_..panic..PanicTrap$GT$17h936a67877ad0cf10E.exit": ; preds = %.thread
  resume { ptr, i32 } %.pn7
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_ZN4pyo35impl_10trampoline23cfunction_with_keywords17h4b85783efe9c6b23E(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_ZN8rsbridge31__pyfunction_initialize_logging17h48c742a0c733d748E, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.h, align 8
  %i.i = invoke fastcc noundef ptr @_ZN4pyo35impl_10trampoline10trampoline17h0fdbe2dc4948325aE(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_1
begin_hunk_2_@"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4203c111a846b5fdE":bb.a
  store ptr @119, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.g, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h767066512780c8cdE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he35d6fee8a527506E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.j, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h767066512780c8cdE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he35d6fee8a527506E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

.sink.split:                                      ; preds = %bb.f, %bb.c
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he35d6fee8a527506E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN89_$LT$anki..sync..collection..sanity..SanityCheckDueCounts$u20$as$u20$core..fmt..Debug$GT$3fmt17he25f73eecbbbbc4fE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @135, i64 noundef 20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @136, i64 noundef 3, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @137, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @138, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef i32 @_ZN8rsbridge9_rsbridge9_PYO3_DEF18__pyo3_module_exec17hc5d00c5686ad352aE(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 15 uses
  %i.g = alloca [64 x i8], align 8                ; 8 uses
  %i.h = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.11.i = alloca [48 x i8], align 8         ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !216
  store ptr @1, ptr %i.j, align 8, !noalias !216
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 30, ptr %i.k, align 8, !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !216
  %i.l = invoke noundef i32 @_ZN4pyo38internal5state11AttachGuard6assume17h85b4163abd16dd6cE()
          to label %bb.b unwind label %.thread31.i, !noalias !216

.thread31.i:                                      ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.l, ptr %i.i, align 4, !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !217
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !218
  %i.o = icmp eq ptr %0, null
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !219
  invoke void @_ZN4pyo33err5PyErr4take17h8041d479270201e2E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a)
          to label %.noexc11.i unwind label %bb.k, !noalias !216

.noexc11.i:                                       ; preds = %bb.c
  %i.p = load i64, ptr %i.a, align 8, !range !14, !noalias !219, !noundef !3
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %.noexc11.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !218
  br label %.noexc12.i

bb.e:                                             ; preds = %.noexc11.i
  invoke void @_ZN4pyo33err15failed_to_fetch17hada96dcc96a828f7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b)
          to label %.noexc12.i unwind label %bb.k, !noalias !216

.noexc12.i:                                       ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !219
  %.sroa.6.8.copyload.i.i.i.i = load ptr, ptr %i.b, align 8, !noalias !218
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.6.8.copyload.i.i.i.i, ptr %i.s, align 8, !noalias !216
  %.sroa.213.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.213.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !216
  store i32 1, ptr %i.f, align 8, !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !218
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  invoke void @"_ZN4pyo38instance17Borrowed$LT$T$GT$4cast5inner17hb721ef223dc1c6eeE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %0)
          to label %.noexc13.i unwind label %bb.k, !noalias !216

.noexc13.i:                                       ; preds = %bb.f
  %i.t = load ptr, ptr %i.d, align 8, !noalias !218, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !218, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !218
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc13.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @"_ZN4pyo33err10cast_error106_$LT$impl$u20$core..convert..From$LT$pyo3..err..cast_error..CastError$GT$$u20$for$u20$pyo3..err..PyErr$GT$4from17ha339786068ae757aE"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.w, ptr noundef nonnull %i.t, ptr noundef nonnull %i.v)
          to label %.noexc14.i unwind label %bb.k, !noalias !216

.noexc14.i:                                       ; preds = %bb.g
  store i32 1, ptr %i.f, align 8, !noalias !216
  br label %bb.m

bb.h:                                             ; preds = %.noexc13.i
  store ptr %i.v, ptr %i.e, align 8, !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !218
  invoke void @_ZN8rsbridge9_rsbridge17h9b055730e1e3ef4aE(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc15.i unwind label %bb.k

.noexc15.i:                                       ; preds = %bb.h
  %i.x = load i64, ptr %i.c, align 8, !range !14, !noalias !218, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc15.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218
  store i32 1, ptr %i.f, align 8, !noalias !216
  br label %bb.m

bb.j:                                             ; preds = %.noexc15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.ab, align 4, !noalias !216
  store i32 0, ptr %i.f, align 8, !noalias !216
  br label %bb.m

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.ad)
          to label %.thread40.i unwind label %bb.l, !noalias !216 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #24, !noalias !216
  unreachable

.thread40.i:                                      ; preds = %bb.k
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !216
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i, %.noexc14.i, %.noexc12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !217
  %.sroa.016.0.copyload18.i = load ptr, ptr %i.f, align 8, !noalias !216
  %.sroa.8.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.8.0.copyload20.i = load ptr, ptr %.sroa.8.0..sroa_idx19.i, align 8, !noalias !216 ; 2 uses
  %.sroa.12.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.12.sroa.0.0.copyload.i = load ptr, ptr %.sroa.12.0..sroa_idx22.i, align 8, !noalias !216 ; 2 uses
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx22.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx22.sroa_idx.i, i64 48, i1 false), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !216
  %i.ai = ptrtoint ptr %.sroa.016.0.copyload18.i to i64 ; 2 uses
  %.sroa.023.0.extract.trunc.i = trunc i64 %i.ai to i32
  %.sroa.023.4.extract.shift.i = lshr i64 %i.ai, 32
  %.sroa.023.4.extract.trunc.i = trunc nuw i64 %.sroa.023.4.extract.shift.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !216
  switch i32 %.sroa.023.0.extract.trunc.i, label %bb.o [
    i32 2, label %bb.n
    i32 0, label %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9.i"
  ], !prof !220

bb.n:                                             ; preds = %bb.m, %.thread40.i
  %.sroa.6.046.i = phi ptr [ %i.ag, %.thread40.i ], [ %.sroa.8.0.copyload20.i, %bb.m ] ; 2 uses
  %.sroa.9.045.i = phi ptr [ %i.ah, %.thread40.i ], [ %.sroa.12.sroa.0.0.copyload.i, %bb.m ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.046.i), "nonnull"(ptr %.sroa.9.045.i) ]
  invoke void @_ZN4pyo35panic14PanicException18from_panic_payload17hdfe567927f068adcE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noundef nonnull align 1 %.sroa.6.046.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.9.045.i)
          to label %.noexc.i unwind label %bb.p, !noalias !216

.noexc.i:                                         ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false), !noalias !221
  br label %.invoke.i

bb.o:                                             ; preds = %bb.m
  store ptr %.sroa.8.0.copyload20.i, ptr %i.g, align 8, !noalias !216
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.12.sroa.0.0.copyload.i, ptr %.sroa.9.8..sroa_idx.i, align 8, !noalias !216
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.i, i64 48, i1 false), !noalias !216
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.o, %.noexc.i
  invoke void @_ZN4pyo33err9err_state10PyErrState7restore17h2a77df95d734c17aE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.g)
          to label %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9.i" unwind label %bb.p, !noalias !216

bb.p:                                             ; preds = %.invoke.i, %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @"_ZN76_$LT$pyo3..internal..state..AttachGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44d01a65e6c67c5fE"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %.thread.i unwind label %bb.q, !noalias !216

"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9.i": ; preds = %.invoke.i, %bb.m
  %.sroa.0.0.i.i = phi i32 [ -1, %.invoke.i ], [ %.sroa.023.4.extract.trunc.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  invoke void @"_ZN76_$LT$pyo3..internal..state..AttachGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44d01a65e6c67c5fE"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %.thread.i, %bb.p
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !216
  unreachable

.thread.i:                                        ; preds = %bb.p, %.thread31.i
  invoke void @"_ZN71_$LT$pyo3..impl_..panic..PanicTrap$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ba9793514ad974dE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.body unwind label %bb.q, !noalias !216

bb.r:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9.i"
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.r
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #24
  unreachable

bb.s:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$pyo3..internal..state..AttachGuard$GT$17hf9ff993ef830a594E.exit9.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !216
  ret i32 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 dereferenceable_or_null(8) ptr @"_ZN9once_cell4sync17OnceCell$LT$T$GT$3get17h1563c7e5ec3da75eE"(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0) unnamed_addr #9 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8
  %i.b = icmp eq ptr %i.a, inttoptr (i64 2 to ptr)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN4pyo35impl_8pymodule9ModuleDef16init_multi_phase17hac3f3cdd9d132005E(ptr noundef nonnull align 8) unnamed_addr #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h9a1796086550048bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN55_$LT$std..path..PathBuf$u20$as$u20$core..fmt..Debug$GT$3fmt17h5454522f8dd4523fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h01bbff3c14dc0e0cE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h10d10443330589e5E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h040070a16e6b2c22E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h6f03b4a794a26c86E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h37bd9ab57da75b39E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4803d29c2697c0cE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN71_$LT$pyo3..impl_..panic..PanicTrap$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ba9793514ad974dE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdeac811373b54f98E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN76_$LT$pyo3..internal..state..AttachGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h44d01a65e6c67c5fE"(ptr noalias noundef align 4 dereferenceable(4)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN78_$LT$pyo3..internal..state..SuspendAttach$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha5ae340a7362c2c4E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h767066512780c8cdE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he35d6fee8a527506E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @Py_IncRef(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN134_$LT$pyo3..internal..pyclass_init..PyNativeTypeInitializer$LT$T$GT$$u20$as$u20$pyo3..internal..pyclass_init..PyObjectInit$LT$T$GT$$GT$15into_new_object17hc72c7363cbfe7f1dE"(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4pyo36pycell5impl_30PyClassObjectContents$LT$T$GT$3new17h4baebf7ca59a4512E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noundef nonnull) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN47_$LT$T$u20$as$u20$pyo3..err..PyErrArguments$GT$9arguments17hc996c8e049067441E"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_ZN4pyo38internal5state13SuspendAttach3new17hb37e0e4efc1bcc34E() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 3) i32 @_ZN4pyo38internal5state11AttachGuard6assume17h85b4163abd16dd6cE() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN4pyo38instance17Borrowed$LT$T$GT$4cast5inner17hb721ef223dc1c6eeE"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noundef nonnull) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4pyo33err10cast_error106_$LT$impl$u20$core..convert..From$LT$pyo3..err..cast_error..CastError$GT$$u20$for$u20$pyo3..err..PyErr$GT$4from17ha339786068ae757aE"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN4pyo35panic14PanicException18from_panic_payload17hdfe567927f068adcE(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_ZN4pyo33err9err_state10PyErrState7restore17h2a77df95d734c17aE(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare void @PyErr_WriteUnraisable(ptr noundef) unnamed_addr #0

end_hunk_2

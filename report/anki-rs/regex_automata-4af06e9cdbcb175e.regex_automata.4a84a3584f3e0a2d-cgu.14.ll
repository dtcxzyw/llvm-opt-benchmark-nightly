Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.14?download=true
inline.NumInlined: 624
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
@72 = private unnamed_addr constant [9 x i8] c"backtrack", align 1
@73 = private unnamed_addr constant [12 x i8] c"byte_classes", align 1
@74 = private unnamed_addr constant [15 x i8] c"line_terminator", align 1
@75 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @59, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @60, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @61, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @62, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @63, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @64, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @65, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @66, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @67, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @68, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @69, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @70, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @71, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @72, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @73, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @74, [8 x i8] c"\0F\00\00\00\00\00\00\00" }>, align 8
@76 = private unnamed_addr constant [6 x i8] c"Config", align 1
@77 = private unnamed_addr constant [13 x i8] c"LeftmostFirst", align 1
@78 = private unnamed_addr constant [15 x i8] c"LeftmostLongest", align 1
@79 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr129drop_in_place$LT$$LT$regex_automata..meta..regex..Regex$u20$as$u20$core..clone..Clone$GT$..clone..$u7b$$u7b$closure$u7d$$u7d$$GT$17h6292568d56054cc9E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h0552238b55328f34E", ptr @"_ZN73_$LT$regex_automata..meta..regex..Regex$u20$as$u20$core..clone..Clone$GT$5clone28_$u7b$$u7b$closure$u7d$$u7d$17h7119759f46fc6a95E", ptr @"_ZN73_$LT$regex_automata..meta..regex..Regex$u20$as$u20$core..clone..Clone$GT$5clone28_$u7b$$u7b$closure$u7d$$u7d$17h7119759f46fc6a95E" }>, align 8
@80 = private unnamed_addr constant [8 x i8] c"Standard", align 1
@81 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN73_$LT$aho_corasick..packed..api..MatchKind$u20$as$u20$core..fmt..Debug$GT$3fmt17h869a0bc80418fe03E" }>, align 8
@82 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h021d521b381137fcE", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hca9423eb7756ccfdE" }>, align 8
@83 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$aho_corasick..util..primitives..PatternID$GT$$GT$17hd0325119fbbbc741E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h72dfd32829ecb507E" }>, align 8
@84 = private unnamed_addr constant [8 x i8] c"Patterns", align 1
@85 = private unnamed_addr constant [4 x i8] c"kind", align 1
@86 = private unnamed_addr constant [5 x i8] c"by_id", align 1
@87 = private unnamed_addr constant [5 x i8] c"order", align 1
@88 = private unnamed_addr constant [19 x i8] c"total_pattern_bytes", align 1
@89 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr56drop_in_place$LT$regex_automata..meta..regex..Config$GT$17h14ba32e64cdc47dcE", [16 x i8] c"\80\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN72_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..fmt..Debug$GT$3fmt17hb4e8e91e8016789cE" }>, align 8
@90 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Properties$GT$$GT$17hd6918ba18acef17aE", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb516f684c4ba0b5eE" }>, align 8
@91 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf60cbbd5f04077f5E" }>, align 8
@92 = private unnamed_addr constant [10 x i8] c"RegexInfoI", align 1
@93 = private unnamed_addr constant [6 x i8] c"config", align 1
@94 = private unnamed_addr constant [5 x i8] c"props", align 1
@95 = private unnamed_addr constant [11 x i8] c"props_union", align 1
@96 = private unnamed_addr constant [20 x i8] c"InvalidInputAnchored", align 1
@97 = private unnamed_addr constant [22 x i8] c"InvalidInputUnanchored", align 1
@98 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd755fc98c09ec91aE" }>, align 8
@99 = private unnamed_addr constant [17 x i8] c"UnsupportedStream", align 1
@100 = private unnamed_addr constant [3 x i8] c"got", align 1
@101 = private unnamed_addr constant [22 x i8] c"UnsupportedOverlapping", align 1
@102 = private unnamed_addr constant [16 x i8] c"UnsupportedEmpty", align 1
@103 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h9d30d5fd02a40103E" }>, align 8
@104 = private unnamed_addr constant [4 x i8] c"Quit", align 1
@105 = private unnamed_addr constant [4 x i8] c"byte", align 1
@106 = private unnamed_addr constant [6 x i8] c"offset", align 1
@107 = private unnamed_addr constant [6 x i8] c"GaveUp", align 1
@108 = private unnamed_addr constant [15 x i8] c"HaystackTooLong", align 1
@109 = private unnamed_addr constant [3 x i8] c"len", align 1
@110 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hee4f725c958925d6E" }>, align 8
@111 = private unnamed_addr constant [19 x i8] c"UnsupportedAnchored", align 1
@112 = private unnamed_addr constant [4 x i8] c"mode", align 1
@113 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr143drop_in_place$LT$alloc..vec..Vec$LT$$LP$regex_automata..util..primitives..SmallIndex$C$regex_automata..util..primitives..SmallIndex$RP$$GT$$GT$17hf6fb6e00e807d1fdE", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h44e72dcbcd69126fE" }>, align 8
@114 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr162drop_in_place$LT$alloc..vec..Vec$LT$std..collections..hash..map..HashMap$LT$alloc..sync..Arc$LT$str$GT$$C$regex_automata..util..primitives..SmallIndex$GT$$GT$$GT$17hfb3485a416b377a0E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h445e93e000fdd18fE" }>, align 8
@115 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$$GT$$GT$17h42e8b1b56a57b109E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd8bcffeb3ec01c49E" }>, align 8
@116 = private unnamed_addr constant [14 x i8] c"GroupInfoInner", align 1
@117 = private unnamed_addr constant [11 x i8] c"slot_ranges", align 1
@118 = private unnamed_addr constant [13 x i8] c"name_to_index", align 1
@119 = private unnamed_addr constant [13 x i8] c"index_to_name", align 1
@120 = private unnamed_addr constant [12 x i8] c"memory_extra", align 1
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd755fc98c09ec91aE" = private unnamed_addr constant [3 x i8] c"\08\0D\0F", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd755fc98c09ec91aE.124" = private unnamed_addr constant [3 x ptr] [ptr @80, ptr @77, ptr @78], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN14regex_automata4meta13reverse_inner7extract17h87a420d08aaf3630E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 15 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 21 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 13 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.q = load ptr, ptr %1, align 8, !nonnull !3, !align !4, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.q, %bb.b ], [ %i.w, %bb.e ] ; 4 uses
  %i.r = load i64, ptr %.sroa.0.0.i, align 8, !range !5, !noalias !6, !noundef !3 ; 3 uses
  %i.s = icmp ne i64 %i.r, 4
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nsw i64 %i.r, -2
  %.inv.i = icmp samesign ult i64 %i.r, 2
  %i.u = select i1 %.inv.i, i64 2, i64 %i.t
  switch i64 %i.u, label %bb.d [
    i64 0, label %.sink.split
    i64 1, label %.sink.split
    i64 2, label %.sink.split
    i64 3, label %.sink.split
    i64 4, label %.sink.split
    i64 5, label %bb.e
    i64 6, label %bb.f
    i64 7, label %.sink.split
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !6, !nonnull !3, !noundef !3
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !6, !nonnull !3, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !6, !noundef !3
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.aa
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17ha1de9e67ef1d1306E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ab), !noalias !9
  call void @_ZN12regex_syntax3hir3Hir6concat17h83d69957146d9296E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9
  call void @_ZN12regex_syntax3hir3Hir9into_kind17hde072fc8240ace95E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d), !noalias !9
  %i.ac = load i64, ptr %i.b, align 8, !range !5, !noalias !9, !noundef !3 ; 2 uses
  %i.ad = icmp ne i64 %i.ac, 4
  call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ac, 8
  br i1 %i.ae, label %_ZN14regex_automata4meta13reverse_inner10top_concat17h2cf831c82efc99d8E.exit, label %_ZN14regex_automata4meta13reverse_inner10top_concat17h2cf831c82efc99d8E.exit.thread44

_ZN14regex_automata4meta13reverse_inner10top_concat17h2cf831c82efc99d8E.exit.thread44: ; preds = %bb.f
  call fastcc void @"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..HirKind$GT$17h8ef2e12125ccbecfE"(ptr noalias noundef align 8 dereferenceable(40) %i.b), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9
  br label %.sink.split

_ZN14regex_automata4meta13reverse_inner10top_concat17h2cf831c82efc99d8E.exit: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload39 = load i64, ptr %i.af, align 8, !noalias !11 ; 2 uses
  %.sroa.8.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx40, i64 16, i1 false), !noalias !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %.sroa.0.0.copyload39, -9223372036854775808
  br i1 %.not, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.a
  store i64 10, ptr %0, align 8
  br label %bb.n

bb.h:                                             ; preds = %_ZN14regex_automata4meta13reverse_inner10top_concat17h2cf831c82efc99d8E.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  store i64 %.sroa.0.0.copyload39, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !3 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 192153584101141163
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp samesign ugt i64 %i.ah, 1
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  br label %bb.m

.sink.split:                                      ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %_ZN14regex_automata4meta13reverse_inner10top_concat17h2cf831c82efc99d8E.exit.thread44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZN14regex_automata4meta13reverse_inner10top_concat17h2cf831c82efc99d8E.exit
  store i64 10, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit36", %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.n

._crit_edge:                                      ; preds = %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit", %bb.h
  store i64 10, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95788fefaefa0912E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE.exit" unwind label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fb45ba24ae9620aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26
  unreachable

common.resume.sink.split:                         ; preds = %bb.ay, %bb.ba, %bb.al, %bb.an
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ca, %bb.al ], [ %i.cb, %bb.an ], [ %i.co, %bb.ba ], [ %i.cn, %bb.ay ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.val2.i = load ptr, ptr %i.ao, align 8, !nonnull !3, !noundef !3
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 80, i64 noundef 8) #27
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.split.thread, %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit38", %bb.aa, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.k ], [ %.pn, %bb.aa ], [ %.pn1248, %.split.thread ], [ %.pn1051, %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit38" ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE.exit": ; preds = %._crit_edge
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fb45ba24ae9620aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph, %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit"
  %.sroa.04.067 = phi i64 [ 1, %.lr.ph ], [ %i.ap, %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit" ] ; 9 uses
  %i.ap = add nuw nsw i64 %.sroa.04.067, 1        ; 2 uses
  %i.aq = load i64, ptr %i.ag, align 8, !noundef !3 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.04.067, %i.aq
  br i1 %i.ar, label %bb.o, label %bb.p

bb.n:                                             ; preds = %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE.exit", %bb.j, %bb.g
  ret void

bb.o:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %.sroa.04.067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @_ZN14regex_automata4meta13reverse_inner9prefilter17h100d6c3bc3e52ec2E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at)
          to label %bb.r unwind label %.split.thread.loopexit

bb.p:                                             ; preds = %bb.m
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.04.067, i64 noundef %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28
          to label %bb.q unwind label %.split.thread.loopexit.split-lp

.split.thread.loopexit:                           ; preds = %bb.o, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.split.thread

.split.thread.loopexit.split-lp:                  ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.split.thread

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.au = load i8, ptr %i.ak, align 8, !range !12, !noundef !3
  %.not7 = icmp eq i8 %i.au, 2
  br i1 %.not7, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.av = load i8, ptr %i.al, align 8, !range !13, !noundef !3
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.w, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit"

"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit": ; preds = %bb.u, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %exitcond.not = icmp eq i64 %i.ap, %i.ah
  br i1 %exitcond.not, label %._crit_edge, label %bb.m

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.ax = load ptr, ptr %i.n, align 8, !alias.scope !23, !nonnull !3, !noundef !3
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !23
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.v, label %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit"

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.n)
          to label %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit" unwind label %.split.thread.loopexit

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.ba = load i64, ptr %i.ag, align 8, !alias.scope !27, !noalias !24, !noundef !3 ; 4 uses
  %i.bb = icmp ult i64 %i.ba, 192153584101141163
  call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp samesign ugt i64 %.sroa.04.067, %i.ba
  br i1 %i.bc, label %bb.z, label %bb.x, !prof !29

bb.x:                                             ; preds = %bb.w
  %i.bd = sub nuw nsw i64 %i.ba, %.sroa.04.067    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hf2d9c00461ec9392E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.bd, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
          to label %.noexc14 unwind label %bb.ab

.noexc14:                                         ; preds = %bb.x
  %i.be = load i64, ptr %i.a, align 8, !range !31, !noalias !30, !noundef !3
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !32, !noalias !30, !noundef !3 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bf, label %bb.y, label %bb.ac, !prof !29

bb.y:                                             ; preds = %.noexc14
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !30
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.bh, i64 %i.bj) #28
          to label %.noexc15 unwind label %bb.ab

.noexc15:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.w
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off13assert_failed17hc02ce18e76f6d62bE"(i64 noundef range(i64 0, 192153584101141162) %.sroa.04.067, i64 noundef %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28
          to label %.noexc16 unwind label %bb.ab

.noexc16:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.ae
  br i1 %.sroa.01.2, label %.body.thread, label %common.resume

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.ac
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.ac:                                            ; preds = %.noexc14
  %i.bl = load ptr, ptr %i.bi, align 8, !noalias !30, !nonnull !3, !noundef !3 ; 2 uses
  %i.bm = icmp ule i64 %i.bd, %i.bh
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30
  store i64 %i.bh, ptr %i.k, align 8, !alias.scope !24, !noalias !27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bl, ptr %i.bn, align 8, !alias.scope !24, !noalias !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.04.067, ptr %i.ag, align 8, !alias.scope !27, !noalias !24
  store i64 %i.bd, ptr %i.bo, align 8, !alias.scope !24, !noalias !27
  %i.bp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !27, !noalias !24, !nonnull !3, !noundef !3
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %i.bp, i64 %.sroa.04.067
  %i.br = mul nuw nsw i64 %i.bd, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr nonnull align 8 %i.bq, i64 %i.br, i1 false), !noalias !30
  invoke void @_ZN12regex_syntax3hir3Hir6concat17h83d69957146d9296E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  invoke void @_ZN12regex_syntax3hir3Hir6concat17h83d69957146d9296E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.af

bb.ae:                                            ; preds = %bb.ah, %bb.af
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.ah ], [ %i.bs, %bb.af ] ; 2 uses
  %.sroa.01.2 = phi i1 [ %.sroa.01.3, %bb.ah ], [ true, %bb.af ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$regex_syntax..hir..Hir$GT$17hcf8b499f558b9139E"(ptr noalias noundef align 8 dereferenceable(48) %i.l) #29
          to label %bb.aa unwind label %bb.bf

bb.af:                                            ; preds = %bb.ad
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke fastcc void @_ZN14regex_automata4meta13reverse_inner9prefilter17h100d6c3bc3e52ec2E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ar, %bb.ag
  %.sroa.01.3 = phi i1 [ false, %bb.ar ], [ true, %bb.ag ]
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$regex_syntax..hir..Hir$GT$17hcf8b499f558b9139E"(ptr noalias noundef align 8 dereferenceable(48) %i.j) #29
          to label %bb.ae unwind label %bb.bf

bb.ai:                                            ; preds = %bb.ag
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bv = load i8, ptr %i.bu, align 8, !range !12, !noundef !3
  %.not8 = icmp eq i8 %i.bv, 2
  br i1 %.not8, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bx = load i8, ptr %i.bw, align 8, !range !13, !noundef !3
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.as, label %bb.aq

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @"_ZN64_$LT$regex_syntax..hir..Hir$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb4cb96ffde280ed4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.am unwind label %bb.al, !inline_history !33

bb.al:                                            ; preds = %bb.ak
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..HirKind$GT$17h8ef2e12125ccbecfE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l) #29
          to label %common.resume.sink.split unwind label %bb.ao, !inline_history !33

bb.am:                                            ; preds = %bb.ak
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..HirKind$GT$17h8ef2e12125ccbecfE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.ap unwind label %bb.an, !inline_history !33

bb.an:                                            ; preds = %bb.am
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.ao:                                            ; preds = %bb.al
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !inline_history !33
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.val.i = load ptr, ptr %i.cd, align 8, !alias.scope !34, !nonnull !3, !noundef !3
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #27, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit36"

"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit36": ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.j

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.ce = load ptr, ptr %i.f, align 8, !alias.scope !46, !nonnull !3, !noundef !3
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !46
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.ar, label %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit18"

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.f)
          to label %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit18" unwind label %bb.ah

bb.as:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @"_ZN64_$LT$regex_syntax..hir..Hir$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb4cb96ffde280ed4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.au unwind label %bb.at, !inline_history !33

bb.at:                                            ; preds = %bb.as
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..HirKind$GT$17h8ef2e12125ccbecfE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l) #29
          to label %bb.ax unwind label %bb.aw, !inline_history !33

bb.au:                                            ; preds = %bb.as
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..HirKind$GT$17h8ef2e12125ccbecfE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.bd unwind label %bb.av, !inline_history !33

bb.av:                                            ; preds = %bb.au
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !inline_history !33
  unreachable

bb.ax:                                            ; preds = %bb.av, %bb.at
  %.pn.i19 = phi { ptr, i32 } [ %i.cj, %bb.av ], [ %i.ci, %bb.at ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.val2.i20 = load ptr, ptr %i.cl, align 8, !alias.scope !47, !nonnull !3, !noundef !3
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i20, i64 noundef 80, i64 noundef 8) #27, !inline_history !33
  br label %.body.thread

"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit18": ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @"_ZN64_$LT$regex_syntax..hir..Hir$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb4cb96ffde280ed4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.az unwind label %bb.ay, !inline_history !33

bb.ay:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit18"
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..HirKind$GT$17h8ef2e12125ccbecfE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l) #29
          to label %common.resume.sink.split unwind label %bb.bb, !inline_history !33

bb.az:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit18"
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..HirKind$GT$17h8ef2e12125ccbecfE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.bc unwind label %bb.ba, !inline_history !33

bb.ba:                                            ; preds = %bb.az
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.bb:                                            ; preds = %bb.ay
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !inline_history !33
  unreachable

bb.bc:                                            ; preds = %bb.az
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.val.i29 = load ptr, ptr %i.cq, align 8, !alias.scope !50, !nonnull !3, !noundef !3
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i29, i64 noundef 80, i64 noundef 8) #27, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit36"

bb.bd:                                            ; preds = %bb.au
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.val.i21 = load ptr, ptr %i.cr, align 8, !alias.scope !47, !nonnull !3, !noundef !3
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i21, i64 noundef 80, i64 noundef 8) #27, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.cs = load ptr, ptr %i.n, align 8, !alias.scope !62, !nonnull !3, !noundef !3
  %i.ct = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !62
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.be, label %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit36"

bb.be:                                            ; preds = %bb.bd
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.n)
  br label %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit36"

bb.bf:                                            ; preds = %bb.bg, %.split.thread, %bb.ah, %bb.ae
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26
  unreachable

.body.thread:                                     ; preds = %bb.ab, %bb.ax, %bb.aa
  %.sroa.03.252 = phi i1 [ false, %bb.aa ], [ true, %bb.ab ], [ false, %bb.ax ]
  %.pn1051 = phi { ptr, i32 } [ %.pn, %bb.aa ], [ %i.bk, %bb.ab ], [ %.pn.i19, %bb.ax ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.cw = load ptr, ptr %i.n, align 8, !alias.scope !72, !nonnull !3, !noundef !3
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !72
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.bg, label %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit38"

bb.bg:                                            ; preds = %.body.thread
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.n)
          to label %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit38" unwind label %bb.bf

"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit38": ; preds = %bb.bg, %.body.thread
  br i1 %.sroa.03.252, label %.split.thread, label %common.resume

.split.thread:                                    ; preds = %.split.thread.loopexit, %.split.thread.loopexit.split-lp, %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit38"
  %.pn1248 = phi { ptr, i32 } [ %.pn1051, %"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE.exit38" ], [ %lpad.loopexit, %.split.thread.loopexit ], [ %lpad.loopexit.split-lp, %.split.thread.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #29
          to label %common.resume unwind label %bb.bf
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN14regex_automata4meta13reverse_inner7flatten17hd61ca37704e9187bE(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 14 uses
  %i.l = alloca [40 x i8], align 8                ; 11 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.an, %bb.a
  %.tr11 = phi ptr [ %1, %bb.a ], [ %i.dh, %bb.an ] ; 13 uses
  %i.m = load i64, ptr %.tr11, align 8, !range !5, !noundef !3 ; 4 uses
  %i.n = icmp ne i64 %i.m, 4
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nsw i64 %i.m, -2
  %.inv = icmp samesign ult i64 %i.m, 2
  %i.p = select i1 %.inv, i64 2, i64 %i.o
  switch i64 %i.p, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.h
    i64 3, label %bb.x
    i64 4, label %bb.y
    i64 5, label %bb.an
    i64 6, label %bb.ao
    i64 7, label %bb.ap
  ]

bb.b:                                             ; preds = %tailrecurse
  unreachable

bb.c:                                             ; preds = %tailrecurse
  %i.q = tail call noundef nonnull align 8 ptr @_ZN12regex_syntax3hir10Properties5empty17hf593d2b0ff7d23caE()
  store i64 2, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.q, ptr %i.r, align 8
  br label %_ZN12regex_syntax3hir3Hir7literal17h99837990eed72d01E.exit

bb.d:                                             ; preds = %tailrecurse
  %i.s = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %.val = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.tr11, i64 16
  %.val3 = load i64, ptr %i.t, align 8, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !76
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hf2d9c00461ec9392E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %.val3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !76
  %i.u = load i64, ptr %i.f, align 8, !range !31, !noalias !76, !noundef !3
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !32, !noalias !76, !noundef !3 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.v, label %bb.e, label %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha29b11418dd7b4cbE.exit", !prof !29

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.y, align 8, !noalias !76
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.x, i64 %i.z) #28, !noalias !76
  unreachable

"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha29b11418dd7b4cbE.exit": ; preds = %bb.d
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !76, !nonnull !3, !noundef !3 ; 2 uses
  %i.ab = icmp ule i64 %.val3, %i.x
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !76
  store i64 %i.x, ptr %i.g, align 8, !alias.scope !73, !noalias !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !alias.scope !73, !noalias !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %.val, i64 %.val3, i1 false), !noalias !73
  store i64 %.val3, ptr %i.ad, align 8, !alias.scope !73, !noalias !78
  %i.ae = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hde4e7cada93c62e8E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h4727b6d2cafd1ff1E.exit.i", label %bb.f

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h4727b6d2cafd1ff1E.exit.i": ; preds = %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha29b11418dd7b4cbE.exit"
  %i.ai = call noundef nonnull align 8 ptr @_ZN12regex_syntax3hir10Properties5empty17hf593d2b0ff7d23caE(), !noalias !82
  store i64 2, ptr %0, align 8, !alias.scope !79, !noalias !84
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !79, !noalias !84
  br label %_ZN12regex_syntax3hir3Hir7literal17h99837990eed72d01E.exit

bb.f:                                             ; preds = %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha29b11418dd7b4cbE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !82
  store ptr %i.af, ptr %i.e, align 8, !noalias !82
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ag, ptr %i.ak, align 8, !noalias !82
  %i.al = invoke noundef nonnull align 8 ptr @_ZN12regex_syntax3hir10Properties7literal17h711c8d0a161ef055E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.g unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i", !noalias !79

common.resume:                                    ; preds = %bb.z, %.body.i5, %.body.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i"
  %common.resume.op = phi { ptr, i32 } [ %i.am, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i" ], [ %eh.lpad-body.i, %.body.i ], [ %.pn.i.i, %.body.i5 ], [ %i.ch, %bb.z ]
  resume { ptr, i32 } %common.resume.op

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i": ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.af, i64 noundef %i.ag, i64 noundef 1) #27, !noalias !79
  br label %common.resume

bb.g:                                             ; preds = %bb.f
  store i64 3, ptr %0, align 8, !alias.scope !79, !noalias !84
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !79, !noalias !84
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ag, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !79, !noalias !84
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.al, ptr %i.an, align 8, !alias.scope !79, !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !82
  br label %_ZN12regex_syntax3hir3Hir7literal17h99837990eed72d01E.exit

bb.h:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.ao = trunc nuw i64 %i.m to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr11, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0ff3aec415c197fbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
  br label %"_ZN63_$LT$regex_syntax..hir..Class$u20$as$u20$core..clone..Clone$GT$5clone17h71a0ed11ec293e22E.exit"

bb.j:                                             ; preds = %bb.h
  call void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha77cd46417af1fb5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
  br label %"_ZN63_$LT$regex_syntax..hir..Class$u20$as$u20$core..clone..Clone$GT$5clone17h71a0ed11ec293e22E.exit"

"_ZN63_$LT$regex_syntax..hir..Class$u20$as$u20$core..clone..Clone$GT$5clone17h71a0ed11ec293e22E.exit": ; preds = %bb.i, %bb.j
  %.sink.i = phi i64 [ 1, %bb.i ], [ 0, %bb.j ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr11, i64 32
  %.sink10.i = load i8, ptr %i.ar, align 8, !range !13, !alias.scope !88, !noalias !85, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i8 %.sink10.i, ptr %i.as, align 8, !alias.scope !85, !noalias !88
  store i64 %.sink.i, ptr %i.l, align 8, !alias.scope !85, !noalias !88
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.0.0.in.in.in.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.0.0.in.in.i = load i64, ptr %.sroa.0.0.in.in.in.i, align 8, !alias.scope !93, !noalias !90, !noundef !3
  %.sroa.0.0.in.i = icmp eq i64 %.sroa.0.0.in.in.i, 0
  br i1 %.sroa.0.0.in.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %"_ZN63_$LT$regex_syntax..hir..Class$u20$as$u20$core..clone..Clone$GT$5clone17h71a0ed11ec293e22E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !95
  invoke void @_ZN12regex_syntax3hir5Class7literal17h7b35cc71c1d212ebE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
          to label %bb.p unwind label %bb.o, !noalias !90

bb.l:                                             ; preds = %"_ZN63_$LT$regex_syntax..hir..Class$u20$as$u20$core..clone..Clone$GT$5clone17h71a0ed11ec293e22E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_ZN12regex_syntax3hir10ClassBytes5empty17h76a58ae6f9687756E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.at)
          to label %.noexc.i unwind label %bb.o, !noalias !95

.noexc.i:                                         ; preds = %bb.l
  store i64 1, ptr %i.b, align 8, !noalias !99
  %i.au = invoke noundef nonnull align 8 ptr @_ZN12regex_syntax3hir10Properties5class17hb24b03876ee65975E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %_ZN12regex_syntax3hir3Hir4fail17h2f8d5b150ebf6ad5E.exit.i unwind label %bb.m, !noalias !99

bb.m:                                             ; preds = %.noexc.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$regex_syntax..hir..Class$GT$17h1a163f9f63f265aaE"(ptr noalias noundef align 8 dereferenceable(40) %i.b) #29
          to label %.body.i unwind label %bb.n, !noalias !99

bb.n:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !99
  unreachable

_ZN12regex_syntax3hir3Hir4fail17h2f8d5b150ebf6ad5E.exit.i: ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !93
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.au, ptr %i.ax, align 8, !alias.scope !100, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99
  br label %bb.u

bb.o:                                             ; preds = %bb.t, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h4727b6d2cafd1ff1E.exit.i.i", %bb.q, %bb.l, %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i", %bb.o, %bb.m
end_hunk_0
begin_hunk_1_@_ZN14regex_automata4meta5regex7Builder14build_from_hir17h569a68945746b78eE:bb.a
.thread.i:                                        ; preds = %bb.al, %bb.ah, %bb.ad, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i"
  %.pn3359.i = phi { ptr, i32 } [ %i.dp, %bb.ad ], [ %lpad.thr_comm.split-lp.i, %bb.al ], [ %i.du, %bb.ah ], [ %.pn31.i, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i" ]
  resume { ptr, i32 } %.pn3359.i

bb.al:                                            ; preds = %"_ZN74_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..clone..Clone$GT$5clone17he9c8963f0704cc04E.exit.i"
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..meta..regex..Config$GT$17h14ba32e64cdc47dcE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.f) #29
          to label %.thread.i unwind label %bb.af, !noalias !185

_ZN14regex_automata4meta5regex7Builder19build_many_from_hir17h7be9abb2609095d8E.exit: ; preds = %bb.ac, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit.i"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha95ebb21c1ba7f68E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN14regex_automata4meta5regex7Builder19build_many_from_hir28_$u7b$$u7b$closure$u7d$$u7d$17h3695cf8fa645000cE"(ptr dead_on_unwind noalias noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !137, !invariant.load !3
  %i.f = add i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.k(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef align 1 %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN14regex_automata4meta5regex7Builder19build_many_from_hir28_$u7b$$u7b$closure$u7d$$u7d$17hab88aa612f848b3bE"(ptr dead_on_unwind noalias noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !137, !invariant.load !3
  %i.f = add i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.k(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef align 1 %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata4meta5regex7Builder5build17hdafbcd9e139d68d5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(144) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [1448 x i8], align 8              ; 5 uses
  %i.e = alloca [136 x i8], align 8               ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [128 x i8], align 8               ; 26 uses
  %i.h = alloca [8 x i8], align 8                 ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 12 uses
  %i.l = alloca [80 x i8], align 8                ; 8 uses
  %.sroa.736.i = alloca [48 x i8], align 8        ; 7 uses
  %.sroa.630.i = alloca [48 x i8], align 8        ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6154.i = alloca i64, align 8             ; 8 uses
  %.sroa.10.i = alloca i64, align 8               ; 6 uses
  %i.n = alloca [64 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [200 x i8], align 8               ; 24 uses
  %i.q = alloca [128 x i8], align 8               ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 15 uses
  %i.v = alloca [24 x i8], align 8                ; 13 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %3, ptr %i.x, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !228
  store i64 0, ptr %i.v, align 8, !noalias !228
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !228
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !228
  store i64 0, ptr %i.u, align 8, !noalias !228
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22.0..sroa_idx.i, align 8, !noalias !228
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.33.0..sroa_idx.i, align 8, !noalias !228
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  invoke void @"_ZN14regex_automata4util10primitives26WithPatternIDIter$LT$I$GT$3new17hb49b32a0aafc167aE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noundef nonnull readonly align 8 %i.w, ptr noundef nonnull readonly %i.y)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !230

.body.i:                                          ; preds = %bb.ch, %bb.ce, %bb.bx, %bb.br, %bb.bo, %bb.bh, %bb.bd, %bb.av, %bb.ar, %bb.an, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i.i", %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.ge, %bb.bd ], [ %i.hp, %bb.ch ], [ %i.gs, %bb.bo ], [ %i.ha, %bb.bx ], [ %eh.lpad-body133.ph.i, %bb.br ], [ %i.gk, %bb.bh ], [ %.pn31.i.i, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i.i" ], [ %i.hj, %bb.ce ], [ %i.fq, %bb.an ], [ %lpad.thr_comm.split-lp.i.i, %bb.av ], [ %i.fv, %bb.ar ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit164.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp165.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE"(ptr noalias noundef align 8 dereferenceable(24) %i.u) #29
          to label %.body125.i unwind label %bb.bs, !noalias !230

.loopexit.i:                                      ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.c
  %lpad.loopexit164.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.ca, %"_ZN4core3ptr109drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..hir..translate..HirFrame$GT$$GT$$GT$17h81ced8f03d543313E.exit.i.i", %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$$RF$regex_syntax..hir..Hir$GT$$GT$17h950de63759beb6fcE.exit54.i.i", %bb.e, %bb.a
  %lpad.loopexit.split-lp165.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !228
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aa = load i32, ptr %i.z, align 8, !alias.scope !226, !noalias !231
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ac = load <3 x i8>, ptr %i.ab, align 4, !alias.scope !226, !noalias !231
  %i.ad = shufflevector <3 x i8> %i.ac, <3 x i8> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 188
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.412.sroa.5.0..sroa.412.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %.sroa.422.sroa.5.0..sroa.422.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.cg, %bb.b
  %i.am = invoke { i32, ptr } @"_ZN119_$LT$regex_automata..util..primitives..WithPatternIDIter$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce2519b3cb878970E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.i, !noalias !230 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.an = extractvalue { i32, ptr } %i.am, 1      ; 3 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.e, label %bb.by

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !228
  invoke void @"_ZN14regex_automata4util10primitives26WithPatternIDIter$LT$I$GT$3new17hb49b32a0aafc167aE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noundef nonnull readonly align 8 %i.w, ptr noundef nonnull readonly %i.y)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !230

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !228, !nonnull !3, !noundef !3 ; 2 uses
  %i.ap = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !228, !noundef !3
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !228
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4150.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !228
  %.sroa.2.0..sroa_idx148.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  store ptr %i.ao, ptr %.sroa.2.0..sroa_idx148.i, align 8, !noalias !228
  %.sroa.3.0..sroa_idx149.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  store ptr %i.aq, ptr %.sroa.3.0..sroa_idx149.i, align 8, !noalias !228
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.at = load i8, ptr %i.ar, align 8, !range !13, !alias.scope !226, !noalias !231
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 135
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !226, !noalias !231
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 6 uses
  %.sroa.481.sroa.4.0..sroa.481.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.481.sroa.5.0..sroa.481.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 38
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.bq, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6154.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.ba = invoke { i32, ptr } @"_ZN119_$LT$regex_automata..util..primitives..WithPatternIDIter$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce2519b3cb878970E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !230 ; 2 uses

.noexc.i:                                         ; preds = %bb.g
  %i.bb = extractvalue { i32, ptr } %i.ba, 0
  %i.bc = extractvalue { i32, ptr } %i.ba, 1      ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc.i
  %i.bd = load ptr, ptr %.sroa.2.0..sroa_idx148.i, align 8, !alias.scope !237, !noalias !240, !nonnull !3, !noundef !3 ; 3 uses
  %i.be = load ptr, ptr %.sroa.3.0..sroa_idx149.i, align 8, !alias.scope !237, !noalias !240, !nonnull !3, !noundef !3
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.bg, ptr %.sroa.2.0..sroa_idx148.i, align 8, !alias.scope !237, !noalias !240
  %i.bh = ptrtoint ptr %i.bc to i64
  store i64 %i.bh, ptr %.sroa.6154.i, align 8, !alias.scope !232, !noalias !241
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.noexc.i
  %.sroa.0153.1.i = phi i32 [ undef, %.noexc.i ], [ undef, %bb.h ], [ %i.bb, %bb.i ]
  %.sink20.i.sroa.phi.i = phi ptr [ %.sroa.6154.i, %.noexc.i ], [ %.sroa.6154.i, %bb.h ], [ %.sroa.10.i, %bb.i ]
  %.sink.i.i = phi ptr [ null, %.noexc.i ], [ null, %bb.h ], [ %i.bd, %bb.i ]
  store ptr %.sink.i.i, ptr %.sink20.i.sroa.phi.i, align 8, !alias.scope !232, !noalias !241
  %.sroa.6154.i.0..sroa.6154.i.0..sroa.6154.i.0..sroa.6154.0..sroa.6154.0..sroa.6154.8..i = load i64, ptr %.sroa.6154.i, align 8, !noalias !228, !noundef !3 ; 2 uses
  %.not113.i = icmp eq i64 %.sroa.6154.i.0..sroa.6154.i.0..sroa.6154.i.0..sroa.6154.0..sroa.6154.0..sroa.6154.8..i, 0
  br i1 %.not113.i, label %bb.k, label %bb.be

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6154.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !228
  %i.bi = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !noalias !228, !nonnull !3, !noundef !3 ; 2 uses
  %i.bj = load i64, ptr %.sroa.33.0..sroa_idx.i, align 8, !noalias !228, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !228
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.bl = load i8, ptr %i.bk, align 2, !range !12, !alias.scope !250, !noalias !251, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 115
  %i.bn = load i8, ptr %i.bm, align 1, !range !12, !alias.scope !250, !noalias !251, !noundef !3
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bp = load i8, ptr %i.bo, align 4, !range !12, !alias.scope !250, !noalias !251, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.br = load i8, ptr %i.bq, align 8, !range !139, !alias.scope !250, !noalias !251, !noundef !3 ; 3 uses
  %.not23.i.i.i = icmp eq i8 %i.br, 3
  br i1 %.not23.i.i.i, label %"_ZN74_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..clone..Clone$GT$5clone17he9c8963f0704cc04E.exit.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %.not.i.i.i.i = icmp eq i8 %i.br, 2
  br i1 %.not.i.i.i.i, label %"_ZN74_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..clone..Clone$GT$5clone17he9c8963f0704cc04E.exit.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !260, !noalias !261, !nonnull !3, !noundef !3 ; 2 uses
  %i.bu = atomicrmw add ptr %i.bt, i64 1 monotonic, align 8, !noalias !264
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.n, label %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i"

bb.n:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i": ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !260, !noalias !261, !nonnull !3, !align !4, !noundef !3
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !260, !noalias !261, !noundef !3
  br label %"_ZN74_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..clone..Clone$GT$5clone17he9c8963f0704cc04E.exit.i.i"

"_ZN74_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..clone..Clone$GT$5clone17he9c8963f0704cc04E.exit.i.i": ; preds = %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i", %bb.l, %bb.k
  %.sroa.5.052.i.i.i = phi i64 [ %i.bz, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i" ], [ undef, %bb.l ], [ undef, %bb.k ]
  %.sroa.4.051.i.i.i = phi ptr [ %i.bx, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i" ], [ undef, %bb.l ], [ undef, %bb.k ]
  %.sroa.0.050.i.i.i = phi ptr [ %i.bt, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i" ], [ undef, %bb.l ], [ undef, %bb.k ]
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.cb = load i8, ptr %i.ca, align 2, !range !139, !alias.scope !250, !noalias !251, !noundef !3
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !range !183, !alias.scope !250, !noalias !251, !noundef !3 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val42.i.i.i = load i64, ptr %i.ce, align 8, !alias.scope !250, !noalias !251
  %i.cf = and i64 %i.cd, 1
  %i.cg = icmp eq i64 %i.cf, 0
  %.sroa.5.0.i.i.i = select i1 %i.cg, i64 undef, i64 %.val42.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !range !183, !alias.scope !250, !noalias !251, !noundef !3 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val40.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !250, !noalias !251
  %i.ck = and i64 %i.ci, 1
  %i.cl = icmp eq i64 %i.ck, 0
  %.sroa.56.0.i.i.i = select i1 %i.cl, i64 undef, i64 %.val40.i.i.i
  %i.cm = load i64, ptr %1, align 8, !range !31, !alias.scope !250, !noalias !251, !noundef !3 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !250, !noalias !251
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 117
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cr = load i64, ptr %i.cq, align 8, !range !183, !alias.scope !250, !noalias !251, !noundef !3 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val38.i.i.i = load i64, ptr %i.cs, align 8, !alias.scope !250, !noalias !251
  %i.ct = and i64 %i.cr, 1
  %i.cu = icmp eq i64 %i.ct, 0
  %.sroa.512.0.i.i.i = select i1 %i.cu, i64 undef, i64 %.val38.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cw = load i64, ptr %i.cv, align 8, !range !183, !alias.scope !250, !noalias !251, !noundef !3 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val36.i.i.i = load i64, ptr %i.cx, align 8, !alias.scope !250, !noalias !251
  %i.cy = and i64 %i.cw, 1
  %i.cz = icmp eq i64 %i.cy, 0
  %.sroa.514.0.i.i.i = select i1 %i.cz, i64 undef, i64 %.val36.i.i.i
  %i.da = trunc nuw i64 %i.cm to i1
  %.sroa.58.0.i.i.i = select i1 %i.da, i64 %i.co, i64 undef
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.dc = load i8, ptr %i.db, align 1, !range !12, !alias.scope !250, !noalias !251, !noundef !3
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.de = load i8, ptr %i.dd, align 8, !range !13, !alias.scope !250, !noalias !251, !noundef !3 ; 2 uses
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !250, !noalias !251
  %.sroa.519.0.i.i.i = select i1 %i.df, i8 %i.dh, i8 undef
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 114
  store i8 %i.bl, ptr %i.di, align 2, !noalias !265
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 115
  store i8 %i.bn, ptr %i.dj, align 1, !noalias !265
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  store i8 %i.bp, ptr %i.dk, align 4, !noalias !265
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr %.sroa.0.050.i.i.i, ptr %i.dl, align 8, !noalias !265
  %.sroa.4.0..sroa_idx47.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr %.sroa.4.051.i.i.i, ptr %.sroa.4.0..sroa_idx47.i.i.i, align 8, !noalias !265
  %.sroa.5.0..sroa_idx48.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i64 %.sroa.5.052.i.i.i, ptr %.sroa.5.0..sroa_idx48.i.i.i, align 8, !noalias !265
  %.sroa.6.0..sroa_idx49.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i8 %i.br, ptr %.sroa.6.0..sroa_idx49.i.i.i, align 8, !noalias !265
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 122
  store i8 %i.cb, ptr %i.dm, align 2, !noalias !265
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.cd, ptr %i.dn, align 8, !noalias !265
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.5.0.i.i.i, ptr %i.do, align 8, !noalias !265
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.ci, ptr %i.dp, align 8, !noalias !265
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %.sroa.56.0.i.i.i, ptr %i.dq, align 8, !noalias !265
  store i64 %i.cm, ptr %i.g, align 8, !noalias !265
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.58.0.i.i.i, ptr %i.dr, align 8, !noalias !265
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 117
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %i.cr, ptr %i.dt, align 8, !noalias !265
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.sroa.512.0.i.i.i, ptr %i.du, align 8, !noalias !265
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %i.cw, ptr %i.dv, align 8, !noalias !265
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 %.sroa.514.0.i.i.i, ptr %i.dw, align 8, !noalias !265
  %i.dx = load <4 x i8>, ptr %i.cp, align 1, !alias.scope !250, !noalias !251
  store <4 x i8> %i.dx, ptr %i.ds, align 1, !noalias !265
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 121
  store i8 %i.dc, ptr %i.dy, align 1, !noalias !265
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store i8 %i.de, ptr %i.dz, align 8, !noalias !265
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 113
  store i8 %.sroa.519.0.i.i.i, ptr %i.ea, align 1, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !265
  %i.eb = getelementptr inbounds nuw [48 x i8], ptr %i.bi, i64 %i.bj
  invoke void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h0c9dd876da09c639E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 %i.bi, ptr noundef nonnull readonly %i.eb)
          to label %bb.o unwind label %bb.av, !noalias !266

bb.o:                                             ; preds = %"_ZN74_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..clone..Clone$GT$5clone17he9c8963f0704cc04E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !265
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !265, !nonnull !3, !noundef !3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !265, !noundef !3
  %i.eg = invoke noundef nonnull ptr @_ZN14regex_automata4meta5regex9RegexInfo3new17h4c9680cfe2dfebe7E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ed, i64 noundef %i.ef)
          to label %bb.q unwind label %bb.p, !noalias !266 ; 4 uses

"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i.i": ; preds = %bb.au, %bb.at, %.body35.i.i, %bb.p
  %.pn31.i.i = phi { ptr, i32 } [ %i.eh, %bb.p ], [ %i.fm, %.body35.i.i ], [ %.pn.pn.ph.i.i, %bb.au ], [ %.pn.pn.ph.i.i, %bb.at ]
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$$RF$regex_syntax..hir..Hir$GT$$GT$17h950de63759beb6fcE"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #29
          to label %.body.i unwind label %bb.ap, !noalias !266

bb.p:                                             ; preds = %bb.u, %bb.o
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i.i"

bb.q:                                             ; preds = %bb.o
  store ptr %i.eg, ptr %i.h, align 8, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !265
  %i.ei = load ptr, ptr %i.ec, align 8, !noalias !265, !nonnull !3, !noundef !3
  %i.ej = load i64, ptr %i.ee, align 8, !noalias !265, !noundef !3
  invoke void @_ZN14regex_automata4meta8strategy3new17hd7ebe011bfad8af0E(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ei, i64 noundef %i.ej)
          to label %bb.s unwind label %bb.r, !noalias !266

bb.r:                                             ; preds = %bb.q
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.s:                                             ; preds = %bb.q
  %i.el = load i64, ptr %i.e, align 8, !range !186, !noalias !265, !noundef !3 ; 2 uses
  %.not.i122.i = icmp eq i64 %i.el, -9223372036854775806
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !noalias !265 ; 8 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !265 ; 5 uses
  br i1 %.not.i122.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.424.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.0..sroa_idx.i.i, i64 112, i1 false), !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !265
  store i64 %i.el, ptr %0, align 8, !alias.scope !268, !noalias !267
  %.sroa.222.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.en, ptr %.sroa.222.0..sroa_idx.i.i, align 8, !alias.scope !268, !noalias !267
  %.sroa.323.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1

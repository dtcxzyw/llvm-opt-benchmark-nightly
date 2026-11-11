Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37289
inline.NumDeleted: 15087
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN120_$LT$nickel_lang_parser..ast..pattern..ArrayPattern$u20$as$u20$nickel_lang_core..term..pattern..compile..CompilePart$GT$12compile_part17h722f2b48789fee7aE":bb.a
    i64 2, label %.invoke333
    i64 0, label %bb.cp
  ], !prof !157

bb.cp:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19838
  store ptr %4, ptr %i.e, align 8, !noalias !19838
  %i.ju = load i64, ptr %4, align 8, !noalias !19839, !noundef !152 ; 3 uses
  %i.jv = and i64 %i.ju, 72057594037927935
  %i.jw = add nsw i64 %i.jv, -1                   ; 3 uses
  %i.jx = and i64 %i.ju, 1080863910568919040
  %i.jy = icmp ult i64 %i.ju, 864691128455135232
  call void @llvm.assume(i1 %i.jy), !noalias !19840
  %i.jz = or i64 %i.jw, %i.jx
  store i64 %i.jz, ptr %4, align 8, !noalias !19839
  %i.ka = icmp ugt i64 %i.jw, 72057594037927935
  br i1 %i.ka, label %bb.cr, label %bb.cq, !prof !154

bb.cq:                                            ; preds = %bb.cp
  %i.kb = icmp eq i64 %i.jw, 0
  br i1 %i.kb, label %bb.cs, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i262"

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19839
  br label %.invoke

bb.cs:                                            ; preds = %bb.cq
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #84
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i262" unwind label %bb.bk, !inline_history !159

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i262": ; preds = %bb.cs, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19838
  br label %.thread194

.thread194.thread:                                ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i268", %bb.ct, %bb.cj, %.thread194
  %.pn37.pn106200 = phi { ptr, i32 } [ %.pn37.pn107, %.thread194 ], [ %i.jj, %bb.cj ], [ %.pn37.pn107, %bb.ct ], [ %.pn37.pn107, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i268" ]
  resume { ptr, i32 } %.pn37.pn106200

bb.ct:                                            ; preds = %.thread194
  %i.kc = ptrtoint ptr %3 to i64
  %i.kd = and i64 %i.kc, 3
  %..i.i267 = call i64 @llvm.umin.i64(i64 %i.kd, i64 2)
  switch i64 %..i.i267, label %.thread194.thread [
    i64 2, label %.invoke333
    i64 0, label %bb.cu
  ], !prof !157

.invoke333:                                       ; preds = %bb.ct, %.thread
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.cont334 unwind label %bb.bk, !inline_history !159

.cont334:                                         ; preds = %.invoke333
  unreachable

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19841
  store ptr %3, ptr %i.c, align 8, !noalias !19841
  %i.ke = load i64, ptr %3, align 8, !noalias !19842, !noundef !152 ; 3 uses
  %i.kf = and i64 %i.ke, 72057594037927935
  %i.kg = add nsw i64 %i.kf, -1                   ; 3 uses
  %i.kh = and i64 %i.ke, 1080863910568919040
  %i.ki = icmp ult i64 %i.ke, 864691128455135232
  call void @llvm.assume(i1 %i.ki), !noalias !19843
  %i.kj = or i64 %i.kg, %i.kh
  store i64 %i.kj, ptr %3, align 8, !noalias !19842
  %i.kk = icmp ugt i64 %i.kg, 72057594037927935
  br i1 %i.kk, label %bb.cw, label %bb.cv, !prof !154

bb.cv:                                            ; preds = %bb.cu
  %i.kl = icmp eq i64 %i.kg, 0
  br i1 %i.kl, label %bb.cx, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i268"

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19842
  br label %.invoke

.invoke:                                          ; preds = %bb.cn, %bb.cr, %bb.cw
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.cn ], [ %.sink.sroa.gep364, %bb.cr ], [ %.sink.sroa.gep365, %bb.cw ]
  %.sink.sroa.phi366 = phi ptr [ %.sink.sroa.gep367, %bb.cn ], [ %.sink.sroa.gep368, %bb.cr ], [ %.sink.sroa.gep369, %bb.cw ]
  %.sink.sroa.phi370 = phi ptr [ %.sink.sroa.gep371, %bb.cn ], [ %.sink.sroa.gep372, %bb.cr ], [ %.sink.sroa.gep373, %bb.cw ]
  %.sink.sroa.phi374 = phi ptr [ %.sink.sroa.gep375, %bb.cn ], [ %.sink.sroa.gep376, %bb.cr ], [ %.sink.sroa.gep377, %bb.cw ]
  %.sink = phi ptr [ %i.f, %bb.cn ], [ %i.d, %bb.cr ], [ %i.b, %bb.cw ] ; 2 uses
  store ptr @2796, ptr %.sink, align 8, !noalias !152
  store i64 1, ptr %.sink.sroa.phi, align 8, !noalias !152
  store ptr null, ptr %.sink.sroa.phi366, align 8, !noalias !152
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.sroa.phi370, align 8, !noalias !152
  store i64 0, ptr %.sink.sroa.phi374, align 8, !noalias !152
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2797) #82
          to label %.cont unwind label %bb.bk, !inline_history !159

.cont:                                            ; preds = %.invoke
  unreachable

bb.cx:                                            ; preds = %bb.cv
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #84
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i268" unwind label %bb.bk, !inline_history !159

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i268": ; preds = %bb.cx, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19841
  br label %.thread194.thread
}

; Function Attrs: nounwind nonlazybind uwtable
define void @"_ZN120_$LT$nickel_lang_parser..ast..pattern..ConstantPattern$u20$as$u20$nickel_lang_core..typecheck..pattern..PatternTypes$GT$17pattern_types_inj17h122e57440c820798E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(56) %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %5, i1 noundef zeroext %6) unnamed_addr #4 personality ptr @rust_eh_personality !guid !19848 {
switch.lookup:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19851)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load i8, ptr %i.b, align 8, !range !180, !alias.scope !19850, !noundef !152
  %i.d = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN124_$LT$nickel_lang_parser..ast..pattern..ConstantPatternData$u20$as$u20$nickel_lang_core..typecheck..pattern..PatternTypes$GT$17pattern_types_inj17hb9290845f8b35624E", i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  store i64 %switch.ext, ptr %i.a, align 8, !noalias !19852
  %i.e = call noundef i16 @"_ZN340_$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$u20$as$u20$nickel_lang_core..typecheck..VarLevelUpperBound$GT$21var_level_upper_bound17hc1a0ed8fe98c3311E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a), !noalias !19852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !19853
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 %i.e, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !19849
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i16 0, ptr %.sroa.11.0..sroa_idx.i, align 2, !alias.scope !19849
  %.val.i = load i64, ptr %3, align 8, !alias.scope !19851 ; 2 uses
  %i.f = icmp eq i64 %.val.i, 0
  br i1 %i.f, label %"_ZN124_$LT$nickel_lang_parser..ast..pattern..ConstantPatternData$u20$as$u20$nickel_lang_core..typecheck..pattern..PatternTypes$GT$17pattern_types_inj17hb9290845f8b35624E.exit", label %bb.a

bb.a:                                             ; preds = %switch.lookup
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !19851, !nonnull !152, !noundef !152
  %i.h = shl nuw i64 %.val.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !19852
  br label %"_ZN124_$LT$nickel_lang_parser..ast..pattern..ConstantPatternData$u20$as$u20$nickel_lang_core..typecheck..pattern..PatternTypes$GT$17pattern_types_inj17hb9290845f8b35624E.exit"

"_ZN124_$LT$nickel_lang_parser..ast..pattern..ConstantPatternData$u20$as$u20$nickel_lang_core..typecheck..pattern..PatternTypes$GT$17pattern_types_inj17hb9290845f8b35624E.exit": ; preds = %switch.lookup, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h16695f2c3720ff07E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, i32 %1) unnamed_addr #10 personality ptr @rust_eh_personality !guid !19864 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !160, !noalias !19865, !noundef !152
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i", !prof !161

._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i: ; preds = %bb.a
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !noalias !19866
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !19866
  br label %.noexc.i.i

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i": ; preds = %bb.a
  %i.f = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !19867 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !19867
  store i8 1, ptr %i.c, align 8, !noalias !19867
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i
  %.pre-phi15 = phi i64 [ %.pre1.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i ], [ %i.h, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i" ]
  %i.j = phi i64 [ %.pre.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i.i ], [ %i.g, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i.i" ] ; 2 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.b, align 8, !noalias !19866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.j, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.pre-phi15, ptr %.sroa.58.0..sroa_idx, align 8
  %i.l = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h7f4e452eaa6315bbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.47.0..sroa_idx, i1 noundef zeroext true)
          to label %"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hd6267290d96fa9c2E.exit.i" unwind label %bb.b ; 0 uses

"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hd6267290d96fa9c2E.exit.i": ; preds = %.noexc.i.i
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h6bcd11753ca413e1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %1)
          to label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h59a45309c679c643E.exit" unwind label %bb.b

bb.b:                                             ; preds = %"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hd6267290d96fa9c2E.exit.i", %.noexc.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val12 = load i64, ptr %i.n, align 8, !noundef !152
  call fastcc void @"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E"(ptr %.val, i64 %.val12) #86
  resume { ptr, i32 } %i.m

"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h59a45309c679c643E.exit": ; preds = %"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hd6267290d96fa9c2E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN121_$LT$$RF$nickel_lang_core..typecheck..record..ShallowRecord$u20$as$u20$nickel_lang_core..typecheck..record..WalkSplit$GT$10walk_split17h5ec7d7e9174b44d2E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %2, ptr noalias noundef nonnull align 1 %3) unnamed_addr #2 personality ptr @rust_eh_personality !guid !19881 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 16 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i64, ptr %i.f, align 8, !noundef !152 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 144
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.val2.i = load ptr, ptr %2, align 8, !nonnull !152 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3.i = load ptr, ptr %i.i, align 8          ; 4 uses
  %.not.i.i = icmp eq ptr %.val3.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val.i = load ptr, ptr %i.j, align 8, !nonnull !152 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val1.i = load ptr, ptr %i.k, align 8          ; 4 uses
  %.not.i5.i = icmp eq ptr %.val1.i, null
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load i16, ptr %i.l, align 8, !range !179
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %.val2.i22 = load ptr, ptr %i.r, align 8, !nonnull !152 ; 12 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val3.i23.a = load ptr, ptr %4, align 8
  %.val3.i37.fr = freeze ptr %.val3.i23.a         ; 11 uses
  %.not.i.i26 = icmp eq ptr %.val3.i37.fr, null
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val.i29 = load ptr, ptr %i.s, align 8, !nonnull !152 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.val1.i30 = load ptr, ptr %i.t, align 8
  %.val1.i44.fr = freeze ptr %.val1.i30           ; 11 uses
  %.not.i5.i33 = icmp eq ptr %.val1.i44.fr, null
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.v = load i16, ptr %i.u, align 8, !range !179 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = icmp eq i64 %i.g, 0
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.w
  %i.ab = icmp eq ptr %i.ac, %i.h
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.015.0133 = phi ptr [ %i.ac, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.0133, i64 144 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.015.0133, i64 8
  %i.ae = load ptr, ptr %.sroa.015.0133, align 8, !nonnull !152, !align !156, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !19882)
  %.val.i.i.i = load i64, ptr %.val2.i, align 8, !noalias !19883, !noundef !152 ; 2 uses
  %i.af = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.ag, ptr %.val2.i, align 8, !noalias !19883
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i, !prof !154

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i: ; preds = %.lr.ph
  br i1 %.not.i.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i", label %bb.d

bb.d:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val3.i, align 8, !noalias !19883, !noundef !152 ; 2 uses
  %i.ai = icmp ne i64 %.val.i2.i.i, 0
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.aj, ptr %.val3.i, align 8, !noalias !19883
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i", !prof !154

bb.e:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i": ; preds = %bb.d, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i
  %.val.i.i4.i = load i64, ptr %.val.i, align 8, !noalias !19883, !noundef !152 ; 2 uses
  %i.al = icmp ne i64 %.val.i.i4.i, 0
  call void @llvm.assume(i1 %i.al)
  %i.am = add i64 %.val.i.i4.i, 1                 ; 2 uses
  store i64 %i.am, ptr %.val.i, align 8, !noalias !19883
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.f, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i, !prof !154

bb.f:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i"
  br i1 %.not.i5.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val1.i, align 8, !noalias !19883, !noundef !152 ; 2 uses
  %i.ao = icmp ne i64 %.val.i2.i6.i, 0
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.ap, ptr %.val1.i, align 8, !noalias !19883
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %bb.m, !prof !154

bb.h:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !152, !noundef !152 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !152 ; 2 uses
  %.idx140 = mul nuw nsw i64 %i.au, 168
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx140 ; 3 uses
  %.not.i.i40 = icmp eq ptr %.val3.i37.fr, null
  %.not.i5.i47 = icmp eq ptr %.val1.i44.fr, null  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.ba = icmp eq i64 %i.au, 0                    ; 3 uses
  br i1 %.not.i.i40, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %._crit_edge
  br i1 %i.ba, label %.split58.us, label %.lr.ph139

.split.us:                                        ; preds = %bb.k
  %i.bb = icmp eq ptr %i.bc, %i.av
  br i1 %i.bb, label %.split58.us, label %.lr.ph139

.lr.ph139:                                        ; preds = %.split.us.preheader, %.split.us
  %.sroa.0.0.us138 = phi ptr [ %i.bc, %.split.us ], [ %i.as, %.split.us.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us138, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !19884)
  %.val.i.i.i38.us = load i64, ptr %.val2.i22, align 8, !noalias !19885, !noundef !152 ; 2 uses
  %i.bd = icmp ne i64 %.val.i.i.i38.us, 0
  call void @llvm.assume(i1 %i.bd)
  %i.be = add i64 %.val.i.i.i38.us, 1             ; 2 uses
  store i64 %i.be, ptr %.val2.i22, align 8, !noalias !19885
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.split60.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i39.us, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i39.us: ; preds = %.lr.ph139
  %.val.i.i4.i45.us = load i64, ptr %.val.i29, align 8, !noalias !19885, !noundef !152 ; 2 uses
  %i.bg = icmp ne i64 %.val.i.i4.i45.us, 0
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add i64 %.val.i.i4.i45.us, 1            ; 2 uses
  store i64 %i.bh, ptr %.val.i29, align 8, !noalias !19885
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.split62.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i46.us, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i46.us: ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i39.us
  br i1 %.not.i5.i47, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i46.us
  %.val.i2.i6.i48.us = load i64, ptr %.val1.i44.fr, align 8, !noalias !19885, !noundef !152 ; 2 uses
  %i.bj = icmp ne i64 %.val.i2.i6.i48.us, 0
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add i64 %.val.i2.i6.i48.us, 1           ; 2 uses
  store i64 %i.bk, ptr %.val1.i44.fr, align 8, !noalias !19885
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.split64.us, label %bb.j, !prof !154

bb.j:                                             ; preds = %bb.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i46.us
  store ptr %.val2.i22, ptr %i.a, align 8, !alias.scope !19884
  store ptr null, ptr %i.aw, align 8, !alias.scope !19884
  store ptr %.val.i29, ptr %i.ax, align 8, !alias.scope !19884
  store ptr %.val1.i44.fr, ptr %i.ay, align 8, !alias.scope !19884
  store i16 %i.v, ptr %i.az, align 8, !alias.scope !19884
  %i.bm = invoke fastcc noundef align 8 ptr @"_ZN108_$LT$$RF$nickel_lang_core..typecheck..record..ResolvedField$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h4855382483d024aeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.0.0.us138, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 1 %3)
          to label %bb.k unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not20.us = icmp eq ptr %i.bm, null
  br i1 %.not20.us, label %.split.us, label %.loopexit55

.split:                                           ; preds = %._crit_edge
  br i1 %.not.i5.i47, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  br i1 %i.ba, label %.split58.us, label %.lr.ph135

.split.split.us.preheader:                        ; preds = %.split
  br i1 %i.ba, label %.split58.us, label %.lr.ph137

.split.split.us:                                  ; preds = %bb.l
  %i.bn = icmp eq ptr %i.bo, %i.av
  br i1 %i.bn, label %.split58.us, label %.lr.ph137

.lr.ph137:                                        ; preds = %.split.split.us.preheader, %.split.split.us
  %.sroa.0.0.us66136 = phi ptr [ %i.bo, %.split.split.us ], [ %i.as, %.split.split.us.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us66136, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !19884)
  %.val.i.i.i38.us67 = load i64, ptr %.val2.i22, align 8, !noalias !19885, !noundef !152 ; 2 uses
  %i.bp = icmp ne i64 %.val.i.i.i38.us67, 0
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add i64 %.val.i.i.i38.us67, 1           ; 2 uses
  store i64 %i.bq, ptr %.val2.i22, align 8, !noalias !19885
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.split60.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i39.us68, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i39.us68: ; preds = %.lr.ph137
  %.val.i2.i.i41.us = load i64, ptr %.val3.i37.fr, align 8, !noalias !19885, !noundef !152 ; 2 uses
  %i.bs = icmp ne i64 %.val.i2.i.i41.us, 0
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add i64 %.val.i2.i.i41.us, 1            ; 2 uses
  store i64 %i.bt, ptr %.val3.i37.fr, align 8, !noalias !19885
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.split74.us, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i42.us69", !prof !154

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i42.us69": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i39.us68
  %.val.i.i4.i45.us70 = load i64, ptr %.val.i29, align 8, !noalias !19885, !noundef !152 ; 2 uses
  %i.bv = icmp ne i64 %.val.i.i4.i45.us70, 0
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add i64 %.val.i.i4.i45.us70, 1          ; 2 uses
  store i64 %i.bw, ptr %.val.i29, align 8, !noalias !19885
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.split62.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i46.us71, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i46.us71: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i42.us69"
  store ptr %.val2.i22, ptr %i.a, align 8, !alias.scope !19884
  store ptr %.val3.i37.fr, ptr %i.aw, align 8, !alias.scope !19884
  store ptr %.val.i29, ptr %i.ax, align 8, !alias.scope !19884
  store ptr null, ptr %i.ay, align 8, !alias.scope !19884
  store i16 %i.v, ptr %i.az, align 8, !alias.scope !19884
  %i.by = invoke fastcc noundef align 8 ptr @"_ZN108_$LT$$RF$nickel_lang_core..typecheck..record..ResolvedField$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h4855382483d024aeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.0.0.us66136, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 1 %3)
          to label %bb.l unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i46.us71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not20.us72 = icmp eq ptr %i.by, null
  br i1 %.not20.us72, label %.split.split.us, label %.loopexit55

.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i46.us71, %bb.j, %bb.ab, %bb.m, %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hbe9b5e8b25e1e9e0E"(ptr noalias noundef align 8 dereferenceable(80) %2) #86
          to label %common.resume unwind label %bb.ad

bb.m:                                             ; preds = %bb.g, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i
  store ptr %.val2.i, ptr %i.c, align 8, !alias.scope !19882
  store ptr %.val3.i, ptr %i.n, align 8, !alias.scope !19882
  store ptr %.val.i, ptr %i.o, align 8, !alias.scope !19882
  store ptr %.val1.i, ptr %i.p, align 8, !alias.scope !19882
  store i16 %i.m, ptr %i.q, align 8, !alias.scope !19882
  %i.bz = invoke fastcc noundef align 8 ptr @"_ZN86_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h12d594c67900cadfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 1 %3)
          to label %bb.n unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %bb.o, label %.loopexit55

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !19886)
  %.val.i.i.i24 = load i64, ptr %.val2.i22, align 8, !noalias !19887, !noundef !152 ; 2 uses
  %i.ca = icmp ne i64 %.val.i.i.i24, 0
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add i64 %.val.i.i.i24, 1                ; 2 uses
  store i64 %i.cb, ptr %.val2.i22, align 8, !noalias !19887
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.p, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i25, !prof !154

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i25: ; preds = %bb.o
  br i1 %.not.i.i26, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i28", label %bb.q

bb.q:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i25
  %.val.i2.i.i27 = load i64, ptr %.val3.i37.fr, align 8, !noalias !19887, !noundef !152 ; 2 uses
  %i.cd = icmp ne i64 %.val.i2.i.i27, 0
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add i64 %.val.i2.i.i27, 1               ; 2 uses
  store i64 %i.ce, ptr %.val3.i37.fr, align 8, !noalias !19887
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.r, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i28", !prof !154

bb.r:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i28": ; preds = %bb.q, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i25
  %.val.i.i4.i31 = load i64, ptr %.val.i29, align 8, !noalias !19887, !noundef !152 ; 2 uses
  %i.cg = icmp ne i64 %.val.i.i4.i31, 0
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add i64 %.val.i.i4.i31, 1               ; 2 uses
  store i64 %i.ch, ptr %.val.i29, align 8, !noalias !19887
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.s, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i32, !prof !154

bb.s:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i28"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i32: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i28"
  br i1 %.not.i5.i33, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i32
  %.val.i2.i6.i34 = load i64, ptr %.val1.i44.fr, align 8, !noalias !19887, !noundef !152 ; 2 uses
  %i.cj = icmp ne i64 %.val.i2.i6.i34, 0
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add i64 %.val.i2.i6.i34, 1              ; 2 uses
  store i64 %i.ck, ptr %.val1.i44.fr, align 8, !noalias !19887
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.u, label %bb.v, !prof !154

bb.u:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.t, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i32
  store ptr %.val2.i22, ptr %i.b, align 8, !alias.scope !19886
  store ptr %.val3.i37.fr, ptr %i.w, align 8, !alias.scope !19886
  store ptr %.val.i29, ptr %i.x, align 8, !alias.scope !19886
  store ptr %.val1.i44.fr, ptr %i.y, align 8, !alias.scope !19886
  store i16 %i.v, ptr %i.z, align 8, !alias.scope !19886
  %i.cm = invoke fastcc noundef align 8 ptr @"_ZN108_$LT$$RF$nickel_lang_core..typecheck..record..ResolvedField$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h4855382483d024aeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.ad, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 1 %3)
          to label %bb.w unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not18 = icmp eq ptr %i.cm, null
  br i1 %.not18, label %bb.b, label %.loopexit55

.loopexit55:                                      ; preds = %bb.n, %bb.w, %bb.ac, %bb.l, %bb.k
  %.sroa.0.1 = phi ptr [ %i.bm, %bb.k ], [ %i.by, %bb.l ], [ %i.df, %bb.ac ], [ %i.bz, %bb.n ], [ %i.cm, %bb.w ]
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %2)
          to label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hbe9b5e8b25e1e9e0E.exit" unwind label %bb.x

bb.x:                                             ; preds = %.loopexit55
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef readonly align 8 dereferenceable(40) %i.r) #86
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !19888
  unreachable

common.resume:                                    ; preds = %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.dd, %bb.z ], [ %i.cn, %bb.x ], [ %lpad.loopexit.split-lp, %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

.split.split:                                     ; preds = %bb.ac
  %i.cp = icmp eq ptr %i.cq, %i.av
  br i1 %i.cp, label %.split58.us, label %.lr.ph135

.lr.ph135:                                        ; preds = %.split.split.preheader, %.split.split
  %.sroa.0.0134 = phi ptr [ %i.cq, %.split.split ], [ %i.as, %.split.split.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0134, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !19884)
  %.val.i.i.i38 = load i64, ptr %.val2.i22, align 8, !noalias !19885, !noundef !152 ; 2 uses
  %i.cr = icmp ne i64 %.val.i.i.i38, 0
  call void @llvm.assume(i1 %i.cr)
  %i.cs = add i64 %.val.i.i.i38, 1                ; 2 uses
  store i64 %i.cs, ptr %.val2.i22, align 8, !noalias !19885
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.split60.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i39, !prof !154

.split60.us:                                      ; preds = %.lr.ph135, %.lr.ph137, %.lr.ph139
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i39: ; preds = %.lr.ph135
  %.val.i2.i.i41 = load i64, ptr %.val3.i37.fr, align 8, !noalias !19885, !noundef !152 ; 2 uses
  %i.cu = icmp ne i64 %.val.i2.i.i41, 0
  call void @llvm.assume(i1 %i.cu)
  %i.cv = add i64 %.val.i2.i.i41, 1               ; 2 uses
  store i64 %i.cv, ptr %.val3.i37.fr, align 8, !noalias !19885
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.split74.us, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i42", !prof !154

.split74.us:                                      ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i39, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i39.us68
  call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i42": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i39
  %.val.i.i4.i45 = load i64, ptr %.val.i29, align 8, !noalias !19885, !noundef !152 ; 2 uses
  %i.cx = icmp ne i64 %.val.i.i4.i45, 0
  call void @llvm.assume(i1 %i.cx)
  %i.cy = add i64 %.val.i.i4.i45, 1               ; 2 uses
  store i64 %i.cy, ptr %.val.i29, align 8, !noalias !19885
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.split62.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i46, !prof !154

.split62.us:                                      ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i42", %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i42.us69", %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i39.us
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i46: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i42"
  %.val.i2.i6.i48 = load i64, ptr %.val1.i44.fr, align 8, !noalias !19885, !noundef !152 ; 2 uses
  %i.da = icmp ne i64 %.val.i2.i6.i48, 0
  call void @llvm.assume(i1 %i.da)
  %i.db = add i64 %.val.i2.i6.i48, 1              ; 2 uses
  store i64 %i.db, ptr %.val1.i44.fr, align 8, !noalias !19885
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %.split64.us, label %bb.ab, !prof !154

.split64.us:                                      ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i46, %bb.i
  call void @llvm.trap()
  unreachable

.split58.us:                                      ; preds = %.split.split, %.split.split.us, %.split.us, %.split.split.preheader, %.split.split.us.preheader, %.split.us.preheader
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %2)
          to label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hbe9b5e8b25e1e9e0E.exit" unwind label %bb.z

bb.z:                                             ; preds = %.split58.us
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef readonly align 8 dereferenceable(40) %i.r) #86
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !19889
  unreachable

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hbe9b5e8b25e1e9e0E.exit": ; preds = %.split58.us, %.loopexit55
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %.loopexit55 ], [ null, %.split58.us ]
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef readonly align 8 dereferenceable(40) %i.r)
  ret ptr %.sroa.0.2

bb.ab:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i46
  store ptr %.val2.i22, ptr %i.a, align 8, !alias.scope !19884
  store ptr %.val3.i37.fr, ptr %i.aw, align 8, !alias.scope !19884
  store ptr %.val.i29, ptr %i.ax, align 8, !alias.scope !19884
  store ptr %.val1.i44.fr, ptr %i.ay, align 8, !alias.scope !19884
  store i16 %i.v, ptr %i.az, align 8, !alias.scope !19884
  %i.df = invoke fastcc noundef align 8 ptr @"_ZN108_$LT$$RF$nickel_lang_core..typecheck..record..ResolvedField$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h4855382483d024aeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.0.0134, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 1 %3)
          to label %bb.ac unwind label %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not20 = icmp eq ptr %i.df, null
  br i1 %.not20, label %.split.split, label %.loopexit55

bb.ad:                                            ; preds = %.loopexit.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h080accfae5eb8dabE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !19909 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %.sroa.4.i.i.i.i = alloca [100 x i8], align 4   ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !152
  %i.f = icmp eq i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.g, align 8, !nonnull !152, !noundef !152
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5 = load ptr, ptr %i.h, align 8, !nonnull !152, !noundef !152
  %i.i = ptrtoint ptr %.val5 to i64
  %i.j = ptrtoint ptr %.val4 to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = udiv exact i64 %i.k, 120                 ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = lshr i64 %i.m, 1
  %.sroa.0.0 = select i1 %i.f, i64 %i.l, i64 %i.n ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !19910, !noundef !152
  %i.q = icmp ugt i64 %.sroa.0.0, %i.p
  br i1 %i.q, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h01c406d8c9c2e19bE.exit", !prof !154

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hfca6284fad5493d6E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h01c406d8c9c2e19bE.exit" unwind label %bb.h ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h01c406d8c9c2e19bE.exit": ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !19912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19913)
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !19913, !noalias !19911, !nonnull !152, !noundef !152 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !19913, !noalias !19911 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %.promoted.i.i.i, %i.u
  br i1 %.not7.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hd1f5021f84c2ab08E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h01c406d8c9c2e19bE.exit"
  %.sroa.4.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 4
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.x = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.y, %bb.f ] ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !19914 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 120 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19915
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %.sroa.4.8..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false), !noalias !19914
  store i32 %.sroa.2.0.copyload.i.i.i, ptr %i.b, align 8, !noalias !19915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.4.i.i.i.i, i64 100, i1 false), !noalias !19915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19916
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hbe84aa3cfbecb563E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.sroa.2.0.copyload.i.i.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(96) %i.w)
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !19914

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.aa = load i64, ptr %i.a, align 8, !range !191, !alias.scope !19917, !noalias !19916, !noundef !152
  %i.ab = icmp samesign ult i64 %i.aa, 18
  br i1 %i.ab, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.a)
          to label %bb.f unwind label %bb.e, !noalias !19914

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.v, align 8, !alias.scope !19913, !noalias !19911
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..typecheck..UnifType$RP$$GT$$GT$17h15f4117586d716f9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #86
          to label %.body.thread unwind label %bb.g, !noalias !19918

bb.f:                                             ; preds = %bb.d, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19916
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19915
  %.not.i.i.i = icmp eq ptr %i.y, %i.u
  br i1 %.not.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h0940a1eff9b7c1f4E.exit.loopexit.i.i", label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !19914
  unreachable

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h0940a1eff9b7c1f4E.exit.loopexit.i.i": ; preds = %bb.f
  store ptr %i.y, ptr %i.v, align 8, !alias.scope !19913, !noalias !19911
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hd1f5021f84c2ab08E.exit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hd1f5021f84c2ab08E.exit.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h0940a1eff9b7c1f4E.exit.loopexit.i.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h01c406d8c9c2e19bE.exit"
  call fastcc void @"_ZN4core3ptr148drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..typecheck..UnifType$RP$$GT$$GT$17h15f4117586d716f9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19911
  ret void

.body.thread:                                     ; preds = %bb.h, %bb.e
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.ac, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body13

bb.h:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..typecheck..UnifType$RP$$GT$$GT$17h15f4117586d716f9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %.body.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h106f640d39206b94E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !20102 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [144 x i8], align 8               ; 5 uses
  %i.l = alloca [120 x i8], align 8               ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [144 x i8], align 8               ; 17 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !152
  %i.r = icmp eq i64 %i.q, 0
  %i.s = ptrtoint ptr %2 to i64
  %i.t = ptrtoint ptr %1 to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 72                  ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = lshr i64 %i.w, 1
  %.sroa.0.0 = select i1 %i.r, i64 %i.v, i64 %i.x ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !20103, !noundef !152
  %i.ab = icmp ugt i64 %.sroa.0.0, %i.aa
  br i1 %i.ab, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd1371ada0fe2fb1aE.exit", !prof !154

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h049d645f72ddae42E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y, i1 noundef zeroext true) ; 0 uses
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd1371ada0fe2fb1aE.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd1371ada0fe2fb1aE.exit": ; preds = %bb.a, %bb.b
  %i.ad = icmp eq ptr %1, %2
  br i1 %i.ad, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h728ee5ed9cf149b4E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd1371ada0fe2fb1aE.exit"
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i.i.i20.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0..sroa_idx.i.i.i21.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.5.0..sroa_idx.i.i.i22.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
end_hunk_0
begin_hunk_1_@"_ZN68_$LT$nickel_lang_core..term..UnaryOp$u20$as$u20$core..fmt..Debug$GT$3fmt17h62468bd7c315d8a7E":bb.a
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 !guid !110588 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h6adac61bdb47acc9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
  br i1 %i.a, label %bb.b, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110590)
  %i.d = load i32, ptr %i.b, align 8, !range !193, !alias.scope !110589, !noundef !152 ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !range !193, !alias.scope !110590, !noundef !152
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.c:                                             ; preds = %bb.b
  switch i32 %i.d, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.g
    i32 2, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !110589, !noundef !152
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !110590, !noundef !152
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i32, ptr %i.l, align 8, !alias.scope !110589, !noundef !152
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.o = load i32, ptr %i.n, align 8, !alias.scope !110590, !noundef !152
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !110589, !noundef !152
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !110590, !noundef !152
  %i.u = icmp eq i32 %i.r, %i.t
  br label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.g:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !110589, !noundef !152
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !110590, !noundef !152
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.h, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !alias.scope !110589, !noundef !152
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !110590, !noundef !152
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.i, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !110589, !noundef !152
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !110590, !noundef !152
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit": ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.u, %bb.f ], [ true, %bb.c ], [ false, %bb.b ], [ %i.aj, %bb.i ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.e ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @"_ZN68_$LT$rustyline..keymap..Movement$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2907e3297be32591E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #49 !guid !110591 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !276, !noundef !152 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !276, !noundef !152
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.c [
    i8 3, label %bb.d
    i8 4, label %bb.f
    i8 5, label %bb.i
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 9, label %bb.m
    i8 10, label %bb.n
  ]

bb.c:                                             ; preds = %bb.i, %bb.f, %bb.g, %bb.d, %bb.b, %bb.a, %bb.j, %bb.h, %bb.e, %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %i.m, %bb.e ], [ true, %bb.b ], [ %i.ab, %bb.h ], [ false, %bb.d ], [ %spec.select.i, %bb.j ], [ false, %bb.f ], [ %i.as, %bb.k ], [ %i.ax, %bb.l ], [ %i.bc, %bb.m ], [ %i.bh, %bb.n ], [ false, %bb.i ], [ false, %bb.g ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !152
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !152
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !range !186, !noundef !152
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !range !186, !noundef !152
  %i.m = icmp eq i8 %i.j, %i.l
  br label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !152
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !152
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !range !186, !noundef !152
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = load i8, ptr %i.u, align 1, !range !186, !noundef !152
  %i.w = icmp eq i8 %i.t, %i.v
  br i1 %i.w, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = load i8, ptr %i.x, align 2, !range !186, !noundef !152
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.aa = load i8, ptr %i.z, align 2, !range !186, !noundef !152
  %i.ab = icmp eq i8 %i.y, %i.aa
  br label %bb.c

bb.i:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !152
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !152
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.j, label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load <2 x i32>, ptr %i.ai, align 8
  %i.ak = load <2 x i32>, ptr %i.ah, align 8
  %i.al = icmp eq <2 x i32> %i.aj, %i.ak          ; 2 uses
  %i.am = extractelement <2 x i1> %i.al, i64 0
  %i.an = extractelement <2 x i1> %i.al, i64 1
  %spec.select.i = select i1 %i.am, i1 %i.an, i1 false
  br label %bb.c

bb.k:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !152
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !152
  %i.as = icmp eq i64 %i.ap, %i.ar
  br label %bb.c

bb.l:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noundef !152
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noundef !152
  %i.ax = icmp eq i64 %i.au, %i.aw
  br label %bb.c

bb.m:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noundef !152
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !152
  %i.bc = icmp eq i64 %i.az, %i.bb
  br label %bb.c

bb.n:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noundef !152
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !152
  %i.bh = icmp eq i64 %i.be, %i.bg
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN69_$LT$$RF$$u5b$T$u5d$$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h15acd45b79436fe5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, ptr noalias noundef nonnull align 1 %4) unnamed_addr #2 personality ptr @rust_eh_personality !guid !110595 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 20 uses
  %.idx = mul nuw nsw i64 %1, 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %.val2.i = load ptr, ptr %3, align 8, !nonnull !152 ; 12 uses
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val3.i.a = load ptr, ptr %5, align 8
  %.val3.i.fr = freeze ptr %.val3.i.a             ; 7 uses
  %.not.i.i = icmp eq ptr %.val3.i.fr, null
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !152 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val1.i = load ptr, ptr %i.d, align 8
  %.val1.i.fr = freeze ptr %.val1.i               ; 7 uses
  %.not.i5.i = icmp eq ptr %.val1.i.fr, null      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load i16, ptr %i.e, align 8, !range !179 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.k = icmp eq i64 %1, 0                        ; 4 uses
  br i1 %.not.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %.not.i5.i, label %.split.us.split.us.preheader, label %.split.us.split.preheader

.split.us.split.preheader:                        ; preds = %.split.us
  br i1 %i.k, label %.split9.us, label %.lr.ph105

.split.us.split.us.preheader:                     ; preds = %.split.us
  br i1 %i.k, label %.split9.us, label %.lr.ph109

.split.us.split.us:                               ; preds = %bb.b
  %i.l = icmp eq ptr %i.m, %i.b
  br i1 %i.l, label %.split9.us, label %.lr.ph109

.lr.ph109:                                        ; preds = %.split.us.split.us.preheader, %.split.us.split.us
  %.sroa.06.0.us.us108 = phi ptr [ %i.m, %.split.us.split.us ], [ %0, %.split.us.split.us.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.0.us.us108, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !110596)
  %.val.i.i.i.us.us = load i64, ptr %.val2.i, align 8, !noalias !110597, !noundef !152 ; 2 uses
  %i.n = icmp ne i64 %.val.i.i.i.us.us, 0
  call void @llvm.assume(i1 %i.n)
  %i.o = add i64 %.val.i.i.i.us.us, 1             ; 2 uses
  store i64 %i.o, ptr %.val2.i, align 8, !noalias !110597
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.split11.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.us, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.us: ; preds = %.lr.ph109
  %.val.i.i4.i.us.us = load i64, ptr %.val.i, align 8, !noalias !110597, !noundef !152 ; 2 uses
  %i.q = icmp ne i64 %.val.i.i4.i.us.us, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %.val.i.i4.i.us.us, 1            ; 2 uses
  store i64 %i.r, ptr %.val.i, align 8, !noalias !110597
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.split13.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.us, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.us: ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.us
  store ptr %.val2.i, ptr %i.a, align 8, !alias.scope !110596
  store ptr null, ptr %i.g, align 8, !alias.scope !110596
  store ptr %.val.i, ptr %i.h, align 8, !alias.scope !110596
  store ptr null, ptr %i.i, align 8, !alias.scope !110596
  store i16 %i.f, ptr %i.j, align 8, !alias.scope !110596
  %i.t = invoke fastcc noundef align 8 ptr @"_ZN86_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h12d594c67900cadfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.06.0.us.us108, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 1 %4)
          to label %bb.b unwind label %.split17.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.us.us = icmp eq ptr %i.t, null
  br i1 %.not.us.us, label %.split.us.split.us, label %.split9.us

.split.us.split:                                  ; preds = %bb.d
  %i.u = icmp eq ptr %i.v, %i.b
  br i1 %i.u, label %.split9.us, label %.lr.ph105

.lr.ph105:                                        ; preds = %.split.us.split.preheader, %.split.us.split
  %.sroa.06.0.us104 = phi ptr [ %i.v, %.split.us.split ], [ %0, %.split.us.split.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.0.us104, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !110596)
  %.val.i.i.i.us = load i64, ptr %.val2.i, align 8, !noalias !110597, !noundef !152 ; 2 uses
  %i.w = icmp ne i64 %.val.i.i.i.us, 0
  call void @llvm.assume(i1 %i.w)
  %i.x = add i64 %.val.i.i.i.us, 1                ; 2 uses
  store i64 %i.x, ptr %.val2.i, align 8, !noalias !110597
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.split11.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us: ; preds = %.lr.ph105
  %.val.i.i4.i.us = load i64, ptr %.val.i, align 8, !noalias !110597, !noundef !152 ; 2 uses
  %i.z = icmp ne i64 %.val.i.i4.i.us, 0
  call void @llvm.assume(i1 %i.z)
  %i.aa = add i64 %.val.i.i4.i.us, 1              ; 2 uses
  store i64 %i.aa, ptr %.val.i, align 8, !noalias !110597
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.split13.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us: ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us
  %.val.i2.i6.i.us = load i64, ptr %.val1.i.fr, align 8, !noalias !110597, !noundef !152 ; 2 uses
  %i.ac = icmp ne i64 %.val.i2.i6.i.us, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add i64 %.val.i2.i6.i.us, 1             ; 2 uses
  store i64 %i.ad, ptr %.val1.i.fr, align 8, !noalias !110597
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.split15.us, label %bb.c, !prof !154

bb.c:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us
  store ptr %.val2.i, ptr %i.a, align 8, !alias.scope !110596
  store ptr null, ptr %i.g, align 8, !alias.scope !110596
  store ptr %.val.i, ptr %i.h, align 8, !alias.scope !110596
  store ptr %.val1.i.fr, ptr %i.i, align 8, !alias.scope !110596
  store i16 %i.f, ptr %i.j, align 8, !alias.scope !110596
  %i.af = invoke fastcc noundef align 8 ptr @"_ZN86_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h12d594c67900cadfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.06.0.us104, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 1 %4)
          to label %bb.d unwind label %.split17.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.us = icmp eq ptr %i.af, null
  br i1 %.not.us, label %.split.us.split, label %.split9.us

.split:                                           ; preds = %bb.a
  br i1 %.not.i5.i, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  br i1 %i.k, label %.split9.us, label %.lr.ph

.split.split.us.preheader:                        ; preds = %.split
  br i1 %i.k, label %.split9.us, label %.lr.ph101

.split.split.us:                                  ; preds = %bb.e
  %i.ag = icmp eq ptr %i.ah, %i.b
  br i1 %i.ag, label %.split9.us, label %.lr.ph101

.lr.ph101:                                        ; preds = %.split.split.us.preheader, %.split.split.us
  %.sroa.06.0.us21100 = phi ptr [ %i.ah, %.split.split.us ], [ %0, %.split.split.us.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.0.us21100, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !110596)
  %.val.i.i.i.us22 = load i64, ptr %.val2.i, align 8, !noalias !110597, !noundef !152 ; 2 uses
  %i.ai = icmp ne i64 %.val.i.i.i.us22, 0
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add i64 %.val.i.i.i.us22, 1             ; 2 uses
  store i64 %i.aj, ptr %.val2.i, align 8, !noalias !110597
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.split11.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us23, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us23: ; preds = %.lr.ph101
  %.val.i2.i.i.us = load i64, ptr %.val3.i.fr, align 8, !noalias !110597, !noundef !152 ; 2 uses
  %i.al = icmp ne i64 %.val.i2.i.i.us, 0
  call void @llvm.assume(i1 %i.al)
  %i.am = add i64 %.val.i2.i.i.us, 1              ; 2 uses
  store i64 %i.am, ptr %.val3.i.fr, align 8, !noalias !110597
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.split29.us, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.us24", !prof !154

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.us24": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us23
  %.val.i.i4.i.us25 = load i64, ptr %.val.i, align 8, !noalias !110597, !noundef !152 ; 2 uses
  %i.ao = icmp ne i64 %.val.i.i4.i.us25, 0
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add i64 %.val.i.i4.i.us25, 1            ; 2 uses
  store i64 %i.ap, ptr %.val.i, align 8, !noalias !110597
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.split13.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us26, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us26: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.us24"
  store ptr %.val2.i, ptr %i.a, align 8, !alias.scope !110596
  store ptr %.val3.i.fr, ptr %i.g, align 8, !alias.scope !110596
  store ptr %.val.i, ptr %i.h, align 8, !alias.scope !110596
  store ptr null, ptr %i.i, align 8, !alias.scope !110596
  store i16 %i.f, ptr %i.j, align 8, !alias.scope !110596
  %i.ar = invoke fastcc noundef align 8 ptr @"_ZN86_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h12d594c67900cadfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.06.0.us21100, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 1 %4)
          to label %bb.e unwind label %.split17.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.us27 = icmp eq ptr %i.ar, null
  br i1 %.not.us27, label %.split.split.us, label %.split9.us

.split.split:                                     ; preds = %bb.g
  %i.as = icmp eq ptr %i.at, %i.b
  br i1 %i.as, label %.split9.us, label %.lr.ph

.lr.ph:                                           ; preds = %.split.split.preheader, %.split.split
  %.sroa.06.098 = phi ptr [ %i.at, %.split.split ], [ %0, %.split.split.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.06.098, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !110596)
  %.val.i.i.i = load i64, ptr %.val2.i, align 8, !noalias !110597, !noundef !152 ; 2 uses
  %i.au = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.au)
  %i.av = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.av, ptr %.val2.i, align 8, !noalias !110597
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.split11.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i, !prof !154

.split11.us:                                      ; preds = %.lr.ph, %.lr.ph101, %.lr.ph105, %.lr.ph109
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i: ; preds = %.lr.ph
  %.val.i2.i.i = load i64, ptr %.val3.i.fr, align 8, !noalias !110597, !noundef !152 ; 2 uses
  %i.ax = icmp ne i64 %.val.i2.i.i, 0
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.ay, ptr %.val3.i.fr, align 8, !noalias !110597
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.split29.us, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i", !prof !154

.split29.us:                                      ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us23
  call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i
  %.val.i.i4.i = load i64, ptr %.val.i, align 8, !noalias !110597, !noundef !152 ; 2 uses
  %i.ba = icmp ne i64 %.val.i.i4.i, 0
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add i64 %.val.i.i4.i, 1                 ; 2 uses
  store i64 %i.bb, ptr %.val.i, align 8, !noalias !110597
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.split13.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i, !prof !154

.split13.us:                                      ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i", %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.us24", %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.us
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i"
  %.val.i2.i6.i = load i64, ptr %.val1.i.fr, align 8, !noalias !110597, !noundef !152 ; 2 uses
  %i.bd = icmp ne i64 %.val.i2.i6.i, 0
  call void @llvm.assume(i1 %i.bd)
  %i.be = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.be, ptr %.val1.i.fr, align 8, !noalias !110597
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.split15.us, label %bb.f, !prof !154

.split15.us:                                      ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us
  call void @llvm.trap()
  unreachable

.split17.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.us, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us26, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef align 8 dereferenceable(40) %3) #86
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i
  store ptr %.val2.i, ptr %i.a, align 8, !alias.scope !110596
  store ptr %.val3.i.fr, ptr %i.g, align 8, !alias.scope !110596
  store ptr %.val.i, ptr %i.h, align 8, !alias.scope !110596
  store ptr %.val1.i.fr, ptr %i.i, align 8, !alias.scope !110596
  store i16 %i.f, ptr %i.j, align 8, !alias.scope !110596
  %i.bg = invoke fastcc noundef align 8 ptr @"_ZN86_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h12d594c67900cadfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.06.098, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 1 %4)
          to label %bb.g unwind label %.split17.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %.split.split, label %.split9.us

.split9.us:                                       ; preds = %.split.split, %bb.g, %.split.split.us, %bb.e, %.split.us.split, %bb.d, %.split.us.split.us, %bb.b, %.split.split.preheader, %.split.split.us.preheader, %.split.us.split.preheader, %.split.us.split.us.preheader
  %.sroa.0.0 = phi ptr [ %i.t, %bb.b ], [ null, %.split.split.preheader ], [ null, %.split.split.us.preheader ], [ %i.af, %bb.d ], [ null, %.split.us.split.us.preheader ], [ null, %.split.us.split.preheader ], [ %i.ar, %bb.e ], [ null, %.split.us.split.us ], [ null, %.split.us.split ], [ null, %.split.split.us ], [ %i.bg, %bb.g ], [ null, %.split.split ]
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef align 8 dereferenceable(40) %3)
  ret ptr %.sroa.0.0

bb.h:                                             ; preds = %.split17.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.i:                                             ; preds = %.split17.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h326f31a82f993e1cE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !110600 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #83 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h696e24e41d6c07c6E.exit", !prof !154

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #82
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h696e24e41d6c07c6E.exit": ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !152, !align !156, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110601
  invoke fastcc void @"_ZN80_$LT$nickel_lang_core..typecheck..UnifEnumRows$u20$as$u20$core..clone..Clone$GT$5clone17h19f0b909a3828e5cE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !110602

bb.c:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h696e24e41d6c07c6E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !110601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110601
  ret ptr %i.b

bb.d:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h696e24e41d6c07c6E.exit"
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #83
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5364fea233b3b0adE"(ptr nofree readonly captures(address, read_provenance) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !110612 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83
  %i.d = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #83 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h874596c6afb20fa9E.exit", !prof !154

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #82
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h874596c6afb20fa9E.exit": ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !110613
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.0.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1778)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h874596c6afb20fa9E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110613
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1778)
          to label %bb.f unwind label %bb.c, !noalias !110614

bb.c:                                             ; preds = %.noexc
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !110615)
  call void @llvm.experimental.noalias.scope.decl(metadata !110616)
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !range !153, !alias.scope !110617, !noalias !110613, !noundef !152 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !110617, !noalias !110613, !nonnull !152, !noundef !152
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !110618
  br label %bb.g

bb.e:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h874596c6afb20fa9E.exit"
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !110619
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !110619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !110620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.d

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 48, i64 noundef 8) #83
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h58e2e0a5d09563fbE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !110627 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.01 = alloca [88 x i8], align 8           ; 6 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #83 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3de022a7a1ab9582E.exit", !prof !154

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #82
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3de022a7a1ab9582E.exit": ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !152, !align !156, !noundef !152 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110629)
  %i.e = load i64, ptr %i.d, align 8, !range !165, !alias.scope !110629, !noundef !152
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 17)
  switch i64 %i.f, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

default.unreachable:                              ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3de022a7a1ab9582E.exit"
  unreachable

bb.c:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3de022a7a1ab9582E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110630
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6fff9f3e77e521c1E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d)
          to label %.noexc unwind label %bb.g, !inline_history !110624

.noexc:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.h = load <2 x i16>, ptr %i.g, align 8, !alias.scope !110629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !110629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110630
  br label %bb.f

bb.d:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3de022a7a1ab9582E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !alias.scope !110630
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.i = load <2 x i16>, ptr %.sroa.6.0..sroa_idx4, align 8, !alias.scope !110630
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %.sroa.8.0.copyload13 = load i32, ptr %.sroa.8.0..sroa_idx12, align 4, !alias.scope !110630
  br label %bb.f

bb.e:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3de022a7a1ab9582E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !alias.scope !110630
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.j = load <2 x i16>, ptr %.sroa.6.0..sroa_idx2, align 8, !alias.scope !110630
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %.sroa.8.0.copyload11 = load i32, ptr %.sroa.8.0..sroa_idx10, align 4, !alias.scope !110630
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d, %bb.e
  %.sroa.8.0 = phi i32 [ undef, %.noexc ], [ %.sroa.8.0.copyload13, %bb.d ], [ %.sroa.8.0.copyload11, %bb.e ]
  %i.k = phi <2 x i16> [ %i.h, %.noexc ], [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.01, i64 88, i1 false), !noalias !110631
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store <2 x i16> %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !110631
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4, !noalias !110631
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  ret ptr %i.b

bb.g:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 96, i64 noundef 8) #83
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5c1d81105ed0a8a1E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !110634 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #83 ; 4 uses
end_hunk_1
begin_hunk_2_@"_ZN91_$LT$nickel_lang_parser..typ..EnumRowsF$LT$Ty$C$ERows$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h593f4cfc50f8446dE":bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #82
          to label %.noexc3 unwind label %bb.l

.noexc3:                                          ; preds = %bb.j
  unreachable

.noexc:                                           ; preds = %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6460a90e11ec48c1E.exit"
  %i.s = load ptr, ptr %i.h, align 8, !alias.scope !120356, !nonnull !152, !align !156, !noundef !152
  invoke fastcc void @"_ZN51_$LT$T$u20$as$u20$core..clone..uninit..CopySpec$GT$9clone_one17h7991c88121a59374E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noundef %i.q)
          to label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5c1d81105ed0a8a1E.exit" unwind label %bb.k, !noalias !120356, !inline_history !120357

bb.k:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef 40, i64 noundef 8) #83, !noalias !120356
  br label %.body

bb.l:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.t, %bb.k ]
  invoke void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_parser..typ..EnumRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$$GT$17h8736b92fdf3a402cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #86
          to label %common.resume unwind label %bb.m

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5c1d81105ed0a8a1E.exit": ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.q, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.m:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h0f844d9673d9b706E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 4, 14) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 !guid !120384 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [6 x i8], align 4                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120386)
  %i.c = tail call fastcc noundef align 8 ptr @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h90fef8e4658ab790E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 4, 14) %2), !noalias !120386 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h576f23f8e7c8a2c2E.exit

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !120385, !nonnull !152, !align !156, !noundef !152 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120387)
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !120388, !nonnull !152, !align !170, !noundef !152
  %i.d = getelementptr i8, ptr %.val.i, i64 8     ; 2 uses
  %.val10.i.i = load ptr, ptr %i.d, align 8, !noalias !120388, !nonnull !152, !align !156, !noundef !152
  %i.e = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !152, !noalias !120389, !nonnull !152
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 1 %.val.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @250, i64 noundef 1), !noalias !120388, !inline_history !120365 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !161

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hc09343b38919bb56E(ptr noundef nonnull %i.g), !noalias !120388
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h576f23f8e7c8a2c2E.exit

bb.d:                                             ; preds = %bb.b
  %.val11.i.i = load ptr, ptr %.val.i, align 8, !noalias !120388 ; 9 uses
  %.val12.i.i = load ptr, ptr %i.d, align 8, !noalias !120388 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120390)
  %i.i = load i64, ptr %3, align 8, !range !175, !alias.scope !120391, !noundef !152
  %.not.i.i.i = icmp eq i64 %i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val4.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !120391, !nonnull !152, !noundef !152
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val5.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !120391, !noundef !152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120393)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i), "nonnull"(ptr %.val12.i.i) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !152, !noalias !120394, !nonnull !152 ; 6 uses
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 1 %.val11.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @243, i64 noundef 1), !noalias !120395, !inline_history !120374 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.thread.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120396)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  br label %.outer.i.i.i.i.i.i.i.i

.outer.i.i.i.i.i.i.i.i:                           ; preds = %_ZN10serde_json3ser9Formatter17write_char_escape17hc70835f3936a2c18E.exit.i.i.i.i.i.i.i.i, %bb.f
  %.sroa.8.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %_ZN10serde_json3ser9Formatter17write_char_escape17hc70835f3936a2c18E.exit.i.i.i.i.i.i.i.i ], [ %.val5.i.i.i, %bb.f ] ; 4 uses
  %.sroa.01.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %_ZN10serde_json3ser9Formatter17write_char_escape17hc70835f3936a2c18E.exit.i.i.i.i.i.i.i.i ], [ %.val4.i.i.i, %bb.f ] ; 4 uses
  %cond = icmp eq i64 %.sroa.8.0.ph.i.i.i.i.i.i.i.i, 0
  br i1 %cond, label %_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.i.i.i.i.i.i, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.r = add nuw i64 %.sroa.06.0.i.i.i.i.i.i.i.i27, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.r, %.sroa.8.0.ph.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser27format_escaped_str_contents17hb8af8668b143c079E.exit.i.i.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.outer.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.06.0.i.i.i.i.i.i.i.i27 = phi i64 [ %i.r, %bb.g ], [ 0, %.outer.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.ph.i.i.i.i.i.i.i.i, i64 %.sroa.06.0.i.i.i.i.i.i.i.i27
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !120397, !noalias !120398, !noundef !152 ; 3 uses
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser6ESCAPE17ha3ad2f1fcf1da730E, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !120399, !noundef !152 ; 3 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.01.0.ph.i.i.i.i.i.i.i.i, i64 %.sroa.06.0.i.i.i.i.i.i.i.i27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = xor i64 %.sroa.06.0.i.i.i.i.i.i.i.i27, -1
  %i.ab = add i64 %.sroa.8.0.ph.i.i.i.i.i.i.i.i, %i.aa
  %i.ac = icmp eq i64 %.sroa.06.0.i.i.i.i.i.i.i.i27, 0
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call noundef ptr %i.m(ptr noundef nonnull align 1 %.val11.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0.ph.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.sroa.06.0.i.i.i.i.i.i.i.i27), !noalias !120398, !inline_history !120378 ; 2 uses
  %.not21.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not21.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.thread.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = icmp eq i8 %i.w, 117
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !120399
  %i.af = and i8 %i.t, 15
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = lshr i8 %i.t, 4
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17h9242e0b579b8e52aE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !120399, !noundef !152
  %i.al = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17h9242e0b579b8e52aE, i64 %i.ag
  %i.am = load i8, ptr %i.al, align 1, !noalias !120399, !noundef !152
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4, !noalias !120399
  store i8 %i.ak, ptr %i.p, align 4, !noalias !120399
  store i8 %i.am, ptr %i.q, align 1, !noalias !120399
  %i.an = call noundef ptr %i.m(ptr noundef nonnull align 1 %.val11.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 6), !noalias !120398, !inline_history !120379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !120399
  br label %_ZN10serde_json3ser9Formatter17write_char_escape17hc70835f3936a2c18E.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120399
  store i8 92, ptr %i.a, align 1, !noalias !120399
  store i8 %i.w, ptr %i.o, align 1, !noalias !120399
  %i.ao = call noundef ptr %i.m(ptr noundef nonnull align 1 %.val11.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 2), !noalias !120398, !inline_history !120379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120399
  br label %_ZN10serde_json3ser9Formatter17write_char_escape17hc70835f3936a2c18E.exit.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter17write_char_escape17hc70835f3936a2c18E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.l ], [ %i.an, %bb.k ] ; 2 uses
  %.not22.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.02.0.i.i.i.i.i.i.i.i.i, null
  br i1 %.not22.i.i.i.i.i.i.i.i, label %.outer.i.i.i.i.i.i.i.i, label %_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.thread.i.i.i.i.i.i

_ZN10serde_json3ser27format_escaped_str_contents17hb8af8668b143c079E.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ap = call noundef ptr %i.m(ptr noundef nonnull align 1 %.val11.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0.ph.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.sroa.8.0.ph.i.i.i.i.i.i.i.i), !noalias !120398, !inline_history !120378 ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.i.i.i.i.i.i, label %_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.thread.i.i.i.i.i.i

_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.i.i.i.i.i.i: ; preds = %.outer.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser27format_escaped_str_contents17hb8af8668b143c079E.exit.i.i.i.i.i.i.i
  %i.aq = call noundef ptr %i.m(ptr noundef nonnull align 1 %.val11.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @243, i64 noundef 1), !noalias !120398, !inline_history !120380 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h576f23f8e7c8a2c2E.exit, label %_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.thread.i.i.i.i.i.i, !prof !225

_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.thread.i.i.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter17write_char_escape17hc70835f3936a2c18E.exit.i.i.i.i.i.i.i.i, %bb.i, %_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.i.i.i.i.i.i, %_ZN10serde_json3ser27format_escaped_str_contents17hb8af8668b143c079E.exit.i.i.i.i.i.i.i, %bb.e
  %.sroa.0.0.i3.i.i.i.i.i.i = phi ptr [ %i.aq, %_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.i.i.i.i.i.i ], [ %i.ap, %_ZN10serde_json3ser27format_escaped_str_contents17hb8af8668b143c079E.exit.i.i.i.i.i.i.i ], [ %i.n, %bb.e ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter17write_char_escape17hc70835f3936a2c18E.exit.i.i.i.i.i.i.i.i ], [ %i.ad, %bb.i ]
  %i.ar = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hc09343b38919bb56E(ptr noundef nonnull %.sroa.0.0.i3.i.i.i.i.i.i), !noalias !120398
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h576f23f8e7c8a2c2E.exit

bb.m:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i), "nonnull"(ptr %.val12.i.i) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !152, !noalias !120400, !nonnull !152
  %i.au = tail call noundef ptr %i.at(ptr noundef nonnull align 1 %.val11.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @246, i64 noundef 4), !noalias !120398, !inline_history !120383 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h576f23f8e7c8a2c2E.exit, label %bb.n, !prof !161

bb.n:                                             ; preds = %bb.m
  %i.av = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hc09343b38919bb56E(ptr noundef nonnull %i.au), !noalias !120398
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h576f23f8e7c8a2c2E.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17h576f23f8e7c8a2c2E.exit: ; preds = %bb.a, %bb.c, %_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.i.i.i.i.i.i, %_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.thread.i.i.i.i.i.i, %bb.m, %bb.n
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.a ], [ %i.h, %bb.c ], [ %i.ar, %_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.thread.i.i.i.i.i.i ], [ %i.av, %bb.n ], [ null, %_ZN10serde_json3ser18format_escaped_str17hba3117d1d7255011E.exit.i.i.i.i.i.i ], [ null, %bb.m ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17ha66a9845551de8dfE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias noundef nonnull align 1 %3) unnamed_addr #2 personality ptr @rust_eh_personality !guid !120413 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 20 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 20 uses
  %.val2.i = load ptr, ptr %2, align 8, !nonnull !152 ; 24 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3.i.a = load ptr, ptr %4, align 8
  %.val3.i.fr = freeze ptr %.val3.i.a             ; 13 uses
  %.not.i.i = icmp eq ptr %.val3.i.fr, null       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val.i = load ptr, ptr %i.d, align 8, !nonnull !152 ; 24 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val1.i = load ptr, ptr %i.e, align 8
  %.val1.i.fr = freeze ptr %.val1.i               ; 13 uses
  %.not.i5.i = icmp eq ptr %.val1.i.fr, null      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load i16, ptr %i.f, align 8, !range !179 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  br i1 %.not.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %.not.i5.i, label %tailrecurse.us.us, label %tailrecurse.us

tailrecurse.us.us:                                ; preds = %.split.us, %tailrecurse.backedge.us.us
  %.tr.us.us = phi ptr [ %.tr.be.us.us, %tailrecurse.backedge.us.us ], [ %0, %.split.us ] ; 5 uses
  %i.l = load i64, ptr %.tr.us.us, align 8, !range !163, !noundef !152 ; 3 uses
  %i.m = icmp ne i64 %i.l, 12
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nsw i64 %i.l, -3
  %i.o = icmp samesign ugt i64 %i.l, 2
  %i.p = select i1 %i.o, i64 %i.n, i64 9
  switch i64 %i.p, label %.split24.us [
    i64 0, label %.split26.us
    i64 1, label %.split26.us
    i64 2, label %.split26.us
    i64 3, label %.split26.us
    i64 4, label %.split26.us
    i64 5, label %.split26.us
    i64 6, label %.split28.us
    i64 7, label %bb.c
    i64 8, label %.split26.us
    i64 9, label %bb.b
    i64 10, label %.split26.us
    i64 11, label %.split30.us
    i64 12, label %tailrecurse.backedge.us.us
    i64 13, label %tailrecurse.backedge.us.us
    i64 14, label %.split26.us
  ]

bb.b:                                             ; preds = %tailrecurse.us.us
  br label %tailrecurse.backedge.us.us

bb.c:                                             ; preds = %tailrecurse.us.us
  %i.q = getelementptr inbounds nuw i8, ptr %.tr.us.us, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !152, !align !156, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120414)
  %.val.i.i.i.us.us = load i64, ptr %.val2.i, align 8, !noalias !120415, !noundef !152 ; 2 uses
  %i.s = icmp ne i64 %.val.i.i.i.us.us, 0
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add i64 %.val.i.i.i.us.us, 1             ; 2 uses
  store i64 %i.t, ptr %.val2.i, align 8, !noalias !120415
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.split33.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.us, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.us: ; preds = %bb.c
  %.val.i.i4.i.us.us = load i64, ptr %.val.i, align 8, !noalias !120415, !noundef !152 ; 2 uses
  %i.v = icmp ne i64 %.val.i.i4.i.us.us, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add i64 %.val.i.i4.i.us.us, 1            ; 2 uses
  store i64 %i.w, ptr %.val.i, align 8, !noalias !120415
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.split35.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.us, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.us: ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.us
  store ptr %.val2.i, ptr %i.c, align 8, !alias.scope !120414
  store ptr null, ptr %i.h, align 8, !alias.scope !120414
  store ptr %.val.i, ptr %i.i, align 8, !alias.scope !120414
  store ptr null, ptr %i.j, align 8, !alias.scope !120414
  store i16 %i.g, ptr %i.k, align 8, !alias.scope !120414
  %i.y = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17ha66a9845551de8dfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.r, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 1 %3)
          to label %bb.d unwind label %.split39.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.us.us = icmp eq ptr %i.y, null
  br i1 %.not.us.us, label %tailrecurse.backedge.us.us, label %.split42.us

tailrecurse.backedge.us.us:                       ; preds = %bb.d, %tailrecurse.us.us, %tailrecurse.us.us, %bb.b
  %.sink = phi i64 [ 8, %tailrecurse.us.us ], [ 56, %bb.b ], [ 8, %tailrecurse.us.us ], [ 16, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %.tr.us.us, i64 %.sink
  %.tr.be.us.us = load ptr, ptr %i.z, align 8, !nonnull !152, !align !156, !noundef !152
  br label %tailrecurse.us.us

tailrecurse.us:                                   ; preds = %.split.us, %tailrecurse.backedge.us
  %.tr.us = phi ptr [ %.tr.be.us, %tailrecurse.backedge.us ], [ %0, %.split.us ] ; 5 uses
  %i.aa = load i64, ptr %.tr.us, align 8, !range !163, !noundef !152 ; 3 uses
  %i.ab = icmp ne i64 %i.aa, 12
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nsw i64 %i.aa, -3
  %i.ad = icmp samesign ugt i64 %i.aa, 2
  %i.ae = select i1 %i.ad, i64 %i.ac, i64 9
  switch i64 %i.ae, label %.split24.us [
    i64 0, label %.split26.us
    i64 1, label %.split26.us
    i64 2, label %.split26.us
    i64 3, label %.split26.us
    i64 4, label %.split26.us
    i64 5, label %.split26.us
    i64 6, label %.split28.us
    i64 7, label %bb.f
    i64 8, label %.split26.us
    i64 9, label %bb.e
    i64 10, label %.split26.us
    i64 11, label %.split30.us
    i64 12, label %tailrecurse.backedge.us
    i64 13, label %tailrecurse.backedge.us
    i64 14, label %.split26.us
  ]

bb.e:                                             ; preds = %tailrecurse.us
  br label %tailrecurse.backedge.us

bb.f:                                             ; preds = %tailrecurse.us
  %i.af = getelementptr inbounds nuw i8, ptr %.tr.us, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !152, !align !156, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120414)
  %.val.i.i.i.us = load i64, ptr %.val2.i, align 8, !noalias !120415, !noundef !152 ; 2 uses
  %i.ah = icmp ne i64 %.val.i.i.i.us, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = add i64 %.val.i.i.i.us, 1               ; 2 uses
  store i64 %i.ai, ptr %.val2.i, align 8, !noalias !120415
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.split33.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us: ; preds = %bb.f
  %.val.i.i4.i.us = load i64, ptr %.val.i, align 8, !noalias !120415, !noundef !152 ; 2 uses
  %i.ak = icmp ne i64 %.val.i.i4.i.us, 0
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %.val.i.i4.i.us, 1              ; 2 uses
  store i64 %i.al, ptr %.val.i, align 8, !noalias !120415
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %.split35.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us: ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us
  %.val.i2.i6.i.us = load i64, ptr %.val1.i.fr, align 8, !noalias !120415, !noundef !152 ; 2 uses
  %i.an = icmp ne i64 %.val.i2.i6.i.us, 0
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add i64 %.val.i2.i6.i.us, 1             ; 2 uses
  store i64 %i.ao, ptr %.val1.i.fr, align 8, !noalias !120415
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.split37.us, label %bb.g, !prof !154

bb.g:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us
  store ptr %.val2.i, ptr %i.c, align 8, !alias.scope !120414
  store ptr null, ptr %i.h, align 8, !alias.scope !120414
  store ptr %.val.i, ptr %i.i, align 8, !alias.scope !120414
  store ptr %.val1.i.fr, ptr %i.j, align 8, !alias.scope !120414
  store i16 %i.g, ptr %i.k, align 8, !alias.scope !120414
  %i.aq = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17ha66a9845551de8dfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ag, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 1 %3)
          to label %bb.h unwind label %.split39.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.us = icmp eq ptr %i.aq, null
  br i1 %.not.us, label %tailrecurse.backedge.us, label %.split42.us

tailrecurse.backedge.us:                          ; preds = %bb.h, %tailrecurse.us, %tailrecurse.us, %bb.e
  %.sink194 = phi i64 [ 8, %tailrecurse.us ], [ 56, %bb.e ], [ 8, %tailrecurse.us ], [ 16, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr.us, i64 %.sink194
  %.tr.be.us = load ptr, ptr %i.ar, align 8, !nonnull !152, !align !156, !noundef !152
  br label %tailrecurse.us

.split:                                           ; preds = %bb.a
  br i1 %.not.i5.i, label %tailrecurse.us44, label %tailrecurse

tailrecurse.us44:                                 ; preds = %.split, %tailrecurse.backedge.us53
  %.tr.us45 = phi ptr [ %.tr.be.us54, %tailrecurse.backedge.us53 ], [ %0, %.split ] ; 5 uses
  %i.as = load i64, ptr %.tr.us45, align 8, !range !163, !noundef !152 ; 3 uses
  %i.at = icmp ne i64 %i.as, 12
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add nsw i64 %i.as, -3
  %i.av = icmp samesign ugt i64 %i.as, 2
  %i.aw = select i1 %i.av, i64 %i.au, i64 9
  switch i64 %i.aw, label %.split24.us [
    i64 0, label %.split26.us
    i64 1, label %.split26.us
    i64 2, label %.split26.us
    i64 3, label %.split26.us
    i64 4, label %.split26.us
    i64 5, label %.split26.us
    i64 6, label %.split28.us
    i64 7, label %bb.j
    i64 8, label %.split26.us
    i64 9, label %bb.i
    i64 10, label %.split26.us
    i64 11, label %.split30.us
    i64 12, label %tailrecurse.backedge.us53
    i64 13, label %tailrecurse.backedge.us53
    i64 14, label %.split26.us
  ]

bb.i:                                             ; preds = %tailrecurse.us44
  br label %tailrecurse.backedge.us53

bb.j:                                             ; preds = %tailrecurse.us44
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr.us45, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !152, !align !156, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120414)
  %.val.i.i.i.us47 = load i64, ptr %.val2.i, align 8, !noalias !120415, !noundef !152 ; 2 uses
  %i.az = icmp ne i64 %.val.i.i.i.us47, 0
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add i64 %.val.i.i.i.us47, 1             ; 2 uses
  store i64 %i.ba, ptr %.val2.i, align 8, !noalias !120415
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.split33.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us48, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us48: ; preds = %bb.j
  %.val.i2.i.i.us = load i64, ptr %.val3.i.fr, align 8, !noalias !120415, !noundef !152 ; 2 uses
  %i.bc = icmp ne i64 %.val.i2.i.i.us, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add i64 %.val.i2.i.i.us, 1              ; 2 uses
  store i64 %i.bd, ptr %.val3.i.fr, align 8, !noalias !120415
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.split60.us, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.us49", !prof !154

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.us49": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us48
  %.val.i.i4.i.us50 = load i64, ptr %.val.i, align 8, !noalias !120415, !noundef !152 ; 2 uses
  %i.bf = icmp ne i64 %.val.i.i4.i.us50, 0
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = add i64 %.val.i.i4.i.us50, 1            ; 2 uses
  store i64 %i.bg, ptr %.val.i, align 8, !noalias !120415
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.split35.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us51, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us51: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.us49"
  store ptr %.val2.i, ptr %i.c, align 8, !alias.scope !120414
  store ptr %.val3.i.fr, ptr %i.h, align 8, !alias.scope !120414
  store ptr %.val.i, ptr %i.i, align 8, !alias.scope !120414
  store ptr null, ptr %i.j, align 8, !alias.scope !120414
  store i16 %i.g, ptr %i.k, align 8, !alias.scope !120414
  %i.bi = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17ha66a9845551de8dfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ay, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 1 %3)
          to label %bb.k unwind label %.split39.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.us52 = icmp eq ptr %i.bi, null
  br i1 %.not.us52, label %tailrecurse.backedge.us53, label %.split42.us

tailrecurse.backedge.us53:                        ; preds = %bb.k, %tailrecurse.us44, %tailrecurse.us44, %bb.i
  %.sink195 = phi i64 [ 8, %tailrecurse.us44 ], [ 56, %bb.i ], [ 8, %tailrecurse.us44 ], [ 16, %bb.k ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr.us45, i64 %.sink195
  %.tr.be.us54 = load ptr, ptr %i.bj, align 8, !nonnull !152, !align !156, !noundef !152
  br label %tailrecurse.us44

tailrecurse:                                      ; preds = %.split, %tailrecurse.backedge
  %.tr = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %.split ] ; 5 uses
  %i.bk = load i64, ptr %.tr, align 8, !range !163, !noundef !152 ; 3 uses
  %i.bl = icmp ne i64 %i.bk, 12
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add nsw i64 %i.bk, -3
  %i.bn = icmp samesign ugt i64 %i.bk, 2
  %i.bo = select i1 %i.bn, i64 %i.bm, i64 9
  switch i64 %i.bo, label %.split24.us [
    i64 0, label %.split26.us
    i64 1, label %.split26.us
    i64 2, label %.split26.us
    i64 3, label %.split26.us
    i64 4, label %.split26.us
    i64 5, label %.split26.us
    i64 6, label %.split28.us
    i64 7, label %bb.l
    i64 8, label %.split26.us
    i64 9, label %tailrecurse.backedge
    i64 10, label %.split26.us
    i64 11, label %.split30.us
    i64 12, label %bb.x
    i64 13, label %bb.x
    i64 14, label %.split26.us
  ]

.split24.us:                                      ; preds = %tailrecurse, %tailrecurse.us44, %tailrecurse.us, %tailrecurse.us.us
  unreachable

.split28.us:                                      ; preds = %tailrecurse, %tailrecurse.us44, %tailrecurse.us, %tailrecurse.us.us
  %.us-phi = phi ptr [ %.tr.us45, %tailrecurse.us44 ], [ %.tr.us, %tailrecurse.us ], [ %.tr.us.us, %tailrecurse.us.us ], [ %.tr, %tailrecurse ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !152, !align !156, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.br = call fastcc noundef align 8 ptr @"_ZN86_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h12d594c67900cadfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bq, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 1 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.y

bb.l:                                             ; preds = %tailrecurse
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !152, !align !156, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120414)
  %.val.i.i.i = load i64, ptr %.val2.i, align 8, !noalias !120415, !noundef !152 ; 2 uses
  %i.bu = icmp ne i64 %.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.bv, ptr %.val2.i, align 8, !noalias !120415
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.split33.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i, !prof !154

.split33.us:                                      ; preds = %bb.l, %bb.j, %bb.f, %bb.c
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i: ; preds = %bb.l
  %.val.i2.i.i = load i64, ptr %.val3.i.fr, align 8, !noalias !120415, !noundef !152 ; 2 uses
  %i.bx = icmp ne i64 %.val.i2.i.i, 0
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.by, ptr %.val3.i.fr, align 8, !noalias !120415
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.split60.us, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i", !prof !154

.split60.us:                                      ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us48
  tail call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i
  %.val.i.i4.i = load i64, ptr %.val.i, align 8, !noalias !120415, !noundef !152 ; 2 uses
  %i.ca = icmp ne i64 %.val.i.i4.i, 0
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = add i64 %.val.i.i4.i, 1                 ; 2 uses
  store i64 %i.cb, ptr %.val.i, align 8, !noalias !120415
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %.split35.us, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i, !prof !154

.split35.us:                                      ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i", %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.us49", %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.us
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i"
  %.val.i2.i6.i = load i64, ptr %.val1.i.fr, align 8, !noalias !120415, !noundef !152 ; 2 uses
  %i.cd = icmp ne i64 %.val.i2.i6.i, 0
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.ce, ptr %.val1.i.fr, align 8, !noalias !120415
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.split37.us, label %bb.z, !prof !154

.split37.us:                                      ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us
  tail call void @llvm.trap()
  unreachable

.split30.us:                                      ; preds = %tailrecurse, %tailrecurse.us44, %tailrecurse.us, %tailrecurse.us.us
  %.us-phi31 = phi ptr [ %.tr.us45, %tailrecurse.us44 ], [ %.tr.us, %tailrecurse.us ], [ %.tr.us.us, %tailrecurse.us.us ], [ %.tr, %tailrecurse ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.us-phi31, i64 8 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  br i1 %.not.i.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %.split30.us
  br i1 %.not.i5.i, label %tailrecurse.us.us.i, label %tailrecurse.us.i

tailrecurse.us.us.i:                              ; preds = %.split.us.i, %bb.n
  %.tr.us.us.i = phi ptr [ %i.cq, %bb.n ], [ %i.cg, %.split.us.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr.us.us.i, i64 8
  %i.cm = load i32, ptr %i.cl, align 8, !range !169, !noalias !120416, !noundef !152 ; 2 uses
  %i.cn = icmp ne i32 %i.cm, 4
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = icmp samesign ult i32 %i.cm, 3
  br i1 %i.co, label %bb.m, label %"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h5ea26f65a1dab92aE.exit"

bb.m:                                             ; preds = %tailrecurse.us.us.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr.us.us.i, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !120416, !nonnull !152, !align !156, !noundef !152
  %i.cr = load ptr, ptr %.tr.us.us.i, align 8, !noalias !120416, !nonnull !152, !align !156, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120418)
  %.val.i.i.i.us.us.i = load i64, ptr %.val2.i, align 8, !noalias !120419, !noundef !152 ; 2 uses
  %i.cs = icmp ne i64 %.val.i.i.i.us.us.i, 0
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = add i64 %.val.i.i.i.us.us.i, 1          ; 2 uses
  store i64 %i.ct, ptr %.val2.i, align 8, !noalias !120419
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.split14.us.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.us.i, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.us.i: ; preds = %bb.m
  %.val.i.i4.i.us.us.i = load i64, ptr %.val.i, align 8, !noalias !120419, !noundef !152 ; 2 uses
  %i.cv = icmp ne i64 %.val.i.i4.i.us.us.i, 0
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = add i64 %.val.i.i4.i.us.us.i, 1         ; 2 uses
  store i64 %i.cw, ptr %.val.i, align 8, !noalias !120419
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.split16.us.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.us.i, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.us.i: ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.us.i
  store ptr %.val2.i, ptr %i.a, align 8, !alias.scope !120418, !noalias !120417
  store ptr null, ptr %i.ch, align 8, !alias.scope !120418, !noalias !120417
  store ptr %.val.i, ptr %i.ci, align 8, !alias.scope !120418, !noalias !120417
  store ptr null, ptr %i.cj, align 8, !alias.scope !120418, !noalias !120417
  store i16 %i.g, ptr %i.ck, align 8, !alias.scope !120418, !noalias !120417
  %i.cy = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17ha66a9845551de8dfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cr, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 1 %3)
          to label %bb.n unwind label %.split20.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !120420, !inline_history !120412 ; 2 uses

bb.n:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120417
  %.not.us.us.i = icmp eq ptr %i.cy, null
  br i1 %.not.us.us.i, label %tailrecurse.us.us.i, label %"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h5ea26f65a1dab92aE.exit"

tailrecurse.us.i:                                 ; preds = %.split.us.i, %bb.q
  %.tr.us.i = phi ptr [ %i.de, %bb.q ], [ %i.cg, %.split.us.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.tr.us.i, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !range !169, !noalias !120416, !noundef !152 ; 2 uses
  %i.db = icmp ne i32 %i.da, 4
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = icmp samesign ult i32 %i.da, 3
  br i1 %i.dc, label %bb.o, label %"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h5ea26f65a1dab92aE.exit"

bb.o:                                             ; preds = %tailrecurse.us.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr.us.i, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !120416, !nonnull !152, !align !156, !noundef !152
  %i.df = load ptr, ptr %.tr.us.i, align 8, !noalias !120416, !nonnull !152, !align !156, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120418)
  %.val.i.i.i.us.i = load i64, ptr %.val2.i, align 8, !noalias !120419, !noundef !152 ; 2 uses
  %i.dg = icmp ne i64 %.val.i.i.i.us.i, 0
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = add i64 %.val.i.i.i.us.i, 1             ; 2 uses
  store i64 %i.dh, ptr %.val2.i, align 8, !noalias !120419
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %.split14.us.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.i, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.i: ; preds = %bb.o
  %.val.i.i4.i.us.i = load i64, ptr %.val.i, align 8, !noalias !120419, !noundef !152 ; 2 uses
  %i.dj = icmp ne i64 %.val.i.i4.i.us.i, 0
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = add i64 %.val.i.i4.i.us.i, 1            ; 2 uses
  store i64 %i.dk, ptr %.val.i, align 8, !noalias !120419
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %.split16.us.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.i, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.i: ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.i
  %.val.i2.i6.i.us.i = load i64, ptr %.val1.i.fr, align 8, !noalias !120421, !noundef !152 ; 2 uses
  %i.dm = icmp ne i64 %.val.i2.i6.i.us.i, 0
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = add i64 %.val.i2.i6.i.us.i, 1           ; 2 uses
  store i64 %i.dn, ptr %.val1.i.fr, align 8, !noalias !120421
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.split18.us.i, label %bb.p, !prof !154

bb.p:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.i
  store ptr %.val2.i, ptr %i.a, align 8, !alias.scope !120418, !noalias !120417
  store ptr null, ptr %i.ch, align 8, !alias.scope !120418, !noalias !120417
  store ptr %.val.i, ptr %i.ci, align 8, !alias.scope !120418, !noalias !120417
  store ptr %.val1.i.fr, ptr %i.cj, align 8, !alias.scope !120418, !noalias !120417
  store i16 %i.g, ptr %i.ck, align 8, !alias.scope !120418, !noalias !120417
  %i.dp = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17ha66a9845551de8dfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.df, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 1 %3)
          to label %bb.q unwind label %.split20.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !120420, !inline_history !120412 ; 2 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120417
  %.not.us.i = icmp eq ptr %i.dp, null
  br i1 %.not.us.i, label %tailrecurse.us.i, label %"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h5ea26f65a1dab92aE.exit"

.split.i:                                         ; preds = %.split30.us
  br i1 %.not.i5.i, label %tailrecurse.us24.i, label %tailrecurse.i

tailrecurse.us24.i:                               ; preds = %.split.i, %bb.s
  %.tr.us25.i = phi ptr [ %i.dv, %bb.s ], [ %i.cg, %.split.i ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.tr.us25.i, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !range !169, !noalias !120416, !noundef !152 ; 2 uses
  %i.ds = icmp ne i32 %i.dr, 4
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp samesign ult i32 %i.dr, 3
  br i1 %i.dt, label %bb.r, label %"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h5ea26f65a1dab92aE.exit"

bb.r:                                             ; preds = %tailrecurse.us24.i
  %i.du = getelementptr inbounds nuw i8, ptr %.tr.us25.i, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !120416, !nonnull !152, !align !156, !noundef !152
  %i.dw = load ptr, ptr %.tr.us25.i, align 8, !noalias !120416, !nonnull !152, !align !156, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120418)
  %.val.i.i.i.us26.i = load i64, ptr %.val2.i, align 8, !noalias !120419, !noundef !152 ; 2 uses
  %i.dx = icmp ne i64 %.val.i.i.i.us26.i, 0
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = add i64 %.val.i.i.i.us26.i, 1           ; 2 uses
  store i64 %i.dy, ptr %.val2.i, align 8, !noalias !120419
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %.split14.us.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us27.i, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us27.i: ; preds = %bb.r
  %.val.i2.i.i.us.i = load i64, ptr %.val3.i.fr, align 8, !noalias !120421, !noundef !152 ; 2 uses
  %i.ea = icmp ne i64 %.val.i2.i.i.us.i, 0
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = add i64 %.val.i2.i.i.us.i, 1            ; 2 uses
  store i64 %i.eb, ptr %.val3.i.fr, align 8, !noalias !120421
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %.split33.us.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.us28.i", !prof !154

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.us28.i": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us27.i
  %.val.i.i4.i.us29.i = load i64, ptr %.val.i, align 8, !noalias !120419, !noundef !152 ; 2 uses
  %i.ed = icmp ne i64 %.val.i.i4.i.us29.i, 0
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = add i64 %.val.i.i4.i.us29.i, 1          ; 2 uses
  store i64 %i.ee, ptr %.val.i, align 8, !noalias !120419
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.split16.us.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us30.i, !prof !154

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us30.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.us28.i"
  store ptr %.val2.i, ptr %i.a, align 8, !alias.scope !120418, !noalias !120417
  store ptr %.val3.i.fr, ptr %i.ch, align 8, !alias.scope !120418, !noalias !120417
  store ptr %.val.i, ptr %i.ci, align 8, !alias.scope !120418, !noalias !120417
  store ptr null, ptr %i.cj, align 8, !alias.scope !120418, !noalias !120417
  store i16 %i.g, ptr %i.ck, align 8, !alias.scope !120418, !noalias !120417
  %i.eg = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17ha66a9845551de8dfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.dw, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 1 %3)
          to label %bb.s unwind label %.split20.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !120420, !inline_history !120412 ; 2 uses

bb.s:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120417
  %.not.us31.i = icmp eq ptr %i.eg, null
  br i1 %.not.us31.i, label %tailrecurse.us24.i, label %"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h5ea26f65a1dab92aE.exit"

tailrecurse.i:                                    ; preds = %.split.i, %bb.v
  %.tr.i = phi ptr [ %i.em, %bb.v ], [ %i.cg, %.split.i ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.tr.i, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !range !169, !noalias !120416, !noundef !152 ; 2 uses
  %i.ej = icmp ne i32 %i.ei, 4
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp samesign ult i32 %i.ei, 3
  br i1 %i.ek, label %bb.t, label %"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h5ea26f65a1dab92aE.exit"

bb.t:                                             ; preds = %tailrecurse.i
  %i.el = getelementptr inbounds nuw i8, ptr %.tr.i, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !noalias !120416, !nonnull !152, !align !156, !noundef !152
  %i.en = load ptr, ptr %.tr.i, align 8, !noalias !120416, !nonnull !152, !align !156, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120418)
  %.val.i.i.i.i = load i64, ptr %.val2.i, align 8, !noalias !120419, !noundef !152 ; 2 uses
  %i.eo = icmp ne i64 %.val.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = add i64 %.val.i.i.i.i, 1                ; 2 uses
  store i64 %i.ep, ptr %.val2.i, align 8, !noalias !120419
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %.split14.us.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.i, !prof !154

.split14.us.i:                                    ; preds = %bb.t, %bb.r, %bb.o, %bb.m
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.i: ; preds = %bb.t
  %.val.i2.i.i.i = load i64, ptr %.val3.i.fr, align 8, !noalias !120421, !noundef !152 ; 2 uses
  %i.er = icmp ne i64 %.val.i2.i.i.i, 0
  tail call void @llvm.assume(i1 %i.er)
  %i.es = add i64 %.val.i2.i.i.i, 1               ; 2 uses
  store i64 %i.es, ptr %.val3.i.fr, align 8, !noalias !120421
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %.split33.us.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.i", !prof !154

.split33.us.i:                                    ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us27.i
  tail call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.i": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.i
  %.val.i.i4.i.i = load i64, ptr %.val.i, align 8, !noalias !120419, !noundef !152 ; 2 uses
  %i.eu = icmp ne i64 %.val.i.i4.i.i, 0
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = add i64 %.val.i.i4.i.i, 1               ; 2 uses
  store i64 %i.ev, ptr %.val.i, align 8, !noalias !120419
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %.split16.us.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.i, !prof !154

.split16.us.i:                                    ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.i", %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.us28.i", %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i.us.us.i
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i.i"
  %.val.i2.i6.i.i = load i64, ptr %.val1.i.fr, align 8, !noalias !120421, !noundef !152 ; 2 uses
  %i.ex = icmp ne i64 %.val.i2.i6.i.i, 0
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = add i64 %.val.i2.i6.i.i, 1              ; 2 uses
  store i64 %i.ey, ptr %.val1.i.fr, align 8, !noalias !120421
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.split18.us.i, label %bb.u, !prof !154

.split18.us.i:                                    ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.i
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.i
  store ptr %.val2.i, ptr %i.a, align 8, !alias.scope !120418, !noalias !120417
  store ptr %.val3.i.fr, ptr %i.ch, align 8, !alias.scope !120418, !noalias !120417
  store ptr %.val.i, ptr %i.ci, align 8, !alias.scope !120418, !noalias !120417
  store ptr %.val1.i.fr, ptr %i.cj, align 8, !alias.scope !120418, !noalias !120417
  store i16 %i.g, ptr %i.ck, align 8, !alias.scope !120418, !noalias !120417
  %i.fa = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17ha66a9845551de8dfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.en, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 1 %3)
          to label %bb.v unwind label %.split20.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !120420, !inline_history !120412 ; 2 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120417
  %.not.i = icmp eq ptr %i.fa, null
  br i1 %.not.i, label %tailrecurse.i, label %"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h5ea26f65a1dab92aE.exit"

common.resume:                                    ; preds = %.split39.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split20.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp547, %.split20.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp590, %.split39.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

.split20.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.us.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us30.i, %bb.u
  %lpad.loopexit.split-lp547 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %2) #86
          to label %common.resume unwind label %bb.w, !noalias !120422, !inline_history !120412

bb.w:                                             ; preds = %.split20.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !120420, !inline_history !120412
  unreachable

"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h5ea26f65a1dab92aE.exit": ; preds = %tailrecurse.i, %bb.v, %tailrecurse.us24.i, %bb.s, %tailrecurse.us.i, %bb.q, %tailrecurse.us.us.i, %bb.n
  %.sroa.0.0.i = phi ptr [ %i.eg, %bb.s ], [ %i.dp, %bb.q ], [ null, %tailrecurse.us.us.i ], [ %i.cy, %bb.n ], [ null, %tailrecurse.us.i ], [ null, %tailrecurse.us24.i ], [ null, %tailrecurse.i ], [ %i.fa, %bb.v ]
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %2), !noalias !120422, !inline_history !120412
  br label %bb.y

bb.x:                                             ; preds = %tailrecurse, %tailrecurse
  br label %tailrecurse.backedge

bb.y:                                             ; preds = %.split26.us, %"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h5ea26f65a1dab92aE.exit", %.split42.us, %.split28.us
  %.sroa.0.0 = phi ptr [ %i.br, %.split28.us ], [ %.us-phi43, %.split42.us ], [ null, %.split26.us ], [ %.sroa.0.0.i, %"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h5ea26f65a1dab92aE.exit" ]
  ret ptr %.sroa.0.0

bb.z:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i
  store ptr %.val2.i, ptr %i.c, align 8, !alias.scope !120414
  store ptr %.val3.i.fr, ptr %i.h, align 8, !alias.scope !120414
  store ptr %.val.i, ptr %i.i, align 8, !alias.scope !120414
  store ptr %.val1.i.fr, ptr %i.j, align 8, !alias.scope !120414
  store i16 %i.g, ptr %i.k, align 8, !alias.scope !120414
  %i.fc = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17ha66a9845551de8dfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bt, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 1 %3)
          to label %bb.aa unwind label %.split39.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.fc, null
  br i1 %.not, label %tailrecurse.backedge, label %.split42.us

.split42.us:                                      ; preds = %bb.aa, %bb.k, %bb.h, %bb.d
  %.us-phi43 = phi ptr [ %i.bi, %bb.k ], [ %i.aq, %bb.h ], [ %i.y, %bb.d ], [ %i.fc, %bb.aa ]
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %bb.y

tailrecurse.backedge:                             ; preds = %bb.aa, %tailrecurse, %bb.x
  %.sink196 = phi i64 [ 56, %tailrecurse ], [ 8, %bb.x ], [ 16, %bb.aa ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.tr, i64 %.sink196
  %.tr.be = load ptr, ptr %i.fd, align 8, !nonnull !152, !align !156, !noundef !152
  br label %tailrecurse

.split39.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us.us, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i.us51, %bb.z
  %lpad.loopexit.split-lp590 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef align 8 dereferenceable(40) %2) #86
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %.split39.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

.split26.us:                                      ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse.us44, %tailrecurse.us44, %tailrecurse.us44, %tailrecurse.us44, %tailrecurse.us44, %tailrecurse.us44, %tailrecurse.us44, %tailrecurse.us44, %tailrecurse.us44, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us.us, %tailrecurse.us.us, %tailrecurse.us.us, %tailrecurse.us.us, %tailrecurse.us.us, %tailrecurse.us.us, %tailrecurse.us.us, %tailrecurse.us.us, %tailrecurse.us.us
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %bb.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN92_$LT$nickel_lang_core..deserialize..RustDeserializationError$u20$as$u20$core..fmt..Debug$GT$3fmt17h21690fb7bbf9d7a2E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !120423 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !218, !noundef !152 ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  %i.h = add i64 %i.f, -9223372036854775807
  %i.i = select i1 %i.g, i64 %i.h, i64 0
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.e, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2969, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2478, i64 noundef 8, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1793, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2970, i64 noundef 8, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1655)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2971, i64 noundef 12)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2972, i64 noundef 16)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.d, align 8
  %i.o = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2973, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2970, i64 noundef 8, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1655)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.c, align 8
  %i.q = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2974, i64 noundef 19, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1732)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.b, align 8
  %i.s = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2975, i64 noundef 18, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1732)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.a, align 8
  %i.u = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @276, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1655)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.k, %bb.c ], [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.o, %bb.f ], [ %i.q, %bb.g ], [ %i.s, %bb.h ], [ %i.u, %bb.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN93_$LT$crossterm..command..write_command_ansi..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h118ef661f8c3fa9fE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !120437 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !152, !align !156, !noundef !152 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120438)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120440)
  %.val.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !120441, !noalias !120442, !noundef !152 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120443)
  %i.b = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 %2) ; 2 uses
  %i.c = load i64, ptr %.val, align 8, !range !153, !alias.scope !120444, !noalias !120442, !noundef !152 ; 2 uses
  %i.d = icmp ugt i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i"

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !120444, !noalias !120442, !noundef !152 ; 4 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = sub i64 %i.b, %i.f                       ; 2 uses
  %i.i = sub nsw i64 %i.c, %i.f
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i", !prof !154

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val, i64 noundef %i.f, i64 noundef %i.h, i64 noundef 1, i64 noundef 1), !noalias !120445
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i": ; preds = %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !120444, !noalias !120442, !noundef !152 ; 5 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp ugt i64 %.val.i.i.i, %i.l
  br i1 %i.n, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i"
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val8.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !120446, !noalias !120442
  br label %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i"
  %i.o = sub nuw i64 %.val.i.i.i, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !120444, !noalias !120442, !nonnull !152, !noundef !152 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.o, i1 false), !alias.scope !120447, !noalias !120448
  store i64 %.val.i.i.i, ptr %i.k, align 8, !alias.scope !120444, !noalias !120442
  br label %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i

_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i"
  %i.s = phi i64 [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i" ], [ %.val.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.val8.i.i.i = phi ptr [ %.val8.pre.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i" ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 %.val.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !120449
  %i.u = add i64 %.val.i.i.i, %2                  ; 3 uses
  %i.v = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp ugt i64 %i.u, %i.s
  br i1 %i.w, label %bb.d, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hde79605ee6b5d5b4E.exit"

bb.d:                                             ; preds = %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i
  store i64 %i.u, ptr %i.k, align 8, !alias.scope !120446, !noalias !120442
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hde79605ee6b5d5b4E.exit"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hde79605ee6b5d5b4E.exit": ; preds = %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i, %bb.d
  store i64 %i.u, ptr %i.a, align 8, !alias.scope !120441, !noalias !120442
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN93_$LT$crossterm..command..write_command_ansi..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc4848279138fdd07E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !120452 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !152, !align !156, !noundef !152
  %i.a = tail call noundef ptr @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_all17h767631693dd4e92aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not = icmp ne ptr %i.a, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !120453, !noundef !152
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 133
begin_hunk_0_@"_ZN133_$LT$nickel..customize..interface..FieldInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..term..record..Field$GT$$GT$4from17h18c67890e30833c2E":bb.a

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12562)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !12562, !noalias !12563, !nonnull !34, !noundef !34 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !12562, !noalias !12563, !noundef !34
  %i.aw = getelementptr inbounds nuw [72 x i8], ptr %i.at, i64 %i.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12564
  %i.ax = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !range !44, !noalias !12565, !noundef !34
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i68, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i61", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i68: ; preds = %bb.f
  %.pre.i.i.i.i.i.i69 = load i64, ptr %i.ax, align 8, !noalias !12566
  %.phi.trans.insert.i.i.i.i.i.i70 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.pre1.i.i.i.i.i.i71 = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i70, align 8, !noalias !12566
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i62"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i61": ; preds = %bb.f
  %i.bb = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc80 unwind label %bb.n, !inline_history !12386 ; 2 uses

.noexc80:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i61"
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = extractvalue { i64, i64 } %i.bb, 1      ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !noalias !12567
  store i8 1, ptr %i.ay, align 8, !noalias !12567
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i62"

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i62": ; preds = %.noexc80, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i68
  %.pre-phi270.a = phi i64 [ %i.bd, %.noexc80 ], [ %.pre1.i.i.i.i.i.i71, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i68 ]
  %.pre-phi268.a = phi i64 [ %i.bc, %.noexc80 ], [ %.pre.i.i.i.i.i.i69, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i68 ] ; 2 uses
  %i.bf = add i64 %.pre-phi268.a, 1
  store i64 %i.bf, ptr %i.ax, align 8, !noalias !12566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !12564
  %.sroa.4.0..sroa_idx.i.i.i64 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %.pre-phi268.a, ptr %.sroa.4.0..sroa_idx.i.i.i64, align 8, !noalias !12564
  %.sroa.5.0..sroa_idx.i.i.i65 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.pre-phi270.a, ptr %.sroa.5.0..sroa_idx.i.i.i65, align 8, !noalias !12564
  invoke fastcc void @"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h3cabaf2038ec64b3E"(ptr noalias noundef align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.at, ptr noundef nonnull %i.aw)
          to label %"_ZN138_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..term..record..RecordData$GT$$GT$4from17hb1e2f80e6ea0903aE.exit.i67" unwind label %bb.g, !noalias !12564, !inline_history !12409

bb.g:                                             ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i62"
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h726dcb279a4f63e4E(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.a)
          to label %bb.as unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !12564, !inline_history !12409
  unreachable

"_ZN138_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..term..record..RecordData$GT$$GT$4from17hb1e2f80e6ea0903aE.exit.i67": ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i62"
  %.sroa.0198.0.copyload = load ptr, ptr %i.a, align 8, !noalias !12568
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5195, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4199.0..sroa_idx, i64 24, i1 false), !noalias !12569
  %.sroa.5200.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i64, align 8, !noalias !12568
  %.sroa.6201.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i65, align 8, !noalias !12568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12564
  br label %"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i.i"

bb.i:                                             ; preds = %bb.e
  %i.bi = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !range !44, !noalias !12570, !noundef !34
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i75, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i72", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i75: ; preds = %bb.i
  %.pre.i.i.i76 = load i64, ptr %i.bi, align 8, !noalias !12571
  %.phi.trans.insert.i.i.i77 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.pre1.i.i.i78 = load i64, ptr %.phi.trans.insert.i.i.i77, align 8, !noalias !12571
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i73"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i72": ; preds = %bb.i
  %i.bm = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc83 unwind label %bb.n, !inline_history !12386 ; 2 uses

.noexc83:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i72"
  %i.bn = extractvalue { i64, i64 } %i.bm, 0
  %i.bo = extractvalue { i64, i64 } %i.bm, 1      ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !noalias !12572
  store i8 1, ptr %i.bj, align 8, !noalias !12572
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i73"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i73": ; preds = %.noexc83, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i75
  %.pre-phi266.a = phi i64 [ %i.bo, %.noexc83 ], [ %.pre1.i.i.i78, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i75 ]
  %.pre-phi264.a = phi i64 [ %i.bn, %.noexc83 ], [ %.pre.i.i.i76, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i75 ] ; 2 uses
  %i.bq = add i64 %.pre-phi264.a, 1
  store i64 %i.bq, ptr %i.bi, align 8, !noalias !12571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5195, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @1, i64 8), i64 24, i1 false), !noalias !12573
  br label %"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i.i"

"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i.i": ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i73", %"_ZN138_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..term..record..RecordData$GT$$GT$4from17hb1e2f80e6ea0903aE.exit.i67"
  %.sroa.7197.0 = phi i64 [ %.pre-phi266.a, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i73" ], [ %.sroa.6201.0.copyload, %"_ZN138_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..term..record..RecordData$GT$$GT$4from17hb1e2f80e6ea0903aE.exit.i67" ]
  %.sroa.6196.0 = phi i64 [ %.pre-phi264.a, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i73" ], [ %.sroa.5200.0.copyload, %"_ZN138_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..term..record..RecordData$GT$$GT$4from17hb1e2f80e6ea0903aE.exit.i67" ]
  %.sroa.0193.0 = phi ptr [ @0, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i73" ], [ %.sroa.0198.0.copyload, %"_ZN138_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..term..record..RecordData$GT$$GT$4from17hb1e2f80e6ea0903aE.exit.i67" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5192.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5195, i64 24, i1 false), !noalias !12574
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5195)
  br label %.noexc35.thread

.noexc35.thread:                                  ; preds = %"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i.i", %.noexc79
  %.sroa.5192.sroa.5.0 = phi i64 [ %.sroa.7197.0, %"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i.i" ], [ undef, %.noexc79 ]
  %.sroa.5192.sroa.4.0 = phi i64 [ %.sroa.6196.0, %"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i.i" ], [ undef, %.noexc79 ]
  %.sroa.0190.0 = phi ptr [ %.sroa.0193.0, %"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i.i" ], [ null, %.noexc79 ]
  %.sroa.6176.sroa.4.0..sroa.6176.0..sroa_idx177.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6176.sroa.4.0..sroa.6176.0..sroa_idx177.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5192.sroa.0, i64 24, i1 false), !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5192.sroa.0)
  store i64 1, ptr %i.q, align 8, !alias.scope !12575, !noalias !12576
  %.sroa.6176.0..sroa_idx177 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.0190.0, ptr %.sroa.6176.0..sroa_idx177, align 8, !alias.scope !12575, !noalias !12576
  %.sroa.6176.sroa.4.sroa.4.0..sroa.6176.sroa.4.0..sroa.6176.0..sroa_idx177.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %.sroa.5192.sroa.4.0, ptr %.sroa.6176.sroa.4.sroa.4.0..sroa.6176.sroa.4.0..sroa.6176.0..sroa_idx177.sroa_idx.sroa_idx, align 8, !alias.scope !12575, !noalias !12576
  %.sroa.6176.sroa.4.sroa.5.0..sroa.6176.sroa.4.0..sroa.6176.0..sroa_idx177.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 %.sroa.5192.sroa.5.0, ptr %.sroa.6176.sroa.4.sroa.5.0..sroa.6176.sroa.4.0..sroa.6176.0..sroa_idx177.sroa_idx.sroa_idx, align 8, !alias.scope !12575, !noalias !12576
  br label %.noexc35

bb.j:                                             ; preds = %bb.c
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12578)
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 88 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12579
  store ptr null, ptr %.sroa.492.0..sroa_idx, align 8
  br i1 %.not, label %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel..customize..interface..ValueInterface$GT$$GT$$GT$17h330e6a3ce30932a5E.exit3.i.i", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf3b743259ccb8ec8E.exit.us.peel.i.i.i.i.i.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf3b743259ccb8ec8E.exit.us.peel.i.i.i.i.i.i": ; preds = %bb.j
  %.val.i.i.us.peel.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !noalias !12580, !nonnull !34, !noundef !34
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i.us.peel.i.i.i.i.i.i, i64 16
  invoke void @_ZN16nickel_lang_core4term14TypeAnnotation4iter17h927cb0776241ff4cE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.bt)
          to label %.noexc49 unwind label %bb.n, !inline_history !12448

.noexc49:                                         ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf3b743259ccb8ec8E.exit.us.peel.i.i.i.i.i.i"
  %.pr.us.peel.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !12579
  %.not1.us.peel.i.i.i.i.i.i = icmp eq i64 %.pr.us.peel.i.i.i.i.i.i, 2
  br i1 %.not1.us.peel.i.i.i.i.i.i, label %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel..customize..interface..ValueInterface$GT$$GT$$GT$17h330e6a3ce30932a5E.exit3.i.i", label %.split.us.i.i.i.i.i.i

.split.us.i.i.i.i.i.i:                            ; preds = %.noexc49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.593.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12579
  %.pre.i.i.i.i.i.i47 = load i64, ptr %.sroa.593.0..sroa_idx, align 8, !range !63
  switch i64 %.pre.i.i.i.i.i.i47, label %bb.k [
    i64 2, label %.split17.us.loopexit.i.i.i.i.i.i
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %.split.us.i.i.i.i.i.i
  %i.bu = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !align !41, !noundef !34 ; 2 uses
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8
  %.not.i.i.i.i.us.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.us.i.i.i.i.i.i, label %bb.l, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h80711d1985000028E.exit.thread.i.i.i.i"

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %.sroa.593.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split.us.i.i.i.i.i.i
  %i.bv = load ptr, ptr %i.br, align 8, !noundef !34 ; 4 uses
  %.not.i.i.i.i.i.us.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  %i.bw = load ptr, ptr %i.bs, align 8, !nonnull !34
  %i.bx = icmp eq ptr %i.bv, %i.bw
  %or.cond.i.i.i.i.i.us.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.us.i.i.i.i.i.i, i1 true, i1 %i.bx
  br i1 %or.cond.i.i.i.i.i.us.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h580a6c2a3e566179E.exit.i.us.i.i.i.i.i.i, label %.split14.us.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h580a6c2a3e566179E.exit.i.us.i.i.i.i.i.i: ; preds = %bb.m
  store i64 2, ptr %.sroa.593.0..sroa_idx, align 8
  br label %.split17.us.loopexit.i.i.i.i.i.i

.split14.us.i.i.i.i.i.i:                          ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 256
  store ptr %i.by, ptr %i.br, align 8
  br label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h80711d1985000028E.exit.thread.i.i.i.i"

.split17.us.loopexit.i.i.i.i.i.i:                 ; preds = %_ZN4core3ops8function6FnOnce9call_once17h580a6c2a3e566179E.exit.i.us.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12579
  store ptr null, ptr %.sroa.492.0..sroa_idx, align 8
  br label %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel..customize..interface..ValueInterface$GT$$GT$$GT$17h330e6a3ce30932a5E.exit3.i.i"

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h80711d1985000028E.exit.thread.i.i.i.i": ; preds = %.split14.us.i.i.i.i.i.i, %bb.k
  %.sroa.0.0.i.i4.i.i.i.i = phi ptr [ %i.bv, %.split14.us.i.i.i.i.i.i ], [ %i.bu, %bb.k ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  invoke fastcc void @"_ZN94_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface17h4c33fb0ff5717ff2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.0.i.i4.i.i.i.i)
          to label %.noexc35 unwind label %bb.n, !inline_history !12448

.noexc35:                                         ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h80711d1985000028E.exit.thread.i.i.i.i", %.noexc35.thread
  %.sroa.6156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.6156.0.copyload = load ptr, ptr %.sroa.6156.0..sroa_idx, align 8, !noalias !12581
  %.sroa.7157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.797.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7157.0..sroa_idx, i64 40, i1 false), !noalias !12582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12561
  br label %bb.o

"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel..customize..interface..ValueInterface$GT$$GT$$GT$17h330e6a3ce30932a5E.exit3.i.i": ; preds = %.split17.us.loopexit.i.i.i.i.i.i, %.noexc49, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12579
  store i64 3, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.797.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5253.0..sroa_idx, i64 40, i1 false)
  store i64 0, ptr %i.u, align 8
  br label %bb.o

bb.n:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i72", %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i61", %bb.d, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h80711d1985000028E.exit.thread.i.i.i.i", %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf3b743259ccb8ec8E.exit.us.peel.i.i.i.i.i.i"
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.o:                                             ; preds = %.noexc35, %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel..customize..interface..ValueInterface$GT$$GT$$GT$17h330e6a3ce30932a5E.exit3.i.i"
  %.sroa.797.sroa.0.1 = phi ptr [ %.sroa.6156.0.copyload, %.noexc35 ], [ %i.aj, %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel..customize..interface..ValueInterface$GT$$GT$$GT$17h330e6a3ce30932a5E.exit3.i.i" ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9108, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.797.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.797.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.w, ptr noundef nonnull align 8 dereferenceable(152) %i.u, i64 152, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.cc = load i64, ptr %i.cb, align 8, !range !82, !noundef !34 ; 3 uses
  %.not.i30 = icmp eq i64 %i.cc, 3
  br i1 %.not.i30, label %bb.am, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %.sroa.5117.sroa.0.0.copyload = load ptr, ptr %.sroa.5117.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %.sroa.5117.sroa.4.0.copyload = load i64, ptr %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5117.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false)
  %.sroa.5117.sroa.6.0..sroa.5117.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %.sroa.5117.sroa.6.0.copyload = load i64, ptr %.sroa.5117.sroa.6.0..sroa.5117.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %.sroa.5119.0.copyload = load ptr, ptr %.sroa.5119.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %.sroa.6120.0.copyload = load ptr, ptr %.sroa.6120.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5123)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9129)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9129, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9108, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !12583), !noalias !12584
  call void @llvm.experimental.noalias.scope.decl(metadata !12585), !noalias !12584
  %.not.i.i = icmp eq ptr %.sroa.5119.0.copyload, null
  br i1 %.not.i.i, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5143)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6120.0.copyload) ], !noalias !12586
  %i.ce = icmp eq ptr %.sroa.5119.0.copyload, %.sroa.6120.0.copyload
  br i1 %i.ce, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6161)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6161, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9108, i64 40, i1 false)
  %i.cf = ptrtoint ptr %.sroa.6120.0.copyload to i64
  %i.cg = ptrtoint ptr %.sroa.5119.0.copyload to i64
  %i.ch = sub nuw i64 %i.cf, %i.cg
  %i.ci = udiv exact i64 %i.ch, 160
  %.sroa.0163.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cj = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %.sroa.6173.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.6173.sroa.4.0..sroa.6173.48..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.sroa.6173.sroa.5.0..sroa.6173.48..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.sroa.6161.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5143, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9108, i64 40, i1 false)
  br label %.noexc.i

bb.t:                                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hc487286fcf987fcbE.exit.i", %bb.r
  %.sroa.0159.0 = phi ptr [ %.sroa.797.sroa.0.1, %bb.r ], [ %.sroa.0159.0.copyload160, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hc487286fcf987fcbE.exit.i" ] ; 2 uses
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.r ], [ %i.do, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hc487286fcf987fcbE.exit.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0163.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6161, i64 40, i1 false), !noalias !12589
  %i.cn = getelementptr inbounds nuw [160 x i8], ptr %.sroa.5119.0.copyload, i64 %.sroa.06.0.i.i
  store ptr %.sroa.0159.0, ptr %i.e, align 8, !noalias !12590
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5169.sroa.0)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 152
  %i.cp = invoke { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue9as_record17h694af076ba4246c4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.co)
          to label %.noexc53 unwind label %.body55.thread236, !inline_history !12469 ; 2 uses

.noexc53:                                         ; preds = %bb.t
  %i.cq = extractvalue { i64, ptr } %i.cp, 0
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.u, label %_ZN4core3ops8function5FnMut8call_mut17h590bad28da463183E.exit.i.i

bb.u:                                             ; preds = %.noexc53
  %i.cs = extractvalue { i64, ptr } %i.cp, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5183)
  %.not.i.i.i51 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i51, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !12591), !noalias !12592
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !12591, !noalias !12593, !nonnull !34, !noundef !34 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !12591, !noalias !12593, !noundef !34
  %i.cx = getelementptr inbounds nuw [72 x i8], ptr %i.cu, i64 %i.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12594
  %i.cy = load i8, ptr %i.ck, align 8, !range !44, !noalias !12595, !noundef !34
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i: ; preds = %bb.v
  %.pre.i.i.i.i.i.i52 = load i64, ptr %i.cj, align 8, !noalias !12596
  %.pre1.i.i.i.i.i.i = load i64, ptr %i.cl, align 8, !noalias !12596
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i": ; preds = %bb.v
  %i.da = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc54 unwind label %.body55.thread236, !inline_history !12469 ; 2 uses

.noexc54:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i"
  %i.db = extractvalue { i64, i64 } %i.da, 0
  %i.dc = extractvalue { i64, i64 } %i.da, 1      ; 2 uses
  store i64 %i.dc, ptr %i.cl, align 8, !noalias !12597
  store i8 1, ptr %i.ck, align 8, !noalias !12597
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i"

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i": ; preds = %.noexc54, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i
  %.pre-phi262.a = phi i64 [ %i.dc, %.noexc54 ], [ %.pre1.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i ]
  %.pre-phi260 = phi i64 [ %i.db, %.noexc54 ], [ %.pre.i.i.i.i.i.i52, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.dd = add i64 %.pre-phi260, 1
  store i64 %i.dd, ptr %i.cj, align 8, !noalias !12596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !12594
  store i64 %.pre-phi260, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !12594
  store i64 %.pre-phi262.a, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !12594
  invoke fastcc void @"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h3cabaf2038ec64b3E"(ptr noalias noundef align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cx)
          to label %"_ZN138_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..term..record..RecordData$GT$$GT$4from17hb1e2f80e6ea0903aE.exit.i" unwind label %bb.w, !noalias !12598, !inline_history !12490

bb.w:                                             ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i"
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h726dcb279a4f63e4E(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.b)
          to label %.body55.thread unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !12598, !inline_history !12490
  unreachable

"_ZN138_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..term..record..RecordData$GT$$GT$4from17hb1e2f80e6ea0903aE.exit.i": ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i"
  %.sroa.0186.0.copyload = load ptr, ptr %i.b, align 8, !noalias !12599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5183, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4187.0..sroa_idx, i64 24, i1 false), !noalias !12600
  %.sroa.5188.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !12599
  %.sroa.6189.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !12599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12594
  br label %"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i"

bb.y:                                             ; preds = %bb.u
  %i.dg = load i8, ptr %i.ck, align 8, !range !44, !noalias !12601, !noundef !34
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i: ; preds = %bb.y
  %.pre.i.i.i = load i64, ptr %i.cj, align 8, !noalias !12602
  %.pre1.i.i.i = load i64, ptr %i.cl, align 8, !noalias !12602
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i": ; preds = %bb.y
  %i.di = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc57 unwind label %.body55.thread236, !inline_history !12469 ; 2 uses

.noexc57:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i"
  %i.dj = extractvalue { i64, i64 } %i.di, 0
  %i.dk = extractvalue { i64, i64 } %i.di, 1      ; 2 uses
  store i64 %i.dk, ptr %i.cl, align 8, !noalias !12603
  store i8 1, ptr %i.ck, align 8, !noalias !12603
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i": ; preds = %.noexc57, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i
  %.pre-phi258 = phi i64 [ %i.dk, %.noexc57 ], [ %.pre1.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i ]
  %.pre-phi = phi i64 [ %i.dj, %.noexc57 ], [ %.pre.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i ] ; 2 uses
  %i.dl = add i64 %.pre-phi, 1
  store i64 %i.dl, ptr %i.cj, align 8, !noalias !12602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5183, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @1, i64 8), i64 24, i1 false), !noalias !12604
  br label %"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i"

"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i": ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i", %"_ZN138_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..term..record..RecordData$GT$$GT$4from17hb1e2f80e6ea0903aE.exit.i"
  %.sroa.7185.0 = phi i64 [ %.pre-phi258, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i" ], [ %.sroa.6189.0.copyload, %"_ZN138_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..term..record..RecordData$GT$$GT$4from17hb1e2f80e6ea0903aE.exit.i" ]
  %.sroa.6184.0 = phi i64 [ %.pre-phi, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i" ], [ %.sroa.5188.0.copyload, %"_ZN138_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..term..record..RecordData$GT$$GT$4from17hb1e2f80e6ea0903aE.exit.i" ]
  %.sroa.0181.0 = phi ptr [ @0, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hcec1bc521151c734E.exit.i" ], [ %.sroa.0186.0.copyload, %"_ZN138_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..term..record..RecordData$GT$$GT$4from17hb1e2f80e6ea0903aE.exit.i" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5169.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5183, i64 24, i1 false), !noalias !12605
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5183)
  br label %_ZN4core3ops8function5FnMut8call_mut17h590bad28da463183E.exit.i.i

_ZN4core3ops8function5FnMut8call_mut17h590bad28da463183E.exit.i.i: ; preds = %"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i", %.noexc53
  %.sroa.5169.sroa.5.0 = phi i64 [ %.sroa.7185.0, %"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i" ], [ undef, %.noexc53 ]
  %.sroa.5169.sroa.4.0 = phi i64 [ %.sroa.6184.0, %"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i" ], [ undef, %.noexc53 ]
  %.sroa.0167.0 = phi ptr [ %.sroa.0181.0, %"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel..customize..interface..ExtractInterface$GT$17extract_interface28_$u7b$$u7b$closure$u7d$$u7d$17ha282ff3513b864dcE.exit.i.i" ], [ null, %.noexc53 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !12588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6173.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5169.sroa.0, i64 24, i1 false), !noalias !12588
  store ptr %.sroa.0167.0, ptr %i.cm, align 8, !noalias !12607
  store i64 %.sroa.5169.sroa.4.0, ptr %.sroa.6173.sroa.4.0..sroa.6173.48..sroa_idx.sroa_idx, align 8, !noalias !12607
  store i64 %.sroa.5169.sroa.5.0, ptr %.sroa.6173.sroa.5.0..sroa.6173.48..sroa_idx.sroa_idx, align 8, !noalias !12607
  invoke fastcc void @"_ZN86_$LT$core..option..Option$LT$T$GT$$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17h242753b69914fa18E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.cm)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hc487286fcf987fcbE.exit.i" unwind label %.body55, !noalias !12608, !inline_history !12516

.body55.thread236:                                ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i", %bb.t, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i"
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body55.thread

.body55:                                          ; preds = %_ZN4core3ops8function5FnMut8call_mut17h590bad28da463183E.exit.i.i
end_hunk_0

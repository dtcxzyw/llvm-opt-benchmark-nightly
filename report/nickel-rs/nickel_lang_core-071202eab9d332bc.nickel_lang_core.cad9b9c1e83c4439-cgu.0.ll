Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37289
inline.NumDeleted: 15087
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse17hb4ee81941777ba80E":bb.a

bb.f:                                             ; preds = %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit", %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit.thread"
  %.sroa.746.1261 = phi ptr [ %i.y, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit.thread" ], [ %i.ai, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit" ]
  %.sroa.11.sroa.8.0260 = phi ptr [ %.sroa.8.0.copyload, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit.thread" ], [ undef, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit" ]
  %.sroa.11.sroa.0.sroa.0.1259 = phi ptr [ %.sroa.5191.0.copyload, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit.thread" ], [ undef, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit" ]
  %.sroa.11.sroa.0.sroa.7.1258 = phi i32 [ %.sroa.6.0.copyload, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit.thread" ], [ undef, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.sroa.0, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.11.sroa.0.sroa.8, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7.sroa.7, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.11.sroa.9, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.sroa.11, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.0.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.11)
  %i.am = ptrtoint ptr %.sroa.746.1261 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.628.sroa.7.0 = phi i32 [ %.sroa.628.sroa.7.0.copyload, %bb.b ], [ %.sroa.11.sroa.0.sroa.7.1258, %bb.f ] ; 5 uses
  %.sroa.628.sroa.6.0 = phi ptr [ %.sroa.628.sroa.6.0.copyload, %bb.b ], [ %.sroa.11.sroa.0.sroa.0.1259, %bb.f ] ; 10 uses
  %.sroa.628.sroa.0.0 = phi i64 [ %.sroa.628.sroa.0.0.copyload, %bb.b ], [ %i.am, %bb.f ] ; 10 uses
  %.sroa.7.sroa.6.0 = phi ptr [ %.sroa.7.sroa.6.0.copyload, %bb.b ], [ %.sroa.11.sroa.8.0260, %bb.f ] ; 2 uses
  %.sroa.026.0 = phi i64 [ %.sroa.026.0.copyload, %bb.b ], [ %i.u, %bb.f ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20791)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.r, ptr %i.o, align 8, !noalias !20792
  %i.an = icmp ne i64 %.sroa.026.0, 12
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nsw i64 %.sroa.026.0, -3
  %i.ap = icmp samesign ugt i64 %.sroa.026.0, 2
  %i.aq = select i1 %i.ap, i64 %i.ao, i64 9
  switch i64 %i.aq, label %bb.h [
    i64 0, label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"
    i64 1, label %bb.i
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %bb.l
    i64 5, label %bb.m
    i64 6, label %bb.v
    i64 7, label %bb.n
    i64 8, label %bb.o
    i64 9, label %bb.p
    i64 10, label %bb.q
    i64 11, label %bb.r
    i64 12, label %bb.s
    i64 13, label %bb.t
    i64 14, label %bb.u
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"

bb.j:                                             ; preds = %bb.g
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"

bb.k:                                             ; preds = %bb.g
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"

bb.l:                                             ; preds = %bb.g
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"

bb.m:                                             ; preds = %bb.g
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"

bb.n:                                             ; preds = %bb.g
  %i.ar = inttoptr i64 %.sroa.628.sroa.0.0 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20792
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.628.sroa.6.0) ]
  store ptr %.sroa.628.sroa.6.0, ptr %i.n, align 8, !noalias !20792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !20792
  invoke fastcc void @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h7d9e8ab5ba4c2a11E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.w unwind label %bb.ag, !noalias !20793, !inline_history !20758

bb.o:                                             ; preds = %bb.g
  %.sroa.597.sroa.0.0.extract.trunc = trunc i64 %.sroa.628.sroa.0.0 to i32
  store i32 %.sroa.597.sroa.0.0.extract.trunc, ptr %.sroa.27.sroa.0, align 8, !alias.scope !20791
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"

bb.p:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7.sroa.7, i64 20, i1 false)
  %.sroa.8208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8208.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.sroa.0, i64 28, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.6.0) ]
  store i64 %.sroa.026.0, ptr %i.i, align 8, !noalias !20792
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 %.sroa.628.sroa.0.0, ptr %.sroa.5205.0..sroa_idx, align 8, !noalias !20792
  %.sroa.6206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %.sroa.628.sroa.6.0, ptr %.sroa.6206.0..sroa_idx, align 8, !noalias !20792
  %.sroa.7207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %.sroa.628.sroa.7.0, ptr %.sroa.7207.0..sroa_idx, align 8, !noalias !20792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20792
  invoke fastcc void @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h7d9e8ab5ba4c2a11E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 %.sroa.7.sroa.6.0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.ai unwind label %bb.ah, !noalias !20793, !inline_history !20758

bb.q:                                             ; preds = %bb.g
  %.sroa.6238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6238.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.sroa.0, i64 20, i1 false)
  %i.as = load i8, ptr %i.r, align 1, !range !153, !noalias !20795, !noundef !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20794
  store i64 %.sroa.628.sroa.0.0, ptr %i.a, align 8, !noalias !20796
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.628.sroa.6.0, ptr %.sroa.4236.0..sroa_idx, align 8, !noalias !20796
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.sroa.628.sroa.7.0, ptr %.sroa.5237.0..sroa_idx, align 8, !noalias !20796
  call fastcc void @"_ZN18nickel_lang_parser3typ27EnumRowsF$LT$Ty$C$ERows$GT$13try_map_state17h83881d8b52d1412cE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, i8 %i.as, i8 %i.as, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20794
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = load i32, ptr %i.at, align 8, !range !162, !noalias !20794, !noundef !145 ; 2 uses
  %i.av = icmp eq i32 %i.au, 6
  br i1 %i.av, label %bb.am, label %bb.an

bb.r:                                             ; preds = %bb.g
  %.sroa.6251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6251.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.sroa.0, i64 20, i1 false)
  %i.aw = load i8, ptr %i.r, align 1, !range !153, !noalias !20798, !noundef !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20797
  store i64 %.sroa.628.sroa.0.0, ptr %i.c, align 8, !noalias !20799
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.628.sroa.6.0, ptr %.sroa.4249.0..sroa_idx, align 8, !noalias !20799
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %.sroa.628.sroa.7.0, ptr %.sroa.5250.0..sroa_idx, align 8, !noalias !20799
  call fastcc void @"_ZN18nickel_lang_parser3typ29RecordRowsF$LT$Ty$C$RRows$GT$13try_map_state17h2e29f239f81c4bbfE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, i8 %i.aw, i8 %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20797
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !range !159, !noalias !20797, !noundef !145 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 7
  br i1 %i.az, label %bb.ao, label %bb.ap

bb.s:                                             ; preds = %bb.g
  %i.ba = inttoptr i64 %.sroa.628.sroa.0.0 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20792
  call fastcc void @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h7d9e8ab5ba4c2a11E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !20793, !inline_history !20758
  %i.bb = load i32, ptr %i.g, align 8, !range !197, !noalias !20792, !noundef !145
  %i.bc = trunc nuw i32 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.0182.0.copyload.i = load i32, ptr %i.bd, align 4, !noalias !20792
  %.sroa.4183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4183.0.copyload.i = load ptr, ptr %.sroa.4183.0..sroa_idx.i, align 8, !noalias !20792 ; 3 uses
  %.sroa.5184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5184.0.copyload.i305 = load i32, ptr %.sroa.5184.0..sroa_idx.i, align 8
  %.sroa.5184.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.5184.0.copyload.i306 = load i32, ptr %.sroa.5184.0..sroa_idx.i.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20792
  br i1 %i.bc, label %bb.aq, label %bb.ar

bb.t:                                             ; preds = %bb.g
  %i.be = inttoptr i64 %.sroa.628.sroa.0.0 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20792
  call fastcc void @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h7d9e8ab5ba4c2a11E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 %i.be, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !20793, !inline_history !20758
  %i.bf = load i32, ptr %i.f, align 8, !range !197, !noalias !20792, !noundef !145
  %i.bg = trunc nuw i32 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.0191.0.copyload.i = load i32, ptr %i.bh, align 4, !noalias !20792
  %.sroa.4192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4192.0.copyload.i = load ptr, ptr %.sroa.4192.0..sroa_idx.i, align 8, !noalias !20792 ; 3 uses
  %.sroa.5193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5193.0.copyload.i303 = load i32, ptr %.sroa.5193.0..sroa_idx.i, align 8
  %.sroa.5193.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.5193.0.copyload.i304 = load i32, ptr %.sroa.5193.0..sroa_idx.i.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20792
  br i1 %i.bg, label %bb.as, label %bb.at

bb.u:                                             ; preds = %bb.g
  store i64 %.sroa.628.sroa.0.0, ptr %.sroa.27.sroa.0, align 8, !alias.scope !20791
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"

bb.v:                                             ; preds = %bb.g
  %i.bi = inttoptr i64 %.sroa.628.sroa.0.0 to ptr
  %i.bj = icmp ne i64 %.sroa.628.sroa.0.0, 0
  call void @llvm.assume(i1 %i.bj)
  store ptr %i.bi, ptr %.sroa.27.sroa.0, align 8, !alias.scope !20791
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"

bb.w:                                             ; preds = %bb.n
  %i.bk = load i32, ptr %i.l, align 8, !range !197, !noalias !20792, !noundef !145
  %i.bl = trunc nuw i32 %i.bk to i1
  br i1 %i.bl, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.0147.0.copyload.i = load i32, ptr %i.bm, align 4, !noalias !20792
  %.sroa.5148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5148.0.copyload.i = load ptr, ptr %.sroa.5148.0..sroa_idx.i, align 8, !noalias !20792
  %.sroa.6149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6149.0.copyload.i54 = load i32, ptr %.sroa.6149.0..sroa_idx.i, align 8
  %.sroa.6149.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %.sroa.6149.0.copyload.i55 = load i32, ptr %.sroa.6149.0..sroa_idx.i.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20792
  store i32 %.sroa.0147.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !20791
  %.sroa.27.sroa.0.4..sroa_idx663 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 4
  store ptr %.sroa.5148.0.copyload.i, ptr %.sroa.27.sroa.0.4..sroa_idx663, align 4, !alias.scope !20791
  %.sroa.27.sroa.0.12..sroa_idx675 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.6149.0.copyload.i54, ptr %.sroa.27.sroa.0.12..sroa_idx675, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20792
  invoke void @"_ZN4core3ptr226drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$nickel_lang_core..typ..RecordRows$C$nickel_lang_core..typ..EnumRows$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17ha0c517b75e5c97a4E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %.sroa.628.sroa.6.0) #84
          to label %"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E.exit" unwind label %bb.y, !noalias !20800, !inline_history !20779

bb.y:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.628.sroa.6.0, i64 noundef 104, i64 noundef 8) #83, !noalias !20800, !inline_history !20780
  br label %common.resume

"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E.exit": ; preds = %bb.x
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.628.sroa.6.0, i64 noundef 104, i64 noundef 8) #83, !noalias !20800, !inline_history !20780
  br label %bb.ae

bb.z:                                             ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !20792, !nonnull !145, !align !149, !noundef !145 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20792
  store ptr %i.bp, ptr %i.m, align 8, !noalias !20792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !20792
  invoke fastcc void @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h7d9e8ab5ba4c2a11E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 %.sroa.628.sroa.6.0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.ab unwind label %bb.aa, !noalias !20793, !inline_history !20758

bb.aa:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #86
          to label %common.resume unwind label %bb.af, !noalias !20793, !inline_history !20758

bb.ab:                                            ; preds = %bb.z
  %i.br = load i32, ptr %i.k, align 8, !range !197, !noalias !20792, !noundef !145
  %i.bs = trunc nuw i32 %i.br to i1
  br i1 %i.bs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.0156.0.copyload.i = load i32, ptr %i.bt, align 4, !noalias !20792
  %.sroa.5157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5157.0.copyload.i = load ptr, ptr %.sroa.5157.0..sroa_idx.i, align 8, !noalias !20792
  %.sroa.6158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6158.0.copyload.i52 = load i32, ptr %.sroa.6158.0..sroa_idx.i, align 8
  %.sroa.6158.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.6158.0.copyload.i53 = load i32, ptr %.sroa.6158.0..sroa_idx.i.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20792
  store i32 %.sroa.0156.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !20791
  %.sroa.27.sroa.0.4..sroa_idx662 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 4
  store ptr %.sroa.5157.0.copyload.i, ptr %.sroa.27.sroa.0.4..sroa_idx662, align 4, !alias.scope !20791
  %.sroa.27.sroa.0.12..sroa_idx674 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.6158.0.copyload.i52, ptr %.sroa.27.sroa.0.12..sroa_idx674, align 4
  call void @"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !20793, !inline_history !20758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20792
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !20792, !nonnull !145, !align !149, !noundef !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20792
  store ptr %i.bp, ptr %.sroa.27.sroa.0, align 8, !alias.scope !20791
  %.sroa.27.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  store ptr %i.bv, ptr %.sroa.27.sroa.0.8..sroa_idx, align 8, !alias.scope !20791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20792
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"

bb.ae:                                            ; preds = %bb.ac, %"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E.exit"
  %.sroa.27.sroa.37.0 = phi i32 [ %.sroa.6149.0.copyload.i55, %"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E.exit" ], [ %.sroa.6158.0.copyload.i53, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20792
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread298"

bb.af:                                            ; preds = %bb.ag, %bb.aa
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !20793, !inline_history !20758
  unreachable

bb.ag:                                            ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #86
          to label %common.resume unwind label %bb.af, !noalias !20793, !inline_history !20758

bb.ah:                                            ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i) #86, !noalias !20793, !inline_history !20758
  br label %common.resume

bb.ai:                                            ; preds = %bb.p
  %i.bz = load i32, ptr %i.h, align 8, !range !197, !noalias !20792, !noundef !145
  %i.ca = trunc nuw i32 %i.bz to i1
  br i1 %i.ca, label %bb.aj, label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit"

bb.aj:                                            ; preds = %bb.ai
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.0165.0.copyload.i = load i32, ptr %i.cb, align 4, !noalias !20792
  %.sroa.5166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5166.0.copyload.i = load ptr, ptr %.sroa.5166.0..sroa_idx.i, align 8, !noalias !20792
  %.sroa.6167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6167.0.copyload.i50 = load i32, ptr %.sroa.6167.0..sroa_idx.i, align 8
  %.sroa.6167.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.6167.0.copyload.i51 = load i32, ptr %.sroa.6167.0..sroa_idx.i.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20792
  store i32 %.sroa.0165.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !20791
  %.sroa.27.sroa.0.4..sroa_idx661 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 4
  store ptr %.sroa.5166.0.copyload.i, ptr %.sroa.27.sroa.0.4..sroa_idx661, align 4, !alias.scope !20791
  %.sroa.27.sroa.0.12..sroa_idx673 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.6167.0.copyload.i50, ptr %.sroa.27.sroa.0.12..sroa_idx673, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !20801)
  switch i64 %.sroa.026.0, label %bb.ak [
    i64 0, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit"
    i64 1, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %.val3.i = load i64, ptr %.sroa.6206.0..sroa_idx, align 8, !alias.scope !20801, !noalias !20793, !noundef !145 ; 4 uses
  %i.cc = icmp eq i64 %.val3.i, 0
  br i1 %i.cc, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %bb.ak
  %i.cd = shl i64 %.val3.i, 2
  %i.ce = icmp slt i64 %.val3.i, 4611686018427387900
  call void @llvm.assume(i1 %i.ce), !noalias !20793
  %i.cf = and i64 %i.cd, -16                      ; 2 uses
  %i.cg = add i64 %i.cf, 16                       ; 2 uses
  %i.ch = add nsw i64 %.val3.i, 17
  %i.ci = add i64 %i.ch, %i.cg                    ; 4 uses
  %i.cj = icmp uge i64 %i.ci, %i.cg
  %i.ck = icmp ult i64 %i.ci, 9223372036854775793
  call void @llvm.assume(i1 %i.cj), !noalias !20793
  call void @llvm.assume(i1 %i.ck), !noalias !20793
  %i.cl = icmp eq i64 %i.ci, 0
  br i1 %i.cl, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i
  %.sink.i = phi i64 [ %i.cr, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i ], [ %i.cf, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ]
  %.sink7.i = phi i64 [ %i.cu, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i ], [ %i.ci, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ]
  %.val.sink.i = load ptr, ptr %.sroa.5205.0..sroa_idx, align 8, !alias.scope !20801, !noalias !20793, !nonnull !145, !noundef !145
  %i.cm = sub nuw nsw i64 -16, %.sink.i
  %i.cn = getelementptr inbounds i8, ptr %.val.sink.i, i64 %i.cm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cn, i64 noundef %.sink7.i, i64 noundef range(i64 1, -9223372036854775807) 16) #83, !noalias !20802
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit"

bb.al:                                            ; preds = %bb.aj
  %.val1.i = load i64, ptr %.sroa.6206.0..sroa_idx, align 8, !alias.scope !20801, !noalias !20793, !noundef !145 ; 4 uses
  %i.co = icmp eq i64 %.val1.i, 0
  br i1 %i.co, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i: ; preds = %bb.al
  %i.cp = shl i64 %.val1.i, 2
  %i.cq = icmp slt i64 %.val1.i, 4611686018427387900
  call void @llvm.assume(i1 %i.cq), !noalias !20793
  %i.cr = and i64 %i.cp, -16                      ; 2 uses
  %i.cs = add i64 %i.cr, 16                       ; 2 uses
  %i.ct = add nsw i64 %.val1.i, 17
  %i.cu = add i64 %i.ct, %i.cs                    ; 4 uses
  %i.cv = icmp uge i64 %i.cu, %i.cs
  %i.cw = icmp ult i64 %i.cu, 9223372036854775793
  call void @llvm.assume(i1 %i.cv), !noalias !20793
  call void @llvm.assume(i1 %i.cw), !noalias !20793
  %i.cx = icmp eq i64 %i.cu, 0
  br i1 %i.cx, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i"

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit": ; preds = %bb.aj, %bb.ak, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i", %bb.al, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20792
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread298"

bb.am:                                            ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.6603.0.copyload = load i64, ptr %.sroa.6603.0..sroa_idx, align 4, !noalias !20794
  %.sroa.7604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.7604.0.copyload = load i32, ptr %.sroa.7604.0..sroa_idx, align 4, !noalias !20794
  %i.cz = load <2 x i32>, ptr %i.cy, align 4, !noalias !20794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20794
  store <2 x i32> %i.cz, ptr %.sroa.27.sroa.0, align 8, !noalias !20803
  %.sroa.27.sroa.0.8.sroa_idx.sroa_idx665 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  store i64 %.sroa.6603.0.copyload, ptr %.sroa.27.sroa.0.8.sroa_idx.sroa_idx665, align 8, !noalias !20803
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread298"

bb.an:                                            ; preds = %bb.q
  %.sroa.012.0.copyload.i.i39 = load i64, ptr %i.b, align 8, !noalias !20794
  %.sroa.614.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.614.i.i35.sroa.0.0.copyload = load i32, ptr %.sroa.614.0..sroa_idx.i.i40, align 4, !noalias !20794
  %.sroa.614.i.i35.sroa.5.0..sroa.614.0..sroa_idx.i.i40.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.614.i.i35.sroa.5.0.copyload = load i32, ptr %.sroa.614.i.i35.sroa.5.0..sroa.614.0..sroa_idx.i.i40.sroa_idx, align 8, !noalias !20794
  %.sroa.614.i.i35.sroa.6.0..sroa.614.0..sroa_idx.i.i40.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.614.i.i35.sroa.6.0.copyload = load i64, ptr %.sroa.614.i.i35.sroa.6.0..sroa.614.0..sroa_idx.i.i40.sroa_idx, align 4, !noalias !20794
  %.sroa.614.i.i35.sroa.7.0..sroa.614.0..sroa_idx.i.i40.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.614.i.i35.sroa.7.0.copyload = load i32, ptr %.sroa.614.i.i35.sroa.7.0..sroa.614.0..sroa_idx.i.i40.sroa_idx, align 4, !noalias !20794
  %.sroa.7.0..sroa_idx.i.i41 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload.i.i42 = load i64, ptr %.sroa.7.0..sroa_idx.i.i41, align 8, !noalias !20794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20794
  store i64 %.sroa.012.0.copyload.i.i39, ptr %.sroa.27.sroa.0, align 8, !alias.scope !20791
  %.sroa.27.sroa.0.8..sroa_idx668 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  store i32 %i.au, ptr %.sroa.27.sroa.0.8..sroa_idx668, align 8, !alias.scope !20791
  %.sroa.27.sroa.0.12..sroa_idx670 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.614.i.i35.sroa.0.0.copyload, ptr %.sroa.27.sroa.0.12..sroa_idx670, align 4
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"

bb.ao:                                            ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.6576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.6576.0.copyload = load i64, ptr %.sroa.6576.0..sroa_idx, align 4, !noalias !20797
  %.sroa.7577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.7577.0.copyload = load i32, ptr %.sroa.7577.0..sroa_idx, align 4, !noalias !20797
  %i.db = load <2 x i32>, ptr %i.da, align 4, !noalias !20797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20797
  store <2 x i32> %i.db, ptr %.sroa.27.sroa.0, align 8, !noalias !20803
  %.sroa.27.sroa.0.8.sroa_idx.sroa_idx666 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  store i64 %.sroa.6576.0.copyload, ptr %.sroa.27.sroa.0.8.sroa_idx.sroa_idx666, align 8, !noalias !20803
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread298"

bb.ap:                                            ; preds = %bb.r
  %.sroa.012.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !20797
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.614.i.i.sroa.0.0.copyload = load i32, ptr %.sroa.614.0..sroa_idx.i.i, align 4, !noalias !20797
  %.sroa.614.i.i.sroa.5.0..sroa.614.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.614.i.i.sroa.5.0.copyload = load i32, ptr %.sroa.614.i.i.sroa.5.0..sroa.614.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !20797
  %.sroa.614.i.i.sroa.6.0..sroa.614.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.614.i.i.sroa.6.0.copyload = load i64, ptr %.sroa.614.i.i.sroa.6.0..sroa.614.0..sroa_idx.i.i.sroa_idx, align 4, !noalias !20797
  %.sroa.614.i.i.sroa.7.0..sroa.614.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.614.i.i.sroa.7.0.copyload = load i32, ptr %.sroa.614.i.i.sroa.7.0..sroa.614.0..sroa_idx.i.i.sroa_idx, align 4, !noalias !20797
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !20797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20797
  store i64 %.sroa.012.0.copyload.i.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !20791
  %.sroa.27.sroa.0.8..sroa_idx667 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  store i32 %i.ay, ptr %.sroa.27.sroa.0.8..sroa_idx667, align 8, !alias.scope !20791
  %.sroa.27.sroa.0.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.614.i.i.sroa.0.0.copyload, ptr %.sroa.27.sroa.0.12..sroa_idx, align 4
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"

bb.aq:                                            ; preds = %bb.s
  store i32 %.sroa.0182.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !20791
  %.sroa.27.sroa.0.4..sroa_idx660 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 4
  store ptr %.sroa.4183.0.copyload.i, ptr %.sroa.27.sroa.0.4..sroa_idx660, align 4, !alias.scope !20791
  %.sroa.27.sroa.0.12..sroa_idx672 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.5184.0.copyload.i305, ptr %.sroa.27.sroa.0.12..sroa_idx672, align 4
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread298"

bb.ar:                                            ; preds = %bb.s
  %i.dc = ptrtoint ptr %.sroa.628.sroa.6.0 to i64
  %.sroa.14.0.extract.trunc = trunc i64 %i.dc to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4183.0.copyload.i) ]
  store ptr %.sroa.4183.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !20791
  %.sroa.27.sroa.0.8..sroa_idx669 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  store i8 %.sroa.14.0.extract.trunc, ptr %.sroa.27.sroa.0.8..sroa_idx669, align 8, !alias.scope !20791
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"

bb.as:                                            ; preds = %bb.t
  store i32 %.sroa.0191.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !20791
  %.sroa.27.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 4
  store ptr %.sroa.4192.0.copyload.i, ptr %.sroa.27.sroa.0.4..sroa_idx, align 4, !alias.scope !20791
  %.sroa.27.sroa.0.12..sroa_idx671 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.5193.0.copyload.i303, ptr %.sroa.27.sroa.0.12..sroa_idx671, align 4
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread298"

bb.at:                                            ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4192.0.copyload.i) ]
  store ptr %.sroa.4192.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !20791
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread"

"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread": ; preds = %bb.u, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.g, %bb.v, %bb.ad, %bb.o, %bb.an, %bb.ap, %bb.ar, %bb.at
  %.sroa.67.sroa.7.0 = phi i32 [ undef, %bb.g ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.v ], [ undef, %bb.ad ], [ undef, %bb.o ], [ %.sroa.614.i.i35.sroa.7.0.copyload, %bb.an ], [ %.sroa.614.i.i.sroa.7.0.copyload, %bb.ap ], [ undef, %bb.ar ], [ undef, %bb.at ], [ undef, %bb.u ]
  %.sroa.67.sroa.0.0 = phi i64 [ undef, %bb.g ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.v ], [ undef, %bb.ad ], [ undef, %bb.o ], [ %.sroa.614.i.i35.sroa.6.0.copyload, %bb.an ], [ %.sroa.614.i.i.sroa.6.0.copyload, %bb.ap ], [ undef, %bb.ar ], [ undef, %bb.at ], [ undef, %bb.u ]
  %.sroa.27.sroa.37.1 = phi i32 [ undef, %bb.g ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.v ], [ undef, %bb.ad ], [ undef, %bb.o ], [ %.sroa.614.i.i35.sroa.5.0.copyload, %bb.an ], [ %.sroa.614.i.i.sroa.5.0.copyload, %bb.ap ], [ undef, %bb.ar ], [ undef, %bb.at ], [ undef, %bb.u ]
  %.sroa.68.0.ph = phi i64 [ undef, %bb.g ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.v ], [ undef, %bb.ad ], [ undef, %bb.o ], [ %.sroa.7.0.copyload.i.i42, %bb.an ], [ %.sroa.7.0.copyload.i.i, %bb.ap ], [ undef, %bb.ar ], [ undef, %bb.at ], [ undef, %bb.u ]
  %.sroa.058.1.ph = phi i64 [ 3, %bb.g ], [ 4, %bb.i ], [ 5, %bb.j ], [ 6, %bb.k ], [ 7, %bb.l ], [ 8, %bb.m ], [ 9, %bb.v ], [ 10, %bb.ad ], [ 11, %bb.o ], [ 13, %bb.an ], [ 14, %bb.ap ], [ 15, %bb.ar ], [ 16, %bb.at ], [ 17, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.av

"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread298": ; preds = %bb.aq, %bb.ae, %bb.ao, %bb.as, %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit", %bb.am
  %.sroa.27.sroa.37.2 = phi i32 [ %.sroa.27.sroa.37.0, %bb.ae ], [ %.sroa.6167.0.copyload.i51, %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit" ], [ %.sroa.7604.0.copyload, %bb.am ], [ %.sroa.7577.0.copyload, %bb.ao ], [ %.sroa.5184.0.copyload.i306, %bb.aq ], [ %.sroa.5193.0.copyload.i304, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.au

"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit": ; preds = %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !20792, !nonnull !145, !align !149, !noundef !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.71, ptr noundef nonnull align 4 dereferenceable(20) %i.j, i64 20, i1 false), !noalias !20803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5205.0..sroa_idx, i64 16, i1 false), !noalias !20803
  %.sroa.049.i.sroa.6.sroa.0.0.copyload = load i64, ptr %.sroa.8208.0..sroa_idx, align 4, !noalias !20792
  %.sroa.049.i.sroa.6.sroa.5.0..sroa.8208.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %.sroa.049.i.sroa.6.sroa.5.0.copyload = load i32, ptr %.sroa.049.i.sroa.6.sroa.5.0..sroa.8208.0..sroa_idx.sroa_idx, align 4, !noalias !20792
  %.sroa.049.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.049.i.sroa.7.0.copyload = load i64, ptr %.sroa.049.i.sroa.7.0..sroa_idx, align 8, !noalias !20792
  %.sroa.049.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.049.i.sroa.8.0.copyload = load i64, ptr %.sroa.049.i.sroa.8.0..sroa_idx, align 8, !noalias !20792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.df = icmp eq i64 %.sroa.026.0, 18
  br i1 %i.df, label %bb.au, label %bb.av

bb.au:                                            ; preds = %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread298", %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit"
  %.sroa.27.sroa.37.3 = phi i32 [ %.sroa.27.sroa.37.2, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread298" ], [ %.sroa.628.sroa.7.0, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit" ]
  %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.0377.sroa.0.0.copyload = load ptr, ptr %.sroa.27.sroa.0, align 8
  %.sroa.27.sroa.0.8.sroa_idx.sroa_idx664 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  %.sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.0377.sroa.7.0.copyload = load i64, ptr %.sroa.27.sroa.0.8.sroa_idx.sroa_idx664, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.71)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.0377.sroa.0.0.copyload, ptr %i.dg, align 8
  %.sroa.2.0..sroa_idx414 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.0377.sroa.7.0.copyload, ptr %.sroa.2.0..sroa_idx414, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.27.sroa.37.3, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 18, ptr %0, align 8
  br label %bb.bc

bb.av:                                            ; preds = %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread", %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit"
  %.sroa.67.sroa.7.1 = phi i32 [ %.sroa.67.sroa.7.0, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread" ], [ %.sroa.049.i.sroa.6.sroa.5.0.copyload, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit" ] ; 2 uses
  %.sroa.67.sroa.0.1 = phi i64 [ %.sroa.67.sroa.0.0, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread" ], [ %.sroa.049.i.sroa.6.sroa.0.0.copyload, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit" ] ; 2 uses
  %.sroa.27.sroa.37.4 = phi i32 [ %.sroa.27.sroa.37.1, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread" ], [ %.sroa.628.sroa.7.0, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit" ] ; 2 uses
  %.sroa.058.1296 = phi i64 [ %.sroa.058.1.ph, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread" ], [ %.sroa.026.0, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit" ] ; 3 uses
  %.sroa.68.0295 = phi i64 [ %.sroa.68.0.ph, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread" ], [ %.sroa.049.i.sroa.7.0.copyload, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit" ] ; 2 uses
  %.sroa.70.0294 = phi i64 [ undef, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread" ], [ %.sroa.049.i.sroa.8.0.copyload, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit" ] ; 2 uses
  %.sroa.7077.0293 = phi ptr [ undef, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit.thread" ], [ %i.de, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h1c728c8125142579E.exit" ] ; 2 uses
  %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.521.sroa.0.0.copyload = load ptr, ptr %.sroa.27.sroa.0, align 8 ; 4 uses
  %.sroa.27.sroa.0.8.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  %.sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.521.sroa.7.0.copyload = load i64, ptr %.sroa.27.sroa.0.8.sroa_idx.sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4.sroa.6, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.71, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.71)
  br i1 %3, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11349)
  %.sroa.11349.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11349, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11349.88..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !20804)
  call void @llvm.experimental.noalias.scope.decl(metadata !20805)
  %i.dh = icmp eq i64 %.sroa.058.1296, 9
  br i1 %i.dh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.521.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20806
  %i.di = load ptr, ptr %2, align 8, !alias.scope !20805, !nonnull !145, !align !149, !noundef !145
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !20805, !nonnull !145, !align !163, !noundef !145
  %i.dl = load i8, ptr %i.dk, align 1, !range !153, !noalias !20806, !noundef !145
  %i.dm = trunc nuw i8 %i.dl to i1
  call fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17h184be7d634046403E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.521.sroa.0.0.copyload, ptr noalias noundef align 8 dereferenceable(8) %i.di, i1 noundef zeroext %i.dm), !noalias !20806, !inline_history !20750
  %i.dn = load i32, ptr %i.e, align 8, !range !197, !noalias !20806, !noundef !145
  %i.do = trunc nuw i32 %i.dn to i1
  br i1 %i.do, label %bb.az, label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4.sroa.6, i64 20, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.11349, i64 20, i1 false), !noalias !20805
  store i64 %.sroa.058.1296, ptr %0, align 8, !noalias !20807
  %.sroa.4547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.521.sroa.0.0.copyload, ptr %.sroa.4547.0..sroa_idx, align 8, !noalias !20807
  %.sroa.5548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.521.sroa.7.0.copyload, ptr %.sroa.5548.0..sroa_idx, align 8, !noalias !20807
  %.sroa.6549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.27.sroa.37.4, ptr %.sroa.6549.0..sroa_idx, align 8, !noalias !20807
  %.sroa.7550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i64 %.sroa.67.sroa.0.1, ptr %.sroa.7550.0..sroa_idx, align 4, !noalias !20807
  %.sroa.8551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.67.sroa.7.1, ptr %.sroa.8551.0..sroa_idx, align 4, !noalias !20807
  %.sroa.9552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.68.0295, ptr %.sroa.9552.0..sroa_idx, align 8, !noalias !20807
  %.sroa.10553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.70.0294, ptr %.sroa.10553.0..sroa_idx, align 8, !noalias !20807
  %.sroa.11554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.7077.0293, ptr %.sroa.11554.0..sroa_idx, align 8, !noalias !20807
  br label %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit34"

bb.az:                                            ; preds = %bb.ax
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dq, ptr noundef nonnull align 4 dereferenceable(20) %i.dp, i64 20, i1 false), !noalias !20807
  store i64 18, ptr %0, align 8, !alias.scope !20804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20806
  br label %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit34"

bb.ba:                                            ; preds = %bb.ax
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !20806, !nonnull !145, !noundef !145
  %.sroa.6.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i33, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  store i64 9, ptr %0, align 8, !alias.scope !20804
  %.sroa.42.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ds, ptr %.sroa.42.0..sroa_idx.i32, align 8, !alias.scope !20804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20806
  br label %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit34"

"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit34": ; preds = %bb.az, %bb.ba, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11349)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.av
  store i64 %.sroa.058.1296, ptr %0, align 8
  %.sroa.313.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.521.sroa.0.0.copyload, ptr %.sroa.313.0..sroa_idx14, align 8
  %.sroa.313.sroa.3.0..sroa.313.0..sroa_idx14.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.521.sroa.7.0.copyload, ptr %.sroa.313.sroa.3.0..sroa.313.0..sroa_idx14.sroa_idx, align 8
  %.sroa.313.sroa.3.sroa.3.0..sroa.313.sroa.3.0..sroa.313.0..sroa_idx14.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.27.sroa.37.4, ptr %.sroa.313.sroa.3.sroa.3.0..sroa.313.sroa.3.0..sroa.313.0..sroa_idx14.sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i64 %.sroa.67.sroa.0.1, ptr %.sroa.4.0..sroa_idx15, align 4
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.67.sroa.7.1, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx15.sroa_idx, align 4
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.68.0295, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx15.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.70.0294, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx15.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.7077.0293, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx15.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx15.sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4.sroa.6, i64 20, i1 false)
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h5e562ee2b3ea0685E.exit34", %bb.bb, %bb.e, %bb.au
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse17hb8161e11511a13d9E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.46.i.i2 = alloca [96 x i8], align 8      ; 5 uses
  %i.f = alloca [104 x i8], align 8               ; 8 uses
  %.sroa.5.i3 = alloca [96 x i8], align 8         ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = alloca [56 x i8], align 8                ; 7 uses
  %i.j = alloca [20 x i8], align 4                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 8 uses
  %i.n = alloca [88 x i8], align 8                ; 9 uses
  %.sroa.46.i.i.sroa.5 = alloca [32 x i8], align 8 ; 4 uses
  %.sroa.46.i.i.sroa.7 = alloca [20 x i8], align 8 ; 4 uses
  %i.o = alloca [104 x i8], align 8               ; 10 uses
  %.sroa.5.i.sroa.6 = alloca [32 x i8], align 8   ; 5 uses
  %.sroa.5.i.sroa.8 = alloca [20 x i8], align 8   ; 5 uses
  %.sroa.5.i.sroa.10 = alloca [16 x i8], align 8  ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.7162 = alloca [32 x i8], align 8         ; 5 uses
  %.sroa.9167 = alloca [20 x i8], align 8         ; 3 uses
  %.sroa.28 = alloca [32 x i8], align 8           ; 5 uses
end_hunk_0
begin_hunk_1_@"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse17head2190d06fb8c23E":bb.a

bb.f:                                             ; preds = %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit", %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit.thread"
  %.sroa.746.1261 = phi ptr [ %i.y, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit.thread" ], [ %i.ai, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit" ]
  %.sroa.11.sroa.8.0260 = phi ptr [ %.sroa.8.0.copyload, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit.thread" ], [ undef, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit" ]
  %.sroa.11.sroa.0.sroa.0.1259 = phi ptr [ %.sroa.5191.0.copyload, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit.thread" ], [ undef, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit" ]
  %.sroa.11.sroa.0.sroa.7.1258 = phi i32 [ %.sroa.6.0.copyload, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit.thread" ], [ undef, %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.sroa.0, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.11.sroa.0.sroa.8, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7.sroa.7, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.11.sroa.9, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.sroa.11, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.0.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.11)
  %i.am = ptrtoint ptr %.sroa.746.1261 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.628.sroa.7.0 = phi i32 [ %.sroa.628.sroa.7.0.copyload, %bb.b ], [ %.sroa.11.sroa.0.sroa.7.1258, %bb.f ] ; 5 uses
  %.sroa.628.sroa.6.0 = phi ptr [ %.sroa.628.sroa.6.0.copyload, %bb.b ], [ %.sroa.11.sroa.0.sroa.0.1259, %bb.f ] ; 10 uses
  %.sroa.628.sroa.0.0 = phi i64 [ %.sroa.628.sroa.0.0.copyload, %bb.b ], [ %i.am, %bb.f ] ; 10 uses
  %.sroa.7.sroa.6.0 = phi ptr [ %.sroa.7.sroa.6.0.copyload, %bb.b ], [ %.sroa.11.sroa.8.0260, %bb.f ] ; 2 uses
  %.sroa.026.0 = phi i64 [ %.sroa.026.0.copyload, %bb.b ], [ %i.u, %bb.f ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21098)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.r, ptr %i.o, align 8, !noalias !21099
  %i.an = icmp ne i64 %.sroa.026.0, 12
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nsw i64 %.sroa.026.0, -3
  %i.ap = icmp samesign ugt i64 %.sroa.026.0, 2
  %i.aq = select i1 %i.ap, i64 %i.ao, i64 9
  switch i64 %i.aq, label %bb.h [
    i64 0, label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"
    i64 1, label %bb.i
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %bb.l
    i64 5, label %bb.m
    i64 6, label %bb.v
    i64 7, label %bb.n
    i64 8, label %bb.o
    i64 9, label %bb.p
    i64 10, label %bb.q
    i64 11, label %bb.r
    i64 12, label %bb.s
    i64 13, label %bb.t
    i64 14, label %bb.u
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"

bb.j:                                             ; preds = %bb.g
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"

bb.k:                                             ; preds = %bb.g
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"

bb.l:                                             ; preds = %bb.g
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"

bb.m:                                             ; preds = %bb.g
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"

bb.n:                                             ; preds = %bb.g
  %i.ar = inttoptr i64 %.sroa.628.sroa.0.0 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !21099
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.628.sroa.6.0) ]
  store ptr %.sroa.628.sroa.6.0, ptr %i.n, align 8, !noalias !21099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !21099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !21099
  invoke fastcc void @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17he9a17f8a9f395bb7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.w unwind label %bb.ag, !noalias !21100, !inline_history !21065

bb.o:                                             ; preds = %bb.g
  %.sroa.597.sroa.0.0.extract.trunc = trunc i64 %.sroa.628.sroa.0.0 to i32
  store i32 %.sroa.597.sroa.0.0.extract.trunc, ptr %.sroa.27.sroa.0, align 8, !alias.scope !21098
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"

bb.p:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7.sroa.7, i64 20, i1 false)
  %.sroa.8208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !21099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8208.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.sroa.0, i64 28, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.6.0) ]
  store i64 %.sroa.026.0, ptr %i.i, align 8, !noalias !21099
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 %.sroa.628.sroa.0.0, ptr %.sroa.5205.0..sroa_idx, align 8, !noalias !21099
  %.sroa.6206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %.sroa.628.sroa.6.0, ptr %.sroa.6206.0..sroa_idx, align 8, !noalias !21099
  %.sroa.7207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %.sroa.628.sroa.7.0, ptr %.sroa.7207.0..sroa_idx, align 8, !noalias !21099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21099
  invoke fastcc void @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17he9a17f8a9f395bb7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 %.sroa.7.sroa.6.0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.ai unwind label %bb.ah, !noalias !21100, !inline_history !21065

bb.q:                                             ; preds = %bb.g
  %.sroa.6238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6238.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.sroa.0, i64 20, i1 false)
  %i.as = load i8, ptr %i.r, align 1, !range !153, !noalias !21102, !noundef !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21101
  store i64 %.sroa.628.sroa.0.0, ptr %i.a, align 8, !noalias !21103
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.628.sroa.6.0, ptr %.sroa.4236.0..sroa_idx, align 8, !noalias !21103
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.sroa.628.sroa.7.0, ptr %.sroa.5237.0..sroa_idx, align 8, !noalias !21103
  call fastcc void @"_ZN18nickel_lang_parser3typ27EnumRowsF$LT$Ty$C$ERows$GT$13try_map_state17hbba7fcbbc5c66ee8E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, i8 %i.as, i8 %i.as, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21101
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = load i32, ptr %i.at, align 8, !range !162, !noalias !21101, !noundef !145 ; 2 uses
  %i.av = icmp eq i32 %i.au, 6
  br i1 %i.av, label %bb.am, label %bb.an

bb.r:                                             ; preds = %bb.g
  %.sroa.6251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6251.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.sroa.0, i64 20, i1 false)
  %i.aw = load i8, ptr %i.r, align 1, !range !153, !noalias !21105, !noundef !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21104
  store i64 %.sroa.628.sroa.0.0, ptr %i.c, align 8, !noalias !21106
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.628.sroa.6.0, ptr %.sroa.4249.0..sroa_idx, align 8, !noalias !21106
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %.sroa.628.sroa.7.0, ptr %.sroa.5250.0..sroa_idx, align 8, !noalias !21106
  call fastcc void @"_ZN18nickel_lang_parser3typ29RecordRowsF$LT$Ty$C$RRows$GT$13try_map_state17hdc7fa7abf9534dd5E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, i8 %i.aw, i8 %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !range !159, !noalias !21104, !noundef !145 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 7
  br i1 %i.az, label %bb.ao, label %bb.ap

bb.s:                                             ; preds = %bb.g
  %i.ba = inttoptr i64 %.sroa.628.sroa.0.0 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21099
  call fastcc void @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17he9a17f8a9f395bb7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !21100, !inline_history !21065
  %i.bb = load i32, ptr %i.g, align 8, !range !197, !noalias !21099, !noundef !145
  %i.bc = trunc nuw i32 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.0182.0.copyload.i = load i32, ptr %i.bd, align 4, !noalias !21099
  %.sroa.4183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4183.0.copyload.i = load ptr, ptr %.sroa.4183.0..sroa_idx.i, align 8, !noalias !21099 ; 3 uses
  %.sroa.5184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5184.0.copyload.i305 = load i32, ptr %.sroa.5184.0..sroa_idx.i, align 8
  %.sroa.5184.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.5184.0.copyload.i306 = load i32, ptr %.sroa.5184.0..sroa_idx.i.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21099
  br i1 %i.bc, label %bb.aq, label %bb.ar

bb.t:                                             ; preds = %bb.g
  %i.be = inttoptr i64 %.sroa.628.sroa.0.0 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21099
  call fastcc void @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17he9a17f8a9f395bb7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 %i.be, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !21100, !inline_history !21065
  %i.bf = load i32, ptr %i.f, align 8, !range !197, !noalias !21099, !noundef !145
  %i.bg = trunc nuw i32 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.0191.0.copyload.i = load i32, ptr %i.bh, align 4, !noalias !21099
  %.sroa.4192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4192.0.copyload.i = load ptr, ptr %.sroa.4192.0..sroa_idx.i, align 8, !noalias !21099 ; 3 uses
  %.sroa.5193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5193.0.copyload.i303 = load i32, ptr %.sroa.5193.0..sroa_idx.i, align 8
  %.sroa.5193.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.5193.0.copyload.i304 = load i32, ptr %.sroa.5193.0..sroa_idx.i.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21099
  br i1 %i.bg, label %bb.as, label %bb.at

bb.u:                                             ; preds = %bb.g
  store i64 %.sroa.628.sroa.0.0, ptr %.sroa.27.sroa.0, align 8, !alias.scope !21098
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"

bb.v:                                             ; preds = %bb.g
  %i.bi = inttoptr i64 %.sroa.628.sroa.0.0 to ptr
  %i.bj = icmp ne i64 %.sroa.628.sroa.0.0, 0
  call void @llvm.assume(i1 %i.bj)
  store ptr %i.bi, ptr %.sroa.27.sroa.0, align 8, !alias.scope !21098
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"

bb.w:                                             ; preds = %bb.n
  %i.bk = load i32, ptr %i.l, align 8, !range !197, !noalias !21099, !noundef !145
  %i.bl = trunc nuw i32 %i.bk to i1
  br i1 %i.bl, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.0147.0.copyload.i = load i32, ptr %i.bm, align 4, !noalias !21099
  %.sroa.5148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5148.0.copyload.i = load ptr, ptr %.sroa.5148.0..sroa_idx.i, align 8, !noalias !21099
  %.sroa.6149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6149.0.copyload.i54 = load i32, ptr %.sroa.6149.0..sroa_idx.i, align 8
  %.sroa.6149.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %.sroa.6149.0.copyload.i55 = load i32, ptr %.sroa.6149.0..sroa_idx.i.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !21099
  store i32 %.sroa.0147.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !21098
  %.sroa.27.sroa.0.4..sroa_idx663 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 4
  store ptr %.sroa.5148.0.copyload.i, ptr %.sroa.27.sroa.0.4..sroa_idx663, align 4, !alias.scope !21098
  %.sroa.27.sroa.0.12..sroa_idx675 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.6149.0.copyload.i54, ptr %.sroa.27.sroa.0.12..sroa_idx675, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !21099
  invoke void @"_ZN4core3ptr226drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$nickel_lang_core..typ..RecordRows$C$nickel_lang_core..typ..EnumRows$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17ha0c517b75e5c97a4E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %.sroa.628.sroa.6.0) #84
          to label %"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E.exit" unwind label %bb.y, !noalias !21107, !inline_history !21086

bb.y:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.628.sroa.6.0, i64 noundef 104, i64 noundef 8) #83, !noalias !21107, !inline_history !21087
  br label %common.resume

"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E.exit": ; preds = %bb.x
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.628.sroa.6.0, i64 noundef 104, i64 noundef 8) #83, !noalias !21107, !inline_history !21087
  br label %bb.ae

bb.z:                                             ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !21099, !nonnull !145, !align !149, !noundef !145 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !21099
  store ptr %i.bp, ptr %i.m, align 8, !noalias !21099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !21099
  invoke fastcc void @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17he9a17f8a9f395bb7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef align 8 dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 %.sroa.628.sroa.6.0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.ab unwind label %bb.aa, !noalias !21100, !inline_history !21065

bb.aa:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #86
          to label %common.resume unwind label %bb.af, !noalias !21100, !inline_history !21065

bb.ab:                                            ; preds = %bb.z
  %i.br = load i32, ptr %i.k, align 8, !range !197, !noalias !21099, !noundef !145
  %i.bs = trunc nuw i32 %i.br to i1
  br i1 %i.bs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.0156.0.copyload.i = load i32, ptr %i.bt, align 4, !noalias !21099
  %.sroa.5157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5157.0.copyload.i = load ptr, ptr %.sroa.5157.0..sroa_idx.i, align 8, !noalias !21099
  %.sroa.6158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6158.0.copyload.i52 = load i32, ptr %.sroa.6158.0..sroa_idx.i, align 8
  %.sroa.6158.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.6158.0.copyload.i53 = load i32, ptr %.sroa.6158.0..sroa_idx.i.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !21099
  store i32 %.sroa.0156.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !21098
  %.sroa.27.sroa.0.4..sroa_idx662 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 4
  store ptr %.sroa.5157.0.copyload.i, ptr %.sroa.27.sroa.0.4..sroa_idx662, align 4, !alias.scope !21098
  %.sroa.27.sroa.0.12..sroa_idx674 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.6158.0.copyload.i52, ptr %.sroa.27.sroa.0.12..sroa_idx674, align 4
  call void @"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !21100, !inline_history !21065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !21099
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !21099, !nonnull !145, !align !149, !noundef !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !21099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !21099
  store ptr %i.bp, ptr %.sroa.27.sroa.0, align 8, !alias.scope !21098
  %.sroa.27.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  store ptr %i.bv, ptr %.sroa.27.sroa.0.8..sroa_idx, align 8, !alias.scope !21098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !21099
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"

bb.ae:                                            ; preds = %bb.ac, %"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E.exit"
  %.sroa.27.sroa.37.0 = phi i32 [ %.sroa.6149.0.copyload.i55, %"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E.exit" ], [ %.sroa.6158.0.copyload.i53, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !21099
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread298"

bb.af:                                            ; preds = %bb.ag, %bb.aa
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !21100, !inline_history !21065
  unreachable

bb.ag:                                            ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hffeb5fc86f39bc32E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #86
          to label %common.resume unwind label %bb.af, !noalias !21100, !inline_history !21065

bb.ah:                                            ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i) #86, !noalias !21100, !inline_history !21065
  br label %common.resume

bb.ai:                                            ; preds = %bb.p
  %i.bz = load i32, ptr %i.h, align 8, !range !197, !noalias !21099, !noundef !145
  %i.ca = trunc nuw i32 %i.bz to i1
  br i1 %i.ca, label %bb.aj, label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit"

bb.aj:                                            ; preds = %bb.ai
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.0165.0.copyload.i = load i32, ptr %i.cb, align 4, !noalias !21099
  %.sroa.5166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5166.0.copyload.i = load ptr, ptr %.sroa.5166.0..sroa_idx.i, align 8, !noalias !21099
  %.sroa.6167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6167.0.copyload.i50 = load i32, ptr %.sroa.6167.0..sroa_idx.i, align 8
  %.sroa.6167.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.6167.0.copyload.i51 = load i32, ptr %.sroa.6167.0..sroa_idx.i.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21099
  store i32 %.sroa.0165.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !21098
  %.sroa.27.sroa.0.4..sroa_idx661 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 4
  store ptr %.sroa.5166.0.copyload.i, ptr %.sroa.27.sroa.0.4..sroa_idx661, align 4, !alias.scope !21098
  %.sroa.27.sroa.0.12..sroa_idx673 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.6167.0.copyload.i50, ptr %.sroa.27.sroa.0.12..sroa_idx673, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !21108)
  switch i64 %.sroa.026.0, label %bb.ak [
    i64 0, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit"
    i64 1, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %.val3.i = load i64, ptr %.sroa.6206.0..sroa_idx, align 8, !alias.scope !21108, !noalias !21100, !noundef !145 ; 4 uses
  %i.cc = icmp eq i64 %.val3.i, 0
  br i1 %i.cc, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %bb.ak
  %i.cd = shl i64 %.val3.i, 2
  %i.ce = icmp slt i64 %.val3.i, 4611686018427387900
  call void @llvm.assume(i1 %i.ce), !noalias !21100
  %i.cf = and i64 %i.cd, -16                      ; 2 uses
  %i.cg = add i64 %i.cf, 16                       ; 2 uses
  %i.ch = add nsw i64 %.val3.i, 17
  %i.ci = add i64 %i.ch, %i.cg                    ; 4 uses
  %i.cj = icmp uge i64 %i.ci, %i.cg
  %i.ck = icmp ult i64 %i.ci, 9223372036854775793
  call void @llvm.assume(i1 %i.cj), !noalias !21100
  call void @llvm.assume(i1 %i.ck), !noalias !21100
  %i.cl = icmp eq i64 %i.ci, 0
  br i1 %i.cl, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i
  %.sink.i = phi i64 [ %i.cr, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i ], [ %i.cf, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ]
  %.sink7.i = phi i64 [ %i.cu, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i ], [ %i.ci, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ]
  %.val.sink.i = load ptr, ptr %.sroa.5205.0..sroa_idx, align 8, !alias.scope !21108, !noalias !21100, !nonnull !145, !noundef !145
  %i.cm = sub nuw nsw i64 -16, %.sink.i
  %i.cn = getelementptr inbounds i8, ptr %.val.sink.i, i64 %i.cm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cn, i64 noundef %.sink7.i, i64 noundef range(i64 1, -9223372036854775807) 16) #83, !noalias !21109
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit"

bb.al:                                            ; preds = %bb.aj
  %.val1.i = load i64, ptr %.sroa.6206.0..sroa_idx, align 8, !alias.scope !21108, !noalias !21100, !noundef !145 ; 4 uses
  %i.co = icmp eq i64 %.val1.i, 0
  br i1 %i.co, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i: ; preds = %bb.al
  %i.cp = shl i64 %.val1.i, 2
  %i.cq = icmp slt i64 %.val1.i, 4611686018427387900
  call void @llvm.assume(i1 %i.cq), !noalias !21100
  %i.cr = and i64 %i.cp, -16                      ; 2 uses
  %i.cs = add i64 %i.cr, 16                       ; 2 uses
  %i.ct = add nsw i64 %.val1.i, 17
  %i.cu = add i64 %i.ct, %i.cs                    ; 4 uses
  %i.cv = icmp uge i64 %i.cu, %i.cs
  %i.cw = icmp ult i64 %i.cu, 9223372036854775793
  call void @llvm.assume(i1 %i.cv), !noalias !21100
  call void @llvm.assume(i1 %i.cw), !noalias !21100
  %i.cx = icmp eq i64 %i.cu, 0
  br i1 %i.cx, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i"

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit": ; preds = %bb.aj, %bb.ak, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i", %bb.al, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21099
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread298"

bb.am:                                            ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.6603.0.copyload = load i64, ptr %.sroa.6603.0..sroa_idx, align 4, !noalias !21101
  %.sroa.7604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.7604.0.copyload = load i32, ptr %.sroa.7604.0..sroa_idx, align 4, !noalias !21101
  %i.cz = load <2 x i32>, ptr %i.cy, align 4, !noalias !21101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21101
  store <2 x i32> %i.cz, ptr %.sroa.27.sroa.0, align 8, !noalias !21110
  %.sroa.27.sroa.0.8.sroa_idx.sroa_idx665 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  store i64 %.sroa.6603.0.copyload, ptr %.sroa.27.sroa.0.8.sroa_idx.sroa_idx665, align 8, !noalias !21110
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread298"

bb.an:                                            ; preds = %bb.q
  %.sroa.012.0.copyload.i.i39 = load i64, ptr %i.b, align 8, !noalias !21101
  %.sroa.614.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.614.i.i35.sroa.0.0.copyload = load i32, ptr %.sroa.614.0..sroa_idx.i.i40, align 4, !noalias !21101
  %.sroa.614.i.i35.sroa.5.0..sroa.614.0..sroa_idx.i.i40.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.614.i.i35.sroa.5.0.copyload = load i32, ptr %.sroa.614.i.i35.sroa.5.0..sroa.614.0..sroa_idx.i.i40.sroa_idx, align 8, !noalias !21101
  %.sroa.614.i.i35.sroa.6.0..sroa.614.0..sroa_idx.i.i40.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.614.i.i35.sroa.6.0.copyload = load i64, ptr %.sroa.614.i.i35.sroa.6.0..sroa.614.0..sroa_idx.i.i40.sroa_idx, align 4, !noalias !21101
  %.sroa.614.i.i35.sroa.7.0..sroa.614.0..sroa_idx.i.i40.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.614.i.i35.sroa.7.0.copyload = load i32, ptr %.sroa.614.i.i35.sroa.7.0..sroa.614.0..sroa_idx.i.i40.sroa_idx, align 4, !noalias !21101
  %.sroa.7.0..sroa_idx.i.i41 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload.i.i42 = load i64, ptr %.sroa.7.0..sroa_idx.i.i41, align 8, !noalias !21101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21101
  store i64 %.sroa.012.0.copyload.i.i39, ptr %.sroa.27.sroa.0, align 8, !alias.scope !21098
  %.sroa.27.sroa.0.8..sroa_idx668 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  store i32 %i.au, ptr %.sroa.27.sroa.0.8..sroa_idx668, align 8, !alias.scope !21098
  %.sroa.27.sroa.0.12..sroa_idx670 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.614.i.i35.sroa.0.0.copyload, ptr %.sroa.27.sroa.0.12..sroa_idx670, align 4
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"

bb.ao:                                            ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.6576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.6576.0.copyload = load i64, ptr %.sroa.6576.0..sroa_idx, align 4, !noalias !21104
  %.sroa.7577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.7577.0.copyload = load i32, ptr %.sroa.7577.0..sroa_idx, align 4, !noalias !21104
  %i.db = load <2 x i32>, ptr %i.da, align 4, !noalias !21104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21104
  store <2 x i32> %i.db, ptr %.sroa.27.sroa.0, align 8, !noalias !21110
  %.sroa.27.sroa.0.8.sroa_idx.sroa_idx666 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  store i64 %.sroa.6576.0.copyload, ptr %.sroa.27.sroa.0.8.sroa_idx.sroa_idx666, align 8, !noalias !21110
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread298"

bb.ap:                                            ; preds = %bb.r
  %.sroa.012.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !21104
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.614.i.i.sroa.0.0.copyload = load i32, ptr %.sroa.614.0..sroa_idx.i.i, align 4, !noalias !21104
  %.sroa.614.i.i.sroa.5.0..sroa.614.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.614.i.i.sroa.5.0.copyload = load i32, ptr %.sroa.614.i.i.sroa.5.0..sroa.614.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !21104
  %.sroa.614.i.i.sroa.6.0..sroa.614.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.614.i.i.sroa.6.0.copyload = load i64, ptr %.sroa.614.i.i.sroa.6.0..sroa.614.0..sroa_idx.i.i.sroa_idx, align 4, !noalias !21104
  %.sroa.614.i.i.sroa.7.0..sroa.614.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.614.i.i.sroa.7.0.copyload = load i32, ptr %.sroa.614.i.i.sroa.7.0..sroa.614.0..sroa_idx.i.i.sroa_idx, align 4, !noalias !21104
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !21104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21104
  store i64 %.sroa.012.0.copyload.i.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !21098
  %.sroa.27.sroa.0.8..sroa_idx667 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  store i32 %i.ay, ptr %.sroa.27.sroa.0.8..sroa_idx667, align 8, !alias.scope !21098
  %.sroa.27.sroa.0.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.614.i.i.sroa.0.0.copyload, ptr %.sroa.27.sroa.0.12..sroa_idx, align 4
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"

bb.aq:                                            ; preds = %bb.s
  store i32 %.sroa.0182.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !21098
  %.sroa.27.sroa.0.4..sroa_idx660 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 4
  store ptr %.sroa.4183.0.copyload.i, ptr %.sroa.27.sroa.0.4..sroa_idx660, align 4, !alias.scope !21098
  %.sroa.27.sroa.0.12..sroa_idx672 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.5184.0.copyload.i305, ptr %.sroa.27.sroa.0.12..sroa_idx672, align 4
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread298"

bb.ar:                                            ; preds = %bb.s
  %i.dc = ptrtoint ptr %.sroa.628.sroa.6.0 to i64
  %.sroa.14.0.extract.trunc = trunc i64 %i.dc to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4183.0.copyload.i) ]
  store ptr %.sroa.4183.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !21098
  %.sroa.27.sroa.0.8..sroa_idx669 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  store i8 %.sroa.14.0.extract.trunc, ptr %.sroa.27.sroa.0.8..sroa_idx669, align 8, !alias.scope !21098
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"

bb.as:                                            ; preds = %bb.t
  store i32 %.sroa.0191.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !21098
  %.sroa.27.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 4
  store ptr %.sroa.4192.0.copyload.i, ptr %.sroa.27.sroa.0.4..sroa_idx, align 4, !alias.scope !21098
  %.sroa.27.sroa.0.12..sroa_idx671 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 12
  store i32 %.sroa.5193.0.copyload.i303, ptr %.sroa.27.sroa.0.12..sroa_idx671, align 4
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread298"

bb.at:                                            ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4192.0.copyload.i) ]
  store ptr %.sroa.4192.0.copyload.i, ptr %.sroa.27.sroa.0, align 8, !alias.scope !21098
  br label %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread"

"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread": ; preds = %bb.u, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.g, %bb.v, %bb.ad, %bb.o, %bb.an, %bb.ap, %bb.ar, %bb.at
  %.sroa.67.sroa.7.0 = phi i32 [ undef, %bb.g ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.v ], [ undef, %bb.ad ], [ undef, %bb.o ], [ %.sroa.614.i.i35.sroa.7.0.copyload, %bb.an ], [ %.sroa.614.i.i.sroa.7.0.copyload, %bb.ap ], [ undef, %bb.ar ], [ undef, %bb.at ], [ undef, %bb.u ]
  %.sroa.67.sroa.0.0 = phi i64 [ undef, %bb.g ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.v ], [ undef, %bb.ad ], [ undef, %bb.o ], [ %.sroa.614.i.i35.sroa.6.0.copyload, %bb.an ], [ %.sroa.614.i.i.sroa.6.0.copyload, %bb.ap ], [ undef, %bb.ar ], [ undef, %bb.at ], [ undef, %bb.u ]
  %.sroa.27.sroa.37.1 = phi i32 [ undef, %bb.g ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.v ], [ undef, %bb.ad ], [ undef, %bb.o ], [ %.sroa.614.i.i35.sroa.5.0.copyload, %bb.an ], [ %.sroa.614.i.i.sroa.5.0.copyload, %bb.ap ], [ undef, %bb.ar ], [ undef, %bb.at ], [ undef, %bb.u ]
  %.sroa.68.0.ph = phi i64 [ undef, %bb.g ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.v ], [ undef, %bb.ad ], [ undef, %bb.o ], [ %.sroa.7.0.copyload.i.i42, %bb.an ], [ %.sroa.7.0.copyload.i.i, %bb.ap ], [ undef, %bb.ar ], [ undef, %bb.at ], [ undef, %bb.u ]
  %.sroa.058.1.ph = phi i64 [ 3, %bb.g ], [ 4, %bb.i ], [ 5, %bb.j ], [ 6, %bb.k ], [ 7, %bb.l ], [ 8, %bb.m ], [ 9, %bb.v ], [ 10, %bb.ad ], [ 11, %bb.o ], [ 13, %bb.an ], [ 14, %bb.ap ], [ 15, %bb.ar ], [ 16, %bb.at ], [ 17, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.av

"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread298": ; preds = %bb.aq, %bb.ae, %bb.ao, %bb.as, %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit", %bb.am
  %.sroa.27.sroa.37.2 = phi i32 [ %.sroa.27.sroa.37.0, %bb.ae ], [ %.sroa.6167.0.copyload.i51, %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17hec625ca286c1f616E.exit" ], [ %.sroa.7604.0.copyload, %bb.am ], [ %.sroa.7577.0.copyload, %bb.ao ], [ %.sroa.5184.0.copyload.i306, %bb.aq ], [ %.sroa.5193.0.copyload.i304, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.au

"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit": ; preds = %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !21099, !nonnull !145, !align !149, !noundef !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.71, ptr noundef nonnull align 4 dereferenceable(20) %i.j, i64 20, i1 false), !noalias !21110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5205.0..sroa_idx, i64 16, i1 false), !noalias !21110
  %.sroa.049.i.sroa.6.sroa.0.0.copyload = load i64, ptr %.sroa.8208.0..sroa_idx, align 4, !noalias !21099
  %.sroa.049.i.sroa.6.sroa.5.0..sroa.8208.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %.sroa.049.i.sroa.6.sroa.5.0.copyload = load i32, ptr %.sroa.049.i.sroa.6.sroa.5.0..sroa.8208.0..sroa_idx.sroa_idx, align 4, !noalias !21099
  %.sroa.049.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.049.i.sroa.7.0.copyload = load i64, ptr %.sroa.049.i.sroa.7.0..sroa_idx, align 8, !noalias !21099
  %.sroa.049.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.049.i.sroa.8.0.copyload = load i64, ptr %.sroa.049.i.sroa.8.0..sroa_idx, align 8, !noalias !21099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.df = icmp eq i64 %.sroa.026.0, 18
  br i1 %i.df, label %bb.au, label %bb.av

bb.au:                                            ; preds = %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread298", %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit"
  %.sroa.27.sroa.37.3 = phi i32 [ %.sroa.27.sroa.37.2, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread298" ], [ %.sroa.628.sroa.7.0, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit" ]
  %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.0377.sroa.0.0.copyload = load ptr, ptr %.sroa.27.sroa.0, align 8
  %.sroa.27.sroa.0.8.sroa_idx.sroa_idx664 = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  %.sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.0377.sroa.7.0.copyload = load i64, ptr %.sroa.27.sroa.0.8.sroa_idx.sroa_idx664, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.71)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.0377.sroa.0.0.copyload, ptr %i.dg, align 8
  %.sroa.2.0..sroa_idx414 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.0377.sroa.7.0.copyload, ptr %.sroa.2.0..sroa_idx414, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.27.sroa.37.3, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 18, ptr %0, align 8
  br label %bb.bc

bb.av:                                            ; preds = %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread", %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit"
  %.sroa.67.sroa.7.1 = phi i32 [ %.sroa.67.sroa.7.0, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread" ], [ %.sroa.049.i.sroa.6.sroa.5.0.copyload, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit" ] ; 2 uses
  %.sroa.67.sroa.0.1 = phi i64 [ %.sroa.67.sroa.0.0, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread" ], [ %.sroa.049.i.sroa.6.sroa.0.0.copyload, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit" ] ; 2 uses
  %.sroa.27.sroa.37.4 = phi i32 [ %.sroa.27.sroa.37.1, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread" ], [ %.sroa.628.sroa.7.0, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit" ] ; 2 uses
  %.sroa.058.1296 = phi i64 [ %.sroa.058.1.ph, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread" ], [ %.sroa.026.0, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit" ] ; 3 uses
  %.sroa.68.0295 = phi i64 [ %.sroa.68.0.ph, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread" ], [ %.sroa.049.i.sroa.7.0.copyload, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit" ] ; 2 uses
  %.sroa.70.0294 = phi i64 [ undef, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread" ], [ %.sroa.049.i.sroa.8.0.copyload, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit" ] ; 2 uses
  %.sroa.7077.0293 = phi ptr [ undef, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit.thread" ], [ %i.de, %"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17hb869963a766f1493E.exit" ] ; 2 uses
  %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.521.sroa.0.0.copyload = load ptr, ptr %.sroa.27.sroa.0, align 8 ; 4 uses
  %.sroa.27.sroa.0.8.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.27.sroa.0, i64 8
  %.sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.521.sroa.7.0.copyload = load i64, ptr %.sroa.27.sroa.0.8.sroa_idx.sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4.sroa.6, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.71, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.71)
  br i1 %3, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11349)
  %.sroa.11349.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11349, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11349.88..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !21111)
  call void @llvm.experimental.noalias.scope.decl(metadata !21112)
  %i.dh = icmp eq i64 %.sroa.058.1296, 9
  br i1 %i.dh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.521.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !21113
  %i.di = load ptr, ptr %2, align 8, !alias.scope !21112, !nonnull !145, !align !149, !noundef !145
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !21112, !nonnull !145, !align !163, !noundef !145
  %i.dl = load i8, ptr %i.dk, align 1, !range !153, !noalias !21113, !noundef !145
  %i.dm = trunc nuw i8 %i.dl to i1
  call fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17hb60107827bc5d69cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.521.sroa.0.0.copyload, ptr noalias noundef align 8 dereferenceable(8) %i.di, i1 noundef zeroext %i.dm), !noalias !21113, !inline_history !21057
  %i.dn = load i32, ptr %i.e, align 8, !range !197, !noalias !21113, !noundef !145
  %i.do = trunc nuw i32 %i.dn to i1
  br i1 %i.do, label %bb.az, label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4.sroa.6, i64 20, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.11349, i64 20, i1 false), !noalias !21112
  store i64 %.sroa.058.1296, ptr %0, align 8, !noalias !21114
  %.sroa.4547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.521.sroa.0.0.copyload, ptr %.sroa.4547.0..sroa_idx, align 8, !noalias !21114
  %.sroa.5548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.521.sroa.7.0.copyload, ptr %.sroa.5548.0..sroa_idx, align 8, !noalias !21114
  %.sroa.6549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.27.sroa.37.4, ptr %.sroa.6549.0..sroa_idx, align 8, !noalias !21114
  %.sroa.7550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i64 %.sroa.67.sroa.0.1, ptr %.sroa.7550.0..sroa_idx, align 4, !noalias !21114
  %.sroa.8551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.67.sroa.7.1, ptr %.sroa.8551.0..sroa_idx, align 4, !noalias !21114
  %.sroa.9552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.68.0295, ptr %.sroa.9552.0..sroa_idx, align 8, !noalias !21114
  %.sroa.10553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.70.0294, ptr %.sroa.10553.0..sroa_idx, align 8, !noalias !21114
  %.sroa.11554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.7077.0293, ptr %.sroa.11554.0..sroa_idx, align 8, !noalias !21114
  br label %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit34"

bb.az:                                            ; preds = %bb.ax
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dq, ptr noundef nonnull align 4 dereferenceable(20) %i.dp, i64 20, i1 false), !noalias !21114
  store i64 18, ptr %0, align 8, !alias.scope !21111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21113
  br label %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit34"

bb.ba:                                            ; preds = %bb.ax
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !21113, !nonnull !145, !noundef !145
  %.sroa.6.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i33, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  store i64 9, ptr %0, align 8, !alias.scope !21111
  %.sroa.42.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ds, ptr %.sroa.42.0..sroa_idx.i32, align 8, !alias.scope !21111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21113
  br label %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit34"

"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit34": ; preds = %bb.az, %bb.ba, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11349)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.av
  store i64 %.sroa.058.1296, ptr %0, align 8
  %.sroa.313.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.27.sroa.0.0..sroa.521.sroa.0.0.copyload, ptr %.sroa.313.0..sroa_idx14, align 8
  %.sroa.313.sroa.3.0..sroa.313.0..sroa_idx14.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.27.sroa.0.8..sroa.521.sroa.7.0.copyload, ptr %.sroa.313.sroa.3.0..sroa.313.0..sroa_idx14.sroa_idx, align 8
  %.sroa.313.sroa.3.sroa.3.0..sroa.313.sroa.3.0..sroa.313.0..sroa_idx14.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.27.sroa.37.4, ptr %.sroa.313.sroa.3.sroa.3.0..sroa.313.sroa.3.0..sroa.313.0..sroa_idx14.sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i64 %.sroa.67.sroa.0.1, ptr %.sroa.4.0..sroa_idx15, align 4
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.67.sroa.7.1, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx15.sroa_idx, align 4
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.68.0295, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx15.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.70.0294, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx15.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.7077.0293, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx15.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx15.sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4.sroa.6, i64 20, i1 false)
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %"_ZN136_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17h792f827572d4030aE.exit34", %bb.bb, %bb.e, %bb.au
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse17hec6e9ad6587a4439E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [20 x i8], align 4                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 9 uses
  %.sroa.6.sroa.8 = alloca [16 x i8], align 8     ; 2 uses
  %.sroa.6.sroa.4 = alloca [32 x i8], align 8     ; 2 uses
  %.sroa.6.sroa.6 = alloca [20 x i8], align 8     ; 2 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.7154 = alloca [32 x i8], align 8         ; 5 uses
  %.sroa.9159 = alloca [20 x i8], align 8         ; 3 uses
  %.sroa.28 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.29 = alloca [20 x i8], align 8           ; 3 uses
  %.sroa.10 = alloca [20 x i8], align 4           ; 5 uses
  %i.m = alloca [1 x i8], align 1                 ; 2 uses
  %i.n = zext i1 %3 to i8                         ; 5 uses
  store i8 %i.n, ptr %i.m, align 1
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN18nickel_lang_parser7grammar10__action3217h230fe710d2ce8787E:bb.a

bb.g:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val2.i.i = load i64, ptr %i.j, align 8, !range !54, !alias.scope !9437, !noundef !23 ; 3 uses
  %i.k = icmp ne i64 %.val2.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %or.cond.i4.i.i = icmp slt i64 %.val2.i.i, 1
  br i1 %or.cond.i4.i.i, label %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val3.i.i = load ptr, ptr %i.l, align 8, !alias.scope !9437, !nonnull !23, !noundef !23
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !9439
  br label %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit"

"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit": ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar10__action3617h3d9cae334d71bb3dE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, i32 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(296) %4, i64 %.8.val1, i64 %.8.val3, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %5, i64 %.8.val5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %6) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9637 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.1076 = alloca [200 x i8], align 8        ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.044.sroa.0.sroa.0 = alloca [48 x i8], align 8 ; 9 uses
  %i.g = alloca [224 x i8], align 8               ; 5 uses
  %i.h = alloca [104 x i8], align 8               ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [224 x i8], align 8               ; 7 uses
  %i.k = alloca [104 x i8], align 8               ; 6 uses
  %i.l = alloca [280 x i8], align 8               ; 11 uses
  %.sroa.526 = alloca [16 x i8], align 4          ; 4 uses
  %.sroa.9.sroa.9 = alloca [200 x i8], align 8    ; 4 uses
  %.sroa.1022 = alloca [48 x i8], align 8         ; 3 uses
  %i.m = alloca [312 x i8], align 8               ; 18 uses
  %i.n = alloca [48 x i8], align 8                ; 18 uses
  %i.o = alloca [48 x i8], align 8                ; 19 uses
  %i.p = alloca [280 x i8], align 8               ; 11 uses
  %.sroa.0.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sink58.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 6 uses
  %.sink58.i.sroa.gep7 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 6 uses
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %.sink.i.sroa.gep81 = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %.sink.i.sroa.gep86 = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %.sink.i.sroa.gep87 = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 3 uses
  %.sink.i.sroa.gep89 = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  %.sink.i.sroa.gep90 = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.sroa.gep406 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.sroa.gep408 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink.sroa.gep409 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.sroa.gep411 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.sroa.gep412 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.sroa.gep414 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.sroa.gep415 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  switch i64 %.sroa.0.0.copyload, label %bb.d [
    i64 22, label %bb.b
    i64 21, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 21, ptr %i.p, align 8
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 21, ptr %i.p, align 8
  %i.q = trunc i64 %.8.val to i32
  %i.r = trunc i64 %.8.val1 to i32
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.10.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.10.0..sroa_idx150, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.7.0..sroa_idx, i64 272, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.p, align 8
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.b, %bb.d, %bb.c
  %.sroa.9.sroa.9.1 = phi i32 [ %i.r, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ] ; 2 uses
  %.sroa.9.sroa.8.1 = phi i32 [ %i.q, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ] ; 2 uses
  %.sroa.012.0 = phi i32 [ 0, %bb.c ], [ 2, %bb.d ], [ 2, %bb.b ] ; 2 uses
  %.sroa.04.1 = phi i8 [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !23 ; 5 uses
  %i.u = icmp ult i64 %i.t, 32940614417338486
  tail call void @llvm.assume(i1 %i.u)
  %i.v = mul nuw nsw i64 %i.t, 280                ; 2 uses
  %i.w = icmp eq i64 %i.t, 0
  br i1 %i.w, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !9638
  %i.x = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.v, i64 noundef range(i64 1, 9) 8) #54, !noalias !9638 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #52
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.f
  unreachable

.thread:                                          ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, %bb.e
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.x, %bb.e ]
  store i64 %i.t, ptr %i.f, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  store i64 0, ptr %i.ab, align 8
  store i64 0, ptr %i.e, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !range !25, !noalias !9639, !noundef !23
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i", !prof !26

._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i: ; preds = %bb.g
  %.pre.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !9640
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !9640
  br label %bb.j

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i": ; preds = %bb.g
  %i.ai = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc195 unwind label %.thread101 ; 2 uses

.noexc195:                                        ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i"
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = extractvalue { i64, i64 } %i.ai, 1      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !noalias !9641
  store i8 1, ptr %i.af, align 8, !noalias !9641
  br label %bb.j

.thread101:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i"
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.h:                                             ; preds = %bb.i, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.an, %bb.i ]
  %.val187 = load ptr, ptr %i.n, align 8
  %.val188 = load i64, ptr %.sink58.i.sroa.gep7, align 8, !noundef !23
  call fastcc void @"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hc0f2089920304467E"(ptr %.val187, i64 %.val188) #53
  %.val190.pre = load i64, ptr %.sink58.i.sroa.gep, align 8
  %.val189.pre = load ptr, ptr %i.o, align 8
  call fastcc void @"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hc0f2089920304467E"(ptr %.val189.pre, i64 %.val190.pre) #53
  br label %bb.de

bb.i:                                             ; preds = %select.unfold141.invoke, %.invoke
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %.noexc195, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i
  %.pre1.i.i.i.i201 = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i ], [ %i.ak, %.noexc195 ] ; 2 uses
  %i.ao = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i ], [ %i.aj, %.noexc195 ] ; 3 uses
  %i.ap = add i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  store i64 %i.ao, ptr %.sink.i.sroa.gep90, align 8
  store i64 %.pre1.i.i.i.i201, ptr %.sink.i.sroa.gep87, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.aq = add i64 %i.ao, 2
  store i64 %i.aq, ptr %i.ae, align 8, !noalias !9642
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  store i64 %i.ap, ptr %.sink.i.sroa.gep89, align 8
  store i64 %.pre1.i.i.i.i201, ptr %.sink.i.sroa.gep86, align 8
  %.sroa.016.0.copyload = load i64, ptr %3, align 8 ; 3 uses
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.417.0.copyload = load ptr, ptr %.sroa.417.0..sroa_idx, align 8, !nonnull !23, !noundef !23 ; 5 uses
  %i.ar = getelementptr inbounds nuw [280 x i8], ptr %.sroa.417.0.copyload, i64 %i.t ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.m, ptr noundef nonnull align 8 dereferenceable(280) %i.p, i64 280, i1 false)
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 280 ; 2 uses
  store ptr %.sroa.417.0.copyload, ptr %.sroa.213.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 288 ; 2 uses
  store ptr %.sroa.417.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 296
  store i64 %.sroa.016.0.copyload, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 304
  store ptr %i.ar, ptr %.sroa.515.0..sroa_idx, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = icmp eq i64 %.sroa.016.0.copyload, 0
  %i.au = mul nuw i64 %.sroa.016.0.copyload, 280
  %.sroa.9.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.9.sroa.9.0..sroa.9.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.1022.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.6.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.8.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %bb.j
  %i.ay = phi ptr [ %.sroa.417.0.copyload, %bb.j ], [ %i.bh, %.backedge ] ; 9 uses
  %i.az = phi ptr [ %.sroa.417.0.copyload, %bb.j ], [ %i.bi, %.backedge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1076)
  call void @llvm.experimental.noalias.scope.decl(metadata !9643)
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %.thread110, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !9644)
  call void @llvm.experimental.noalias.scope.decl(metadata !9645)
  %i.ba = icmp eq ptr %i.ay, %i.ar
  br i1 %i.ba, label %_ZN4core3ops8function6FnOnce9call_once17h69614988ff04f46bE.exit.thread.i, label %_ZN4core3ops8function6FnOnce9call_once17h69614988ff04f46bE.exit.i

_ZN4core3ops8function6FnOnce9call_once17h69614988ff04f46bE.exit.i: ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 280 ; 3 uses
  store ptr %i.bb, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !9646
  %.sroa.0.0.copyload8.i = load i64, ptr %i.ay, align 8, !noalias !9647 ; 2 uses
  %.not6.i = icmp eq i64 %.sroa.0.0.copyload8.i, 21
  br i1 %.not6.i, label %_ZN4core3ops8function6FnOnce9call_once17h69614988ff04f46bE.exit.thread.i, label %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit.thread127"

_ZN4core3ops8function6FnOnce9call_once17h69614988ff04f46bE.exit.thread.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h69614988ff04f46bE.exit.i, %bb.l
  %7 = phi ptr [ %i.ar, %bb.l ], [ %i.bb, %_ZN4core3ops8function6FnOnce9call_once17h69614988ff04f46bE.exit.i ] ; 3 uses
  %.pre-phi = ptrtoint ptr %7 to i64
  %i.bc = sub nuw i64 %i.as, %.pre-phi
  %i.bd = udiv exact i64 %i.bc, 280
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$$u5b$nickel_lang_parser..utils..FieldDecl$u5d$$GT$17h39a90620e29ce194E"(ptr noalias noundef nonnull align 8 %7, i64 noundef %i.bd), !noalias !9648
  br i1 %i.at, label %.thread116, label %bb.m

bb.m:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h69614988ff04f46bE.exit.thread.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !9648
  br label %.thread116

.thread116:                                       ; preds = %_ZN4core3ops8function6FnOnce9call_once17h69614988ff04f46bE.exit.thread.i, %bb.m
  store ptr null, ptr %.sroa.213.0..sroa_idx, align 8, !alias.scope !9643
  br label %.thread110

bb.n:                                             ; preds = %bb.cd, %.body, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp383, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.jz, %.body ], [ %i.be, %bb.o ], [ %i.kp, %bb.cd ]
  call fastcc void @"_ZN4core3ptr207drop_in_place$LT$core..iter..adapters..chain..Chain$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$C$core..option..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17h011bf4b7e9cd6639E"(ptr noalias noundef align 8 dereferenceable(312) %i.m) #53
  br label %bb.h

bb.o:                                             ; preds = %bb.bu
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit.thread127": ; preds = %_ZN4core3ops8function6FnOnce9call_once17h69614988ff04f46bE.exit.i
  %.sroa.7.i.sroa.7.0..sroa.7.0..sroa_idx9.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  %.sroa.7.i.sroa.6.0..sroa.7.0..sroa_idx9.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.7.i.sroa.5.0..sroa.7.0..sroa_idx9.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.7.i.sroa.5.0.copyload = load i64, ptr %.sroa.7.i.sroa.5.0..sroa.7.0..sroa_idx9.i.sroa_idx, align 8, !noalias !9647
  %.sroa.7.i.sroa.4.0..sroa.7.0..sroa_idx9.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.7.i.sroa.4.0.copyload = load ptr, ptr %.sroa.7.i.sroa.4.0..sroa.7.0..sroa_idx9.i.sroa_idx, align 8, !noalias !9647
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.7.i.sroa.0.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx9.i, align 8, !noalias !9647
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.1076, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.7.i.sroa.6.0..sroa.7.0..sroa_idx9.i.sroa_idx, i64 200, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9649)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.9.sroa.9, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.1076, i64 200, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1022, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.sroa.7.0..sroa.7.0..sroa_idx9.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1076)
  br label %bb.p

.thread110:                                       ; preds = %bb.k, %.thread116
  %i.bf = phi ptr [ %7, %.thread116 ], [ %i.ay, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9650)
  %i.bg = load i64, ptr %i.m, align 8, !range !85, !alias.scope !9651, !noundef !23 ; 3 uses
  %.not.i.i = icmp eq i64 %i.bg, 22
  br i1 %.not.i.i, label %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit.thread", label %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit.thread": ; preds = %.thread110
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1076)
  br label %.loopexit180

"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit": ; preds = %.thread110
  %.sroa.9.sroa.0.0.copyload36 = load i64, ptr %.sroa.9.0..sroa_idx21, align 8, !alias.scope !9652
  %.sroa.9.sroa.7.0.copyload37 = load ptr, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx21.sroa_idx, align 8, !alias.scope !9652
  %.sroa.9.sroa.8.0.copyload38 = load i64, ptr %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx21.sroa_idx, align 8, !alias.scope !9652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.9.sroa.9, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.9.sroa.9.0..sroa.9.0..sroa_idx21.sroa_idx, i64 200, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1022, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1022.0..sroa_idx23, i64 48, i1 false)
  store i64 21, ptr %i.m, align 8, !alias.scope !9653
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1076)
  %.not155 = icmp eq i64 %i.bg, 21
  br i1 %.not155, label %.loopexit180, label %bb.p

bb.p:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit.thread127", %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit"
  %.sroa.019.1136 = phi i64 [ %.sroa.0.0.copyload8.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit.thread127" ], [ %i.bg, %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit" ] ; 2 uses
  %.sroa.9.sroa.0.1135 = phi i64 [ %.sroa.7.i.sroa.0.0.copyload, %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit.thread127" ], [ %.sroa.9.sroa.0.0.copyload36, %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit" ] ; 7 uses
  %.sroa.9.sroa.7.1134 = phi ptr [ %.sroa.7.i.sroa.4.0.copyload, %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit.thread127" ], [ %.sroa.9.sroa.7.0.copyload37, %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit" ] ; 9 uses
  %.sroa.9.sroa.8.180133 = phi i64 [ %.sroa.7.i.sroa.5.0.copyload, %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit.thread127" ], [ %.sroa.9.sroa.8.0.copyload38, %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit" ] ; 5 uses
  %i.bh = phi ptr [ %i.bb, %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit.thread127" ], [ %i.bf, %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit" ]
  %i.bi = phi ptr [ %i.az, %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit.thread127" ], [ null, %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit" ]
  %i.bj = call i64 @llvm.usub.sat.i64(i64 %.sroa.019.1136, i64 18)
  switch i64 %i.bj, label %bb.bp [
    i64 0, label %bb.bq
    i64 1, label %bb.bu
    i64 2, label %bb.cc
  ]

.loopexit180:                                     ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit", %"_ZN4core6option15Option$LT$T$GT$7or_else17ha18dcb3f35369ad6E.exit.thread"
  call fastcc void @"_ZN4core3ptr207drop_in_place$LT$core..iter..adapters..chain..Chain$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$C$core..option..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17h011bf4b7e9cd6639E"(ptr noalias noundef align 8 dereferenceable(312) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !9654)
  call void @llvm.experimental.noalias.scope.decl(metadata !9655)
  %i.bk = load i64, ptr %.sink.i.sroa.gep81, align 8, !alias.scope !9654, !noundef !23 ; 3 uses
  %i.bl = load i64, ptr %.sink.i.sroa.gep, align 8, !alias.scope !9655, !noundef !23 ; 3 uses
  %.not.i205 = icmp ugt i64 %i.bk, %i.bl
  br i1 %.not.i205, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit180
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit180
  %.sink58.i = phi ptr [ %i.o, %bb.q ], [ %i.n, %.loopexit180 ]
  %.sink48.i = phi i64 [ %i.bk, %bb.q ], [ %i.bl, %.loopexit180 ] ; 6 uses
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.q ], [ %.sink.i.sroa.gep81, %.loopexit180 ]
  %.sink.i.sroa.phi82 = phi ptr [ %.sink58.i.sroa.gep7, %bb.q ], [ %.sink58.i.sroa.gep, %.loopexit180 ]
  %.sink.i.sroa.phi85 = phi ptr [ %.sink.i.sroa.gep86, %bb.q ], [ %.sink.i.sroa.gep87, %.loopexit180 ]
  %.sink.i.sroa.phi88 = phi ptr [ %.sink.i.sroa.gep89, %bb.q ], [ %.sink.i.sroa.gep90, %.loopexit180 ]
  %.sink.i = phi ptr [ %i.n, %bb.q ], [ %i.o, %.loopexit180 ]
  %i.bm = load ptr, ptr %.sink58.i, align 8, !alias.scope !9656, !nonnull !23, !noundef !23 ; 3 uses
  %.sink49.in.i = load <16 x i8>, ptr %i.bm, align 16, !noalias !9657
  %.sink49.i = icmp sgt <16 x i8> %.sink49.in.i, splat (i8 -1)
  %.sink51.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 4 uses
  %i.bn = bitcast <16 x i1> %.sink49.i to i16     ; 4 uses
  %i.bo = icmp eq i64 %.sink48.i, 0
  br i1 %i.bo, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.bp = load i64, ptr %.sink.i.sroa.phi, align 8, !alias.scope !9658, !noalias !9659, !noundef !23
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %xtraiter = and i64 %.sink48.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader
  %.not13.i.i.us.i.prol = icmp eq i16 %i.bn, 0
  br i1 %.not13.i.i.us.i.prol, label %.lr.ph.i.i.us.i.prol, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.prol"

.lr.ph.i.i.us.i.prol:                             ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.i.i.us.i.prol
  %i.br = phi ptr [ %i.bt, %.lr.ph.i.i.us.i.prol ], [ %.sink51.i, %.lr.ph.split.us.i.prol ] ; 2 uses
  %.val11.i.i.us.i.prol = load <16 x i8>, ptr %i.br, align 16, !noalias !9660
  %i.bs = icmp sgt <16 x i8> %.val11.i.i.us.i.prol, splat (i8 -1)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %.cast.i.i.us.i.prol = bitcast <16 x i1> %i.bs to i16 ; 2 uses
  %.not.i.i.us.i.prol = icmp eq i16 %.cast.i.i.us.i.prol, 0
  br i1 %.not.i.i.us.i.prol, label %.lr.ph.i.i.us.i.prol, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.prol"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.prol": ; preds = %.lr.ph.i.i.us.i.prol, %.lr.ph.split.us.i.prol
  %.lcssa25.us.i.prol = phi ptr [ %.sink51.i, %.lr.ph.split.us.i.prol ], [ %i.bt, %.lr.ph.i.i.us.i.prol ]
  %.lcssa.i.i.us.i.prol = phi i16 [ %i.bn, %.lr.ph.split.us.i.prol ], [ %.cast.i.i.us.i.prol, %.lr.ph.i.i.us.i.prol ] ; 2 uses
  %i.bu = add i16 %.lcssa.i.i.us.i.prol, -1
  %i.bv = and i16 %i.bu, %.lcssa.i.i.us.i.prol
  %i.bw = add nsw i64 %.sink48.i, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !9658)
  call void @llvm.experimental.noalias.scope.decl(metadata !9661)
  br label %.lr.ph.split.us.i.prol.loopexit

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.prol", %.lr.ph.split.us.i.preheader
  %.lcssa26.us.i.unr = phi ptr [ %.sink51.i, %.lr.ph.split.us.i.preheader ], [ %.lcssa25.us.i.prol, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.prol" ]
  %.unr = phi i16 [ %i.bn, %.lr.ph.split.us.i.preheader ], [ %i.bv, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.prol" ]
  %.unr405 = phi i64 [ %.sink48.i, %.lr.ph.split.us.i.preheader ], [ %i.bw, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.prol" ]
  %i.bx = icmp eq i64 %.sink48.i, 1
  br i1 %i.bx, label %.loopexit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.1"
  %.lcssa26.us.i = phi ptr [ %.lcssa25.us.i.1, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.1" ], [ %.lcssa26.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 2 uses
  %i.by = phi i16 [ %i.cj, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.1" ], [ %.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 2 uses
  %i.bz = phi i64 [ %i.ck, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.1" ], [ %.unr405, %.lr.ph.split.us.i.prol.loopexit ]
  %.not13.i.i.us.i = icmp eq i16 %i.by, 0
  br i1 %.not13.i.i.us.i, label %.lr.ph.i.i.us.i, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i"

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.split.us.i, %.lr.ph.i.i.us.i
  %i.ca = phi ptr [ %i.cc, %.lr.ph.i.i.us.i ], [ %.lcssa26.us.i, %.lr.ph.split.us.i ] ; 2 uses
  %.val11.i.i.us.i = load <16 x i8>, ptr %i.ca, align 16, !noalias !9660
  %i.cb = icmp sgt <16 x i8> %.val11.i.i.us.i, splat (i8 -1)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %.cast.i.i.us.i = bitcast <16 x i1> %i.cb to i16 ; 2 uses
  %.not.i.i.us.i = icmp eq i16 %.cast.i.i.us.i, 0
  br i1 %.not.i.i.us.i, label %.lr.ph.i.i.us.i, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i": ; preds = %.lr.ph.i.i.us.i, %.lr.ph.split.us.i
  %.lcssa25.us.i = phi ptr [ %.lcssa26.us.i, %.lr.ph.split.us.i ], [ %i.cc, %.lr.ph.i.i.us.i ] ; 2 uses
  %.lcssa.i.i.us.i = phi i16 [ %i.by, %.lr.ph.split.us.i ], [ %.cast.i.i.us.i, %.lr.ph.i.i.us.i ] ; 2 uses
  %i.cd = add i16 %.lcssa.i.i.us.i, -1
  %i.ce = and i16 %i.cd, %.lcssa.i.i.us.i         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9658)
  call void @llvm.experimental.noalias.scope.decl(metadata !9661)
  %.not13.i.i.us.i.1 = icmp eq i16 %i.ce, 0
  br i1 %.not13.i.i.us.i.1, label %.lr.ph.i.i.us.i.1, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.1"

.lr.ph.i.i.us.i.1:                                ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i", %.lr.ph.i.i.us.i.1
  %i.cf = phi ptr [ %i.ch, %.lr.ph.i.i.us.i.1 ], [ %.lcssa25.us.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i" ] ; 2 uses
  %.val11.i.i.us.i.1 = load <16 x i8>, ptr %i.cf, align 16, !noalias !9660
  %i.cg = icmp sgt <16 x i8> %.val11.i.i.us.i.1, splat (i8 -1)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %.cast.i.i.us.i.1 = bitcast <16 x i1> %i.cg to i16 ; 2 uses
  %.not.i.i.us.i.1 = icmp eq i16 %.cast.i.i.us.i.1, 0
  br i1 %.not.i.i.us.i.1, label %.lr.ph.i.i.us.i.1, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.1"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i.1": ; preds = %.lr.ph.i.i.us.i.1, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i"
  %.lcssa25.us.i.1 = phi ptr [ %.lcssa25.us.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i" ], [ %i.ch, %.lr.ph.i.i.us.i.1 ]
  %.lcssa.i.i.us.i.1 = phi i16 [ %i.ce, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.us.i" ], [ %.cast.i.i.us.i.1, %.lr.ph.i.i.us.i.1 ] ; 2 uses
  %i.ci = add i16 %.lcssa.i.i.us.i.1, -1
  %i.cj = and i16 %i.ci, %.lcssa.i.i.us.i.1
  %i.ck = add i64 %i.bz, -2                       ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %.loopexit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.val.i.i = load i64, ptr %.sink.i.sroa.phi88, align 8, !alias.scope !9658, !noalias !9659, !noundef !23
  %.val5.i.i = load i64, ptr %.sink.i.sroa.phi85, align 8, !alias.scope !9658, !noalias !9659, !noundef !23
  br label %bb.s

bb.s:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.loopexit.i", %.lr.ph.split.i
  %.lcssa26.i = phi ptr [ %.sink51.i, %.lr.ph.split.i ], [ %.lcssa25.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.loopexit.i" ] ; 2 uses
  %i.cm = phi i16 [ %i.bn, %.lr.ph.split.i ], [ %i.cw, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.loopexit.i" ] ; 2 uses
  %i.cn = phi i64 [ %.sink48.i, %.lr.ph.split.i ], [ %i.cz, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.loopexit.i" ]
  %.lcssa172122.i = phi ptr [ %i.bm, %.lr.ph.split.i ], [ %.lcssa1720.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2429f30a460c3c39E.exit.loopexit.i" ] ; 2 uses
  %.not13.i.i.i = icmp eq i16 %i.cm, 0
  br i1 %.not13.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge20.i.i.i
end_hunk_0

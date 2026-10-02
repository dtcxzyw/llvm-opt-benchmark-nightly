Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_auth-1051e21019a62c9e.meilisearch_auth.c6de6405da55fb51-cgu.0?download=true
inline.NumInlined: 2724
inline.NumDeleted: 1326
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN16meilisearch_auth5store13HeedAuthStore11put_api_key17hd72defc7fe6800b3E:bb.a

bb.bv:                                            ; preds = %_ZN4core5slice3raw14from_raw_parts18precondition_check17h5a7d8ed6c95136a1E.exit150.i
  %i.ri = call noundef i32 @mdb_put(ptr noundef nonnull %i.rh, i32 noundef %.val115, ptr noundef nonnull %i.v, ptr noundef nonnull %i.u, i32 noundef 0) #49, !noalias !3952
  %i.rj = invoke { i32, i32 } @_ZN4heed3mdb10lmdb_error10mdb_result17h91f495da5828afd4E(i32 noundef %i.ri)
          to label %bb.ca unwind label %bb.bx, !noalias !3952 ; 2 uses

bb.bw:                                            ; preds = %_ZN4core5slice3raw14from_raw_parts18precondition_check17h5a7d8ed6c95136a1E.exit150.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #50
          to label %bb.bz unwind label %bb.bx, !noalias !3952

bb.bx:                                            ; preds = %bb.cb, %bb.bw, %bb.bv
  %i.rk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %cond.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %cond.i, label %.thread286, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !3953
  br label %.thread286

bb.bz:                                            ; preds = %bb.bw
  unreachable

bb.ca:                                            ; preds = %bb.bv
  %i.rl = extractvalue { i32, i32 } %i.rj, 0      ; 2 uses
  %.not137.i = icmp eq i32 %i.rl, 22
  br i1 %.not137.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rm = extractvalue { i32, i32 } %i.rj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3720
  invoke void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, i32 noundef %i.rl, i32 %i.rm)
          to label %bb.ce unwind label %bb.bx, !noalias !3952

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3720
  %cond71.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %cond71.i, label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit.thread", label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !3954
  br label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit.thread"

bb.ce:                                            ; preds = %bb.cb
  %i.rn = load <2 x i32>, ptr %i.t, align 8, !noalias !3955
  %.sroa.0.0.copyload = load i32, ptr %i.t, align 8, !noalias !3955
  %.sroa.7219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ro = load <2 x ptr>, ptr %.sroa.7219.0..sroa_idx, align 8, !noalias !3955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3720
  %cond72.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %cond72.i, label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit", label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !3956
  br label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit"

.thread314:                                       ; preds = %bb.cy, %"_ZN4core3ptr97drop_in_place$LT$std..collections..hash..set..IntoIter$LT$meilisearch_types..keys..Action$GT$$GT$17h27d36f6b926e8458E.exit138"
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cg:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hddecc1a0313c3c35E.exit.i.i.i.i", %.noexc.i125, %bb.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit.thread"
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %.thread286

"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit": ; preds = %bb.cf, %bb.ce
  %.not = icmp eq i32 %.sroa.0.0.copyload, 5
  br i1 %.not, label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit.thread", label %bb.ch

bb.ch:                                            ; preds = %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit", %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit.thread295"
  %i.rq = phi <2 x i32> [ <i32 2, i32 undef>, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit.thread295" ], [ %i.rn, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit" ]
  %i.rr = phi <2 x ptr> [ %i.qx, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit.thread295" ], [ %i.ro, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store <2 x i32> %i.rq, ptr %i.ad, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store <2 x ptr> %i.rr, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !3957
  %i.rs = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #49, !noalias !3957 ; 3 uses
  %i.rt = icmp eq ptr %i.rs, null
  br i1 %i.rt, label %bb.ci, label %bb.en, !prof !11

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #50
          to label %.noexc.i130 unwind label %bb.cj, !noalias !3958

.noexc.i130:                                      ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %bb.ci
  %i.ru = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr32drop_in_place$LT$heed..Error$GT$17hd6b0c83cf88cd8ceE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ad) #51
          to label %.thread286 unwind label %bb.ck, !noalias !3959

bb.ck:                                            ; preds = %bb.cj
  %i.rv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52, !noalias !3958
  unreachable

"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit.thread": ; preds = %bb.cd, %bb.cc, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val116 = load i64, ptr %i.rw, align 8, !noundef !8 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val117 = load i32, ptr %i.rx, align 8, !noundef !8 ; 3 uses
  invoke fastcc void @_ZN16meilisearch_auth5store13HeedAuthStore27delete_key_from_inverted_db17h6e3958d0956c33ebE(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.am, i64 %.val116, i32 %.val117, ptr noalias noundef align 8 dereferenceable(24) %i.ao, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(16) %i.ap)
          to label %bb.cl unwind label %bb.cg

bb.cl:                                            ; preds = %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17ha1f4c4bdcc1579c6E.exit.thread"
  %i.ry = load i64, ptr %i.am, align 8, !range !33, !noundef !8 ; 2 uses
  %.not96 = icmp eq i64 %i.ry, 4
  br i1 %.not96, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.261.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.459.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ry, ptr %i.rz, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %.critedge

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.sa = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16 ; 2 uses
  %i.sc = load i8, ptr %i.sb, align 8, !range !14, !noalias !3960, !noundef !8
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %._ZN4core3ops8function6FnOnce9call_once17h2ca797def95e93faE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hddecc1a0313c3c35E.exit.i.i.i.i", !prof !22

._ZN4core3ops8function6FnOnce9call_once17h2ca797def95e93faE.exit_crit_edge.i.i.i.i: ; preds = %bb.cn
  %.pre.i.i.i.i = load i64, ptr %i.sa, align 8, !noalias !3961
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !3961
  br label %bb.co

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hddecc1a0313c3c35E.exit.i.i.i.i": ; preds = %bb.cn
  %i.se = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc134 unwind label %bb.cg ; 2 uses

.noexc134:                                        ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hddecc1a0313c3c35E.exit.i.i.i.i"
  %i.sf = extractvalue { i64, i64 } %i.se, 0
  %i.sg = extractvalue { i64, i64 } %i.se, 1      ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  store i64 %i.sg, ptr %i.sh, align 8, !noalias !3962
  store i8 1, ptr %i.sb, align 8, !noalias !3962
  br label %bb.co

bb.co:                                            ; preds = %.noexc134, %._ZN4core3ops8function6FnOnce9call_once17h2ca797def95e93faE.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2ca797def95e93faE.exit_crit_edge.i.i.i.i ], [ %i.sg, %.noexc134 ]
  %i.si = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2ca797def95e93faE.exit_crit_edge.i.i.i.i ], [ %i.sf, %.noexc134 ] ; 2 uses
  %i.sj = add i64 %i.si, 1
  store i64 %i.sj, ptr %i.sa, align 8, !noalias !3961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) @70, i64 32, i1 false)
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 10 uses
  store i64 %i.si, ptr %.sroa.4256.0..sroa_idx, align 8
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  store i64 %.pre-phi.i, ptr %.sroa.5257.0..sroa_idx, align 8
  br i1 %cond.i.i.i.i.i.i.i.i.i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.co
  %.sroa.076.1396 = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 1
  %i.sk = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 10 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 10 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h8a5bf2cc7eaa9af9E.exit"
  %.sroa.076.1398 = phi ptr [ %.sroa.076.1396, %.lr.ph ], [ %.sroa.076.1, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h8a5bf2cc7eaa9af9E.exit" ] ; 3 uses
  %.sroa.076.0397 = phi ptr [ %.val.i.i.i.i.i, %.lr.ph ], [ %.sroa.076.1398, %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h8a5bf2cc7eaa9af9E.exit" ]
  %i.sn = load i8, ptr %.sroa.076.0397, align 1, !range !40, !noundef !8 ; 2 uses
  switch i8 %i.sn, label %.invoke [
    i8 0, label %bb.dp
    i8 2, label %bb.dq
    i8 6, label %bb.ds
    i8 12, label %bb.du
    i8 16, label %bb.dv
    i8 19, label %bb.dx
    i8 21, label %bb.dy
    i8 23, label %bb.dz
    i8 25, label %bb.ea
    i8 38, label %bb.eb
    i8 41, label %bb.ec
    i8 44, label %bb.ed
    i8 49, label %bb.ee
    i8 57, label %bb.ef
  ]

._crit_edge:                                      ; preds = %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h8a5bf2cc7eaa9af9E.exit", %bb.co
  %.not.not.not.i.not559 = icmp eq i64 %.val72.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not559, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h02f9cb1dedc195f2E.exit", label %.lr.ph561

.lr.ph561:                                        ; preds = %.noexc135, %._crit_edge
  %i.so = phi ptr [ %i.sq, %.noexc135 ], [ %.val71.i.i.i.i.i, %._crit_edge ] ; 2 uses
  %i.sp = invoke noundef zeroext i1 @_ZN17meilisearch_types17index_uid_pattern15IndexUidPattern11matches_all17h0da0ad082bc3fb6dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.so)
          to label %.noexc135 unwind label %.loopexit358 ; 2 uses

.noexc135:                                        ; preds = %.lr.ph561
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 24 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.sq, %i.la
  %or.cond603 = select i1 %i.sp, i1 true, i1 %.not.not.not.i.not
  br i1 %or.cond603, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h02f9cb1dedc195f2E.exit.loopexit", label %.lr.ph561

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h02f9cb1dedc195f2E.exit.loopexit": ; preds = %.noexc135
  %.not.not.not.i.not.lcssa.ph = xor i1 %i.sp, true
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h02f9cb1dedc195f2E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h02f9cb1dedc195f2E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h02f9cb1dedc195f2E.exit.loopexit", %._crit_edge
  %.not.not.not.i.not.lcssa = phi i1 [ true, %._crit_edge ], [ %.not.not.not.i.not.lcssa.ph, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h02f9cb1dedc195f2E.exit.loopexit" ]
  %.sroa.0280.0.copyload = load ptr, ptr %i.al, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %.sroa.2.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx281, align 8 ; 4 uses
  %.sroa.3282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.3282.0.copyload = load i64, ptr %.sroa.3282.0..sroa_idx, align 8 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %.sroa.0280.0.copyload, align 16, !noalias !3963
  %3 = icmp eq i64 %.sroa.2.0.copyload, 0         ; 4 uses
  br i1 %3, label %14, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h02f9cb1dedc195f2E.exit"
  %4 = add i64 %.sroa.2.0.copyload, 1
  %5 = add i64 %.sroa.2.0.copyload, 16            ; 2 uses
  %6 = icmp uge i64 %5, %4
  call void @llvm.assume(i1 %6)
  %7 = and i64 %5, -16                            ; 3 uses
  %8 = add i64 %.sroa.2.0.copyload, 17
  %9 = add i64 %8, %7                             ; 3 uses
  %10 = icmp uge i64 %9, %7
  call void @llvm.assume(i1 %10)
  %11 = icmp ult i64 %9, 9223372036854775793
  call void @llvm.assume(i1 %11)
  %12 = sub nsw i64 0, %7
  %13 = getelementptr inbounds i8, ptr %.sroa.0280.0.copyload, i64 %12
  br label %14

14:                                               ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h02f9cb1dedc195f2E.exit"
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %9, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h02f9cb1dedc195f2E.exit" ] ; 6 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %13, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h02f9cb1dedc195f2E.exit" ] ; 6 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h02f9cb1dedc195f2E.exit" ] ; 3 uses
  %15 = icmp eq i64 %.sroa.3282.0.copyload, 0
  br i1 %15, label %._crit_edge410, label %.lr.ph409

.lr.ph409:                                        ; preds = %14
  %i.sr = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.ss = bitcast <16 x i1> %i.sr to i16          ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.0280.0.copyload, i64 16 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.077.1.idx399 = select i1 %cond.i.i.i.i.i90.i.i.i.i.i, i64 0, i64 24
  %.sroa.077.1400 = getelementptr inbounds nuw i8, ptr %.val71.i.i.i.i.i, i64 %.sroa.077.1.idx399
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  br i1 %.not.not.not.i.not.lcssa, label %.lr.ph409.split.us, label %.lr.ph409.split

.lr.ph409.split.us:                               ; preds = %.lr.ph409, %.loopexit.us
  %.sroa.13.0407.us = phi ptr [ %.sroa.13.1.us, %.loopexit.us ], [ %.sroa.0280.0.copyload, %.lr.ph409 ] ; 2 uses
  %.sroa.16.0406.us = phi ptr [ %.sroa.16.1.us, %.loopexit.us ], [ %i.st, %.lr.ph409 ] ; 2 uses
  %.sroa.18233.0405.us = phi i16 [ %i.th, %.loopexit.us ], [ %i.ss, %.lr.ph409 ] ; 2 uses
  %.sroa.20234.0404.us = phi i64 [ %i.tk, %.loopexit.us ], [ %.sroa.3282.0.copyload, %.lr.ph409 ]
  %.not13.i.i.us = icmp eq i16 %.sroa.18233.0405.us, 0
  br i1 %.not13.i.i.us, label %.lr.ph.i.i.us, label %.preheader.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph409.split.us, %.lr.ph.i.i.us
  %i.sz = phi ptr [ %i.td, %.lr.ph.i.i.us ], [ %.sroa.16.0406.us, %.lr.ph409.split.us ] ; 2 uses
  %i.ta = phi ptr [ %i.tc, %.lr.ph.i.i.us ], [ %.sroa.13.0407.us, %.lr.ph409.split.us ]
  %.val911.i.i.us = load <16 x i8>, ptr %i.sz, align 16, !noalias !3964
  %i.tb = icmp sgt <16 x i8> %.val911.i.i.us, splat (i8 -1)
  %i.tc = getelementptr inbounds i8, ptr %i.ta, i64 -16 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 16 ; 2 uses
  %.cast.i.i.us = bitcast <16 x i1> %i.tb to i16  ; 2 uses
  %.not.i.i.us = icmp eq i16 %.cast.i.i.us, 0
  br i1 %.not.i.i.us, label %.lr.ph.i.i.us, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph.i.i.us, %.lr.ph409.split.us
  %.sroa.16.1.us = phi ptr [ %.sroa.16.0406.us, %.lr.ph409.split.us ], [ %i.td, %.lr.ph.i.i.us ]
  %.sroa.13.1.us = phi ptr [ %.sroa.13.0407.us, %.lr.ph409.split.us ], [ %i.tc, %.lr.ph.i.i.us ] ; 2 uses
  %.lcssa.i.i.us = phi i16 [ %.sroa.18233.0405.us, %.lr.ph409.split.us ], [ %.cast.i.i.us, %.lr.ph.i.i.us ] ; 3 uses
  %i.te = add i16 %.lcssa.i.i.us, -1
  %i.tf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.us, i1 true)
  %i.tg = zext nneg i16 %i.tf to i64
  %i.th = and i16 %i.te, %.lcssa.i.i.us
  %i.ti = sub nsw i64 0, %i.tg
  %i.tj = getelementptr inbounds i8, ptr %.sroa.13.1.us, i64 %i.ti
  %i.tk = add i64 %.sroa.20234.0404.us, -1        ; 2 uses
  %i.tl = getelementptr inbounds i8, ptr %i.tj, i64 -1
  %i.tm = load i8, ptr %i.tl, align 1, !range !40, !noalias !3965, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i8 %i.tm, ptr %i.ak, align 1
  br i1 %cond.i.i.i.i.i90.i.i.i.i.i, label %.loopexit.us, label %.lr.ph403.us

.lr.ph403.us:                                     ; preds = %.preheader.us, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit148.us"
  %.sroa.077.1402.us = phi ptr [ %.sroa.077.1.us, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit148.us" ], [ %.sroa.077.1400, %.preheader.us ] ; 3 uses
  %.sroa.077.0401.us = phi ptr [ %.sroa.077.1402.us, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit148.us" ], [ %.val71.i.i.i.i.i, %.preheader.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.077.0401.us, i64 8
  %i.to = load ptr, ptr %i.tn, align 8, !nonnull !8, !noundef !8
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.077.0401.us, i64 16
  %i.tq = load i64, ptr %i.tp, align 8, !noundef !8 ; 9 uses
  %i.tr = icmp slt i64 %i.tq, 0
  br i1 %i.tr, label %.split.us, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.us, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.us: ; preds = %.lr.ph403.us
  %i.ts = icmp eq i64 %i.tq, 0                    ; 4 uses
  br i1 %i.ts, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.us
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !3966
  %i.tt = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.tq, i64 noundef range(i64 1, 9) 1) #49, !noalias !3966 ; 2 uses
  %i.tu = icmp eq ptr %i.tt, null
  br i1 %i.tu, label %.split.us, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.us
  %.sroa.10.0.i.i.us = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.us ], [ %i.tt, %bb.cq ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.us, ptr nonnull readonly align 1 %i.to, i64 %i.tq, i1 false), !noalias !3967
  store ptr %i.ap, ptr %i.ag, align 8
  store ptr %i.ak, ptr %i.sw, align 8
  store ptr %.sroa.10.0.i.i.us, ptr %i.sx, align 8
  store i64 %i.tq, ptr %i.sy, align 8
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h7c17451269a98fb4E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ah, i64 %.val116, i32 %.val117, ptr noalias noundef align 8 dereferenceable(24) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.mk)
          to label %bb.cs unwind label %.split413.us

bb.cs:                                            ; preds = %bb.cr
  %i.tv = load i32, ptr %i.ah, align 8, !range !34, !noundef !8 ; 2 uses
  %.not104.us = icmp eq i32 %i.tv, 5
  br i1 %.not104.us, label %bb.ct, label %.split419.us

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br i1 %i.ts, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit148.us", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.us, i64 noundef %i.tq, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !3968
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit148.us"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit148.us": ; preds = %bb.cu, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.tw = icmp eq ptr %.sroa.077.1402.us, %i.la   ; 2 uses
  %.sroa.077.1.idx.us = select i1 %i.tw, i64 0, i64 24
  %.sroa.077.1.us = getelementptr inbounds nuw i8, ptr %.sroa.077.1402.us, i64 %.sroa.077.1.idx.us
  br i1 %i.tw, label %.loopexit.us, label %.lr.ph403.us

.loopexit.us:                                     ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit148.us", %.preheader.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.tx = icmp eq i64 %i.tk, 0
  br i1 %i.tx, label %._crit_edge410, label %.lr.ph409.split.us

.split413.us:                                     ; preds = %bb.cr
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %.body143

.lr.ph409.split:                                  ; preds = %.lr.ph409, %bb.dn
  %.sroa.13.0407 = phi ptr [ %.sroa.13.1, %bb.dn ], [ %.sroa.0280.0.copyload, %.lr.ph409 ] ; 2 uses
  %.sroa.16.0406 = phi ptr [ %.sroa.16.1, %bb.dn ], [ %i.st, %.lr.ph409 ] ; 2 uses
  %.sroa.18233.0405 = phi i16 [ %i.ui, %bb.dn ], [ %i.ss, %.lr.ph409 ] ; 2 uses
  %.sroa.20234.0404 = phi i64 [ %i.ul, %bb.dn ], [ %.sroa.3282.0.copyload, %.lr.ph409 ]
  %.not13.i.i = icmp eq i16 %.sroa.18233.0405, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %.loopexit356

.lr.ph.i.i:                                       ; preds = %.lr.ph409.split, %.lr.ph.i.i
  %i.tz = phi ptr [ %i.ud, %.lr.ph.i.i ], [ %.sroa.16.0406, %.lr.ph409.split ] ; 2 uses
  %i.ua = phi ptr [ %i.uc, %.lr.ph.i.i ], [ %.sroa.13.0407, %.lr.ph409.split ]
  %.val911.i.i = load <16 x i8>, ptr %i.tz, align 16, !noalias !3964
  %i.ub = icmp sgt <16 x i8> %.val911.i.i, splat (i8 -1)
  %i.uc = getelementptr inbounds i8, ptr %i.ua, i64 -16 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.ub to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit356

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit": ; preds = %.loopexit357, %.loopexit.split-lp, %bb.dc, %.body143
  %.pn = phi { ptr, i32 } [ %eh.lpad-body144, %bb.dc ], [ %eh.lpad-body144, %.body143 ], [ %lpad.loopexit, %.loopexit357 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ue = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond = or i1 %3, %i.ue
  br i1 %or.cond, label %.thread286, label %bb.cv

bb.cv:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #49, !noalias !3969
  br label %.thread286

.loopexit357:                                     ; preds = %.loopexit356
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit"

.loopexit.split-lp:                               ; preds = %bb.dm, %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit"

.loopexit356:                                     ; preds = %.lr.ph.i.i, %.lr.ph409.split
  %.sroa.16.1 = phi ptr [ %.sroa.16.0406, %.lr.ph409.split ], [ %i.ud, %.lr.ph.i.i ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0407, %.lr.ph409.split ], [ %i.uc, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.18233.0405, %.lr.ph409.split ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.uf = add i16 %.lcssa.i.i, -1
  %i.ug = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.uh = zext nneg i16 %i.ug to i64
  %i.ui = and i16 %i.uf, %.lcssa.i.i
  %i.uj = sub nsw i64 0, %i.uh
  %i.uk = getelementptr inbounds i8, ptr %.sroa.13.1, i64 %i.uj
  %i.ul = add i64 %.sroa.20234.0404, -1           ; 2 uses
  %i.um = getelementptr inbounds i8, ptr %i.uk, i64 -1
  %i.un = load i8, ptr %i.um, align 1, !range !40, !noalias !3965, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i8 %i.un, ptr %i.ak, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %i.ap, ptr %i.ai, align 8
  store ptr %i.ak, ptr %i.su, align 8
  store ptr null, ptr %i.sv, align 8
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h7c17451269a98fb4E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj, i64 %.val116, i32 %.val117, ptr noalias noundef align 8 dereferenceable(24) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.mk)
          to label %bb.dl unwind label %.loopexit357

._crit_edge410:                                   ; preds = %bb.dn, %.loopexit.us, %14
  %i.uo = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond352 = or i1 %3, %i.uo
  br i1 %or.cond352, label %"_ZN4core3ptr97drop_in_place$LT$std..collections..hash..set..IntoIter$LT$meilisearch_types..keys..Action$GT$$GT$17h27d36f6b926e8458E.exit138", label %bb.cw

bb.cw:                                            ; preds = %._crit_edge410
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #49, !noalias !3970
  br label %"_ZN4core3ptr97drop_in_place$LT$std..collections..hash..set..IntoIter$LT$meilisearch_types..keys..Action$GT$$GT$17h27d36f6b926e8458E.exit138"

"_ZN4core3ptr97drop_in_place$LT$std..collections..hash..set..IntoIter$LT$meilisearch_types..keys..Action$GT$$GT$17h27d36f6b926e8458E.exit138": ; preds = %bb.cw, %._crit_edge410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  invoke void @_ZN4heed3txn5RwTxn6commit17haebc78cd2f97afddE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae)
          to label %bb.cx unwind label %.thread314

bb.cx:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$std..collections..hash..set..IntoIter$LT$meilisearch_types..keys..Action$GT$$GT$17h27d36f6b926e8458E.exit138"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.up = load i32, ptr %i.af, align 8, !range !34, !noundef !8 ; 2 uses
  %.not101 = icmp eq i32 %i.up, 5
  br i1 %.not101, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.248.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.475.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i32 %i.up, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @"_ZN103_$LT$meilisearch_auth..error..AuthControllerError$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h761d163c88c0125dE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z)
          to label %bb.db unwind label %.thread314

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %2, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.da

bb.da:                                            ; preds = %"_ZN4core3ptr37drop_in_place$LT$heed..txn..RwTxn$GT$17hb81a6ddc7f36687bE.exit", %bb.cz
  ret void

bb.db:                                            ; preds = %bb.cy
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.uq, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %"_ZN4core3ptr37drop_in_place$LT$heed..txn..RwTxn$GT$17hb81a6ddc7f36687bE.exit"

.split.us:                                        ; preds = %.lr.ph403.us, %bb.cq
  %.sroa.4.0.ph.i.i.us = phi i64 [ 1, %bb.cq ], [ 0, %.lr.ph403.us ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.us, i64 %i.tq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #50
          to label %.noexc141 unwind label %.loopexit.split-lp

.noexc141:                                        ; preds = %.split.us
  unreachable

.body143:                                         ; preds = %bb.de, %.split413.us
  %eh.lpad-body144 = phi { ptr, i32 } [ %i.ty, %.split413.us ], [ %i.ut, %bb.de ] ; 2 uses
  br i1 %i.ts, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit", label %bb.dc

bb.dc:                                            ; preds = %.body143
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.us, i64 noundef %i.tq, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !3971
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit"

.split419.us:                                     ; preds = %bb.cs
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.242.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.471.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i32 %i.tv, ptr %i.aa, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !3972
  %i.ur = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #49, !noalias !3972 ; 3 uses
  %i.us = icmp eq ptr %i.ur, null
  br i1 %i.us, label %bb.dd, label %bb.dg, !prof !11

bb.dd:                                            ; preds = %.split419.us
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #50
          to label %.noexc.i142 unwind label %bb.de, !noalias !3973

.noexc.i142:                                      ; preds = %bb.dd
  unreachable

bb.de:                                            ; preds = %bb.dd
  %i.ut = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr32drop_in_place$LT$heed..Error$GT$17hd6b0c83cf88cd8ceE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.aa) #51
          to label %.body143 unwind label %bb.df, !noalias !3974

bb.df:                                            ; preds = %bb.de
  %i.uu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52, !noalias !3973
  unreachable

bb.dg:                                            ; preds = %.split419.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ur, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !3974
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.uv, align 8
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ur, ptr %.sroa.4277.0..sroa_idx, align 8
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @7, ptr %.sroa.5278.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br i1 %i.ts, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit151", label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.us, i64 noundef %i.tq, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !3975
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit151"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit151": ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.di

bb.di:                                            ; preds = %bb.do, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit151"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.uw = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond353 = or i1 %3, %i.uw
  br i1 %or.cond353, label %.thread342, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #49, !noalias !3976
  br label %.thread342

bb.dk:                                            ; preds = %.thread286
  %i.ux = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52
  unreachable

bb.dl:                                            ; preds = %.loopexit356
  %i.uy = load i32, ptr %i.aj, align 8, !range !34, !noundef !8 ; 2 uses
  %.not106 = icmp eq i32 %i.uy, 5
  br i1 %.not106, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.234.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.467.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i32 %i.uy, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @"_ZN103_$LT$meilisearch_auth..error..AuthControllerError$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h761d163c88c0125dE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.do unwind label %.loopexit.split-lp

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.uz = icmp eq i64 %i.ul, 0
  br i1 %i.uz, label %._crit_edge410, label %.lr.ph409.split

bb.do:                                            ; preds = %bb.dm
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.va, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.di

.thread342:                                       ; preds = %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %.critedge

.invoke:                                          ; preds = %.noexc169, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i181", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i187", %.noexc198, %.noexc207, %bb.cp, %bb.ea, %bb.dz, %bb.dy, %bb.dx
  %i.vb = phi i8 [ 48, %.noexc198 ], [ %i.sn, %bb.cp ], [ 20, %bb.dx ], [ 22, %bb.dy ], [ 24, %bb.dz ], [ 26, %bb.ea ], [ 52, %.noexc169 ], [ 40, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i181" ], [ 43, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i187" ], [ 56, %.noexc207 ]
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef align 8 dereferenceable(48) %i.al, i8 noundef %i.vb)
          to label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h8a5bf2cc7eaa9af9E.exit" unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dp:                                            ; preds = %bb.cp
  %i.vc = invoke noundef i8 @"_ZN17meilisearch_types4keys1_85_$LT$impl$u20$enum_iterator..Sequence$u20$for$u20$meilisearch_types..keys..Action$GT$5first17h003cf9c898f7faecE"()
          to label %bb.eg unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dq:                                            ; preds = %bb.cp
  %i.vd = load i64, ptr %i.sk, align 8, !alias.scope !3977, !noundef !8
  %i.ve = icmp eq i64 %i.vd, 0
  %.sroa.0.0.i.i = select i1 %i.ve, i64 3, i64 2  ; 2 uses
  %i.vf = load i64, ptr %i.sl, align 8, !alias.scope !3978, !noalias !3979, !noundef !8
  %i.vg = icmp ugt i64 %.sroa.0.0.i.i, %i.vf
  br i1 %i.vg, label %bb.dr, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i", !prof !10

bb.dr:                                            ; preds = %bb.dq
  %i.vh = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8f24de9b8c78ed3aE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4256.0..sroa_idx, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i" unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i": ; preds = %bb.dr, %bb.dq
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 4)
          to label %.noexc155 unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit

.noexc155:                                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i"
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 5)
          to label %.noexc155.1 unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit

.noexc155.1:                                      ; preds = %.noexc155
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 3)
          to label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h8a5bf2cc7eaa9af9E.exit" unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit

bb.ds:                                            ; preds = %bb.cp
  %i.vi = load i64, ptr %i.sk, align 8, !alias.scope !3980, !noundef !8
  %i.vj = icmp eq i64 %i.vi, 0
  %.sroa.0.0.i.i156 = select i1 %i.vj, i64 6, i64 3 ; 2 uses
  %i.vk = load i64, ptr %i.sl, align 8, !alias.scope !3981, !noalias !3982, !noundef !8
  %i.vl = icmp ugt i64 %.sroa.0.0.i.i156, %i.vk
  br i1 %i.vl, label %bb.dt, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i157", !prof !10

bb.dt:                                            ; preds = %bb.ds
  %i.vm = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8f24de9b8c78ed3aE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i64 noundef %.sroa.0.0.i.i156, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4256.0..sroa_idx, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i157" unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i157": ; preds = %bb.dt, %bb.ds
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 7)
          to label %.noexc162 unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc162:                                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i157"
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 10)
          to label %.noexc162.1 unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc162.1:                                      ; preds = %.noexc162
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 8)
          to label %.noexc162.2 unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc162.2:                                      ; preds = %.noexc162.1
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 9)
          to label %.noexc162.3 unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc162.3:                                      ; preds = %.noexc162.2
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 11)
          to label %.noexc162.4 unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc162.4:                                      ; preds = %.noexc162.3
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 50)
          to label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h8a5bf2cc7eaa9af9E.exit" unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit

bb.du:                                            ; preds = %bb.cp
  %i.vn = load i64, ptr %i.sk, align 8, !alias.scope !3983, !noalias !3984, !noundef !8
  %i.vo = icmp eq i64 %i.vn, 0
  %.sroa.0.0.i.i164 = select i1 %i.vo, i64 4, i64 2 ; 2 uses
  %i.vp = load i64, ptr %i.sl, align 8, !alias.scope !3985, !noalias !3986, !noundef !8
  %i.vq = icmp ugt i64 %.sroa.0.0.i.i164, %i.vp
  br i1 %i.vq, label %.noexc.i.i166, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i165", !prof !10

.noexc.i.i166:                                    ; preds = %bb.du
  %i.vr = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8f24de9b8c78ed3aE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i64 noundef %.sroa.0.0.i.i164, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4256.0..sroa_idx, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i165" unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i165": ; preds = %.noexc.i.i166, %bb.du
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 15)
          to label %.noexc168 unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc168:                                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i165"
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 14)
          to label %.noexc169 unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc169:                                        ; preds = %.noexc168
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 13)
          to label %.invoke unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dv:                                            ; preds = %bb.cp
  %i.vs = load i64, ptr %i.sk, align 8, !alias.scope !3987, !noundef !8
  %i.vt = icmp eq i64 %i.vs, 0
  %.sroa.0.0.i.i172 = select i1 %i.vt, i64 2, i64 1 ; 2 uses
  %i.vu = load i64, ptr %i.sl, align 8, !alias.scope !3988, !noalias !3989, !noundef !8
  %i.vv = icmp ugt i64 %.sroa.0.0.i.i172, %i.vu
  br i1 %i.vv, label %bb.dw, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i173", !prof !10

bb.dw:                                            ; preds = %bb.dv
  %i.vw = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8f24de9b8c78ed3aE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i64 noundef %.sroa.0.0.i.i172, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4256.0..sroa_idx, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i173" unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i173": ; preds = %bb.dw, %bb.dv
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 17)
          to label %.noexc178 unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc178:                                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i173"
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 18)
          to label %"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h8a5bf2cc7eaa9af9E.exit" unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dx:                                            ; preds = %bb.cp
  br label %.invoke

bb.dy:                                            ; preds = %bb.cp
  br label %.invoke

bb.dz:                                            ; preds = %bb.cp
  br label %.invoke

bb.ea:                                            ; preds = %bb.cp
  br label %.invoke

bb.eb:                                            ; preds = %bb.cp
  %i.vx = load i64, ptr %i.sk, align 8, !alias.scope !3990, !noalias !3991, !noundef !8
  %i.vy = icmp eq i64 %i.vx, 0
  %.sroa.0.0.i.i180 = select i1 %i.vy, i64 2, i64 1 ; 2 uses
  %i.vz = load i64, ptr %i.sl, align 8, !alias.scope !3992, !noalias !3993, !noundef !8
  %i.wa = icmp ugt i64 %.sroa.0.0.i.i180, %i.vz
  br i1 %i.wa, label %.noexc.i.i182, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i181", !prof !10

.noexc.i.i182:                                    ; preds = %bb.eb
  %i.wb = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8f24de9b8c78ed3aE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i64 noundef %.sroa.0.0.i.i180, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4256.0..sroa_idx, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i181" unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i181": ; preds = %.noexc.i.i182, %bb.eb
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 39)
          to label %.invoke unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ec:                                            ; preds = %bb.cp
  %i.wc = load i64, ptr %i.sk, align 8, !alias.scope !3994, !noalias !3995, !noundef !8
  %i.wd = icmp eq i64 %i.wc, 0
  %.sroa.0.0.i.i186 = select i1 %i.wd, i64 2, i64 1 ; 2 uses
  %i.we = load i64, ptr %i.sl, align 8, !alias.scope !3996, !noalias !3997, !noundef !8
  %i.wf = icmp ugt i64 %.sroa.0.0.i.i186, %i.we
  br i1 %i.wf, label %.noexc.i.i188, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i187", !prof !10

.noexc.i.i188:                                    ; preds = %bb.ec
  %i.wg = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8f24de9b8c78ed3aE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i64 noundef %.sroa.0.0.i.i186, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4256.0..sroa_idx, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i187" unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8f29a531030635dfE.exit.i.i187": ; preds = %.noexc.i.i188, %bb.ec
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef range(i8 0, 58) 42)
          to label %.invoke unwind label %.loopexit.split-lp359.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_0
begin_hunk_1_@"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hf281ade457d4f989E":bb.a

bb.jp:                                            ; preds = %_ZN10serde_json2de10from_trait17hb7db820deabffb33E.exit
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.10, i64 144, i1 false)
  store i64 %.sroa.0.2, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.2, ptr %.sroa.47.0..sroa_idx, align 8
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0ccee352b21bc803E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN90_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$crypto_common..KeyInit$GT$14new_from_slice17h89e660f00f007e0fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 12 uses
  %i.c = alloca [112 x i8], align 8               ; 8 uses
  %i.d = alloca [64 x i8], align 16               ; 7 uses
  %i.e = alloca [120 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [64 x i8], align 16               ; 15 uses
  %i.i = alloca [192 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.d, i8 0, i64 64, i1 false), !alias.scope !10073, !noalias !10074
  %i.j = icmp ult i64 %2, 65
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10075
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.k, i8 0, i64 65, i1 false), !alias.scope !10076, !noalias !10075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @361, i64 32, i1 false), !noalias !10075
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10077), !noalias !10078
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10079), !noalias !10078
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.m = and i64 %2, -64
  %i.n = and i64 %2, 63                           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.p = lshr i64 %2, 6                           ; 2 uses
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !10080, !noalias !10081
  call void @_ZN4sha26sha25611compress25617h3ea59f8ad1326a07E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %i.p), !noalias !10082
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.k, ptr nonnull readonly align 1 %i.o, i64 %i.n, i1 false), !alias.scope !10083, !noalias !10084
  %storemerge.i.i.i.i = trunc nuw nsw i64 %i.n to i8
  store i8 %storemerge.i.i.i.i, ptr %i.l, align 8, !alias.scope !10085, !noalias !10086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !10075
  call void @llvm.experimental.noalias.scope.decl(metadata !10088), !noalias !10078
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10089), !noalias !10078
  call void @llvm.experimental.noalias.scope.decl(metadata !10090), !noalias !10078
  call void @llvm.experimental.noalias.scope.decl(metadata !10091), !noalias !10078
  call void @llvm.experimental.noalias.scope.decl(metadata !10092), !noalias !10078
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.s = load i8, ptr %i.r, align 8, !alias.scope !10093, !noalias !10094, !noundef !8 ; 3 uses
  %i.t = zext nneg i8 %i.s to i64                 ; 4 uses
  %i.u = icmp ult i8 %i.s, 64
  call void @llvm.assume(i1 %i.u), !noalias !10078
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.w = load i64, ptr %i.v, align 16, !alias.scope !10095, !noalias !10096, !noundef !8
  %i.x = shl i64 %i.w, 9
  %i.y = shl nuw nsw i64 %i.t, 3
  %i.z = or disjoint i64 %i.x, %i.y
  %i.aa = call i64 @llvm.bswap.i64(i64 %i.z)      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10097), !noalias !10078
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t ; 2 uses
  store i8 -128, ptr %i.ab, align 1, !alias.scope !10098, !noalias !10099
  %i.ac = icmp eq i8 %i.s, 63
  br i1 %i.ac, label %._crit_edge.thread.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.b
  %i.ad = getelementptr i8, ptr %i.ab, i64 1
  %i.ae = xor i64 %i.t, 63
  call void @llvm.memset.p0.i64(ptr align 1 %i.ad, i8 0, i64 %i.ae, i1 false), !alias.scope !10098, !noalias !10099
  %i.af = xor i64 %i.t, 56
  %i.ag = icmp samesign ult i64 %i.af, 8
  br i1 %i.ag, label %._crit_edge.thread.i.i.i.i.i.i, label %bb.c

._crit_edge.thread.i.i.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i.i.i, %bb.b
  call void @_ZN4sha26sha25611compress25617h3ea59f8ad1326a07E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.q, i64 noundef 1), !noalias !10100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 56, i1 false), !alias.scope !10102, !noalias !10103
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.aa, ptr %i.ah, align 1, !alias.scope !10104, !noalias !10105
  call void @_ZN4sha26sha25611compress25617h3ea59f8ad1326a07E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(64) %i.a, i64 noundef 1), !noalias !10100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10101
  br label %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17h6fbea82029329f4cE.exit.i"

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.aa, ptr %i.ai, align 16, !alias.scope !10106, !noalias !10107
  call void @_ZN4sha26sha25611compress25617h3ea59f8ad1326a07E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.q, i64 noundef 1), !noalias !10100
  br label %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17h6fbea82029329f4cE.exit.i"

"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17h6fbea82029329f4cE.exit.i": ; preds = %bb.c, %._crit_edge.thread.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ak = load <4 x i32>, ptr %i.b, align 16, !alias.scope !10095, !noalias !10096
  %i.al = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ak)
  %i.am = load <4 x i32>, ptr %i.aj, align 16, !alias.scope !10095, !noalias !10096
  %i.an = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10075
  store <4 x i32> %i.al, ptr %i.d, align 16, !alias.scope !10108, !noalias !10109
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %i.an, ptr %.16..16..16..16..16..sroa_idx, align 16, !alias.scope !10108, !noalias !10109
  br label %_ZN4hmac11get_der_key17ha70dd6930c3decc1E.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !alias.scope !10110, !noalias !10111
  br label %_ZN4hmac11get_der_key17ha70dd6930c3decc1E.exit

_ZN4hmac11get_der_key17ha70dd6930c3decc1E.exit:   ; preds = %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17h6fbea82029329f4cE.exit.i", %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.h, ptr noundef nonnull align 16 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !10112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.h, align 16, !noalias !10072
  %wide.load6 = load <16 x i8>, ptr %i.ao, align 16, !noalias !10072
  %i.ap = xor <16 x i8> %wide.load, splat (i8 54)
  %i.aq = xor <16 x i8> %wide.load6, splat (i8 54)
  store <16 x i8> %i.ap, ptr %i.h, align 16, !noalias !10072
  store <16 x i8> %i.aq, ptr %i.ao, align 16, !noalias !10072
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.ar, align 16, !noalias !10072
  %wide.load6.1 = load <16 x i8>, ptr %i.as, align 16, !noalias !10072
  %i.at = xor <16 x i8> %wide.load.1, splat (i8 54)
  %i.au = xor <16 x i8> %wide.load6.1, splat (i8 54)
  store <16 x i8> %i.at, ptr %i.ar, align 16, !noalias !10072
  store <16 x i8> %i.au, ptr %i.as, align 16, !noalias !10072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @361, i64 32, i1 false), !noalias !10078
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 1, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !10113, !noalias !10114
  call void @_ZN4sha26sha25611compress25617h3ea59f8ad1326a07E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef range(i64 1, 0) 1), !noalias !10078
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load10 = load <16 x i8>, ptr %i.h, align 16, !noalias !10072
  %wide.load11 = load <16 x i8>, ptr %i.av, align 16, !noalias !10072
  %i.aw = xor <16 x i8> %wide.load10, splat (i8 106)
  %i.ax = xor <16 x i8> %wide.load11, splat (i8 106)
  store <16 x i8> %i.aw, ptr %i.h, align 16, !noalias !10072
  store <16 x i8> %i.ax, ptr %i.av, align 16, !noalias !10072
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %wide.load10.1 = load <16 x i8>, ptr %i.ay, align 16, !noalias !10072
  %wide.load11.1 = load <16 x i8>, ptr %i.az, align 16, !noalias !10072
  %i.ba = xor <16 x i8> %wide.load10.1, splat (i8 106)
  %i.bb = xor <16 x i8> %wide.load11.1, splat (i8 106)
  store <16 x i8> %i.ba, ptr %i.ay, align 16, !noalias !10072
  store <16 x i8> %i.bb, ptr %i.az, align 16, !noalias !10072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @361, i64 32, i1 false), !noalias !10078
  %.sroa.42.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 1, ptr %.sroa.42.0..sroa_idx.i3, align 8, !alias.scope !10115, !noalias !10116
  call void @_ZN4sha26sha25611compress25617h3ea59f8ad1326a07E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef range(i64 1, 0) 1), !noalias !10078
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10072
  %.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.120..sroa_idx, i8 0, i64 65, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.be, ptr noundef nonnull align 8 dereferenceable(192) %i.i, i64 192, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @"_ZN91_$LT$meilisearch_auth..SearchRules$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h81a957581a015b6bE"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 12 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = load i64, ptr %0, align 8, !range !18, !noundef !8
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.056.0.copyload = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 10 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 7 uses
  %.sroa.357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.357.0.copyload = load i64, ptr %.sroa.357.0..sroa_idx, align 8 ; 2 uses
  %i.f = icmp eq i64 %.sroa.2.0.copyload, 0       ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val13.i.i.i = load <16 x i8>, ptr %.sroa.056.0.copyload, align 16, !noalias !10137
  br i1 %i.f, label %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb3b805c527fa40e0E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.b
  %i.g = mul i64 %.sroa.2.0.copyload, 96          ; 2 uses
  %1 = add i64 %i.g, 96                           ; 2 uses
  %2 = add i64 %.sroa.2.0.copyload, 17
  %i.h = add i64 %2, %1                           ; 3 uses
  %3 = icmp uge i64 %i.h, %1
  tail call void @llvm.assume(i1 %3)
  %4 = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %4)
  %5 = sub i64 -96, %i.g
  %i.i = getelementptr inbounds i8, ptr %.sroa.056.0.copyload, i64 %5
  br label %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb3b805c527fa40e0E.exit"

"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb3b805c527fa40e0E.exit": ; preds = %bb.b, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.h, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.b ]
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.b ]
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload, i64 16
  %i.k = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.l = getelementptr i8, ptr %.sroa.056.0.copyload, i64 %.sroa.2.0.copyload
  %i.m = getelementptr i8, ptr %i.l, i64 1
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.a, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.056.0.copyload, ptr %.sroa.624.0..sroa_idx, align 8
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.j, ptr %.sroa.725.0..sroa_idx, align 8
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.m, ptr %.sroa.826.0..sroa_idx, align 8
  %.sroa.927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i1> %i.k, ptr %.sroa.927.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.357.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !10138
  %i.n = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #49, !noalias !10138 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7f886f3b27d20253E.exit", !prof !11

bb.c:                                             ; preds = %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb3b805c527fa40e0E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #50
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr355drop_in_place$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$core..option..Option$LT$meilisearch_auth..IndexSearchRules$GT$$GT$$C$$LT$meilisearch_auth..SearchRules$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$..into_iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4817b4729e5a2908E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #51
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7f886f3b27d20253E.exit": ; preds = %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb3b805c527fa40e0E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val13.i.i.i6 = load <16 x i8>, ptr %.sroa.056.0.copyload, align 16, !noalias !10139
  br i1 %i.f, label %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4e7e1ed0d513a6acE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i7

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i7: ; preds = %bb.f
  %i.r = mul i64 %.sroa.2.0.copyload, 24          ; 2 uses
  %6 = add i64 %i.r, 24
  %7 = icmp ult i64 %6, -15
  tail call void @llvm.assume(i1 %7)
  %i.s = and i64 %i.r, -16                        ; 2 uses
  %8 = add i64 %i.s, 32                           ; 2 uses
  %i.t = add i64 %.sroa.2.0.copyload, 17
  %i.u = add i64 %i.t, %8                         ; 3 uses
  %9 = icmp uge i64 %i.u, %8
  tail call void @llvm.assume(i1 %9)
  %10 = icmp ult i64 %i.u, 9223372036854775793
  tail call void @llvm.assume(i1 %10)
  %i.v = sub i64 -32, %i.s
  %i.w = getelementptr inbounds i8, ptr %.sroa.056.0.copyload, i64 %i.v
  br label %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4e7e1ed0d513a6acE.exit"

"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4e7e1ed0d513a6acE.exit": ; preds = %bb.f, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i7
  %.sroa.5.sroa.0.0.i.i.i.i8 = phi i64 [ %i.u, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i7 ], [ undef, %bb.f ]
  %.sroa.5.sroa.4.0.i.i.i.i9 = phi ptr [ %i.w, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i7 ], [ undef, %bb.f ]
  %.sroa.0.0.i.i.i.i10 = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i7 ], [ 0, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload, i64 16
  %i.y = icmp sgt <16 x i8> %.val13.i.i.i6, splat (i8 -1)
  %i.z = getelementptr i8, ptr %.sroa.056.0.copyload, i64 %.sroa.2.0.copyload
  %i.aa = getelementptr i8, ptr %i.z, i64 1
  store i64 %.sroa.0.0.i.i.i.i10, ptr %i.b, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i8, ptr %.sroa.448.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i9, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.056.0.copyload, ptr %.sroa.650.0..sroa_idx, align 8
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.x, ptr %.sroa.751.0..sroa_idx, align 8
  %.sroa.852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.aa, ptr %.sroa.852.0..sroa_idx, align 8
  %.sroa.953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <16 x i1> %i.y, ptr %.sroa.953.0..sroa_idx, align 8
  %.sroa.1155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.357.0.copyload, ptr %.sroa.1155.0..sroa_idx, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !10140
  %i.ab = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #49, !noalias !10140 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.g, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8babbd0c44901ec8E.exit", !prof !11

bb.g:                                             ; preds = %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4e7e1ed0d513a6acE.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #50
          to label %.noexc18 unwind label %bb.h

.noexc18:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr290drop_in_place$LT$core..iter..adapters..map..Map$LT$std..collections..hash..set..IntoIter$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$$C$$LT$meilisearch_auth..SearchRules$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$..into_iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc55bfbad459b1a9cE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b) #51
  br label %common.resume

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8babbd0c44901ec8E.exit": ; preds = %"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4e7e1ed0d513a6acE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.i:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8babbd0c44901ec8E.exit", %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7f886f3b27d20253E.exit"
  %.sroa.5.0 = phi ptr [ @366, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7f886f3b27d20253E.exit" ], [ @365, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8babbd0c44901ec8E.exit" ]
  %.sroa.0.0 = phi ptr [ %i.n, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7f886f3b27d20253E.exit" ], [ %i.ab, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8babbd0c44901ec8E.exit" ]
  %i.ae = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.af = insertvalue { ptr, ptr } %i.ae, ptr %.sroa.5.0, 1
  ret { ptr, ptr } %i.af
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h46a2beb867382463E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 4, 12) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !14, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10196)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10197, !noalias !10198, !nonnull !8, !align !12, !noundef !8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !38, !alias.scope !10197, !noalias !10198, !noundef !8
  %i.g = icmp eq i8 %i.f, 1
  %.val.i.i = load ptr, ptr %i.d, align 8, !noalias !10199 ; 6 uses
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10203)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !10204, !noalias !10205, !noundef !8 ; 3 uses
  %i.j = load i64, ptr %.val.i.i, align 8, !range !9, !alias.scope !10204, !noalias !10205, !noundef !8
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.d, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE.exit.i.i.i", !prof !10

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !10205
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !10206, !noalias !10205
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE.exit.i.i.i": ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.i, %bb.c ], [ %.pre.i.i.i.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !10206, !noalias !10205, !nonnull !8, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 44, ptr %i.p, align 1, !noalias !10207
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !10206, !noalias !10205
  %.val9.pre.i.i = load ptr, ptr %i.d, align 8, !noalias !10199
  br label %bb.e

bb.e:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE.exit.i.i.i", %bb.b
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.b ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h903fb51ac83b938fE.exit.i.i.i" ]
  store i8 2, ptr %i.e, align 1, !alias.scope !10197, !noalias !10198
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h76dcdc51a9c62ca4E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 4, 12) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10208)
  %.val.i5.i = load ptr, ptr %i.d, align 8, !noalias !10209, !nonnull !8, !align !12, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10213)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !10214, !noalias !10215, !noundef !8 ; 3 uses
  %i.t = load i64, ptr %.val.i5.i, align 8, !range !9, !alias.scope !10214, !noalias !10215, !noundef !8
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.f, label %_ZN10serde_json3ser9Formatter18begin_object_value17h519f8665cb064159E.exit.i.i, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !10215
  %.pre.i.i.i.i.i.i.i7.i = load i64, ptr %i.r, align 8, !alias.scope !10216, !noalias !10215
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h519f8665cb064159E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h519f8665cb064159E.exit.i.i: ; preds = %bb.f, %bb.e
  %i.v = phi i64 [ %i.s, %bb.e ], [ %.pre.i.i.i.i.i.i.i7.i, %bb.f ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !10216, !noalias !10215, !nonnull !8, !noundef !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1, !noalias !10217
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !10216, !noalias !10215
  %.val9.i6.i = load ptr, ptr %i.d, align 8, !noalias !10209 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10218)
  %i.ab = load i64, ptr %3, align 8, !range !35, !alias.scope !10219, !noalias !10220, !noundef !8
  %.not.i.i.i = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h519f8665cb064159E.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !10219, !noalias !10220, !nonnull !8, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val2.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !10219, !noalias !10220, !noundef !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i6.i) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h76dcdc51a9c62ca4E"(ptr nonnull %.val9.i6.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val1.i.i.i, i64 noundef %.val2.i.i.i)
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h38a7603359ff0f77E.exit

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h519f8665cb064159E.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i6.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10224)
  %i.ae = getelementptr inbounds nuw i8, ptr %.val9.i6.i, i64 16 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !10225, !noalias !10226, !noundef !8 ; 3 uses
  %i.ag = load i64, ptr %.val9.i6.i, align 8, !range !9, !alias.scope !10225, !noalias !10226, !noundef !8
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = icmp ult i64 %i.ah, 4
  br i1 %i.ai, label %bb.i, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17he50a03eb654995f0E.exit.i.i.i", !prof !10

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i, i64 noundef %i.af, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !10226
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !10227, !noalias !10226
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17he50a03eb654995f0E.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17he50a03eb654995f0E.exit.i.i.i": ; preds = %bb.i, %bb.h
  %i.aj = phi i64 [ %i.af, %bb.h ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.i ] ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %.val9.i6.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !10227, !noalias !10226, !nonnull !8, !noundef !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  store i32 1819047278, ptr %i.an, align 1, !noalias !10228
  %i.ao = add nuw i64 %i.aj, 4
  store i64 %i.ao, ptr %i.ae, align 8, !alias.scope !10227, !noalias !10226
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h38a7603359ff0f77E.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17h38a7603359ff0f77E.exit: ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17he50a03eb654995f0E.exit.i.i.i", %bb.g, %bb.j
  %.sroa.0.0 = phi ptr [ %i.ap, %bb.j ], [ null, %bb.g ], [ null, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17he50a03eb654995f0E.exit.i.i.i" ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.a
  %i.ap = tail call noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E()
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h38a7603359ff0f77E.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17h025ae41a0cc2e870E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
end_hunk_1

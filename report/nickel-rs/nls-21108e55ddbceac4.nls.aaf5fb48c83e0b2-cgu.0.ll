Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN16nickel_lang_core4term6record10RecordData17with_field_values17h16ac9474f541b471E:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8, !range !45, !noalias !34361, !noundef !44
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i", !prof !46

._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !34362
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !34362
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i": ; preds = %bb.a
  %i.l = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i unwind label %bb.n, !noalias !34360 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i"
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !34363
  store i8 1, ptr %i.i, align 8, !noalias !34363
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i
  %.pre-phi12.i.i = phi i64 [ %i.n, %.noexc.i.i ], [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.m, %.noexc.i.i ], [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.p = add i64 %.pre-phi.i.i, 1
  store i64 %i.p, ptr %i.h, align 8, !noalias !34362
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h318e8bca999215caE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, i64 noundef 2, i64 noundef %.pre-phi.i.i, i64 noundef %.pre-phi12.i.i)
          to label %bb.c unwind label %bb.n, !noalias !34360

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34364)
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !34364, !noalias !34365, !noundef !44
  %i.s = icmp eq i64 %i.r, 0
  %.sroa.0.0.i.i.i = select i1 %i.s, i64 2, i64 1 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !34366, !noalias !34367, !noundef !44
  %i.w = icmp ugt i64 %.sroa.0.0.i.i.i, %i.v
  br i1 %i.w, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i.i.i", !prof !49

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.y = load i64, ptr %i.t, align 8, !alias.scope !34368, !noalias !34365, !noundef !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !34368, !noalias !34365, !nonnull !44, !noundef !44
  %i.ab = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aa, i64 noundef %i.y, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i.i.i" unwind label %bb.k, !noalias !34365 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %i.ac = load i64, ptr %i.e, align 8, !range !74, !alias.scope !34368, !noalias !34365, !noundef !44
  %i.ad = load i64, ptr %i.t, align 8, !alias.scope !34368, !noalias !34365, !noundef !44 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 128102389400760776
  call void @llvm.assume(i1 %i.ae)
  %i.af = sub nsw i64 %i.ac, %i.ad
  %i.ag = icmp ugt i64 %.sroa.0.0.i.i.i, %i.af
  br i1 %i.ag, label %bb.e, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i.i.i"
  %i.ah = load i64, ptr %i.q, align 8, !alias.scope !34368, !noalias !34365, !noundef !44
  %i.ai = load i64, ptr %i.u, align 8, !alias.scope !34368, !noalias !34365, !noundef !44
  %i.aj = add i64 %i.ai, %i.ah
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17he56c989533b795b4E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.aj)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i.i.i" unwind label %bb.k, !noalias !34365

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !34370
  call void @llvm.experimental.noalias.scope.decl(metadata !34371)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34372)
  %i.al = load i64, ptr %i.d, align 8, !alias.scope !34373, !noalias !34374, !noundef !44 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !34373, !noalias !34374, !noundef !44 ; 5 uses
  %i.ao = icmp ule i64 %i.al, %i.an
  call void @llvm.assume(i1 %i.ao)
  %.not2.i.i.i.i.i.i.i = icmp eq i64 %i.al, %i.an
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h920cc83fbf907e73E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i.i.i"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6523623e019efc7bE.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %i.ar = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %i.as, %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6523623e019efc7bE.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %i.as = add nuw nsw i64 %i.ar, 1                ; 6 uses
  %i.at = icmp ult i64 %i.ar, 2
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.ar ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !34371, !noalias !34375, !nonnull !44, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34376
  invoke void @"_ZN127_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..convert..From$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$4from17hbc62b6c61ecb9f63E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !34377

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %i.au, i64 20, i1 false), !noalias !34378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34379
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h0aa4167ee4bf70c8E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.ap)
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !34377

.noexc1.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false), !noalias !34379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34379
  %i.av = load i64, ptr %i.b, align 8, !range !70, !alias.scope !34380, !noalias !34379, !noundef !44
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  br i1 %i.aw, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6523623e019efc7bE.exit.i.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %.noexc1.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17hb5c1dc5fa0711f78E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6523623e019efc7bE.exit.i.i.i.i.i.i.i" unwind label %bb.h, !noalias !34377

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6523623e019efc7bE.exit.i.i.i.i.i.i.i": ; preds = %bb.g, %.noexc1.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34376
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.as, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h920cc83fbf907e73E.exit, label %bb.f

bb.h:                                             ; preds = %bb.g, %.noexc.i.i.i.i.i.i, %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 %i.as, ptr %i.d, align 8, !alias.scope !34373, !noalias !34374
  %i.ay = icmp eq i64 %i.an, %i.as
  br i1 %i.ay, label %.body.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = sub nuw i64 %i.an, %i.as
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.as
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h52a056fc4502cedeE"(ptr noalias noundef nonnull readonly align 8 %i.ba, i64 noundef %i.az)
          to label %.body.i.i unwind label %bb.j, !noalias !34381

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !34377
  unreachable

bb.k:                                             ; preds = %bb.d, %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h52a056fc4502cedeE"(ptr noalias noundef nonnull readonly align 8 %.sroa.5.0..sroa_idx, i64 noundef 2)
          to label %.body.i.i unwind label %bb.l, !noalias !34382

bb.l:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !34365
  unreachable

.body.i.i:                                        ; preds = %bb.k, %bb.i, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.ax, %bb.i ], [ %i.ax, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hc51ead1719b4a96eE"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #77
          to label %common.resume unwind label %bb.m, !noalias !34360

bb.m:                                             ; preds = %bb.n, %.body.i.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !34360
  unreachable

common.resume:                                    ; preds = %bb.o, %.body.i.i, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.br, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i", %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h52a056fc4502cedeE"(ptr noalias noundef nonnull readonly align 8 %.sroa.5.0..sroa_idx, i64 noundef 2)
          to label %common.resume unwind label %bb.m, !noalias !34382

_ZN4core4iter6traits8iterator8Iterator7collect17h920cc83fbf907e73E.exit: ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6523623e019efc7bE.exit.i.i.i.i.i.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !34360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bg = load i8, ptr %i.i, align 8, !range !45, !noalias !34383, !noundef !44
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i", !prof !46

._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h920cc83fbf907e73E.exit
  %.pre.i.i = load i64, ptr %i.h, align 8, !noalias !34384
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hc51ead1719b4a96eE.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h920cc83fbf907e73E.exit
  %i.bi = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i"
  %i.bj = extractvalue { i64, i64 } %i.bi, 0
  %i.bk = extractvalue { i64, i64 } %i.bi, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !noalias !34385
  store i8 1, ptr %i.i, align 8, !noalias !34385
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hc51ead1719b4a96eE.exit"

"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hc51ead1719b4a96eE.exit": ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i
  %i.bm = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i ], [ %i.bj, %.noexc ]
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.h, align 8, !noalias !34384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.o:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i"
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hc51ead1719b4a96eE"(ptr noalias noundef align 8 dereferenceable(72) %i.f) #77
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term6record10RecordData17with_field_values17h2189f0872f785b07E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.49.i.i.i.i.i.i = alloca [16 x i8], align 4 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [72 x i8], align 8                ; 13 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34460)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !34461, !noalias !34462 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !34463, !noalias !34464
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !34463, !noalias !34464 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !34463, !noalias !34464 ; 5 uses
  %i.h = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %i.h, label %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h0bcb5edff6b53cc9E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i: ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !34461, !noalias !34462, !nonnull !44, !noundef !44
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %.sroa.5.0.copyload.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i)
  %i.i = shl i64 %.sroa.5.0.copyload.i.i, 3
  %i.j = and i64 %i.i, -16                        ; 2 uses
  %i.k = add i64 %i.j, 16                         ; 2 uses
  %i.l = add nsw i64 %.sroa.5.0.copyload.i.i, 17
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp uge i64 %i.m, %i.k
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp ult i64 %i.m, 9223372036854775793
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nuw nsw i64 -16, %i.j
  %i.q = getelementptr inbounds i8, ptr %.sroa.4.0.copyload.i.i, i64 %i.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #66, !noalias !34465
  br label %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h0bcb5edff6b53cc9E.exit"

"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h0bcb5edff6b53cc9E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.r = icmp ult i64 %.sroa.5.0.copyload.i, 230584300921369396
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i
  store ptr %.sroa.4.0.copyload.i, ptr %i.g, align 8, !alias.scope !34466
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !34466
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !34466
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !34466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !34467
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.v = load i8, ptr %i.u, align 8, !range !45, !noalias !34468, !noundef !44
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i", !prof !46

._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i: ; preds = %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h0bcb5edff6b53cc9E.exit"
  %.pre.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !34469
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !34469
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i": ; preds = %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h0bcb5edff6b53cc9E.exit"
  %i.x = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i unwind label %bb.r, !noalias !34467 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i"
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !noalias !34470
  store i8 1, ptr %i.u, align 8, !noalias !34470
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i
  %.pre-phi11.i.i = phi i64 [ %i.z, %.noexc.i.i ], [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.y, %.noexc.i.i ], [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ab = add i64 %.pre-phi.i.i, 1
  store i64 %i.ab, ptr %i.t, align 8, !noalias !34469
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h318e8bca999215caE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, i64 noundef %.sroa.5.0.copyload.i, i64 noundef %.pre-phi.i.i, i64 noundef %.pre-phi11.i.i)
          to label %bb.c unwind label %bb.r, !noalias !34467

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34471)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !34471, !noalias !34472, !noundef !44
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = add nuw nsw i64 %.sroa.5.0.copyload.i, 1
  %i.ag = lshr i64 %i.af, 1
  %.sroa.0.0.i.i.i = select i1 %i.ae, i64 %.sroa.5.0.copyload.i, i64 %i.ag ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !34473, !noalias !34474, !noundef !44
  %i.ak = icmp ugt i64 %.sroa.0.0.i.i.i, %i.aj
  br i1 %i.ak, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i.i.i", !prof !49

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.am = load i64, ptr %i.ah, align 8, !alias.scope !34475, !noalias !34472, !noundef !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !34475, !noalias !34472, !nonnull !44, !noundef !44
  %i.ap = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.al, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ao, i64 noundef %i.am, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i.i.i" unwind label %bb.o, !noalias !34472 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %i.aq = load i64, ptr %i.e, align 8, !range !74, !alias.scope !34475, !noalias !34472, !noundef !44
  %i.ar = load i64, ptr %i.ah, align 8, !alias.scope !34475, !noalias !34472, !noundef !44 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 128102389400760776
  call void @llvm.assume(i1 %i.as)
  %i.at = sub nsw i64 %i.aq, %i.ar
  %i.au = icmp ugt i64 %.sroa.0.0.i.i.i, %i.at
  br i1 %i.au, label %bb.e, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i.i.i"
  %i.av = load i64, ptr %i.ac, align 8, !alias.scope !34475, !noalias !34472, !noundef !44
  %i.aw = load i64, ptr %i.ai, align 8, !alias.scope !34475, !noalias !34472, !noundef !44
  %i.ax = add i64 %i.aw, %i.av
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17he56c989533b795b4E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.ax)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i.i.i" unwind label %bb.o, !noalias !34472

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !34477
  call void @llvm.experimental.noalias.scope.decl(metadata !34478)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !34479, !noalias !34480, !nonnull !44, !noundef !44 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !34479, !noalias !34480 ; 3 uses
  %i.bb = icmp eq ptr %.promoted.i.i.i.i.i.i, %i.az
  br i1 %i.bb, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i._crit_edge.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i.lr.ph.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i.lr.ph.i.i.i.i.i.i": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i.i.i"
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i.i.i.i.i.i.i": ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i.lr.ph.i.i.i.i.i.i"
  %i.be = phi ptr [ %.promoted.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i.lr.ph.i.i.i.i.i.i" ], [ %i.bf, %bb.m ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34481)
  call void @llvm.experimental.noalias.scope.decl(metadata !34482)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 5 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.43.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34483 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.43.0.copyload.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i._crit_edge.i.i.i.i.i.i", label %bb.g

bb.f:                                             ; preds = %bb.h, %.noexc.i.i.i.i.i.i, %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bf, ptr %i.ba, align 8, !alias.scope !34479, !noalias !34480
  invoke fastcc void @"_ZN4core3ptr143drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0e72ba9a7adfa0feE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #77
          to label %.body.i.i unwind label %bb.n, !noalias !34484

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !34483, !nonnull !44, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !34485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34486
  invoke void @"_ZN127_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..convert..From$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$4from17hbc62b6c61ecb9f63E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bc, ptr noundef nonnull %.sroa.01.0.copyload.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.f, !noalias !34485

.noexc.i.i.i.i.i.i:                               ; preds = %bb.g
  store i32 %.sroa.43.0.copyload.i.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !34486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.i.i.i.i.i.i, i64 16, i1 false), !noalias !34486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34487
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h0aa4167ee4bf70c8E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.bc)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.f, !noalias !34485

.noexc3.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 40, i1 false), !noalias !34487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34487
  %i.bh = load i64, ptr %i.b, align 8, !range !70, !alias.scope !34488, !noalias !34487, !noundef !44
  %i.bi = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %i.bi, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.noexc3.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17hb5c1dc5fa0711f78E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.m unwind label %bb.f, !noalias !34485

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i._crit_edge.i.i.i.i.i.i": ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i.i.i.i.i.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i.i.i"
  %i.bj = phi ptr [ %.promoted.i.i.i.i.i.i, %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i.i.i" ], [ %i.bf, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i.i.i.i.i.i.i" ], [ %i.bf, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34489)
  call void @llvm.experimental.noalias.scope.decl(metadata !34490)
  call void @llvm.experimental.noalias.scope.decl(metadata !34491)
  %i.bk = ptrtoint ptr %i.az to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub nuw i64 %i.bk, %i.bl
  %i.bn = udiv exact i64 %i.bm, 40
  invoke fastcc void @"_ZN4core3ptr140drop_in_place$LT$$u5b$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$u5d$$GT$17h52b34e193259c0d5E"(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef %i.bn)
          to label %bb.k unwind label %bb.i, !noalias !34492

bb.i:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i._crit_edge.i.i.i.i.i.i"
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !34493, !noalias !34494, !noundef !44 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.body.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.d, align 8, !alias.scope !34493, !noalias !34494, !nonnull !44, !noundef !44
  %i.bt = mul nuw i64 %i.bq, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !34492
  br label %.body.i.i

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i._crit_edge.i.i.i.i.i.i"
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !34493, !noalias !34494, !noundef !44 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZN4core4iter6traits8iterator8Iterator7collect17h65d93f9b0273a1afE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.d, align 8, !alias.scope !34493, !noalias !34494, !nonnull !44, !noundef !44
  %i.by = mul nuw i64 %i.bv, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !34492
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h65d93f9b0273a1afE.exit

bb.m:                                             ; preds = %bb.h, %.noexc3.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34486
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i)
  %i.bz = icmp eq ptr %i.bf, %i.az
  br i1 %i.bz, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i._crit_edge.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb0093d0483f0b487E.exit.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.f
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !34485
  unreachable

bb.o:                                             ; preds = %bb.e, %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr398drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$C$nickel_lang_core..term..record..RecordData..with_field_values$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd9e030270ff789b5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.g) #77
          to label %.body.i.i unwind label %bb.p, !noalias !34495

bb.p:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !34472
  unreachable

.body.i.i:                                        ; preds = %bb.o, %bb.j, %bb.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bg, %bb.f ], [ %i.cb, %bb.o ], [ %i.bo, %bb.i ], [ %i.bo, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hc51ead1719b4a96eE"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #77
          to label %common.resume unwind label %bb.q, !noalias !34467

bb.q:                                             ; preds = %bb.r, %.body.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !34467
  unreachable

common.resume:                                    ; preds = %bb.s, %.body.i.i, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ce, %bb.r ], [ %i.cq, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.b, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i.i"
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr398drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$C$nickel_lang_core..term..record..RecordData..with_field_values$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd9e030270ff789b5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.g) #77
          to label %common.resume unwind label %bb.q, !noalias !34495

_ZN4core4iter6traits8iterator8Iterator7collect17h65d93f9b0273a1afE.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !34467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cf = load i8, ptr %i.u, align 8, !range !45, !noalias !34496, !noundef !44
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i", !prof !46

._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h65d93f9b0273a1afE.exit
  %.pre.i.i = load i64, ptr %i.t, align 8, !noalias !34497
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hc51ead1719b4a96eE.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h65d93f9b0273a1afE.exit
  %i.ch = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.s     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i"
  %i.ci = extractvalue { i64, i64 } %i.ch, 0
  %i.cj = extractvalue { i64, i64 } %i.ch, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !noalias !34498
  store i8 1, ptr %i.u, align 8, !noalias !34498
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hc51ead1719b4a96eE.exit"

"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hc51ead1719b4a96eE.exit": ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i
  %i.cl = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i ], [ %i.ci, %.noexc ]
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.t, align 8, !noalias !34497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.cp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.s:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i"
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hc51ead1719b4a96eE"(ptr noalias noundef align 8 dereferenceable(72) %i.f) #77
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core5cache11SourceCache15get_or_add_file17h9760f2db228d3113E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr nofree readonly captures(none) %.8.val, i64 %.16.val, i8 noundef range(i8 0, 5) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [72 x i8], align 16               ; 13 uses
  %i.f = alloca [32 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.l = icmp slt i64 %.16.val, 0
  br i1 %i.l, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = icmp eq i64 %.16.val, 0                  ; 4 uses
  br i1 %i.m, label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h290c13c6b28214aeE.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !34563
  %i.n = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.16.val, i64 noundef range(i64 1, 9) 1) #66, !noalias !34563 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h290c13c6b28214aeE.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.16.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75, !noalias !34564
  unreachable

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h290c13c6b28214aeE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %bb.b
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.n, %bb.b ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %.8.val, i64 %.16.val, i1 false), !noalias !34565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @_ZN16nickel_lang_core5cache14normalize_path17h1b880914cf497bcbE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr nonnull %.sroa.10.0.i.i.i.i.i, i64 %.16.val)
          to label %bb.f unwind label %bb.e

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit59": ; preds = %bb.ae, %bb.ad, %.body, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %lpad.thr_comm.split-lp, %.body ], [ %eh.lpad-body9, %bb.ad ], [ %eh.lpad-body9, %bb.ae ]
  br i1 %i.m, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc3c5056f65624dc6E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit59"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %.16.val, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !34566
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc3c5056f65624dc6E.exit"

bb.e:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h290c13c6b28214aeE.exit"
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit59"

bb.f:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h290c13c6b28214aeE.exit"
  %i.q = load i64, ptr %i.k, align 8, !range !70, !noundef !44 ; 8 uses
  %i.r = icmp eq i64 %i.q, -9223372036854775808
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 9 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8
  store i32 1, ptr %0, align 8
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit"

bb.h:                                             ; preds = %bb.f
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.629.0.copyload = load i64, ptr %.sroa.629.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.i.i.i, i64 noundef %.16.val)
          to label %bb.i unwind label %.body.thread10

.body.thread10:                                   ; preds = %.thread, %bb.n, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.body:                                            ; preds = %bb.x
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h94b6534449950db4E.exit59"

bb.i:                                             ; preds = %bb.h
  %i.v = load i64, ptr %i.g, align 8, !range !60, !noundef !44
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !44, !align !57, !noundef !44 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !44 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not.i.i = icmp ult i64 %i.aa, 12
  br i1 %.not.i.i, label %.thread, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17hff3d4d91c924c3aaE.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17hff3d4d91c924c3aaE.exit.i": ; preds = %bb.k
  %i.ab = load i64, ptr %i.y, align 1
  %i.ac = xor i64 8313483719544301861, %i.ab
  %i.ad = getelementptr i8, ptr %i.y, i64 8
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = xor i64 975528818, %i.af
  %i.ah = or i64 %i.ac, %i.ag
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %bcmp.i.i.fr.i = freeze i32 %i.aj
  %i.ak = icmp eq i32 %bcmp.i.i.fr.i, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  br i1 %i.ak, label %bb.l, label %.thread

bb.l:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17hff3d4d91c924c3aaE.exit.i"
  %i.am = add i64 %i.aa, -12                      ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34567)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34568
  %i.ao = icmp slt i64 %i.am, 0
  br i1 %i.ao, label %bb.n, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.l
  %i.ap = icmp eq i64 %i.am, 0
  br i1 %i.ap, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i", label %bb.m

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !34569
  %i.aq = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.am, i64 noundef range(i64 1, 9) 1) #66, !noalias !34569 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.n, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i"

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.m ], [ 0, %bb.l ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc unwind label %.body.thread10

.noexc:                                           ; preds = %bb.n
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i": ; preds = %bb.m, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.aq, %bb.m ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.al, i64 %i.am, i1 false), !noalias !34570
  store i64 %i.am, ptr %i.f, align 8, !noalias !34568
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !34568
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.am, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !34568
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 %2, ptr %i.as, align 8, !noalias !34568
  call void @llvm.experimental.noalias.scope.decl(metadata !34571)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !34572, !noalias !34573, !noundef !44
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread16, label %_ZN4core4hash11BuildHasher8hash_one17h52790d706eec3de1E.exit.i.i

_ZN4core4hash11BuildHasher8hash_one17h52790d706eec3de1E.exit.i.i: ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E.exit.i"
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !34574
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !34572, !noalias !34573 ; 3 uses
  %i.ay = shufflevector <2 x i64> %i.ax, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.az = xor <2 x i64> %i.ay, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.az, ptr %i.e, align 16, !alias.scope !34575, !noalias !34574
  %i.ba = shufflevector <2 x i64> %i.ax, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.bb = xor <2 x i64> %i.ba, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.bb, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !34575, !noalias !34574
end_hunk_0
